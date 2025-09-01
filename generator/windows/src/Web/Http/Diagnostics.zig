pub const HttpDiagnosticProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IHttpDiagnosticProvider = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IHttpDiagnosticProvider = @ptrCast(self);
        return try this.Stop();
    }
    pub fn addRequestSent(self: *@This(), handler: *TypedEventHandler(HttpDiagnosticProvider,HttpDiagnosticProviderRequestSentEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHttpDiagnosticProvider = @ptrCast(self);
        return try this.addRequestSent(handler);
    }
    pub fn removeRequestSent(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHttpDiagnosticProvider = @ptrCast(self);
        return try this.removeRequestSent(token);
    }
    pub fn addResponseReceived(self: *@This(), handler: *TypedEventHandler(HttpDiagnosticProvider,HttpDiagnosticProviderResponseReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHttpDiagnosticProvider = @ptrCast(self);
        return try this.addResponseReceived(handler);
    }
    pub fn removeResponseReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHttpDiagnosticProvider = @ptrCast(self);
        return try this.removeResponseReceived(token);
    }
    pub fn addRequestResponseCompleted(self: *@This(), handler: *TypedEventHandler(HttpDiagnosticProvider,HttpDiagnosticProviderRequestResponseCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHttpDiagnosticProvider = @ptrCast(self);
        return try this.addRequestResponseCompleted(handler);
    }
    pub fn removeRequestResponseCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHttpDiagnosticProvider = @ptrCast(self);
        return try this.removeRequestResponseCompleted(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromProcessDiagnosticInfo(processDiagnosticInfo: *ProcessDiagnosticInfo) core.HResult!*HttpDiagnosticProvider {
        const _f = @This().IHttpDiagnosticProviderStaticsCache.get();
        return try _f.CreateFromProcessDiagnosticInfo(processDiagnosticInfo);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.HttpDiagnosticProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpDiagnosticProvider.GUID;
    pub const IID: Guid = IHttpDiagnosticProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpDiagnosticProvider.SIGNATURE);
    var _IHttpDiagnosticProviderStaticsCache: FactoryCache(IHttpDiagnosticProviderStatics, RUNTIME_NAME) = .{};
};
pub const HttpDiagnosticProviderRequestResponseCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *IHttpDiagnosticProviderRequestResponseCompletedEventArgs = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getTimestamps(self: *@This()) core.HResult!*HttpDiagnosticProviderRequestResponseTimestamps {
        const this: *IHttpDiagnosticProviderRequestResponseCompletedEventArgs = @ptrCast(self);
        return try this.getTimestamps();
    }
    pub fn getRequestedUri(self: *@This()) core.HResult!*Uri {
        const this: *IHttpDiagnosticProviderRequestResponseCompletedEventArgs = @ptrCast(self);
        return try this.getRequestedUri();
    }
    pub fn getProcessId(self: *@This()) core.HResult!u32 {
        const this: *IHttpDiagnosticProviderRequestResponseCompletedEventArgs = @ptrCast(self);
        return try this.getProcessId();
    }
    pub fn getThreadId(self: *@This()) core.HResult!u32 {
        const this: *IHttpDiagnosticProviderRequestResponseCompletedEventArgs = @ptrCast(self);
        return try this.getThreadId();
    }
    pub fn getInitiator(self: *@This()) core.HResult!HttpDiagnosticRequestInitiator {
        const this: *IHttpDiagnosticProviderRequestResponseCompletedEventArgs = @ptrCast(self);
        return try this.getInitiator();
    }
    pub fn getSourceLocations(self: *@This()) core.HResult!*IVectorView(HttpDiagnosticSourceLocation) {
        const this: *IHttpDiagnosticProviderRequestResponseCompletedEventArgs = @ptrCast(self);
        return try this.getSourceLocations();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpDiagnosticProviderRequestResponseCompletedEventArgs.GUID;
    pub const IID: Guid = IHttpDiagnosticProviderRequestResponseCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpDiagnosticProviderRequestResponseCompletedEventArgs.SIGNATURE);
};
pub const HttpDiagnosticProviderRequestResponseTimestamps = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCacheCheckedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDiagnosticProviderRequestResponseTimestamps = @ptrCast(self);
        return try this.getCacheCheckedTimestamp();
    }
    pub fn getConnectionInitiatedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDiagnosticProviderRequestResponseTimestamps = @ptrCast(self);
        return try this.getConnectionInitiatedTimestamp();
    }
    pub fn getNameResolvedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDiagnosticProviderRequestResponseTimestamps = @ptrCast(self);
        return try this.getNameResolvedTimestamp();
    }
    pub fn getSslNegotiatedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDiagnosticProviderRequestResponseTimestamps = @ptrCast(self);
        return try this.getSslNegotiatedTimestamp();
    }
    pub fn getConnectionCompletedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDiagnosticProviderRequestResponseTimestamps = @ptrCast(self);
        return try this.getConnectionCompletedTimestamp();
    }
    pub fn getRequestSentTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDiagnosticProviderRequestResponseTimestamps = @ptrCast(self);
        return try this.getRequestSentTimestamp();
    }
    pub fn getRequestCompletedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDiagnosticProviderRequestResponseTimestamps = @ptrCast(self);
        return try this.getRequestCompletedTimestamp();
    }
    pub fn getResponseReceivedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDiagnosticProviderRequestResponseTimestamps = @ptrCast(self);
        return try this.getResponseReceivedTimestamp();
    }
    pub fn getResponseCompletedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDiagnosticProviderRequestResponseTimestamps = @ptrCast(self);
        return try this.getResponseCompletedTimestamp();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseTimestamps";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpDiagnosticProviderRequestResponseTimestamps.GUID;
    pub const IID: Guid = IHttpDiagnosticProviderRequestResponseTimestamps.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpDiagnosticProviderRequestResponseTimestamps.SIGNATURE);
};
pub const HttpDiagnosticProviderRequestSentEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IHttpDiagnosticProviderRequestSentEventArgs = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *IHttpDiagnosticProviderRequestSentEventArgs = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        const this: *IHttpDiagnosticProviderRequestSentEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn getProcessId(self: *@This()) core.HResult!u32 {
        const this: *IHttpDiagnosticProviderRequestSentEventArgs = @ptrCast(self);
        return try this.getProcessId();
    }
    pub fn getThreadId(self: *@This()) core.HResult!u32 {
        const this: *IHttpDiagnosticProviderRequestSentEventArgs = @ptrCast(self);
        return try this.getThreadId();
    }
    pub fn getInitiator(self: *@This()) core.HResult!HttpDiagnosticRequestInitiator {
        const this: *IHttpDiagnosticProviderRequestSentEventArgs = @ptrCast(self);
        return try this.getInitiator();
    }
    pub fn getSourceLocations(self: *@This()) core.HResult!*IVectorView(HttpDiagnosticSourceLocation) {
        const this: *IHttpDiagnosticProviderRequestSentEventArgs = @ptrCast(self);
        return try this.getSourceLocations();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestSentEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpDiagnosticProviderRequestSentEventArgs.GUID;
    pub const IID: Guid = IHttpDiagnosticProviderRequestSentEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpDiagnosticProviderRequestSentEventArgs.SIGNATURE);
};
pub const HttpDiagnosticProviderResponseReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IHttpDiagnosticProviderResponseReceivedEventArgs = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *IHttpDiagnosticProviderResponseReceivedEventArgs = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IHttpDiagnosticProviderResponseReceivedEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.HttpDiagnosticProviderResponseReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpDiagnosticProviderResponseReceivedEventArgs.GUID;
    pub const IID: Guid = IHttpDiagnosticProviderResponseReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpDiagnosticProviderResponseReceivedEventArgs.SIGNATURE);
};
pub const HttpDiagnosticRequestInitiator = enum(i32) {
    ParsedElement = 0,
    Script = 1,
    Image = 2,
    Link = 3,
    Style = 4,
    XmlHttpRequest = 5,
    Media = 6,
    HtmlDownload = 7,
    Prefetch = 8,
    Other = 9,
    CrossOriginPreFlight = 10,
    Fetch = 11,
    Beacon = 12,
};
pub const HttpDiagnosticSourceLocation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceUri(self: *@This()) core.HResult!*Uri {
        const this: *IHttpDiagnosticSourceLocation = @ptrCast(self);
        return try this.getSourceUri();
    }
    pub fn getLineNumber(self: *@This()) core.HResult!u64 {
        const this: *IHttpDiagnosticSourceLocation = @ptrCast(self);
        return try this.getLineNumber();
    }
    pub fn getColumnNumber(self: *@This()) core.HResult!u64 {
        const this: *IHttpDiagnosticSourceLocation = @ptrCast(self);
        return try this.getColumnNumber();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.HttpDiagnosticSourceLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpDiagnosticSourceLocation.GUID;
    pub const IID: Guid = IHttpDiagnosticSourceLocation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpDiagnosticSourceLocation.SIGNATURE);
};
pub const IHttpDiagnosticProvider = extern struct {
    vtable: *const VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRequestSent(self: *@This(), handler: *TypedEventHandler(HttpDiagnosticProvider,HttpDiagnosticProviderRequestSentEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RequestSent(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRequestSent(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RequestSent(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addResponseReceived(self: *@This(), handler: *TypedEventHandler(HttpDiagnosticProvider,HttpDiagnosticProviderResponseReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ResponseReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResponseReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ResponseReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRequestResponseCompleted(self: *@This(), handler: *TypedEventHandler(HttpDiagnosticProvider,HttpDiagnosticProviderRequestResponseCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RequestResponseCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRequestResponseCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RequestResponseCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.IHttpDiagnosticProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd811501-a056-4d39-b174-833b7b03b02c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_RequestSent: *const fn(self: *anyopaque, handler: *TypedEventHandler(HttpDiagnosticProvider,HttpDiagnosticProviderRequestSentEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RequestSent: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ResponseReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(HttpDiagnosticProvider,HttpDiagnosticProviderResponseReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ResponseReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RequestResponseCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(HttpDiagnosticProvider,HttpDiagnosticProviderRequestResponseCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RequestResponseCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IHttpDiagnosticProviderRequestResponseCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamps(self: *@This()) core.HResult!*HttpDiagnosticProviderRequestResponseTimestamps {
        var _r: *HttpDiagnosticProviderRequestResponseTimestamps = undefined;
        const _c = self.vtable.get_Timestamps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestedUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_RequestedUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProcessId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ProcessId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThreadId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ThreadId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInitiator(self: *@This()) core.HResult!HttpDiagnosticRequestInitiator {
        var _r: HttpDiagnosticRequestInitiator = undefined;
        const _c = self.vtable.get_Initiator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceLocations(self: *@This()) core.HResult!*IVectorView(HttpDiagnosticSourceLocation) {
        var _r: *IVectorView(HttpDiagnosticSourceLocation) = undefined;
        const _c = self.vtable.get_SourceLocations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "735f98ee-94f6-4532-b26e-61e1b1e4efd4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Timestamps: *const fn(self: *anyopaque, _r: **HttpDiagnosticProviderRequestResponseTimestamps) callconv(.winapi) HRESULT,
        get_RequestedUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ProcessId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ThreadId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Initiator: *const fn(self: *anyopaque, _r: *HttpDiagnosticRequestInitiator) callconv(.winapi) HRESULT,
        get_SourceLocations: *const fn(self: *anyopaque, _r: **IVectorView(HttpDiagnosticSourceLocation)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpDiagnosticProviderRequestResponseTimestamps = extern struct {
    vtable: *const VTable,
    pub fn getCacheCheckedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_CacheCheckedTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionInitiatedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ConnectionInitiatedTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNameResolvedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_NameResolvedTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSslNegotiatedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_SslNegotiatedTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionCompletedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ConnectionCompletedTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestSentTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_RequestSentTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestCompletedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_RequestCompletedTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseReceivedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ResponseReceivedTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseCompletedTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ResponseCompletedTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0afde10-55cf-4c01-91d4-a20557d849f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CacheCheckedTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ConnectionInitiatedTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_NameResolvedTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_SslNegotiatedTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ConnectionCompletedTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_RequestSentTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_RequestCompletedTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ResponseReceivedTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ResponseCompletedTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpDiagnosticProviderRequestSentEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProcessId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ProcessId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThreadId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ThreadId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInitiator(self: *@This()) core.HResult!HttpDiagnosticRequestInitiator {
        var _r: HttpDiagnosticRequestInitiator = undefined;
        const _c = self.vtable.get_Initiator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceLocations(self: *@This()) core.HResult!*IVectorView(HttpDiagnosticSourceLocation) {
        var _r: *IVectorView(HttpDiagnosticSourceLocation) = undefined;
        const _c = self.vtable.get_SourceLocations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestSentEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f5196d0-4c1f-4ebe-a57a-06930771c50d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
        get_ProcessId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ThreadId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Initiator: *const fn(self: *anyopaque, _r: *HttpDiagnosticRequestInitiator) callconv(.winapi) HRESULT,
        get_SourceLocations: *const fn(self: *anyopaque, _r: **IVectorView(HttpDiagnosticSourceLocation)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpDiagnosticProviderResponseReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderResponseReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0a2566c-ab5f-4d66-bb2d-084cf41635d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
    };
};
pub const IHttpDiagnosticProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromProcessDiagnosticInfo(self: *@This(), processDiagnosticInfo: *ProcessDiagnosticInfo) core.HResult!*HttpDiagnosticProvider {
        var _r: *HttpDiagnosticProvider = undefined;
        const _c = self.vtable.CreateFromProcessDiagnosticInfo(@ptrCast(self), processDiagnosticInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b824ec1-6a6c-47cc-afec-1e86bc26053b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromProcessDiagnosticInfo: *const fn(self: *anyopaque, processDiagnosticInfo: *ProcessDiagnosticInfo, _r: **HttpDiagnosticProvider) callconv(.winapi) HRESULT,
    };
};
pub const IHttpDiagnosticSourceLocation = extern struct {
    vtable: *const VTable,
    pub fn getSourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_SourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLineNumber(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_LineNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColumnNumber(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_ColumnNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Diagnostics.IHttpDiagnosticSourceLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "54a9d260-8860-423f-b6fa-d77716f647a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_LineNumber: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_ColumnNumber: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const HttpResponseMessage = @import("../Http.zig").HttpResponseMessage;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const ProcessDiagnosticInfo = @import("../../System/Diagnostics.zig").ProcessDiagnosticInfo;
const IReference = @import("../../Foundation.zig").IReference;
const Uri = @import("../../Foundation.zig").Uri;
const DateTime = @import("../../Foundation.zig").DateTime;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const HttpRequestMessage = @import("../Http.zig").HttpRequestMessage;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
