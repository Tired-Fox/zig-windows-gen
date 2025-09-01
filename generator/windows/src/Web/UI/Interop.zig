pub const IWebViewControlAcceleratorKeyPressedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEventType(self: *@This()) core.HResult!CoreAcceleratorKeyEventType {
        var _r: CoreAcceleratorKeyEventType = undefined;
        const _c = self.vtable.get_EventType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVirtualKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_VirtualKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        var _r: CorePhysicalKeyStatus = undefined;
        const _c = self.vtable.get_KeyStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoutingStage(self: *@This()) core.HResult!WebViewControlAcceleratorKeyRoutingStage {
        var _r: WebViewControlAcceleratorKeyRoutingStage = undefined;
        const _c = self.vtable.get_RoutingStage(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.IWebViewControlAcceleratorKeyPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77a2a53e-7c74-437d-a290-3ac0d8cd5655";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EventType: *const fn(self: *anyopaque, _r: *CoreAcceleratorKeyEventType) callconv(.winapi) HRESULT,
        get_VirtualKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        get_KeyStatus: *const fn(self: *anyopaque, _r: *CorePhysicalKeyStatus) callconv(.winapi) HRESULT,
        get_RoutingStage: *const fn(self: *anyopaque, _r: *WebViewControlAcceleratorKeyRoutingStage) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlMoveFocusRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!WebViewControlMoveFocusReason {
        var _r: WebViewControlMoveFocusReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.IWebViewControlMoveFocusRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b2a340d-4bd0-405e-b7c1-1e72a492f446";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *WebViewControlMoveFocusReason) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlProcess = extern struct {
    vtable: *const VTable,
    pub fn getProcessId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ProcessId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnterpriseId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPrivateNetworkClientServerCapabilityEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPrivateNetworkClientServerCapabilityEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWebViewControlAsync(self: *@This(), hostWindowHandle: i64, bounds: Rect) core.HResult!*IAsyncOperation(WebViewControl) {
        var _r: *IAsyncOperation(WebViewControl) = undefined;
        const _c = self.vtable.CreateWebViewControlAsync(@ptrCast(self), hostWindowHandle, bounds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetWebViewControls(self: *@This()) core.HResult!*IVectorView(WebViewControl) {
        var _r: *IVectorView(WebViewControl) = undefined;
        const _c = self.vtable.GetWebViewControls(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Terminate(self: *@This()) core.HResult!void {
        const _c = self.vtable.Terminate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addProcessExited(self: *@This(), handler: *TypedEventHandler(WebViewControlProcess,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProcessExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProcessExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProcessExited(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.IWebViewControlProcess";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02c723ec-98d6-424a-b63e-c6136c36a0f2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProcessId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_EnterpriseId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsPrivateNetworkClientServerCapabilityEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        CreateWebViewControlAsync: *const fn(self: *anyopaque, hostWindowHandle: i64, bounds: Rect, _r: **IAsyncOperation(WebViewControl)) callconv(.winapi) HRESULT,
        GetWebViewControls: *const fn(self: *anyopaque, _r: **IVectorView(WebViewControl)) callconv(.winapi) HRESULT,
        Terminate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_ProcessExited: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebViewControlProcess,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProcessExited: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlProcessFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithOptions(self: *@This(), processOptions: *WebViewControlProcessOptions) core.HResult!*WebViewControlProcess {
        var _r: *WebViewControlProcess = undefined;
        const _c = self.vtable.CreateWithOptions(@ptrCast(self), processOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.IWebViewControlProcessFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47b65cf9-a2d2-453c-b097-f6779d4b8e02";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithOptions: *const fn(self: *anyopaque, processOptions: *WebViewControlProcessOptions, _r: **WebViewControlProcess) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlProcessOptions = extern struct {
    vtable: *const VTable,
    pub fn putEnterpriseId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EnterpriseId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnterpriseId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrivateNetworkClientServerCapability(self: *@This(), value: WebViewControlProcessCapabilityState) core.HResult!void {
        const _c = self.vtable.put_PrivateNetworkClientServerCapability(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPrivateNetworkClientServerCapability(self: *@This()) core.HResult!WebViewControlProcessCapabilityState {
        var _r: WebViewControlProcessCapabilityState = undefined;
        const _c = self.vtable.get_PrivateNetworkClientServerCapability(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.IWebViewControlProcessOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1cca72a7-3bd6-4826-8261-6c8189505d89";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_EnterpriseId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_EnterpriseId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PrivateNetworkClientServerCapability: *const fn(self: *anyopaque, value: WebViewControlProcessCapabilityState) callconv(.winapi) HRESULT,
        get_PrivateNetworkClientServerCapability: *const fn(self: *anyopaque, _r: *WebViewControlProcessCapabilityState) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlSite = extern struct {
    vtable: *const VTable,
    pub fn getProcess(self: *@This()) core.HResult!*WebViewControlProcess {
        var _r: *WebViewControlProcess = undefined;
        const _c = self.vtable.get_Process(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBounds(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_Bounds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Bounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MoveFocus(self: *@This(), reason: WebViewControlMoveFocusReason) core.HResult!void {
        const _c = self.vtable.MoveFocus(@ptrCast(self), reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMoveFocusRequested(self: *@This(), handler: *TypedEventHandler(WebViewControl,WebViewControlMoveFocusRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MoveFocusRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMoveFocusRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MoveFocusRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAcceleratorKeyPressed(self: *@This(), handler: *TypedEventHandler(WebViewControl,WebViewControlAcceleratorKeyPressedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AcceleratorKeyPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAcceleratorKeyPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AcceleratorKeyPressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.IWebViewControlSite";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "133f47c6-12dc-4898-bd47-04967de648ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Process: *const fn(self: *anyopaque, _r: **WebViewControlProcess) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Bounds: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        get_Bounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_IsVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        MoveFocus: *const fn(self: *anyopaque, reason: WebViewControlMoveFocusReason) callconv(.winapi) HRESULT,
        add_MoveFocusRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebViewControl,WebViewControlMoveFocusRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MoveFocusRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AcceleratorKeyPressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebViewControl,WebViewControlAcceleratorKeyPressedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AcceleratorKeyPressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlSite2 = extern struct {
    vtable: *const VTable,
    pub fn addGotFocus(self: *@This(), handler: *TypedEventHandler(WebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GotFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GotFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLostFocus(self: *@This(), handler: *TypedEventHandler(WebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LostFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLostFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LostFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.IWebViewControlSite2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d13b2e3f-48ee-4730-8243-d2ed0c05606a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_GotFocus: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebViewControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GotFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LostFocus: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebViewControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LostFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const WebViewControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), source: *Uri) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.putSource(source);
    }
    pub fn getDocumentTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.getDocumentTitle();
    }
    pub fn getCanGoBack(self: *@This()) core.HResult!bool {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.getCanGoBack();
    }
    pub fn getCanGoForward(self: *@This()) core.HResult!bool {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.getCanGoForward();
    }
    pub fn putDefaultBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.putDefaultBackgroundColor(value);
    }
    pub fn getDefaultBackgroundColor(self: *@This()) core.HResult!Color {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.getDefaultBackgroundColor();
    }
    pub fn getContainsFullScreenElement(self: *@This()) core.HResult!bool {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.getContainsFullScreenElement();
    }
    pub fn getSettings(self: *@This()) core.HResult!*WebViewControlSettings {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.getSettings();
    }
    pub fn getDeferredPermissionRequests(self: *@This()) core.HResult!*IVectorView(WebViewControlDeferredPermissionRequest) {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.getDeferredPermissionRequests();
    }
    pub fn GoForward(self: *@This()) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.GoForward();
    }
    pub fn GoBack(self: *@This()) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.GoBack();
    }
    pub fn Refresh(self: *@This()) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.Refresh();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.Stop();
    }
    pub fn Navigate(self: *@This(), source: *Uri) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.Navigate(source);
    }
    pub fn NavigateToString(self: *@This(), text: HSTRING) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.NavigateToString(text);
    }
    pub fn NavigateToLocalStreamUri(self: *@This(), source: *Uri, streamResolver: *IUriToStreamResolver) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.NavigateToLocalStreamUri(source, streamResolver);
    }
    pub fn NavigateWithHttpRequestMessage(self: *@This(), requestMessage: *HttpRequestMessage) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.NavigateWithHttpRequestMessage(requestMessage);
    }
    pub fn InvokeScriptAsync(self: *@This(), scriptName: HSTRING, arguments: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.InvokeScriptAsync(scriptName, arguments);
    }
    pub fn CapturePreviewToStreamAsync(self: *@This(), stream: *IRandomAccessStream) core.HResult!*IAsyncAction {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.CapturePreviewToStreamAsync(stream);
    }
    pub fn CaptureSelectedContentToDataPackageAsync(self: *@This()) core.HResult!*IAsyncOperation(DataPackage) {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.CaptureSelectedContentToDataPackageAsync();
    }
    pub fn BuildLocalStreamUri(self: *@This(), contentIdentifier: HSTRING, relativePath: HSTRING) core.HResult!*Uri {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.BuildLocalStreamUri(contentIdentifier, relativePath);
    }
    pub fn GetDeferredPermissionRequestById(self: *@This(), id: u32, result: *WebViewControlDeferredPermissionRequest) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.GetDeferredPermissionRequestById(id, result);
    }
    pub fn addNavigationStarting(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationStartingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addNavigationStarting(handler);
    }
    pub fn removeNavigationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeNavigationStarting(token);
    }
    pub fn addContentLoading(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlContentLoadingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addContentLoading(handler);
    }
    pub fn removeContentLoading(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeContentLoading(token);
    }
    pub fn addDOMContentLoaded(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlDOMContentLoadedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addDOMContentLoaded(handler);
    }
    pub fn removeDOMContentLoaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeDOMContentLoaded(token);
    }
    pub fn addNavigationCompleted(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addNavigationCompleted(handler);
    }
    pub fn removeNavigationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeNavigationCompleted(token);
    }
    pub fn addFrameNavigationStarting(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationStartingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addFrameNavigationStarting(handler);
    }
    pub fn removeFrameNavigationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeFrameNavigationStarting(token);
    }
    pub fn addFrameContentLoading(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlContentLoadingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addFrameContentLoading(handler);
    }
    pub fn removeFrameContentLoading(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeFrameContentLoading(token);
    }
    pub fn addFrameDOMContentLoaded(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlDOMContentLoadedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addFrameDOMContentLoaded(handler);
    }
    pub fn removeFrameDOMContentLoaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeFrameDOMContentLoaded(token);
    }
    pub fn addFrameNavigationCompleted(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addFrameNavigationCompleted(handler);
    }
    pub fn removeFrameNavigationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeFrameNavigationCompleted(token);
    }
    pub fn addScriptNotify(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlScriptNotifyEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addScriptNotify(handler);
    }
    pub fn removeScriptNotify(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeScriptNotify(token);
    }
    pub fn addLongRunningScriptDetected(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlLongRunningScriptDetectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addLongRunningScriptDetected(handler);
    }
    pub fn removeLongRunningScriptDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeLongRunningScriptDetected(token);
    }
    pub fn addUnsafeContentWarningDisplaying(self: *@This(), handler: *TypedEventHandler(IWebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addUnsafeContentWarningDisplaying(handler);
    }
    pub fn removeUnsafeContentWarningDisplaying(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeUnsafeContentWarningDisplaying(token);
    }
    pub fn addUnviewableContentIdentified(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlUnviewableContentIdentifiedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addUnviewableContentIdentified(handler);
    }
    pub fn removeUnviewableContentIdentified(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeUnviewableContentIdentified(token);
    }
    pub fn addPermissionRequested(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlPermissionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addPermissionRequested(handler);
    }
    pub fn removePermissionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removePermissionRequested(token);
    }
    pub fn addUnsupportedUriSchemeIdentified(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlUnsupportedUriSchemeIdentifiedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addUnsupportedUriSchemeIdentified(handler);
    }
    pub fn removeUnsupportedUriSchemeIdentified(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeUnsupportedUriSchemeIdentified(token);
    }
    pub fn addNewWindowRequested(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNewWindowRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addNewWindowRequested(handler);
    }
    pub fn removeNewWindowRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeNewWindowRequested(token);
    }
    pub fn addContainsFullScreenElementChanged(self: *@This(), handler: *TypedEventHandler(IWebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addContainsFullScreenElementChanged(handler);
    }
    pub fn removeContainsFullScreenElementChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeContainsFullScreenElementChanged(token);
    }
    pub fn addWebResourceRequested(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlWebResourceRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.addWebResourceRequested(handler);
    }
    pub fn removeWebResourceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControl = @ptrCast(self);
        return try this.removeWebResourceRequested(token);
    }
    pub fn getProcess(self: *@This()) core.HResult!*WebViewControlProcess {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProcess();
    }
    pub fn putScale(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putScale(value);
    }
    pub fn getScale(self: *@This()) core.HResult!f64 {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScale();
    }
    pub fn putBounds(self: *@This(), value: Rect) core.HResult!void {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBounds(value);
    }
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBounds();
    }
    pub fn putIsVisible(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsVisible(value);
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsVisible();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn MoveFocus(self: *@This(), reason: WebViewControlMoveFocusReason) core.HResult!void {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MoveFocus(reason);
    }
    pub fn addMoveFocusRequested(self: *@This(), handler: *TypedEventHandler(WebViewControl,WebViewControlMoveFocusRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMoveFocusRequested(handler);
    }
    pub fn removeMoveFocusRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMoveFocusRequested(token);
    }
    pub fn addAcceleratorKeyPressed(self: *@This(), handler: *TypedEventHandler(WebViewControl,WebViewControlAcceleratorKeyPressedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAcceleratorKeyPressed(handler);
    }
    pub fn removeAcceleratorKeyPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControlSite = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAcceleratorKeyPressed(token);
    }
    pub fn AddInitializeScript(self: *@This(), script: HSTRING) core.HResult!void {
        var this: ?*IWebViewControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddInitializeScript(script);
    }
    pub fn addGotFocus(self: *@This(), handler: *TypedEventHandler(WebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControlSite2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addGotFocus(handler);
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControlSite2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeGotFocus(token);
    }
    pub fn addLostFocus(self: *@This(), handler: *TypedEventHandler(WebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IWebViewControlSite2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addLostFocus(handler);
    }
    pub fn removeLostFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebViewControlSite2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlSite2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeLostFocus(token);
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.WebViewControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControl.GUID;
    pub const IID: Guid = IWebViewControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControl.SIGNATURE);
};
pub const WebViewControlAcceleratorKeyPressedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEventType(self: *@This()) core.HResult!CoreAcceleratorKeyEventType {
        const this: *IWebViewControlAcceleratorKeyPressedEventArgs = @ptrCast(self);
        return try this.getEventType();
    }
    pub fn getVirtualKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IWebViewControlAcceleratorKeyPressedEventArgs = @ptrCast(self);
        return try this.getVirtualKey();
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        const this: *IWebViewControlAcceleratorKeyPressedEventArgs = @ptrCast(self);
        return try this.getKeyStatus();
    }
    pub fn getRoutingStage(self: *@This()) core.HResult!WebViewControlAcceleratorKeyRoutingStage {
        const this: *IWebViewControlAcceleratorKeyPressedEventArgs = @ptrCast(self);
        return try this.getRoutingStage();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlAcceleratorKeyPressedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IWebViewControlAcceleratorKeyPressedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.WebViewControlAcceleratorKeyPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlAcceleratorKeyPressedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlAcceleratorKeyPressedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlAcceleratorKeyPressedEventArgs.SIGNATURE);
};
pub const WebViewControlAcceleratorKeyRoutingStage = enum(i32) {
    Tunneling = 0,
    Bubbling = 1,
};
pub const WebViewControlMoveFocusReason = enum(i32) {
    Programmatic = 0,
    Next = 1,
    Previous = 2,
};
pub const WebViewControlMoveFocusRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!WebViewControlMoveFocusReason {
        const this: *IWebViewControlMoveFocusRequestedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.WebViewControlMoveFocusRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlMoveFocusRequestedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlMoveFocusRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlMoveFocusRequestedEventArgs.SIGNATURE);
};
pub const WebViewControlProcess = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProcessId(self: *@This()) core.HResult!u32 {
        const this: *IWebViewControlProcess = @ptrCast(self);
        return try this.getProcessId();
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        const this: *IWebViewControlProcess = @ptrCast(self);
        return try this.getEnterpriseId();
    }
    pub fn getIsPrivateNetworkClientServerCapabilityEnabled(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlProcess = @ptrCast(self);
        return try this.getIsPrivateNetworkClientServerCapabilityEnabled();
    }
    pub fn CreateWebViewControlAsync(self: *@This(), hostWindowHandle: i64, bounds: Rect) core.HResult!*IAsyncOperation(WebViewControl) {
        const this: *IWebViewControlProcess = @ptrCast(self);
        return try this.CreateWebViewControlAsync(hostWindowHandle, bounds);
    }
    pub fn GetWebViewControls(self: *@This()) core.HResult!*IVectorView(WebViewControl) {
        const this: *IWebViewControlProcess = @ptrCast(self);
        return try this.GetWebViewControls();
    }
    pub fn Terminate(self: *@This()) core.HResult!void {
        const this: *IWebViewControlProcess = @ptrCast(self);
        return try this.Terminate();
    }
    pub fn addProcessExited(self: *@This(), handler: *TypedEventHandler(WebViewControlProcess,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWebViewControlProcess = @ptrCast(self);
        return try this.addProcessExited(handler);
    }
    pub fn removeProcessExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebViewControlProcess = @ptrCast(self);
        return try this.removeProcessExited(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWebViewControlProcess.IID)));
    }
    pub fn CreateWithOptions(processOptions: *WebViewControlProcessOptions) core.HResult!*WebViewControlProcess {
        const _f = @This().IWebViewControlProcessFactoryCache.get();
        return try _f.CreateWithOptions(processOptions);
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.WebViewControlProcess";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlProcess.GUID;
    pub const IID: Guid = IWebViewControlProcess.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlProcess.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IWebViewControlProcessFactoryCache: FactoryCache(IWebViewControlProcessFactory, RUNTIME_NAME) = .{};
};
pub const WebViewControlProcessCapabilityState = enum(i32) {
    Default = 0,
    Disabled = 1,
    Enabled = 2,
};
pub const WebViewControlProcessOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putEnterpriseId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWebViewControlProcessOptions = @ptrCast(self);
        return try this.putEnterpriseId(value);
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        const this: *IWebViewControlProcessOptions = @ptrCast(self);
        return try this.getEnterpriseId();
    }
    pub fn putPrivateNetworkClientServerCapability(self: *@This(), value: WebViewControlProcessCapabilityState) core.HResult!void {
        const this: *IWebViewControlProcessOptions = @ptrCast(self);
        return try this.putPrivateNetworkClientServerCapability(value);
    }
    pub fn getPrivateNetworkClientServerCapability(self: *@This()) core.HResult!WebViewControlProcessCapabilityState {
        const this: *IWebViewControlProcessOptions = @ptrCast(self);
        return try this.getPrivateNetworkClientServerCapability();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWebViewControlProcessOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Web.UI.Interop.WebViewControlProcessOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlProcessOptions.GUID;
    pub const IID: Guid = IWebViewControlProcessOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlProcessOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const WebViewControlDOMContentLoadedEventArgs = @import("../UI.zig").WebViewControlDOMContentLoadedEventArgs;
const WebViewControlUnsupportedUriSchemeIdentifiedEventArgs = @import("../UI.zig").WebViewControlUnsupportedUriSchemeIdentifiedEventArgs;
const WebViewControlNewWindowRequestedEventArgs = @import("../UI.zig").WebViewControlNewWindowRequestedEventArgs;
const IWebViewControl2 = @import("../UI.zig").IWebViewControl2;
const IRandomAccessStream = @import("../../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../../core.zig").FactoryCache;
const WebViewControlContentLoadingEventArgs = @import("../UI.zig").WebViewControlContentLoadingEventArgs;
const WebViewControlNavigationStartingEventArgs = @import("../UI.zig").WebViewControlNavigationStartingEventArgs;
const Rect = @import("../../Foundation.zig").Rect;
const IWebViewControl = @import("../UI.zig").IWebViewControl;
const WebViewControlUnviewableContentIdentifiedEventArgs = @import("../UI.zig").WebViewControlUnviewableContentIdentifiedEventArgs;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const Color = @import("../../UI.zig").Color;
const CorePhysicalKeyStatus = @import("../../UI/Core.zig").CorePhysicalKeyStatus;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const WebViewControlNavigationCompletedEventArgs = @import("../UI.zig").WebViewControlNavigationCompletedEventArgs;
const VirtualKey = @import("../../System.zig").VirtualKey;
const WebViewControlSettings = @import("../UI.zig").WebViewControlSettings;
const Uri = @import("../../Foundation.zig").Uri;
const WebViewControlPermissionRequestedEventArgs = @import("../UI.zig").WebViewControlPermissionRequestedEventArgs;
const WebViewControlScriptNotifyEventArgs = @import("../UI.zig").WebViewControlScriptNotifyEventArgs;
const IUriToStreamResolver = @import("../../Web.zig").IUriToStreamResolver;
const WebViewControlLongRunningScriptDetectedEventArgs = @import("../UI.zig").WebViewControlLongRunningScriptDetectedEventArgs;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const DataPackage = @import("../../ApplicationModel/DataTransfer.zig").DataPackage;
const CoreAcceleratorKeyEventType = @import("../../UI/Core.zig").CoreAcceleratorKeyEventType;
const HttpRequestMessage = @import("../Http.zig").HttpRequestMessage;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const WebViewControlDeferredPermissionRequest = @import("../UI.zig").WebViewControlDeferredPermissionRequest;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const WebViewControlWebResourceRequestedEventArgs = @import("../UI.zig").WebViewControlWebResourceRequestedEventArgs;
