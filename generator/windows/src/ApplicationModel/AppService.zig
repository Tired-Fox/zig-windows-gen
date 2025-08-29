pub const AppServiceCatalog = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindAppServiceProvidersAsync(appServiceName: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        const factory = @This().IAppServiceCatalogStaticsCache.get();
        return try factory.FindAppServiceProvidersAsync(appServiceName);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.AppServiceCatalog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAppServiceCatalogStaticsCache: FactoryCache(IAppServiceCatalogStatics, RUNTIME_NAME) = .{};
};
pub const AppServiceClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AppServiceClosedStatus {
        const this: *IAppServiceClosedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.AppServiceClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppServiceClosedEventArgs.GUID;
    pub const IID: Guid = IAppServiceClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppServiceClosedEventArgs.SIGNATURE);
};
pub const AppServiceClosedStatus = enum(i32) {
    Completed = 0,
    Canceled = 1,
    ResourceLimitsExceeded = 2,
    Unknown = 3,
};
pub const AppServiceConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.getAppServiceName();
    }
    pub fn putAppServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.putAppServiceName(value);
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.getPackageFamilyName();
    }
    pub fn putPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.putPackageFamilyName(value);
    }
    pub fn OpenAsync(self: *@This()) core.HResult!*IAsyncOperation(AppServiceConnectionStatus) {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.OpenAsync();
    }
    pub fn SendMessageAsync(self: *@This(), message: *ValueSet) core.HResult!*IAsyncOperation(AppServiceResponse) {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.SendMessageAsync(message);
    }
    pub fn addRequestReceived(self: *@This(), handler: *TypedEventHandler(AppServiceConnection,AppServiceRequestReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.addRequestReceived(handler);
    }
    pub fn removeRequestReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.removeRequestReceived(token);
    }
    pub fn addServiceClosed(self: *@This(), handler: *TypedEventHandler(AppServiceConnection,AppServiceClosedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.addServiceClosed(handler);
    }
    pub fn removeServiceClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppServiceConnection = @ptrCast(self);
        return try this.removeServiceClosed(token);
    }
    pub fn OpenRemoteAsync(self: *@This(), remoteSystemConnectionRequest: *RemoteSystemConnectionRequest) core.HResult!*IAsyncOperation(AppServiceConnectionStatus) {
        var this: ?*IAppServiceConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppServiceConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenRemoteAsync(remoteSystemConnectionRequest);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IAppServiceConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppServiceConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn putUser(self: *@This(), value: *User) core.HResult!void {
        var this: ?*IAppServiceConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppServiceConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUser(value);
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
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppServiceConnection.IID)));
    }
    pub fn SendStatelessMessageAsync(connection: *AppServiceConnection, connectionRequest: *RemoteSystemConnectionRequest, message: *ValueSet) core.HResult!*IAsyncOperation(StatelessAppServiceResponse) {
        const factory = @This().IAppServiceConnectionStaticsCache.get();
        return try factory.SendStatelessMessageAsync(connection, connectionRequest, message);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.AppServiceConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppServiceConnection.GUID;
    pub const IID: Guid = IAppServiceConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppServiceConnection.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAppServiceConnectionStaticsCache: FactoryCache(IAppServiceConnectionStatics, RUNTIME_NAME) = .{};
};
pub const AppServiceConnectionStatus = enum(i32) {
    Success = 0,
    AppNotInstalled = 1,
    AppUnavailable = 2,
    AppServiceUnavailable = 3,
    Unknown = 4,
    RemoteSystemUnavailable = 5,
    RemoteSystemNotSupportedByApp = 6,
    NotAuthorized = 7,
    AuthenticationError = 8,
    NetworkNotAvailable = 9,
    DisabledByPolicy = 10,
    WebServiceUnavailable = 11,
};
pub const AppServiceDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IAppServiceDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.AppServiceDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppServiceDeferral.GUID;
    pub const IID: Guid = IAppServiceDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppServiceDeferral.SIGNATURE);
};
pub const AppServiceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessage(self: *@This()) core.HResult!*ValueSet {
        const this: *IAppServiceRequest = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn SendResponseAsync(self: *@This(), message: *ValueSet) core.HResult!*IAsyncOperation(AppServiceResponseStatus) {
        const this: *IAppServiceRequest = @ptrCast(self);
        return try this.SendResponseAsync(message);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.AppServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppServiceRequest.GUID;
    pub const IID: Guid = IAppServiceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppServiceRequest.SIGNATURE);
};
pub const AppServiceRequestReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppServiceRequest {
        const this: *IAppServiceRequestReceivedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*AppServiceDeferral {
        const this: *IAppServiceRequestReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.AppServiceRequestReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppServiceRequestReceivedEventArgs.GUID;
    pub const IID: Guid = IAppServiceRequestReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppServiceRequestReceivedEventArgs.SIGNATURE);
};
pub const AppServiceResponse = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessage(self: *@This()) core.HResult!*ValueSet {
        const this: *IAppServiceResponse = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn getStatus(self: *@This()) core.HResult!AppServiceResponseStatus {
        const this: *IAppServiceResponse = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.AppServiceResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppServiceResponse.GUID;
    pub const IID: Guid = IAppServiceResponse.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppServiceResponse.SIGNATURE);
};
pub const AppServiceResponseStatus = enum(i32) {
    Success = 0,
    Failure = 1,
    ResourceLimitsExceeded = 2,
    Unknown = 3,
    RemoteSystemUnavailable = 4,
    MessageSizeTooLarge = 5,
    AppUnavailable = 6,
    AuthenticationError = 7,
    NetworkNotAvailable = 8,
    DisabledByPolicy = 9,
    WebServiceUnavailable = 10,
};
pub const AppServiceTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppServiceTriggerDetails = @ptrCast(self);
        return try this.getName();
    }
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppServiceTriggerDetails = @ptrCast(self);
        return try this.getCallerPackageFamilyName();
    }
    pub fn getAppServiceConnection(self: *@This()) core.HResult!*AppServiceConnection {
        const this: *IAppServiceTriggerDetails = @ptrCast(self);
        return try this.getAppServiceConnection();
    }
    pub fn getIsRemoteSystemConnection(self: *@This()) core.HResult!bool {
        var this: ?*IAppServiceTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppServiceTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRemoteSystemConnection();
    }
    pub fn CheckCallerForCapabilityAsync(self: *@This(), capabilityName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppServiceTriggerDetails3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppServiceTriggerDetails3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CheckCallerForCapabilityAsync(capabilityName);
    }
    pub fn getCallerRemoteConnectionToken(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppServiceTriggerDetails4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppServiceTriggerDetails4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCallerRemoteConnectionToken();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.AppServiceTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppServiceTriggerDetails.GUID;
    pub const IID: Guid = IAppServiceTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppServiceTriggerDetails.SIGNATURE);
};
pub const IAppServiceCatalogStatics = extern struct {
    vtable: *const VTable,
    pub fn FindAppServiceProvidersAsync(self: *@This(), appServiceName: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        var _r: *IAsyncOperation(IVectorView(AppInfo)) = undefined;
        const _c = self.vtable.FindAppServiceProvidersAsync(@ptrCast(self), appServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceCatalogStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef0d2507-d132-4c85-8395-3c31d5a1e941";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAppServiceProvidersAsync: *const fn(self: *anyopaque, appServiceName: HSTRING, _r: **IAsyncOperation(IVectorView(AppInfo))) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AppServiceClosedStatus {
        var _r: AppServiceClosedStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de6016f6-cb03-4d35-ac8d-cc6303239731";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AppServiceClosedStatus) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceConnection = extern struct {
    vtable: *const VTable,
    pub fn getAppServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AppServiceName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PackageFamilyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OpenAsync(self: *@This()) core.HResult!*IAsyncOperation(AppServiceConnectionStatus) {
        var _r: *IAsyncOperation(AppServiceConnectionStatus) = undefined;
        const _c = self.vtable.OpenAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendMessageAsync(self: *@This(), message: *ValueSet) core.HResult!*IAsyncOperation(AppServiceResponse) {
        var _r: *IAsyncOperation(AppServiceResponse) = undefined;
        const _c = self.vtable.SendMessageAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRequestReceived(self: *@This(), handler: *TypedEventHandler(AppServiceConnection,AppServiceRequestReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RequestReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRequestReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RequestReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addServiceClosed(self: *@This(), handler: *TypedEventHandler(AppServiceConnection,AppServiceClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ServiceClosed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeServiceClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ServiceClosed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9dd474a2-871f-4d52-89a9-9e090531bd27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AppServiceName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PackageFamilyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        OpenAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AppServiceConnectionStatus)) callconv(.winapi) HRESULT,
        SendMessageAsync: *const fn(self: *anyopaque, message: *ValueSet, _r: **IAsyncOperation(AppServiceResponse)) callconv(.winapi) HRESULT,
        add_RequestReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppServiceConnection,AppServiceRequestReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RequestReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ServiceClosed: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppServiceConnection,AppServiceClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ServiceClosed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceConnection2 = extern struct {
    vtable: *const VTable,
    pub fn OpenRemoteAsync(self: *@This(), remoteSystemConnectionRequest: *RemoteSystemConnectionRequest) core.HResult!*IAsyncOperation(AppServiceConnectionStatus) {
        var _r: *IAsyncOperation(AppServiceConnectionStatus) = undefined;
        const _c = self.vtable.OpenRemoteAsync(@ptrCast(self), remoteSystemConnectionRequest, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUser(self: *@This(), value: *User) core.HResult!void {
        const _c = self.vtable.put_User(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceConnection2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bdfcd5f-2302-4fbd-8061-52511c2f8bf9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenRemoteAsync: *const fn(self: *anyopaque, remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, _r: **IAsyncOperation(AppServiceConnectionStatus)) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        put_User: *const fn(self: *anyopaque, value: *User) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceConnectionStatics = extern struct {
    vtable: *const VTable,
    pub fn SendStatelessMessageAsync(self: *@This(), connection: *AppServiceConnection, connectionRequest: *RemoteSystemConnectionRequest, message: *ValueSet) core.HResult!*IAsyncOperation(StatelessAppServiceResponse) {
        var _r: *IAsyncOperation(StatelessAppServiceResponse) = undefined;
        const _c = self.vtable.SendStatelessMessageAsync(@ptrCast(self), connection, connectionRequest, message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceConnectionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "adc56ce9-d408-5673-8637-827a4b274168";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendStatelessMessageAsync: *const fn(self: *anyopaque, connection: *AppServiceConnection, connectionRequest: *RemoteSystemConnectionRequest, message: *ValueSet, _r: **IAsyncOperation(StatelessAppServiceResponse)) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e1b5322-eab0-4248-ae04-fdf93838e472";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceRequest = extern struct {
    vtable: *const VTable,
    pub fn getMessage(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendResponseAsync(self: *@This(), message: *ValueSet) core.HResult!*IAsyncOperation(AppServiceResponseStatus) {
        var _r: *IAsyncOperation(AppServiceResponseStatus) = undefined;
        const _c = self.vtable.SendResponseAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20e58d9d-18de-4b01-80ba-90a76204e3c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        SendResponseAsync: *const fn(self: *anyopaque, message: *ValueSet, _r: **IAsyncOperation(AppServiceResponseStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceRequestReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*AppServiceRequest {
        var _r: *AppServiceRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*AppServiceDeferral {
        var _r: *AppServiceDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceRequestReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e122360-ff65-44ae-9e45-857fe4180681";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **AppServiceRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **AppServiceDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceResponse = extern struct {
    vtable: *const VTable,
    pub fn getMessage(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!AppServiceResponseStatus {
        var _r: AppServiceResponseStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d503cec-9aa3-4e68-9559-9de63e372ce4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AppServiceResponseStatus) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCallerPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallerPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppServiceConnection(self: *@This()) core.HResult!*AppServiceConnection {
        var _r: *AppServiceConnection = undefined;
        const _c = self.vtable.get_AppServiceConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88a2dcac-ad28-41b8-80bb-bdf1b2169e19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CallerPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppServiceConnection: *const fn(self: *anyopaque, _r: **AppServiceConnection) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceTriggerDetails2 = extern struct {
    vtable: *const VTable,
    pub fn getIsRemoteSystemConnection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRemoteSystemConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceTriggerDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e83d54b2-28cc-43f2-b465-c0482e59e2dc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRemoteSystemConnection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceTriggerDetails3 = extern struct {
    vtable: *const VTable,
    pub fn CheckCallerForCapabilityAsync(self: *@This(), capabilityName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.CheckCallerForCapabilityAsync(@ptrCast(self), capabilityName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceTriggerDetails3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbd71e21-7939-4e68-9e3c-7780147aabb6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CheckCallerForCapabilityAsync: *const fn(self: *anyopaque, capabilityName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IAppServiceTriggerDetails4 = extern struct {
    vtable: *const VTable,
    pub fn getCallerRemoteConnectionToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallerRemoteConnectionToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IAppServiceTriggerDetails4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1185b180-8861-5e30-ab55-1cf4d08bbf6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CallerRemoteConnectionToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStatelessAppServiceResponse = extern struct {
    vtable: *const VTable,
    pub fn getMessage(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!StatelessAppServiceResponseStatus {
        var _r: StatelessAppServiceResponseStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.IStatelessAppServiceResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43754af7-a9ec-52fe-82e7-939b68dc9388";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StatelessAppServiceResponseStatus) callconv(.winapi) HRESULT,
    };
};
pub const StatelessAppServiceResponse = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessage(self: *@This()) core.HResult!*ValueSet {
        const this: *IStatelessAppServiceResponse = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn getStatus(self: *@This()) core.HResult!StatelessAppServiceResponseStatus {
        const this: *IStatelessAppServiceResponse = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppService.StatelessAppServiceResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStatelessAppServiceResponse.GUID;
    pub const IID: Guid = IStatelessAppServiceResponse.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStatelessAppServiceResponse.SIGNATURE);
};
pub const StatelessAppServiceResponseStatus = enum(i32) {
    Success = 0,
    AppNotInstalled = 1,
    AppUnavailable = 2,
    AppServiceUnavailable = 3,
    RemoteSystemUnavailable = 4,
    RemoteSystemNotSupportedByApp = 5,
    NotAuthorized = 6,
    ResourceLimitsExceeded = 7,
    MessageSizeTooLarge = 8,
    Failure = 9,
    Unknown = 10,
    AuthenticationError = 11,
    NetworkNotAvailable = 12,
    DisabledByPolicy = 13,
    WebServiceUnavailable = 14,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const RemoteSystemConnectionRequest = @import("../System/RemoteSystems.zig").RemoteSystemConnectionRequest;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const AppInfo = @import("../ApplicationModel.zig").AppInfo;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const User = @import("../System.zig").User;
const HSTRING = @import("../root.zig").HSTRING;
