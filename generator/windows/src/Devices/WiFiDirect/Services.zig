pub const IWiFiDirectService = extern struct {
    vtable: *const VTable,
    pub fn getRemoteServiceInfo(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_RemoteServiceInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedConfigurationMethods(self: *@This()) core.HResult!*IVectorView(WiFiDirectServiceConfigurationMethod) {
        var _r: *IVectorView(WiFiDirectServiceConfigurationMethod) = undefined;
        const _c = self.vtable.get_SupportedConfigurationMethods(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreferGroupOwnerMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PreferGroupOwnerMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferGroupOwnerMode(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PreferGroupOwnerMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_SessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSessionInfo(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_SessionInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceError(self: *@This()) core.HResult!WiFiDirectServiceError {
        var _r: WiFiDirectServiceError = undefined;
        const _c = self.vtable.get_ServiceError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSessionDeferred(self: *@This(), handler: *TypedEventHandler(WiFiDirectService,WiFiDirectServiceSessionDeferredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SessionDeferred(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSessionDeferred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SessionDeferred(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetProvisioningInfoAsync(self: *@This(), selectedConfigurationMethod: WiFiDirectServiceConfigurationMethod) core.HResult!*IAsyncOperation(WiFiDirectServiceProvisioningInfo) {
        var _r: *IAsyncOperation(WiFiDirectServiceProvisioningInfo) = undefined;
        const _c = self.vtable.GetProvisioningInfoAsync(@ptrCast(self), selectedConfigurationMethod, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This()) core.HResult!*IAsyncOperation(WiFiDirectServiceSession) {
        var _r: *IAsyncOperation(WiFiDirectServiceSession) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), pin: HSTRING) core.HResult!*IAsyncOperation(WiFiDirectServiceSession) {
        var _r: *IAsyncOperation(WiFiDirectServiceSession) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), pin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50aabbb8-5f71-45ec-84f1-a1e4fc7879a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteServiceInfo: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_SupportedConfigurationMethods: *const fn(self: *anyopaque, _r: **IVectorView(WiFiDirectServiceConfigurationMethod)) callconv(.winapi) HRESULT,
        get_PreferGroupOwnerMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PreferGroupOwnerMode: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SessionInfo: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_SessionInfo: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_ServiceError: *const fn(self: *anyopaque, _r: *WiFiDirectServiceError) callconv(.winapi) HRESULT,
        add_SessionDeferred: *const fn(self: *anyopaque, handler: *TypedEventHandler(WiFiDirectService,WiFiDirectServiceSessionDeferredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SessionDeferred: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetProvisioningInfoAsync: *const fn(self: *anyopaque, selectedConfigurationMethod: WiFiDirectServiceConfigurationMethod, _r: **IAsyncOperation(WiFiDirectServiceProvisioningInfo)) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WiFiDirectServiceSession)) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, pin: HSTRING, _r: **IAsyncOperation(WiFiDirectServiceSession)) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceAdvertiser = extern struct {
    vtable: *const VTable,
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceNamePrefixes(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ServiceNamePrefixes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceInfo(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ServiceInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServiceInfo(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_ServiceInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoAcceptSession(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoAcceptSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoAcceptSession(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoAcceptSession(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreferGroupOwnerMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PreferGroupOwnerMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferGroupOwnerMode(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PreferGroupOwnerMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreferredConfigurationMethods(self: *@This()) core.HResult!*IVector(WiFiDirectServiceConfigurationMethod) {
        var _r: *IVector(WiFiDirectServiceConfigurationMethod) = undefined;
        const _c = self.vtable.get_PreferredConfigurationMethods(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceStatus(self: *@This()) core.HResult!WiFiDirectServiceStatus {
        var _r: WiFiDirectServiceStatus = undefined;
        const _c = self.vtable.get_ServiceStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServiceStatus(self: *@This(), value: WiFiDirectServiceStatus) core.HResult!void {
        const _c = self.vtable.put_ServiceStatus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomServiceStatusCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CustomServiceStatusCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomServiceStatusCode(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CustomServiceStatusCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeferredSessionInfo(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_DeferredSessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeferredSessionInfo(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_DeferredSessionInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAdvertisementStatus(self: *@This()) core.HResult!WiFiDirectServiceAdvertisementStatus {
        var _r: WiFiDirectServiceAdvertisementStatus = undefined;
        const _c = self.vtable.get_AdvertisementStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceError(self: *@This()) core.HResult!WiFiDirectServiceError {
        var _r: WiFiDirectServiceError = undefined;
        const _c = self.vtable.get_ServiceError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSessionRequested(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceAdvertiser,WiFiDirectServiceSessionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SessionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSessionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SessionRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAutoAcceptSessionConnected(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceAdvertiser,WiFiDirectServiceAutoAcceptSessionConnectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AutoAcceptSessionConnected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAutoAcceptSessionConnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AutoAcceptSessionConnected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAdvertisementStatusChanged(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceAdvertiser,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AdvertisementStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdvertisementStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AdvertisementStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConnectAsync(self: *@This(), deviceInfo: *DeviceInformation) core.HResult!*IAsyncOperation(WiFiDirectServiceSession) {
        var _r: *IAsyncOperation(WiFiDirectServiceSession) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), deviceInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsyncWithPin(self: *@This(), deviceInfo: *DeviceInformation, pin: HSTRING) core.HResult!*IAsyncOperation(WiFiDirectServiceSession) {
        var _r: *IAsyncOperation(WiFiDirectServiceSession) = undefined;
        const _c = self.vtable.ConnectAsyncWithPin(@ptrCast(self), deviceInfo, pin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4aa1ee1-9d8f-4f4f-93ee-7ddea2e37f46";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServiceNamePrefixes: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_ServiceInfo: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_ServiceInfo: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_AutoAcceptSession: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoAcceptSession: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PreferGroupOwnerMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PreferGroupOwnerMode: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PreferredConfigurationMethods: *const fn(self: *anyopaque, _r: **IVector(WiFiDirectServiceConfigurationMethod)) callconv(.winapi) HRESULT,
        get_ServiceStatus: *const fn(self: *anyopaque, _r: *WiFiDirectServiceStatus) callconv(.winapi) HRESULT,
        put_ServiceStatus: *const fn(self: *anyopaque, value: WiFiDirectServiceStatus) callconv(.winapi) HRESULT,
        get_CustomServiceStatusCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CustomServiceStatusCode: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DeferredSessionInfo: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_DeferredSessionInfo: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_AdvertisementStatus: *const fn(self: *anyopaque, _r: *WiFiDirectServiceAdvertisementStatus) callconv(.winapi) HRESULT,
        get_ServiceError: *const fn(self: *anyopaque, _r: *WiFiDirectServiceError) callconv(.winapi) HRESULT,
        add_SessionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(WiFiDirectServiceAdvertiser,WiFiDirectServiceSessionRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SessionRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AutoAcceptSessionConnected: *const fn(self: *anyopaque, handler: *TypedEventHandler(WiFiDirectServiceAdvertiser,WiFiDirectServiceAutoAcceptSessionConnectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AutoAcceptSessionConnected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AdvertisementStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WiFiDirectServiceAdvertiser,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AdvertisementStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, deviceInfo: *DeviceInformation, _r: **IAsyncOperation(WiFiDirectServiceSession)) callconv(.winapi) HRESULT,
        ConnectAsyncWithPin: *const fn(self: *anyopaque, deviceInfo: *DeviceInformation, pin: HSTRING, _r: **IAsyncOperation(WiFiDirectServiceSession)) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceAdvertiserFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWiFiDirectServiceAdvertiser(self: *@This(), serviceName: HSTRING) core.HResult!*WiFiDirectServiceAdvertiser {
        var _r: *WiFiDirectServiceAdvertiser = undefined;
        const _c = self.vtable.CreateWiFiDirectServiceAdvertiser(@ptrCast(self), serviceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiserFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3106ac0d-b446-4f13-9f9a-8ae925feba2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWiFiDirectServiceAdvertiser: *const fn(self: *anyopaque, serviceName: HSTRING, _r: **WiFiDirectServiceAdvertiser) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*WiFiDirectServiceSession {
        var _r: *WiFiDirectServiceSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_SessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dcd9e01e-83df-43e5-8f43-cbe8479e84eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **WiFiDirectServiceSession) callconv(.winapi) HRESULT,
        get_SessionInfo: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceProvisioningInfo = extern struct {
    vtable: *const VTable,
    pub fn getSelectedConfigurationMethod(self: *@This()) core.HResult!WiFiDirectServiceConfigurationMethod {
        var _r: WiFiDirectServiceConfigurationMethod = undefined;
        const _c = self.vtable.get_SelectedConfigurationMethod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGroupFormationNeeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGroupFormationNeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceProvisioningInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bdb7cfe-97d9-45a2-8e99-db50910fb6a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedConfigurationMethod: *const fn(self: *anyopaque, _r: *WiFiDirectServiceConfigurationMethod) callconv(.winapi) HRESULT,
        get_IsGroupFormationNeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceRemotePortAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEndpointPairs(self: *@This()) core.HResult!*IVectorView(EndpointPair) {
        var _r: *IVectorView(EndpointPair) = undefined;
        const _c = self.vtable.get_EndpointPairs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocol(self: *@This()) core.HResult!WiFiDirectServiceIPProtocol {
        var _r: WiFiDirectServiceIPProtocol = undefined;
        const _c = self.vtable.get_Protocol(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceRemotePortAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4cebac1-3fd3-4f0e-b7bd-782906f44411";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EndpointPairs: *const fn(self: *anyopaque, _r: **IVectorView(EndpointPair)) callconv(.winapi) HRESULT,
        get_Protocol: *const fn(self: *anyopaque, _r: *WiFiDirectServiceIPProtocol) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceSession = extern struct {
    vtable: *const VTable,
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!WiFiDirectServiceSessionStatus {
        var _r: WiFiDirectServiceSessionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorStatus(self: *@This()) core.HResult!WiFiDirectServiceSessionErrorStatus {
        var _r: WiFiDirectServiceSessionErrorStatus = undefined;
        const _c = self.vtable.get_ErrorStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdvertisementId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AdvertisementId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SessionAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConnectionEndpointPairs(self: *@This()) core.HResult!*IVectorView(EndpointPair) {
        var _r: *IVectorView(EndpointPair) = undefined;
        const _c = self.vtable.GetConnectionEndpointPairs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSessionStatusChanged(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SessionStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSessionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SessionStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStreamSocketListenerAsync(self: *@This(), value: *StreamSocketListener) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AddStreamSocketListenerAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddDatagramSocketAsync(self: *@This(), value: *DatagramSocket) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AddDatagramSocketAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRemotePortAdded(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceSession,WiFiDirectServiceRemotePortAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RemotePortAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemotePortAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RemotePortAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81142163-e426-47cb-8640-e1b3588bf26f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *WiFiDirectServiceSessionStatus) callconv(.winapi) HRESULT,
        get_ErrorStatus: *const fn(self: *anyopaque, _r: *WiFiDirectServiceSessionErrorStatus) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AdvertisementId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ServiceAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SessionAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetConnectionEndpointPairs: *const fn(self: *anyopaque, _r: **IVectorView(EndpointPair)) callconv(.winapi) HRESULT,
        add_SessionStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WiFiDirectServiceSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SessionStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        AddStreamSocketListenerAsync: *const fn(self: *anyopaque, value: *StreamSocketListener, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AddDatagramSocketAsync: *const fn(self: *anyopaque, value: *DatagramSocket, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_RemotePortAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(WiFiDirectServiceSession,WiFiDirectServiceRemotePortAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RemotePortAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceSessionDeferredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDeferredSessionInfo(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_DeferredSessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionDeferredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8dfc197f-1201-4f1f-b6f4-5df1b7b9fb2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeferredSessionInfo: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceSessionRequest = extern struct {
    vtable: *const VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProvisioningInfo(self: *@This()) core.HResult!*WiFiDirectServiceProvisioningInfo {
        var _r: *WiFiDirectServiceProvisioningInfo = undefined;
        const _c = self.vtable.get_ProvisioningInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_SessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0e27c8b-50cb-4a58-9bcf-e472b99fba04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceInformation: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
        get_ProvisioningInfo: *const fn(self: *anyopaque, _r: **WiFiDirectServiceProvisioningInfo) callconv(.winapi) HRESULT,
        get_SessionInfo: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceSessionRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetSessionRequest(self: *@This()) core.HResult!*WiFiDirectServiceSessionRequest {
        var _r: *WiFiDirectServiceSessionRequest = undefined;
        const _c = self.vtable.GetSessionRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74bdcc11-53d6-4999-b4f8-6c8ecc1771e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSessionRequest: *const fn(self: *anyopaque, _r: **WiFiDirectServiceSessionRequest) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectServiceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetSelector(self: *@This(), serviceName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetSelector(@ptrCast(self), serviceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSelectorWithServiceInfoFilter(self: *@This(), serviceName: HSTRING, serviceInfoFilter: *IBuffer) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetSelectorWithServiceInfoFilter(@ptrCast(self), serviceName, serviceInfoFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(WiFiDirectService) {
        var _r: *IAsyncOperation(WiFiDirectService) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7db40045-fd74-4688-b725-5dce86acf233";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSelector: *const fn(self: *anyopaque, serviceName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetSelectorWithServiceInfoFilter: *const fn(self: *anyopaque, serviceName: HSTRING, serviceInfoFilter: *IBuffer, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(WiFiDirectService)) callconv(.winapi) HRESULT,
    };
};
pub const WiFiDirectService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteServiceInfo(self: *@This()) core.HResult!*IBuffer {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.getRemoteServiceInfo();
    }
    pub fn getSupportedConfigurationMethods(self: *@This()) core.HResult!*IVectorView(WiFiDirectServiceConfigurationMethod) {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.getSupportedConfigurationMethods();
    }
    pub fn getPreferGroupOwnerMode(self: *@This()) core.HResult!bool {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.getPreferGroupOwnerMode();
    }
    pub fn putPreferGroupOwnerMode(self: *@This(), value: bool) core.HResult!void {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.putPreferGroupOwnerMode(value);
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*IBuffer {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.getSessionInfo();
    }
    pub fn putSessionInfo(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.putSessionInfo(value);
    }
    pub fn getServiceError(self: *@This()) core.HResult!WiFiDirectServiceError {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.getServiceError();
    }
    pub fn addSessionDeferred(self: *@This(), handler: *TypedEventHandler(WiFiDirectService,WiFiDirectServiceSessionDeferredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.addSessionDeferred(handler);
    }
    pub fn removeSessionDeferred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.removeSessionDeferred(token);
    }
    pub fn GetProvisioningInfoAsync(self: *@This(), selectedConfigurationMethod: WiFiDirectServiceConfigurationMethod) core.HResult!*IAsyncOperation(WiFiDirectServiceProvisioningInfo) {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.GetProvisioningInfoAsync(selectedConfigurationMethod);
    }
    pub fn ConnectAsync(self: *@This()) core.HResult!*IAsyncOperation(WiFiDirectServiceSession) {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.ConnectAsync();
    }
    pub fn ConnectAsync(self: *@This(), pin: HSTRING) core.HResult!*IAsyncOperation(WiFiDirectServiceSession) {
        const this: *IWiFiDirectService = @ptrCast(self);
        return try this.ConnectAsync(pin);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetSelector(serviceName: HSTRING) core.HResult!HSTRING {
        const factory = @This().IWiFiDirectServiceStaticsCache.get();
        return try factory.GetSelector(serviceName);
    }
    pub fn GetSelectorWithServiceInfoFilter(serviceName: HSTRING, serviceInfoFilter: *IBuffer) core.HResult!HSTRING {
        const factory = @This().IWiFiDirectServiceStaticsCache.get();
        return try factory.GetSelectorWithServiceInfoFilter(serviceName, serviceInfoFilter);
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(WiFiDirectService) {
        const factory = @This().IWiFiDirectServiceStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.WiFiDirectService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectService.GUID;
    pub const IID: Guid = IWiFiDirectService.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectService.SIGNATURE);
    var _IWiFiDirectServiceStaticsCache: FactoryCache(IWiFiDirectServiceStatics, RUNTIME_NAME) = .{};
};
pub const WiFiDirectServiceAdvertisementStatus = enum(i32) {
    Created = 0,
    Started = 1,
    Stopped = 2,
    Aborted = 3,
};
pub const WiFiDirectServiceAdvertiser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getServiceName();
    }
    pub fn getServiceNamePrefixes(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getServiceNamePrefixes();
    }
    pub fn getServiceInfo(self: *@This()) core.HResult!*IBuffer {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getServiceInfo();
    }
    pub fn putServiceInfo(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.putServiceInfo(value);
    }
    pub fn getAutoAcceptSession(self: *@This()) core.HResult!bool {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getAutoAcceptSession();
    }
    pub fn putAutoAcceptSession(self: *@This(), value: bool) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.putAutoAcceptSession(value);
    }
    pub fn getPreferGroupOwnerMode(self: *@This()) core.HResult!bool {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getPreferGroupOwnerMode();
    }
    pub fn putPreferGroupOwnerMode(self: *@This(), value: bool) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.putPreferGroupOwnerMode(value);
    }
    pub fn getPreferredConfigurationMethods(self: *@This()) core.HResult!*IVector(WiFiDirectServiceConfigurationMethod) {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getPreferredConfigurationMethods();
    }
    pub fn getServiceStatus(self: *@This()) core.HResult!WiFiDirectServiceStatus {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getServiceStatus();
    }
    pub fn putServiceStatus(self: *@This(), value: WiFiDirectServiceStatus) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.putServiceStatus(value);
    }
    pub fn getCustomServiceStatusCode(self: *@This()) core.HResult!u32 {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getCustomServiceStatusCode();
    }
    pub fn putCustomServiceStatusCode(self: *@This(), value: u32) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.putCustomServiceStatusCode(value);
    }
    pub fn getDeferredSessionInfo(self: *@This()) core.HResult!*IBuffer {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getDeferredSessionInfo();
    }
    pub fn putDeferredSessionInfo(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.putDeferredSessionInfo(value);
    }
    pub fn getAdvertisementStatus(self: *@This()) core.HResult!WiFiDirectServiceAdvertisementStatus {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getAdvertisementStatus();
    }
    pub fn getServiceError(self: *@This()) core.HResult!WiFiDirectServiceError {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.getServiceError();
    }
    pub fn addSessionRequested(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceAdvertiser,WiFiDirectServiceSessionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.addSessionRequested(handler);
    }
    pub fn removeSessionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.removeSessionRequested(token);
    }
    pub fn addAutoAcceptSessionConnected(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceAdvertiser,WiFiDirectServiceAutoAcceptSessionConnectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.addAutoAcceptSessionConnected(handler);
    }
    pub fn removeAutoAcceptSessionConnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.removeAutoAcceptSessionConnected(token);
    }
    pub fn addAdvertisementStatusChanged(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceAdvertiser,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.addAdvertisementStatusChanged(handler);
    }
    pub fn removeAdvertisementStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.removeAdvertisementStatusChanged(token);
    }
    pub fn ConnectAsync(self: *@This(), deviceInfo: *DeviceInformation) core.HResult!*IAsyncOperation(WiFiDirectServiceSession) {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.ConnectAsync(deviceInfo);
    }
    pub fn ConnectAsyncWithPin(self: *@This(), deviceInfo: *DeviceInformation, pin: HSTRING) core.HResult!*IAsyncOperation(WiFiDirectServiceSession) {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.ConnectAsyncWithPin(deviceInfo, pin);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IWiFiDirectServiceAdvertiser = @ptrCast(self);
        return try this.Stop();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWiFiDirectServiceAdvertiser(serviceName: HSTRING) core.HResult!*WiFiDirectServiceAdvertiser {
        const factory = @This().IWiFiDirectServiceAdvertiserFactoryCache.get();
        return try factory.CreateWiFiDirectServiceAdvertiser(serviceName);
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectServiceAdvertiser.GUID;
    pub const IID: Guid = IWiFiDirectServiceAdvertiser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectServiceAdvertiser.SIGNATURE);
    var _IWiFiDirectServiceAdvertiserFactoryCache: FactoryCache(IWiFiDirectServiceAdvertiserFactory, RUNTIME_NAME) = .{};
};
pub const WiFiDirectServiceAutoAcceptSessionConnectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*WiFiDirectServiceSession {
        const this: *IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs = @ptrCast(self);
        return try this.getSession();
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*IBuffer {
        const this: *IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs = @ptrCast(self);
        return try this.getSessionInfo();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAutoAcceptSessionConnectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs.GUID;
    pub const IID: Guid = IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs.SIGNATURE);
};
pub const WiFiDirectServiceConfigurationMethod = enum(i32) {
    Default = 0,
    PinDisplay = 1,
    PinEntry = 2,
};
pub const WiFiDirectServiceError = enum(i32) {
    Success = 0,
    RadioNotAvailable = 1,
    ResourceInUse = 2,
    UnsupportedHardware = 3,
    NoHardware = 4,
};
pub const WiFiDirectServiceIPProtocol = enum(i32) {
    Tcp = 6,
    Udp = 17,
};
pub const WiFiDirectServiceProvisioningInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelectedConfigurationMethod(self: *@This()) core.HResult!WiFiDirectServiceConfigurationMethod {
        const this: *IWiFiDirectServiceProvisioningInfo = @ptrCast(self);
        return try this.getSelectedConfigurationMethod();
    }
    pub fn getIsGroupFormationNeeded(self: *@This()) core.HResult!bool {
        const this: *IWiFiDirectServiceProvisioningInfo = @ptrCast(self);
        return try this.getIsGroupFormationNeeded();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectServiceProvisioningInfo.GUID;
    pub const IID: Guid = IWiFiDirectServiceProvisioningInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectServiceProvisioningInfo.SIGNATURE);
};
pub const WiFiDirectServiceRemotePortAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEndpointPairs(self: *@This()) core.HResult!*IVectorView(EndpointPair) {
        const this: *IWiFiDirectServiceRemotePortAddedEventArgs = @ptrCast(self);
        return try this.getEndpointPairs();
    }
    pub fn getProtocol(self: *@This()) core.HResult!WiFiDirectServiceIPProtocol {
        const this: *IWiFiDirectServiceRemotePortAddedEventArgs = @ptrCast(self);
        return try this.getProtocol();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.WiFiDirectServiceRemotePortAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectServiceRemotePortAddedEventArgs.GUID;
    pub const IID: Guid = IWiFiDirectServiceRemotePortAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectServiceRemotePortAddedEventArgs.SIGNATURE);
};
pub const WiFiDirectServiceSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.getServiceName();
    }
    pub fn getStatus(self: *@This()) core.HResult!WiFiDirectServiceSessionStatus {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getErrorStatus(self: *@This()) core.HResult!WiFiDirectServiceSessionErrorStatus {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.getErrorStatus();
    }
    pub fn getSessionId(self: *@This()) core.HResult!u32 {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn getAdvertisementId(self: *@This()) core.HResult!u32 {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.getAdvertisementId();
    }
    pub fn getServiceAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.getServiceAddress();
    }
    pub fn getSessionAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.getSessionAddress();
    }
    pub fn GetConnectionEndpointPairs(self: *@This()) core.HResult!*IVectorView(EndpointPair) {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.GetConnectionEndpointPairs();
    }
    pub fn addSessionStatusChanged(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.addSessionStatusChanged(handler);
    }
    pub fn removeSessionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.removeSessionStatusChanged(token);
    }
    pub fn AddStreamSocketListenerAsync(self: *@This(), value: *StreamSocketListener) core.HResult!*IAsyncAction {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.AddStreamSocketListenerAsync(value);
    }
    pub fn AddDatagramSocketAsync(self: *@This(), value: *DatagramSocket) core.HResult!*IAsyncAction {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.AddDatagramSocketAsync(value);
    }
    pub fn addRemotePortAdded(self: *@This(), handler: *TypedEventHandler(WiFiDirectServiceSession,WiFiDirectServiceRemotePortAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.addRemotePortAdded(handler);
    }
    pub fn removeRemotePortAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiDirectServiceSession = @ptrCast(self);
        return try this.removeRemotePortAdded(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectServiceSession.GUID;
    pub const IID: Guid = IWiFiDirectServiceSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectServiceSession.SIGNATURE);
};
pub const WiFiDirectServiceSessionDeferredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeferredSessionInfo(self: *@This()) core.HResult!*IBuffer {
        const this: *IWiFiDirectServiceSessionDeferredEventArgs = @ptrCast(self);
        return try this.getDeferredSessionInfo();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionDeferredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectServiceSessionDeferredEventArgs.GUID;
    pub const IID: Guid = IWiFiDirectServiceSessionDeferredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectServiceSessionDeferredEventArgs.SIGNATURE);
};
pub const WiFiDirectServiceSessionErrorStatus = enum(i32) {
    Ok = 0,
    Disassociated = 1,
    LocalClose = 2,
    RemoteClose = 3,
    SystemFailure = 4,
    NoResponseFromRemote = 5,
};
pub const WiFiDirectServiceSessionRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IWiFiDirectServiceSessionRequest = @ptrCast(self);
        return try this.getDeviceInformation();
    }
    pub fn getProvisioningInfo(self: *@This()) core.HResult!*WiFiDirectServiceProvisioningInfo {
        const this: *IWiFiDirectServiceSessionRequest = @ptrCast(self);
        return try this.getProvisioningInfo();
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*IBuffer {
        const this: *IWiFiDirectServiceSessionRequest = @ptrCast(self);
        return try this.getSessionInfo();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectServiceSessionRequest.GUID;
    pub const IID: Guid = IWiFiDirectServiceSessionRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectServiceSessionRequest.SIGNATURE);
};
pub const WiFiDirectServiceSessionRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetSessionRequest(self: *@This()) core.HResult!*WiFiDirectServiceSessionRequest {
        const this: *IWiFiDirectServiceSessionRequestedEventArgs = @ptrCast(self);
        return try this.GetSessionRequest();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectServiceSessionRequestedEventArgs.GUID;
    pub const IID: Guid = IWiFiDirectServiceSessionRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectServiceSessionRequestedEventArgs.SIGNATURE);
};
pub const WiFiDirectServiceSessionStatus = enum(i32) {
    Closed = 0,
    Initiated = 1,
    Requested = 2,
    Open = 3,
};
pub const WiFiDirectServiceStatus = enum(i32) {
    Available = 0,
    Busy = 1,
    Custom = 2,
};
const IUnknown = @import("../../root.zig").IUnknown;
const IClosable = @import("../../Foundation.zig").IClosable;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const DeviceInformation = @import("../Enumeration.zig").DeviceInformation;
const DatagramSocket = @import("../../Networking/Sockets.zig").DatagramSocket;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const StreamSocketListener = @import("../../Networking/Sockets.zig").StreamSocketListener;
const FactoryCache = @import("../../core.zig").FactoryCache;
const EndpointPair = @import("../../Networking.zig").EndpointPair;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
