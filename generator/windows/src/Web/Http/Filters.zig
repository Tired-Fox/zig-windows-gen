pub const HttpBaseProtocolFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowAutoRedirect(self: *@This()) core.HResult!bool {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getAllowAutoRedirect();
    }
    pub fn putAllowAutoRedirect(self: *@This(), value: bool) core.HResult!void {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.putAllowAutoRedirect(value);
    }
    pub fn getAllowUI(self: *@This()) core.HResult!bool {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getAllowUI();
    }
    pub fn putAllowUI(self: *@This(), value: bool) core.HResult!void {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.putAllowUI(value);
    }
    pub fn getAutomaticDecompression(self: *@This()) core.HResult!bool {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getAutomaticDecompression();
    }
    pub fn putAutomaticDecompression(self: *@This(), value: bool) core.HResult!void {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.putAutomaticDecompression(value);
    }
    pub fn getCacheControl(self: *@This()) core.HResult!*HttpCacheControl {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getCacheControl();
    }
    pub fn getCookieManager(self: *@This()) core.HResult!*HttpCookieManager {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getCookieManager();
    }
    pub fn getClientCertificate(self: *@This()) core.HResult!*Certificate {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getClientCertificate();
    }
    pub fn putClientCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.putClientCertificate(value);
    }
    pub fn getIgnorableServerCertificateErrors(self: *@This()) core.HResult!*IVector(ChainValidationResult) {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getIgnorableServerCertificateErrors();
    }
    pub fn getMaxConnectionsPerServer(self: *@This()) core.HResult!u32 {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getMaxConnectionsPerServer();
    }
    pub fn putMaxConnectionsPerServer(self: *@This(), value: u32) core.HResult!void {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.putMaxConnectionsPerServer(value);
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getProxyCredential();
    }
    pub fn putProxyCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.putProxyCredential(value);
    }
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getServerCredential();
    }
    pub fn putServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.putServerCredential(value);
    }
    pub fn getUseProxy(self: *@This()) core.HResult!bool {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.getUseProxy();
    }
    pub fn putUseProxy(self: *@This(), value: bool) core.HResult!void {
        const this: *IHttpBaseProtocolFilter = @ptrCast(self);
        return try this.putUseProxy(value);
    }
    pub fn getMaxVersion(self: *@This()) core.HResult!HttpVersion {
        var this: ?*IHttpBaseProtocolFilter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpBaseProtocolFilter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxVersion();
    }
    pub fn putMaxVersion(self: *@This(), value: HttpVersion) core.HResult!void {
        var this: ?*IHttpBaseProtocolFilter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpBaseProtocolFilter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxVersion(value);
    }
    pub fn getCookieUsageBehavior(self: *@This()) core.HResult!HttpCookieUsageBehavior {
        var this: ?*IHttpBaseProtocolFilter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpBaseProtocolFilter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCookieUsageBehavior();
    }
    pub fn putCookieUsageBehavior(self: *@This(), value: HttpCookieUsageBehavior) core.HResult!void {
        var this: ?*IHttpBaseProtocolFilter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpBaseProtocolFilter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCookieUsageBehavior(value);
    }
    pub fn addServerCustomValidationRequested(self: *@This(), handler: *TypedEventHandler(HttpBaseProtocolFilter,HttpServerCustomValidationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IHttpBaseProtocolFilter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpBaseProtocolFilter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addServerCustomValidationRequested(handler);
    }
    pub fn removeServerCustomValidationRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IHttpBaseProtocolFilter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpBaseProtocolFilter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeServerCustomValidationRequested(token);
    }
    pub fn ClearAuthenticationCache(self: *@This()) core.HResult!void {
        var this: ?*IHttpBaseProtocolFilter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpBaseProtocolFilter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ClearAuthenticationCache();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IHttpBaseProtocolFilter5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpBaseProtocolFilter5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn SendRequestAsync(self: *@This(), request: *HttpRequestMessage) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        var this: ?*IHttpFilter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpFilter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SendRequestAsync(request);
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
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHttpBaseProtocolFilter.IID)));
    }
    pub fn CreateForUser(user: *User) core.HResult!*HttpBaseProtocolFilter {
        const factory = @This().IHttpBaseProtocolFilterStaticsCache.get();
        return try factory.CreateForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.HttpBaseProtocolFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpBaseProtocolFilter.GUID;
    pub const IID: Guid = IHttpBaseProtocolFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpBaseProtocolFilter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IHttpBaseProtocolFilterStaticsCache: FactoryCache(IHttpBaseProtocolFilterStatics, RUNTIME_NAME) = .{};
};
pub const HttpCacheControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReadBehavior(self: *@This()) core.HResult!HttpCacheReadBehavior {
        const this: *IHttpCacheControl = @ptrCast(self);
        return try this.getReadBehavior();
    }
    pub fn putReadBehavior(self: *@This(), value: HttpCacheReadBehavior) core.HResult!void {
        const this: *IHttpCacheControl = @ptrCast(self);
        return try this.putReadBehavior(value);
    }
    pub fn getWriteBehavior(self: *@This()) core.HResult!HttpCacheWriteBehavior {
        const this: *IHttpCacheControl = @ptrCast(self);
        return try this.getWriteBehavior();
    }
    pub fn putWriteBehavior(self: *@This(), value: HttpCacheWriteBehavior) core.HResult!void {
        const this: *IHttpCacheControl = @ptrCast(self);
        return try this.putWriteBehavior(value);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.HttpCacheControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpCacheControl.GUID;
    pub const IID: Guid = IHttpCacheControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpCacheControl.SIGNATURE);
};
pub const HttpCacheReadBehavior = enum(i32) {
    Default = 0,
    MostRecent = 1,
    OnlyFromCache = 2,
    NoCache = 3,
};
pub const HttpCacheWriteBehavior = enum(i32) {
    Default = 0,
    NoCache = 1,
};
pub const HttpCookieUsageBehavior = enum(i32) {
    Default = 0,
    NoCookies = 1,
};
pub const HttpServerCustomValidationRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        const this: *IHttpServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.getRequestMessage();
    }
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        const this: *IHttpServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.getServerCertificate();
    }
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        const this: *IHttpServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.getServerCertificateErrorSeverity();
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        const this: *IHttpServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.getServerCertificateErrors();
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        const this: *IHttpServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.getServerIntermediateCertificates();
    }
    pub fn Reject(self: *@This()) core.HResult!void {
        const this: *IHttpServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.Reject();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IHttpServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpServerCustomValidationRequestedEventArgs.GUID;
    pub const IID: Guid = IHttpServerCustomValidationRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpServerCustomValidationRequestedEventArgs.SIGNATURE);
};
pub const IHttpBaseProtocolFilter = extern struct {
    vtable: *const VTable,
    pub fn getAllowAutoRedirect(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowAutoRedirect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowAutoRedirect(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowAutoRedirect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowUI(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowUI(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowUI(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutomaticDecompression(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutomaticDecompression(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutomaticDecompression(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutomaticDecompression(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCacheControl(self: *@This()) core.HResult!*HttpCacheControl {
        var _r: *HttpCacheControl = undefined;
        const _c = self.vtable.get_CacheControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCookieManager(self: *@This()) core.HResult!*HttpCookieManager {
        var _r: *HttpCookieManager = undefined;
        const _c = self.vtable.get_CookieManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClientCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_ClientCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClientCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        const _c = self.vtable.put_ClientCertificate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIgnorableServerCertificateErrors(self: *@This()) core.HResult!*IVector(ChainValidationResult) {
        var _r: *IVector(ChainValidationResult) = undefined;
        const _c = self.vtable.get_IgnorableServerCertificateErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxConnectionsPerServer(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxConnectionsPerServer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxConnectionsPerServer(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxConnectionsPerServer(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_ProxyCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProxyCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_ProxyCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_ServerCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_ServerCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUseProxy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseProxy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseProxy(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseProxy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.IHttpBaseProtocolFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71c89b09-e131-4b54-a53c-eb43ff37e9bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowAutoRedirect: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowAutoRedirect: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowUI: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowUI: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AutomaticDecompression: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutomaticDecompression: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CacheControl: *const fn(self: *anyopaque, _r: **HttpCacheControl) callconv(.winapi) HRESULT,
        get_CookieManager: *const fn(self: *anyopaque, _r: **HttpCookieManager) callconv(.winapi) HRESULT,
        get_ClientCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        put_ClientCertificate: *const fn(self: *anyopaque, value: *Certificate) callconv(.winapi) HRESULT,
        get_IgnorableServerCertificateErrors: *const fn(self: *anyopaque, _r: **IVector(ChainValidationResult)) callconv(.winapi) HRESULT,
        get_MaxConnectionsPerServer: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxConnectionsPerServer: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ProxyCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_ProxyCredential: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
        get_ServerCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_ServerCredential: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
        get_UseProxy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseProxy: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpBaseProtocolFilter2 = extern struct {
    vtable: *const VTable,
    pub fn getMaxVersion(self: *@This()) core.HResult!HttpVersion {
        var _r: HttpVersion = undefined;
        const _c = self.vtable.get_MaxVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxVersion(self: *@This(), value: HttpVersion) core.HResult!void {
        const _c = self.vtable.put_MaxVersion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.IHttpBaseProtocolFilter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ec30013-9427-4900-a017-fa7da3b5c9ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxVersion: *const fn(self: *anyopaque, _r: *HttpVersion) callconv(.winapi) HRESULT,
        put_MaxVersion: *const fn(self: *anyopaque, value: HttpVersion) callconv(.winapi) HRESULT,
    };
};
pub const IHttpBaseProtocolFilter3 = extern struct {
    vtable: *const VTable,
    pub fn getCookieUsageBehavior(self: *@This()) core.HResult!HttpCookieUsageBehavior {
        var _r: HttpCookieUsageBehavior = undefined;
        const _c = self.vtable.get_CookieUsageBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCookieUsageBehavior(self: *@This(), value: HttpCookieUsageBehavior) core.HResult!void {
        const _c = self.vtable.put_CookieUsageBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.IHttpBaseProtocolFilter3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d43f4d4c-bd42-43ae-8717-ad2c8f4b2937";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CookieUsageBehavior: *const fn(self: *anyopaque, _r: *HttpCookieUsageBehavior) callconv(.winapi) HRESULT,
        put_CookieUsageBehavior: *const fn(self: *anyopaque, value: HttpCookieUsageBehavior) callconv(.winapi) HRESULT,
    };
};
pub const IHttpBaseProtocolFilter4 = extern struct {
    vtable: *const VTable,
    pub fn addServerCustomValidationRequested(self: *@This(), handler: *TypedEventHandler(HttpBaseProtocolFilter,HttpServerCustomValidationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ServerCustomValidationRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeServerCustomValidationRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ServerCustomValidationRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearAuthenticationCache(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearAuthenticationCache(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.IHttpBaseProtocolFilter4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fe36ccf-2983-4893-941f-eb518ca8cef9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ServerCustomValidationRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(HttpBaseProtocolFilter,HttpServerCustomValidationRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ServerCustomValidationRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        ClearAuthenticationCache: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IHttpBaseProtocolFilter5 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.IHttpBaseProtocolFilter5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "416e4993-31e3-4816-bf09-e018ee8dc1f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IHttpBaseProtocolFilterStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForUser(self: *@This(), user: *User) core.HResult!*HttpBaseProtocolFilter {
        var _r: *HttpBaseProtocolFilter = undefined;
        const _c = self.vtable.CreateForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.IHttpBaseProtocolFilterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d4dee0c-e908-494e-b5a3-1263c9b8242a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForUser: *const fn(self: *anyopaque, user: *User, _r: **HttpBaseProtocolFilter) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCacheControl = extern struct {
    vtable: *const VTable,
    pub fn getReadBehavior(self: *@This()) core.HResult!HttpCacheReadBehavior {
        var _r: HttpCacheReadBehavior = undefined;
        const _c = self.vtable.get_ReadBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReadBehavior(self: *@This(), value: HttpCacheReadBehavior) core.HResult!void {
        const _c = self.vtable.put_ReadBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWriteBehavior(self: *@This()) core.HResult!HttpCacheWriteBehavior {
        var _r: HttpCacheWriteBehavior = undefined;
        const _c = self.vtable.get_WriteBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWriteBehavior(self: *@This(), value: HttpCacheWriteBehavior) core.HResult!void {
        const _c = self.vtable.put_WriteBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.IHttpCacheControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c77e1cb4-3cea-4eb5-ac85-04e186e63ab7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReadBehavior: *const fn(self: *anyopaque, _r: *HttpCacheReadBehavior) callconv(.winapi) HRESULT,
        put_ReadBehavior: *const fn(self: *anyopaque, value: HttpCacheReadBehavior) callconv(.winapi) HRESULT,
        get_WriteBehavior: *const fn(self: *anyopaque, _r: *HttpCacheWriteBehavior) callconv(.winapi) HRESULT,
        put_WriteBehavior: *const fn(self: *anyopaque, value: HttpCacheWriteBehavior) callconv(.winapi) HRESULT,
    };
};
pub const IHttpFilter = extern struct {
    vtable: *const VTable,
    pub fn SendRequestAsync(self: *@This(), request: *HttpRequestMessage) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) = undefined;
        const _c = self.vtable.SendRequestAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.IHttpFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4cb6dd5-0902-439e-bfd7-e12552b165ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendRequestAsync: *const fn(self: *anyopaque, request: *HttpRequestMessage, _r: **IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpServerCustomValidationRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.get_RequestMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_ServerCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        var _r: SocketSslErrorSeverity = undefined;
        const _c = self.vtable.get_ServerCertificateErrorSeverity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        var _r: *IVectorView(ChainValidationResult) = undefined;
        const _c = self.vtable.get_ServerCertificateErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.get_ServerIntermediateCertificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Reject(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reject(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3165fe32-e7dd-48b7-a361-939c750e63cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestMessage: *const fn(self: *anyopaque, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
        get_ServerCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        get_ServerCertificateErrorSeverity: *const fn(self: *anyopaque, _r: *SocketSslErrorSeverity) callconv(.winapi) HRESULT,
        get_ServerCertificateErrors: *const fn(self: *anyopaque, _r: **IVectorView(ChainValidationResult)) callconv(.winapi) HRESULT,
        get_ServerIntermediateCertificates: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
        Reject: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const HttpResponseMessage = @import("../Http.zig").HttpResponseMessage;
const Guid = @import("../../root.zig").Guid;
const Certificate = @import("../../Security/Cryptography/Certificates.zig").Certificate;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const SocketSslErrorSeverity = @import("../../Networking/Sockets.zig").SocketSslErrorSeverity;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const ChainValidationResult = @import("../../Security/Cryptography/Certificates.zig").ChainValidationResult;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const HttpVersion = @import("../Http.zig").HttpVersion;
const PasswordCredential = @import("../../Security/Credentials.zig").PasswordCredential;
const Deferral = @import("../../Foundation.zig").Deferral;
const HttpProgress = @import("../Http.zig").HttpProgress;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const IAsyncOperationWithProgress = @import("../../Foundation.zig").IAsyncOperationWithProgress;
const HttpCookieManager = @import("../Http.zig").HttpCookieManager;
const HttpRequestMessage = @import("../Http.zig").HttpRequestMessage;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IClosable = @import("../../Foundation.zig").IClosable;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const User = @import("../../System.zig").User;
const HSTRING = @import("../../root.zig").HSTRING;
