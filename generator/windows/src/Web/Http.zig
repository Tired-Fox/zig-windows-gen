pub const HttpBufferContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHeaders(self: *@This()) core.HResult!*HttpContentHeaderCollection {
        const this: *IHttpContent = @ptrCast(self);
        return try this.getHeaders();
    }
    pub fn BufferAllAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.BufferAllAsync();
    }
    pub fn ReadAsBufferAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IBuffer,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsBufferAsync();
    }
    pub fn ReadAsInputStreamAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IInputStream,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsInputStreamAsync();
    }
    pub fn ReadAsStringAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(HSTRING,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsStringAsync();
    }
    pub fn TryComputeLength(self: *@This(), length: u64) core.HResult!bool {
        const this: *IHttpContent = @ptrCast(self);
        return try this.TryComputeLength(length);
    }
    pub fn WriteToStreamAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.WriteToStreamAsync(outputStream);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromBuffer(content: *IBuffer) core.HResult!*HttpBufferContent {
        const factory = @This().IHttpBufferContentFactoryCache.get();
        return try factory.CreateFromBuffer(content);
    }
    pub fn CreateFromBufferWithOffset(content: *IBuffer, offset: u32, count: u32) core.HResult!*HttpBufferContent {
        const factory = @This().IHttpBufferContentFactoryCache.get();
        return try factory.CreateFromBufferWithOffset(content, offset, count);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpBufferContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContent.GUID;
    pub const IID: Guid = IHttpContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContent.SIGNATURE);
    var _IHttpBufferContentFactoryCache: FactoryCache(IHttpBufferContentFactory, RUNTIME_NAME) = .{};
};
pub const HttpClient = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn DeleteAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.DeleteAsync(uri);
    }
    pub fn GetAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.GetAsync(uri);
    }
    pub fn GetAsyncWithCompletionOption(self: *@This(), uri: *Uri, completionOption: HttpCompletionOption) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.GetAsyncWithCompletionOption(uri, completionOption);
    }
    pub fn GetBufferAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(IBuffer,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.GetBufferAsync(uri);
    }
    pub fn GetInputStreamAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(IInputStream,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.GetInputStreamAsync(uri);
    }
    pub fn GetStringAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HSTRING,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.GetStringAsync(uri);
    }
    pub fn PostAsync(self: *@This(), uri: *Uri, content: *IHttpContent) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.PostAsync(uri, content);
    }
    pub fn PutAsync(self: *@This(), uri: *Uri, content: *IHttpContent) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.PutAsync(uri, content);
    }
    pub fn SendRequestAsync(self: *@This(), request: *HttpRequestMessage) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.SendRequestAsync(request);
    }
    pub fn SendRequestAsyncWithCompletionOption(self: *@This(), request: *HttpRequestMessage, completionOption: HttpCompletionOption) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        const this: *IHttpClient = @ptrCast(self);
        return try this.SendRequestAsyncWithCompletionOption(request, completionOption);
    }
    pub fn getDefaultRequestHeaders(self: *@This()) core.HResult!*HttpRequestHeaderCollection {
        const this: *IHttpClient = @ptrCast(self);
        return try this.getDefaultRequestHeaders();
    }
    pub fn TryDeleteAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryDeleteAsync(uri);
    }
    pub fn TryGetAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetAsync(uri);
    }
    pub fn TryGetAsyncWithCompletionOption(self: *@This(), uri: *Uri, completionOption: HttpCompletionOption) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetAsyncWithCompletionOption(uri, completionOption);
    }
    pub fn TryGetBufferAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpGetBufferResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBufferAsync(uri);
    }
    pub fn TryGetInputStreamAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpGetInputStreamResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetInputStreamAsync(uri);
    }
    pub fn TryGetStringAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpGetStringResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetStringAsync(uri);
    }
    pub fn TryPostAsync(self: *@This(), uri: *Uri, content: *IHttpContent) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryPostAsync(uri, content);
    }
    pub fn TryPutAsync(self: *@This(), uri: *Uri, content: *IHttpContent) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryPutAsync(uri, content);
    }
    pub fn TrySendRequestAsync(self: *@This(), request: *HttpRequestMessage) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TrySendRequestAsync(request);
    }
    pub fn TrySendRequestAsyncWithCompletionOption(self: *@This(), request: *HttpRequestMessage, completionOption: HttpCompletionOption) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var this: ?*IHttpClient2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TrySendRequestAsyncWithCompletionOption(request, completionOption);
    }
    pub fn getDefaultPrivacyAnnotation(self: *@This()) core.HResult!HSTRING {
        var this: ?*IHttpClient3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDefaultPrivacyAnnotation();
    }
    pub fn putDefaultPrivacyAnnotation(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IHttpClient3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpClient3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDefaultPrivacyAnnotation(value);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHttpClient.IID)));
    }
    pub fn Create(filter: *IHttpFilter) core.HResult!*HttpClient {
        const factory = @This().IHttpClientFactoryCache.get();
        return try factory.Create(filter);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpClient.GUID;
    pub const IID: Guid = IHttpClient.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpClient.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IHttpClientFactoryCache: FactoryCache(IHttpClientFactory, RUNTIME_NAME) = .{};
};
pub const HttpCompletionOption = enum(i32) {
    ResponseContentRead = 0,
    ResponseHeadersRead = 1,
};
pub const HttpCookie = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.getName();
    }
    pub fn getDomain(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.getDomain();
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.getPath();
    }
    pub fn getExpires(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.getExpires();
    }
    pub fn putExpires(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.putExpires(value);
    }
    pub fn getHttpOnly(self: *@This()) core.HResult!bool {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.getHttpOnly();
    }
    pub fn putHttpOnly(self: *@This(), value: bool) core.HResult!void {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.putHttpOnly(value);
    }
    pub fn getSecure(self: *@This()) core.HResult!bool {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.getSecure();
    }
    pub fn putSecure(self: *@This(), value: bool) core.HResult!void {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.putSecure(value);
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpCookie = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(name: HSTRING, domain: HSTRING, path: HSTRING) core.HResult!*HttpCookie {
        const factory = @This().IHttpCookieFactoryCache.get();
        return try factory.Create(name, domain, path);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpCookie";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpCookie.GUID;
    pub const IID: Guid = IHttpCookie.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpCookie.SIGNATURE);
    var _IHttpCookieFactoryCache: FactoryCache(IHttpCookieFactory, RUNTIME_NAME) = .{};
};
pub const HttpCookieCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(HttpCookie) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpCookieCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const HttpCookieManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetCookie(self: *@This(), cookie: *HttpCookie) core.HResult!bool {
        const this: *IHttpCookieManager = @ptrCast(self);
        return try this.SetCookie(cookie);
    }
    pub fn SetCookieWithThirdParty(self: *@This(), cookie: *HttpCookie, thirdParty: bool) core.HResult!bool {
        const this: *IHttpCookieManager = @ptrCast(self);
        return try this.SetCookieWithThirdParty(cookie, thirdParty);
    }
    pub fn DeleteCookie(self: *@This(), cookie: *HttpCookie) core.HResult!void {
        const this: *IHttpCookieManager = @ptrCast(self);
        return try this.DeleteCookie(cookie);
    }
    pub fn GetCookies(self: *@This(), uri: *Uri) core.HResult!*HttpCookieCollection {
        const this: *IHttpCookieManager = @ptrCast(self);
        return try this.GetCookies(uri);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpCookieManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpCookieManager.GUID;
    pub const IID: Guid = IHttpCookieManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpCookieManager.SIGNATURE);
};
pub const HttpFormUrlEncodedContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHeaders(self: *@This()) core.HResult!*HttpContentHeaderCollection {
        const this: *IHttpContent = @ptrCast(self);
        return try this.getHeaders();
    }
    pub fn BufferAllAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.BufferAllAsync();
    }
    pub fn ReadAsBufferAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IBuffer,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsBufferAsync();
    }
    pub fn ReadAsInputStreamAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IInputStream,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsInputStreamAsync();
    }
    pub fn ReadAsStringAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(HSTRING,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsStringAsync();
    }
    pub fn TryComputeLength(self: *@This(), length: u64) core.HResult!bool {
        const this: *IHttpContent = @ptrCast(self);
        return try this.TryComputeLength(length);
    }
    pub fn WriteToStreamAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.WriteToStreamAsync(outputStream);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(content: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*HttpFormUrlEncodedContent {
        const factory = @This().IHttpFormUrlEncodedContentFactoryCache.get();
        return try factory.Create(content);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpFormUrlEncodedContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContent.GUID;
    pub const IID: Guid = IHttpContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContent.SIGNATURE);
    var _IHttpFormUrlEncodedContentFactoryCache: FactoryCache(IHttpFormUrlEncodedContentFactory, RUNTIME_NAME) = .{};
};
pub const HttpGetBufferResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IHttpGetBufferResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        const this: *IHttpGetBufferResult = @ptrCast(self);
        return try this.getRequestMessage();
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IHttpGetBufferResult = @ptrCast(self);
        return try this.getResponseMessage();
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IHttpGetBufferResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IHttpGetBufferResult = @ptrCast(self);
        return try this.getValue();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpGetBufferResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpGetBufferResult.GUID;
    pub const IID: Guid = IHttpGetBufferResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpGetBufferResult.SIGNATURE);
};
pub const HttpGetInputStreamResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IHttpGetInputStreamResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        const this: *IHttpGetInputStreamResult = @ptrCast(self);
        return try this.getRequestMessage();
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IHttpGetInputStreamResult = @ptrCast(self);
        return try this.getResponseMessage();
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IHttpGetInputStreamResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInputStream {
        const this: *IHttpGetInputStreamResult = @ptrCast(self);
        return try this.getValue();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpGetInputStreamResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpGetInputStreamResult.GUID;
    pub const IID: Guid = IHttpGetInputStreamResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpGetInputStreamResult.SIGNATURE);
};
pub const HttpGetStringResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IHttpGetStringResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        const this: *IHttpGetStringResult = @ptrCast(self);
        return try this.getRequestMessage();
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IHttpGetStringResult = @ptrCast(self);
        return try this.getResponseMessage();
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IHttpGetStringResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpGetStringResult = @ptrCast(self);
        return try this.getValue();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpGetStringResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpGetStringResult.GUID;
    pub const IID: Guid = IHttpGetStringResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpGetStringResult.SIGNATURE);
};
pub const HttpMethod = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMethod(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpMethod = @ptrCast(self);
        return try this.getMethod();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(method: HSTRING) core.HResult!*HttpMethod {
        const factory = @This().IHttpMethodFactoryCache.get();
        return try factory.Create(method);
    }
    pub fn get_Delete() core.HResult!*HttpMethod {
        const factory = @This().IHttpMethodStaticsCache.get();
        return try factory.getDelete();
    }
    pub fn get_Get() core.HResult!*HttpMethod {
        const factory = @This().IHttpMethodStaticsCache.get();
        return try factory.getGet();
    }
    pub fn get_Head() core.HResult!*HttpMethod {
        const factory = @This().IHttpMethodStaticsCache.get();
        return try factory.getHead();
    }
    pub fn get_Options() core.HResult!*HttpMethod {
        const factory = @This().IHttpMethodStaticsCache.get();
        return try factory.getOptions();
    }
    pub fn get_Patch() core.HResult!*HttpMethod {
        const factory = @This().IHttpMethodStaticsCache.get();
        return try factory.getPatch();
    }
    pub fn get_Post() core.HResult!*HttpMethod {
        const factory = @This().IHttpMethodStaticsCache.get();
        return try factory.getPost();
    }
    pub fn get_Put() core.HResult!*HttpMethod {
        const factory = @This().IHttpMethodStaticsCache.get();
        return try factory.getPut();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpMethod";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpMethod.GUID;
    pub const IID: Guid = IHttpMethod.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpMethod.SIGNATURE);
    var _IHttpMethodFactoryCache: FactoryCache(IHttpMethodFactory, RUNTIME_NAME) = .{};
    var _IHttpMethodStaticsCache: FactoryCache(IHttpMethodStatics, RUNTIME_NAME) = .{};
};
pub const HttpMultipartContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Add(self: *@This(), content: *IHttpContent) core.HResult!void {
        var this: ?*IHttpMultipartContent = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpMultipartContent.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Add(content);
    }
    pub fn getHeaders(self: *@This()) core.HResult!*HttpContentHeaderCollection {
        const this: *IHttpContent = @ptrCast(self);
        return try this.getHeaders();
    }
    pub fn BufferAllAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.BufferAllAsync();
    }
    pub fn ReadAsBufferAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IBuffer,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsBufferAsync();
    }
    pub fn ReadAsInputStreamAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IInputStream,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsInputStreamAsync();
    }
    pub fn ReadAsStringAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(HSTRING,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsStringAsync();
    }
    pub fn TryComputeLength(self: *@This(), length: u64) core.HResult!bool {
        const this: *IHttpContent = @ptrCast(self);
        return try this.TryComputeLength(length);
    }
    pub fn WriteToStreamAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.WriteToStreamAsync(outputStream);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(IHttpContent) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHttpContent.IID)));
    }
    pub fn CreateWithSubtype(subtype: HSTRING) core.HResult!*HttpMultipartContent {
        const factory = @This().IHttpMultipartContentFactoryCache.get();
        return try factory.CreateWithSubtype(subtype);
    }
    pub fn CreateWithSubtypeAndBoundary(subtype: HSTRING, boundary: HSTRING) core.HResult!*HttpMultipartContent {
        const factory = @This().IHttpMultipartContentFactoryCache.get();
        return try factory.CreateWithSubtypeAndBoundary(subtype, boundary);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpMultipartContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContent.GUID;
    pub const IID: Guid = IHttpContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContent.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IHttpMultipartContentFactoryCache: FactoryCache(IHttpMultipartContentFactory, RUNTIME_NAME) = .{};
};
pub const HttpMultipartFormDataContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Add(self: *@This(), content: *IHttpContent) core.HResult!void {
        var this: ?*IHttpMultipartFormDataContent = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpMultipartFormDataContent.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Add(content);
    }
    pub fn AddWithName(self: *@This(), content: *IHttpContent, name: HSTRING) core.HResult!void {
        var this: ?*IHttpMultipartFormDataContent = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpMultipartFormDataContent.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddWithName(content, name);
    }
    pub fn AddWithNameWithFileName(self: *@This(), content: *IHttpContent, name: HSTRING, fileName: HSTRING) core.HResult!void {
        var this: ?*IHttpMultipartFormDataContent = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpMultipartFormDataContent.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddWithNameWithFileName(content, name, fileName);
    }
    pub fn getHeaders(self: *@This()) core.HResult!*HttpContentHeaderCollection {
        const this: *IHttpContent = @ptrCast(self);
        return try this.getHeaders();
    }
    pub fn BufferAllAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.BufferAllAsync();
    }
    pub fn ReadAsBufferAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IBuffer,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsBufferAsync();
    }
    pub fn ReadAsInputStreamAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IInputStream,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsInputStreamAsync();
    }
    pub fn ReadAsStringAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(HSTRING,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsStringAsync();
    }
    pub fn TryComputeLength(self: *@This(), length: u64) core.HResult!bool {
        const this: *IHttpContent = @ptrCast(self);
        return try this.TryComputeLength(length);
    }
    pub fn WriteToStreamAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.WriteToStreamAsync(outputStream);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(IHttpContent) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHttpContent.IID)));
    }
    pub fn CreateWithBoundary(boundary: HSTRING) core.HResult!*HttpMultipartFormDataContent {
        const factory = @This().IHttpMultipartFormDataContentFactoryCache.get();
        return try factory.CreateWithBoundary(boundary);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpMultipartFormDataContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContent.GUID;
    pub const IID: Guid = IHttpContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContent.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IHttpMultipartFormDataContentFactoryCache: FactoryCache(IHttpMultipartFormDataContentFactory, RUNTIME_NAME) = .{};
};
pub const HttpProgress = extern struct {
    Stage: HttpProgressStage,
    BytesSent: u64,
    TotalBytesToSend: *IReference(u64),
    BytesReceived: u64,
    TotalBytesToReceive: *IReference(u64),
    Retries: u32,
};
pub const HttpProgressStage = enum(i32) {
    None = 0,
    DetectingProxy = 10,
    ResolvingName = 20,
    ConnectingToServer = 30,
    NegotiatingSsl = 40,
    SendingHeaders = 50,
    SendingContent = 60,
    WaitingForResponse = 70,
    ReceivingHeaders = 80,
    ReceivingContent = 90,
};
pub const HttpRequestMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*IHttpContent {
        const this: *IHttpRequestMessage = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putContent(self: *@This(), value: *IHttpContent) core.HResult!void {
        const this: *IHttpRequestMessage = @ptrCast(self);
        return try this.putContent(value);
    }
    pub fn getHeaders(self: *@This()) core.HResult!*HttpRequestHeaderCollection {
        const this: *IHttpRequestMessage = @ptrCast(self);
        return try this.getHeaders();
    }
    pub fn getMethod(self: *@This()) core.HResult!*HttpMethod {
        const this: *IHttpRequestMessage = @ptrCast(self);
        return try this.getMethod();
    }
    pub fn putMethod(self: *@This(), value: *HttpMethod) core.HResult!void {
        const this: *IHttpRequestMessage = @ptrCast(self);
        return try this.putMethod(value);
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,IInspectable) {
        const this: *IHttpRequestMessage = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getRequestUri(self: *@This()) core.HResult!*Uri {
        const this: *IHttpRequestMessage = @ptrCast(self);
        return try this.getRequestUri();
    }
    pub fn putRequestUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IHttpRequestMessage = @ptrCast(self);
        return try this.putRequestUri(value);
    }
    pub fn getTransportInformation(self: *@This()) core.HResult!*HttpTransportInformation {
        const this: *IHttpRequestMessage = @ptrCast(self);
        return try this.getTransportInformation();
    }
    pub fn getPrivacyAnnotation(self: *@This()) core.HResult!HSTRING {
        var this: ?*IHttpRequestMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpRequestMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrivacyAnnotation();
    }
    pub fn putPrivacyAnnotation(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IHttpRequestMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHttpRequestMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrivacyAnnotation(value);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHttpRequestMessage.IID)));
    }
    pub fn Create(method: *HttpMethod, uri: *Uri) core.HResult!*HttpRequestMessage {
        const factory = @This().IHttpRequestMessageFactoryCache.get();
        return try factory.Create(method, uri);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpRequestMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpRequestMessage.GUID;
    pub const IID: Guid = IHttpRequestMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpRequestMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IHttpRequestMessageFactoryCache: FactoryCache(IHttpRequestMessageFactory, RUNTIME_NAME) = .{};
};
pub const HttpRequestResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IHttpRequestResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        const this: *IHttpRequestResult = @ptrCast(self);
        return try this.getRequestMessage();
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IHttpRequestResult = @ptrCast(self);
        return try this.getResponseMessage();
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IHttpRequestResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpRequestResult.GUID;
    pub const IID: Guid = IHttpRequestResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpRequestResult.SIGNATURE);
};
pub const HttpResponseMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*IHttpContent {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putContent(self: *@This(), value: *IHttpContent) core.HResult!void {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.putContent(value);
    }
    pub fn getHeaders(self: *@This()) core.HResult!*HttpResponseHeaderCollection {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.getHeaders();
    }
    pub fn getIsSuccessStatusCode(self: *@This()) core.HResult!bool {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.getIsSuccessStatusCode();
    }
    pub fn getReasonPhrase(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.getReasonPhrase();
    }
    pub fn putReasonPhrase(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.putReasonPhrase(value);
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.getRequestMessage();
    }
    pub fn putRequestMessage(self: *@This(), value: *HttpRequestMessage) core.HResult!void {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.putRequestMessage(value);
    }
    pub fn getSource(self: *@This()) core.HResult!HttpResponseMessageSource {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: HttpResponseMessageSource) core.HResult!void {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.putSource(value);
    }
    pub fn getStatusCode(self: *@This()) core.HResult!HttpStatusCode {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.getStatusCode();
    }
    pub fn putStatusCode(self: *@This(), value: HttpStatusCode) core.HResult!void {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.putStatusCode(value);
    }
    pub fn getVersion(self: *@This()) core.HResult!HttpVersion {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn putVersion(self: *@This(), value: HttpVersion) core.HResult!void {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.putVersion(value);
    }
    pub fn EnsureSuccessStatusCode(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IHttpResponseMessage = @ptrCast(self);
        return try this.EnsureSuccessStatusCode();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHttpResponseMessage.IID)));
    }
    pub fn Create(statusCode: HttpStatusCode) core.HResult!*HttpResponseMessage {
        const factory = @This().IHttpResponseMessageFactoryCache.get();
        return try factory.Create(statusCode);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpResponseMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpResponseMessage.GUID;
    pub const IID: Guid = IHttpResponseMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpResponseMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IHttpResponseMessageFactoryCache: FactoryCache(IHttpResponseMessageFactory, RUNTIME_NAME) = .{};
};
pub const HttpResponseMessageSource = enum(i32) {
    None = 0,
    Cache = 1,
    Network = 2,
};
pub const HttpStatusCode = enum(i32) {
    None = 0,
    Continue = 100,
    SwitchingProtocols = 101,
    Processing = 102,
    Ok = 200,
    Created = 201,
    Accepted = 202,
    NonAuthoritativeInformation = 203,
    NoContent = 204,
    ResetContent = 205,
    PartialContent = 206,
    MultiStatus = 207,
    AlreadyReported = 208,
    IMUsed = 226,
    MultipleChoices = 300,
    MovedPermanently = 301,
    Found = 302,
    SeeOther = 303,
    NotModified = 304,
    UseProxy = 305,
    TemporaryRedirect = 307,
    PermanentRedirect = 308,
    BadRequest = 400,
    Unauthorized = 401,
    PaymentRequired = 402,
    Forbidden = 403,
    NotFound = 404,
    MethodNotAllowed = 405,
    NotAcceptable = 406,
    ProxyAuthenticationRequired = 407,
    RequestTimeout = 408,
    Conflict = 409,
    Gone = 410,
    LengthRequired = 411,
    PreconditionFailed = 412,
    RequestEntityTooLarge = 413,
    RequestUriTooLong = 414,
    UnsupportedMediaType = 415,
    RequestedRangeNotSatisfiable = 416,
    ExpectationFailed = 417,
    UnprocessableEntity = 422,
    Locked = 423,
    FailedDependency = 424,
    UpgradeRequired = 426,
    PreconditionRequired = 428,
    TooManyRequests = 429,
    RequestHeaderFieldsTooLarge = 431,
    InternalServerError = 500,
    NotImplemented = 501,
    BadGateway = 502,
    ServiceUnavailable = 503,
    GatewayTimeout = 504,
    HttpVersionNotSupported = 505,
    VariantAlsoNegotiates = 506,
    InsufficientStorage = 507,
    LoopDetected = 508,
    NotExtended = 510,
    NetworkAuthenticationRequired = 511,
};
pub const HttpStreamContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHeaders(self: *@This()) core.HResult!*HttpContentHeaderCollection {
        const this: *IHttpContent = @ptrCast(self);
        return try this.getHeaders();
    }
    pub fn BufferAllAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.BufferAllAsync();
    }
    pub fn ReadAsBufferAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IBuffer,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsBufferAsync();
    }
    pub fn ReadAsInputStreamAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IInputStream,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsInputStreamAsync();
    }
    pub fn ReadAsStringAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(HSTRING,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsStringAsync();
    }
    pub fn TryComputeLength(self: *@This(), length: u64) core.HResult!bool {
        const this: *IHttpContent = @ptrCast(self);
        return try this.TryComputeLength(length);
    }
    pub fn WriteToStreamAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.WriteToStreamAsync(outputStream);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromInputStream(content: *IInputStream) core.HResult!*HttpStreamContent {
        const factory = @This().IHttpStreamContentFactoryCache.get();
        return try factory.CreateFromInputStream(content);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpStreamContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContent.GUID;
    pub const IID: Guid = IHttpContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContent.SIGNATURE);
    var _IHttpStreamContentFactoryCache: FactoryCache(IHttpStreamContentFactory, RUNTIME_NAME) = .{};
};
pub const HttpStringContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHeaders(self: *@This()) core.HResult!*HttpContentHeaderCollection {
        const this: *IHttpContent = @ptrCast(self);
        return try this.getHeaders();
    }
    pub fn BufferAllAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.BufferAllAsync();
    }
    pub fn ReadAsBufferAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IBuffer,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsBufferAsync();
    }
    pub fn ReadAsInputStreamAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IInputStream,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsInputStreamAsync();
    }
    pub fn ReadAsStringAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(HSTRING,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.ReadAsStringAsync();
    }
    pub fn TryComputeLength(self: *@This(), length: u64) core.HResult!bool {
        const this: *IHttpContent = @ptrCast(self);
        return try this.TryComputeLength(length);
    }
    pub fn WriteToStreamAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        const this: *IHttpContent = @ptrCast(self);
        return try this.WriteToStreamAsync(outputStream);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromString(content: HSTRING) core.HResult!*HttpStringContent {
        const factory = @This().IHttpStringContentFactoryCache.get();
        return try factory.CreateFromString(content);
    }
    pub fn CreateFromStringWithEncoding(content: HSTRING, encoding: UnicodeEncoding) core.HResult!*HttpStringContent {
        const factory = @This().IHttpStringContentFactoryCache.get();
        return try factory.CreateFromStringWithEncoding(content, encoding);
    }
    pub fn CreateFromStringWithEncodingAndMediaType(content: HSTRING, encoding: UnicodeEncoding, mediaType: HSTRING) core.HResult!*HttpStringContent {
        const factory = @This().IHttpStringContentFactoryCache.get();
        return try factory.CreateFromStringWithEncodingAndMediaType(content, encoding, mediaType);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpStringContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContent.GUID;
    pub const IID: Guid = IHttpContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContent.SIGNATURE);
    var _IHttpStringContentFactoryCache: FactoryCache(IHttpStringContentFactory, RUNTIME_NAME) = .{};
};
pub const HttpTransportInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        const this: *IHttpTransportInformation = @ptrCast(self);
        return try this.getServerCertificate();
    }
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        const this: *IHttpTransportInformation = @ptrCast(self);
        return try this.getServerCertificateErrorSeverity();
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        const this: *IHttpTransportInformation = @ptrCast(self);
        return try this.getServerCertificateErrors();
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        const this: *IHttpTransportInformation = @ptrCast(self);
        return try this.getServerIntermediateCertificates();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.HttpTransportInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpTransportInformation.GUID;
    pub const IID: Guid = IHttpTransportInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpTransportInformation.SIGNATURE);
};
pub const HttpVersion = enum(i32) {
    None = 0,
    Http10 = 1,
    Http11 = 2,
    Http20 = 3,
};
pub const IHttpBufferContentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromBuffer(self: *@This(), content: *IBuffer) core.HResult!*HttpBufferContent {
        var _r: *HttpBufferContent = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBufferWithOffset(self: *@This(), content: *IBuffer, offset: u32, count: u32) core.HResult!*HttpBufferContent {
        var _r: *HttpBufferContent = undefined;
        const _c = self.vtable.CreateFromBufferWithOffset(@ptrCast(self), content, offset, count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpBufferContentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc20c193-c41f-4ff7-9123-6435736eadc2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, content: *IBuffer, _r: **HttpBufferContent) callconv(.winapi) HRESULT,
        CreateFromBufferWithOffset: *const fn(self: *anyopaque, content: *IBuffer, offset: u32, count: u32, _r: **HttpBufferContent) callconv(.winapi) HRESULT,
    };
};
pub const IHttpClient = extern struct {
    vtable: *const VTable,
    pub fn DeleteAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) = undefined;
        const _c = self.vtable.GetAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAsyncWithCompletionOption(self: *@This(), uri: *Uri, completionOption: HttpCompletionOption) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) = undefined;
        const _c = self.vtable.GetAsyncWithCompletionOption(@ptrCast(self), uri, completionOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBufferAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(IBuffer,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(IBuffer,HttpProgress) = undefined;
        const _c = self.vtable.GetBufferAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInputStreamAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(IInputStream,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(IInputStream,HttpProgress) = undefined;
        const _c = self.vtable.GetInputStreamAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStringAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HSTRING,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HSTRING,HttpProgress) = undefined;
        const _c = self.vtable.GetStringAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PostAsync(self: *@This(), uri: *Uri, content: *IHttpContent) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) = undefined;
        const _c = self.vtable.PostAsync(@ptrCast(self), uri, content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PutAsync(self: *@This(), uri: *Uri, content: *IHttpContent) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) = undefined;
        const _c = self.vtable.PutAsync(@ptrCast(self), uri, content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendRequestAsync(self: *@This(), request: *HttpRequestMessage) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) = undefined;
        const _c = self.vtable.SendRequestAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendRequestAsyncWithCompletionOption(self: *@This(), request: *HttpRequestMessage, completionOption: HttpCompletionOption) core.HResult!*IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress) = undefined;
        const _c = self.vtable.SendRequestAsyncWithCompletionOption(@ptrCast(self), request, completionOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultRequestHeaders(self: *@This()) core.HResult!*HttpRequestHeaderCollection {
        var _r: *HttpRequestHeaderCollection = undefined;
        const _c = self.vtable.get_DefaultRequestHeaders(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7fda1151-3574-4880-a8ba-e6b1e0061f3d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress)) callconv(.winapi) HRESULT,
        GetAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress)) callconv(.winapi) HRESULT,
        GetAsyncWithCompletionOption: *const fn(self: *anyopaque, uri: *Uri, completionOption: HttpCompletionOption, _r: **IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress)) callconv(.winapi) HRESULT,
        GetBufferAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(IBuffer,HttpProgress)) callconv(.winapi) HRESULT,
        GetInputStreamAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(IInputStream,HttpProgress)) callconv(.winapi) HRESULT,
        GetStringAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(HSTRING,HttpProgress)) callconv(.winapi) HRESULT,
        PostAsync: *const fn(self: *anyopaque, uri: *Uri, content: *IHttpContent, _r: **IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress)) callconv(.winapi) HRESULT,
        PutAsync: *const fn(self: *anyopaque, uri: *Uri, content: *IHttpContent, _r: **IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress)) callconv(.winapi) HRESULT,
        SendRequestAsync: *const fn(self: *anyopaque, request: *HttpRequestMessage, _r: **IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress)) callconv(.winapi) HRESULT,
        SendRequestAsyncWithCompletionOption: *const fn(self: *anyopaque, request: *HttpRequestMessage, completionOption: HttpCompletionOption, _r: **IAsyncOperationWithProgress(HttpResponseMessage,HttpProgress)) callconv(.winapi) HRESULT,
        get_DefaultRequestHeaders: *const fn(self: *anyopaque, _r: **HttpRequestHeaderCollection) callconv(.winapi) HRESULT,
    };
};
pub const IHttpClient2 = extern struct {
    vtable: *const VTable,
    pub fn TryDeleteAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) = undefined;
        const _c = self.vtable.TryDeleteAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) = undefined;
        const _c = self.vtable.TryGetAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetAsyncWithCompletionOption(self: *@This(), uri: *Uri, completionOption: HttpCompletionOption) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) = undefined;
        const _c = self.vtable.TryGetAsyncWithCompletionOption(@ptrCast(self), uri, completionOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetBufferAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpGetBufferResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpGetBufferResult,HttpProgress) = undefined;
        const _c = self.vtable.TryGetBufferAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetInputStreamAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpGetInputStreamResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpGetInputStreamResult,HttpProgress) = undefined;
        const _c = self.vtable.TryGetInputStreamAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetStringAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(HttpGetStringResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpGetStringResult,HttpProgress) = undefined;
        const _c = self.vtable.TryGetStringAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryPostAsync(self: *@This(), uri: *Uri, content: *IHttpContent) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) = undefined;
        const _c = self.vtable.TryPostAsync(@ptrCast(self), uri, content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryPutAsync(self: *@This(), uri: *Uri, content: *IHttpContent) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) = undefined;
        const _c = self.vtable.TryPutAsync(@ptrCast(self), uri, content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySendRequestAsync(self: *@This(), request: *HttpRequestMessage) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) = undefined;
        const _c = self.vtable.TrySendRequestAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySendRequestAsyncWithCompletionOption(self: *@This(), request: *HttpRequestMessage, completionOption: HttpCompletionOption) core.HResult!*IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) {
        var _r: *IAsyncOperationWithProgress(HttpRequestResult,HttpProgress) = undefined;
        const _c = self.vtable.TrySendRequestAsyncWithCompletionOption(@ptrCast(self), request, completionOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpClient2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cdd83348-e8b7-4cec-b1b0-dc455fe72c92";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryDeleteAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(HttpRequestResult,HttpProgress)) callconv(.winapi) HRESULT,
        TryGetAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(HttpRequestResult,HttpProgress)) callconv(.winapi) HRESULT,
        TryGetAsyncWithCompletionOption: *const fn(self: *anyopaque, uri: *Uri, completionOption: HttpCompletionOption, _r: **IAsyncOperationWithProgress(HttpRequestResult,HttpProgress)) callconv(.winapi) HRESULT,
        TryGetBufferAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(HttpGetBufferResult,HttpProgress)) callconv(.winapi) HRESULT,
        TryGetInputStreamAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(HttpGetInputStreamResult,HttpProgress)) callconv(.winapi) HRESULT,
        TryGetStringAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(HttpGetStringResult,HttpProgress)) callconv(.winapi) HRESULT,
        TryPostAsync: *const fn(self: *anyopaque, uri: *Uri, content: *IHttpContent, _r: **IAsyncOperationWithProgress(HttpRequestResult,HttpProgress)) callconv(.winapi) HRESULT,
        TryPutAsync: *const fn(self: *anyopaque, uri: *Uri, content: *IHttpContent, _r: **IAsyncOperationWithProgress(HttpRequestResult,HttpProgress)) callconv(.winapi) HRESULT,
        TrySendRequestAsync: *const fn(self: *anyopaque, request: *HttpRequestMessage, _r: **IAsyncOperationWithProgress(HttpRequestResult,HttpProgress)) callconv(.winapi) HRESULT,
        TrySendRequestAsyncWithCompletionOption: *const fn(self: *anyopaque, request: *HttpRequestMessage, completionOption: HttpCompletionOption, _r: **IAsyncOperationWithProgress(HttpRequestResult,HttpProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpClient3 = extern struct {
    vtable: *const VTable,
    pub fn getDefaultPrivacyAnnotation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DefaultPrivacyAnnotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultPrivacyAnnotation(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DefaultPrivacyAnnotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpClient3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1172fd01-9899-4194-963f-8f9d72a7ec15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DefaultPrivacyAnnotation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DefaultPrivacyAnnotation: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpClientFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), filter: *IHttpFilter) core.HResult!*HttpClient {
        var _r: *HttpClient = undefined;
        const _c = self.vtable.Create(@ptrCast(self), filter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpClientFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c30c4eca-e3fa-4f99-afb4-63cc65009462";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, filter: *IHttpFilter, _r: **HttpClient) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContent = extern struct {
    vtable: *const VTable,
    pub fn getHeaders(self: *@This()) core.HResult!*HttpContentHeaderCollection {
        var _r: *HttpContentHeaderCollection = undefined;
        const _c = self.vtable.get_Headers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BufferAllAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        var _r: *IAsyncOperationWithProgress(u64,u64) = undefined;
        const _c = self.vtable.BufferAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadAsBufferAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IBuffer,u64) {
        var _r: *IAsyncOperationWithProgress(IBuffer,u64) = undefined;
        const _c = self.vtable.ReadAsBufferAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadAsInputStreamAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(IInputStream,u64) {
        var _r: *IAsyncOperationWithProgress(IInputStream,u64) = undefined;
        const _c = self.vtable.ReadAsInputStreamAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadAsStringAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(HSTRING,u64) {
        var _r: *IAsyncOperationWithProgress(HSTRING,u64) = undefined;
        const _c = self.vtable.ReadAsStringAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryComputeLength(self: *@This(), length: u64) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryComputeLength(@ptrCast(self), length, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteToStreamAsync(self: *@This(), outputStream: *IOutputStream) core.HResult!*IAsyncOperationWithProgress(u64,u64) {
        var _r: *IAsyncOperationWithProgress(u64,u64) = undefined;
        const _c = self.vtable.WriteToStreamAsync(@ptrCast(self), outputStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b14a441-fba7-4bd2-af0a-839de7c295da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Headers: *const fn(self: *anyopaque, _r: **HttpContentHeaderCollection) callconv(.winapi) HRESULT,
        BufferAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(u64,u64)) callconv(.winapi) HRESULT,
        ReadAsBufferAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(IBuffer,u64)) callconv(.winapi) HRESULT,
        ReadAsInputStreamAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(IInputStream,u64)) callconv(.winapi) HRESULT,
        ReadAsStringAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(HSTRING,u64)) callconv(.winapi) HRESULT,
        TryComputeLength: *const fn(self: *anyopaque, length: u64, _r: *bool) callconv(.winapi) HRESULT,
        WriteToStreamAsync: *const fn(self: *anyopaque, outputStream: *IOutputStream, _r: **IAsyncOperationWithProgress(u64,u64)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCookie = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDomain(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Domain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpires(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Expires(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpires(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_Expires(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHttpOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HttpOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHttpOnly(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_HttpOnly(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSecure(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Secure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSecure(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Secure(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpCookie";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f5488e2-cc2d-4779-86a7-88f10687d249";
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
        get_Domain: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Expires: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Expires: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_HttpOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_HttpOnly: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Secure: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Secure: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCookieFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), name: HSTRING, domain: HSTRING, path: HSTRING) core.HResult!*HttpCookie {
        var _r: *HttpCookie = undefined;
        const _c = self.vtable.Create(@ptrCast(self), name, domain, path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpCookieFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a0585a9-931c-4cd1-a96d-c21701785c5f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, name: HSTRING, domain: HSTRING, path: HSTRING, _r: **HttpCookie) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCookieManager = extern struct {
    vtable: *const VTable,
    pub fn SetCookie(self: *@This(), cookie: *HttpCookie) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.SetCookie(@ptrCast(self), cookie, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCookieWithThirdParty(self: *@This(), cookie: *HttpCookie, thirdParty: bool) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.SetCookieWithThirdParty(@ptrCast(self), cookie, thirdParty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteCookie(self: *@This(), cookie: *HttpCookie) core.HResult!void {
        const _c = self.vtable.DeleteCookie(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetCookies(self: *@This(), uri: *Uri) core.HResult!*HttpCookieCollection {
        var _r: *HttpCookieCollection = undefined;
        const _c = self.vtable.GetCookies(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpCookieManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a431780-cd4f-4e57-a84a-5b0a53d6bb96";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetCookie: *const fn(self: *anyopaque, cookie: *HttpCookie, _r: *bool) callconv(.winapi) HRESULT,
        SetCookieWithThirdParty: *const fn(self: *anyopaque, cookie: *HttpCookie, thirdParty: bool, _r: *bool) callconv(.winapi) HRESULT,
        DeleteCookie: *const fn(self: *anyopaque, cookie: *HttpCookie) callconv(.winapi) HRESULT,
        GetCookies: *const fn(self: *anyopaque, uri: *Uri, _r: **HttpCookieCollection) callconv(.winapi) HRESULT,
    };
};
pub const IHttpFormUrlEncodedContentFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), content: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*HttpFormUrlEncodedContent {
        var _r: *HttpFormUrlEncodedContent = undefined;
        const _c = self.vtable.Create(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpFormUrlEncodedContentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43f0138c-2f73-4302-b5f3-eae9238a5e01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, content: *IIterable(IKeyValuePair(HSTRING,HSTRING)), _r: **HttpFormUrlEncodedContent) callconv(.winapi) HRESULT,
    };
};
pub const IHttpGetBufferResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.get_RequestMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_ResponseMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpGetBufferResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53d08e7c-e209-404e-9a49-742d8236fd3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_RequestMessage: *const fn(self: *anyopaque, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
        get_ResponseMessage: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IHttpGetInputStreamResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.get_RequestMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_ResponseMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpGetInputStreamResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5d63463-13aa-4ee0-be95-a0c39fe91203";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_RequestMessage: *const fn(self: *anyopaque, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
        get_ResponseMessage: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
    };
};
pub const IHttpGetStringResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.get_RequestMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_ResponseMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpGetStringResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9bac466d-8509-4775-b16d-8953f47a7f5f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_RequestMessage: *const fn(self: *anyopaque, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
        get_ResponseMessage: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMethod = extern struct {
    vtable: *const VTable,
    pub fn getMethod(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Method(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpMethod";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "728d4022-700d-4fe0-afa5-40299c58dbfd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Method: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMethodFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), method: HSTRING) core.HResult!*HttpMethod {
        var _r: *HttpMethod = undefined;
        const _c = self.vtable.Create(@ptrCast(self), method, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpMethodFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c51d10d-36d7-40f8-a86d-e759caf2f83f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, method: HSTRING, _r: **HttpMethod) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMethodStatics = extern struct {
    vtable: *const VTable,
    pub fn getDelete(self: *@This()) core.HResult!*HttpMethod {
        var _r: *HttpMethod = undefined;
        const _c = self.vtable.get_Delete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGet(self: *@This()) core.HResult!*HttpMethod {
        var _r: *HttpMethod = undefined;
        const _c = self.vtable.get_Get(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHead(self: *@This()) core.HResult!*HttpMethod {
        var _r: *HttpMethod = undefined;
        const _c = self.vtable.get_Head(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptions(self: *@This()) core.HResult!*HttpMethod {
        var _r: *HttpMethod = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPatch(self: *@This()) core.HResult!*HttpMethod {
        var _r: *HttpMethod = undefined;
        const _c = self.vtable.get_Patch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPost(self: *@This()) core.HResult!*HttpMethod {
        var _r: *HttpMethod = undefined;
        const _c = self.vtable.get_Post(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPut(self: *@This()) core.HResult!*HttpMethod {
        var _r: *HttpMethod = undefined;
        const _c = self.vtable.get_Put(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpMethodStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64d171f0-d99a-4153-8dc6-d68cc4cce317";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Delete: *const fn(self: *anyopaque, _r: **HttpMethod) callconv(.winapi) HRESULT,
        get_Get: *const fn(self: *anyopaque, _r: **HttpMethod) callconv(.winapi) HRESULT,
        get_Head: *const fn(self: *anyopaque, _r: **HttpMethod) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: **HttpMethod) callconv(.winapi) HRESULT,
        get_Patch: *const fn(self: *anyopaque, _r: **HttpMethod) callconv(.winapi) HRESULT,
        get_Post: *const fn(self: *anyopaque, _r: **HttpMethod) callconv(.winapi) HRESULT,
        get_Put: *const fn(self: *anyopaque, _r: **HttpMethod) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMultipartContent = extern struct {
    vtable: *const VTable,
    pub fn Add(self: *@This(), content: *IHttpContent) core.HResult!void {
        const _c = self.vtable.Add(@ptrCast(self), content);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpMultipartContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df916aff-9926-4ac9-aaf1-e0d04ef09bb9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, content: *IHttpContent) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMultipartContentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithSubtype(self: *@This(), subtype: HSTRING) core.HResult!*HttpMultipartContent {
        var _r: *HttpMultipartContent = undefined;
        const _c = self.vtable.CreateWithSubtype(@ptrCast(self), subtype, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithSubtypeAndBoundary(self: *@This(), subtype: HSTRING, boundary: HSTRING) core.HResult!*HttpMultipartContent {
        var _r: *HttpMultipartContent = undefined;
        const _c = self.vtable.CreateWithSubtypeAndBoundary(@ptrCast(self), subtype, boundary, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpMultipartContentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7eb42e62-0222-4f20-b372-47d5db5d33b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithSubtype: *const fn(self: *anyopaque, subtype: HSTRING, _r: **HttpMultipartContent) callconv(.winapi) HRESULT,
        CreateWithSubtypeAndBoundary: *const fn(self: *anyopaque, subtype: HSTRING, boundary: HSTRING, _r: **HttpMultipartContent) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMultipartFormDataContent = extern struct {
    vtable: *const VTable,
    pub fn Add(self: *@This(), content: *IHttpContent) core.HResult!void {
        const _c = self.vtable.Add(@ptrCast(self), content);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddWithName(self: *@This(), content: *IHttpContent, name: HSTRING) core.HResult!void {
        const _c = self.vtable.AddWithName(@ptrCast(self), content, name);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddWithFileName(self: *@This(), content: *IHttpContent, name: HSTRING, fileName: HSTRING) core.HResult!void {
        const _c = self.vtable.AddWithFileName(@ptrCast(self), content, name, fileName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpMultipartFormDataContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64d337e2-e967-4624-b6d1-cf74604a4a42";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, content: *IHttpContent) callconv(.winapi) HRESULT,
        AddWithName: *const fn(self: *anyopaque, content: *IHttpContent, name: HSTRING) callconv(.winapi) HRESULT,
        AddWithFileName: *const fn(self: *anyopaque, content: *IHttpContent, name: HSTRING, fileName: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMultipartFormDataContentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithBoundary(self: *@This(), boundary: HSTRING) core.HResult!*HttpMultipartFormDataContent {
        var _r: *HttpMultipartFormDataContent = undefined;
        const _c = self.vtable.CreateWithBoundary(@ptrCast(self), boundary, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpMultipartFormDataContentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a04d7311-5017-4622-93a8-49b24a4fcbfc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithBoundary: *const fn(self: *anyopaque, boundary: HSTRING, _r: **HttpMultipartFormDataContent) callconv(.winapi) HRESULT,
    };
};
pub const IHttpRequestMessage = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*IHttpContent {
        var _r: *IHttpContent = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContent(self: *@This(), value: *IHttpContent) core.HResult!void {
        const _c = self.vtable.put_Content(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeaders(self: *@This()) core.HResult!*HttpRequestHeaderCollection {
        var _r: *HttpRequestHeaderCollection = undefined;
        const _c = self.vtable.get_Headers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMethod(self: *@This()) core.HResult!*HttpMethod {
        var _r: *HttpMethod = undefined;
        const _c = self.vtable.get_Method(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMethod(self: *@This(), value: *HttpMethod) core.HResult!void {
        const _c = self.vtable.put_Method(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,IInspectable) {
        var _r: *IMap(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_RequestUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_RequestUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransportInformation(self: *@This()) core.HResult!*HttpTransportInformation {
        var _r: *HttpTransportInformation = undefined;
        const _c = self.vtable.get_TransportInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpRequestMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **IHttpContent) callconv(.winapi) HRESULT,
        put_Content: *const fn(self: *anyopaque, value: *IHttpContent) callconv(.winapi) HRESULT,
        get_Headers: *const fn(self: *anyopaque, _r: **HttpRequestHeaderCollection) callconv(.winapi) HRESULT,
        get_Method: *const fn(self: *anyopaque, _r: **HttpMethod) callconv(.winapi) HRESULT,
        put_Method: *const fn(self: *anyopaque, value: *HttpMethod) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
        get_RequestUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_RequestUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_TransportInformation: *const fn(self: *anyopaque, _r: **HttpTransportInformation) callconv(.winapi) HRESULT,
    };
};
pub const IHttpRequestMessage2 = extern struct {
    vtable: *const VTable,
    pub fn getPrivacyAnnotation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrivacyAnnotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrivacyAnnotation(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PrivacyAnnotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpRequestMessage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3c60489-62c2-4a3f-9554-226e7c60bd96";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrivacyAnnotation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PrivacyAnnotation: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpRequestMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), method: *HttpMethod, uri: *Uri) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.Create(@ptrCast(self), method, uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpRequestMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bac994e-3886-412e-aec3-52ec7f25616f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, method: *HttpMethod, uri: *Uri, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
    };
};
pub const IHttpRequestResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.get_RequestMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_ResponseMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6acf4da8-b5eb-4a35-a902-4217fbe820c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_RequestMessage: *const fn(self: *anyopaque, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
        get_ResponseMessage: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpResponseMessage = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*IHttpContent {
        var _r: *IHttpContent = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContent(self: *@This(), value: *IHttpContent) core.HResult!void {
        const _c = self.vtable.put_Content(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeaders(self: *@This()) core.HResult!*HttpResponseHeaderCollection {
        var _r: *HttpResponseHeaderCollection = undefined;
        const _c = self.vtable.get_Headers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSuccessStatusCode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSuccessStatusCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReasonPhrase(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ReasonPhrase(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReasonPhrase(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ReasonPhrase(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.get_RequestMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestMessage(self: *@This(), value: *HttpRequestMessage) core.HResult!void {
        const _c = self.vtable.put_RequestMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!HttpResponseMessageSource {
        var _r: HttpResponseMessageSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: HttpResponseMessageSource) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatusCode(self: *@This()) core.HResult!HttpStatusCode {
        var _r: HttpStatusCode = undefined;
        const _c = self.vtable.get_StatusCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStatusCode(self: *@This(), value: HttpStatusCode) core.HResult!void {
        const _c = self.vtable.put_StatusCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVersion(self: *@This()) core.HResult!HttpVersion {
        var _r: HttpVersion = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVersion(self: *@This(), value: HttpVersion) core.HResult!void {
        const _c = self.vtable.put_Version(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnsureSuccessStatusCode(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.EnsureSuccessStatusCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpResponseMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fee200fb-8664-44e0-95d9-42696199bffc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **IHttpContent) callconv(.winapi) HRESULT,
        put_Content: *const fn(self: *anyopaque, value: *IHttpContent) callconv(.winapi) HRESULT,
        get_Headers: *const fn(self: *anyopaque, _r: **HttpResponseHeaderCollection) callconv(.winapi) HRESULT,
        get_IsSuccessStatusCode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ReasonPhrase: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ReasonPhrase: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RequestMessage: *const fn(self: *anyopaque, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
        put_RequestMessage: *const fn(self: *anyopaque, value: *HttpRequestMessage) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: *HttpResponseMessageSource) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: HttpResponseMessageSource) callconv(.winapi) HRESULT,
        get_StatusCode: *const fn(self: *anyopaque, _r: *HttpStatusCode) callconv(.winapi) HRESULT,
        put_StatusCode: *const fn(self: *anyopaque, value: HttpStatusCode) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *HttpVersion) callconv(.winapi) HRESULT,
        put_Version: *const fn(self: *anyopaque, value: HttpVersion) callconv(.winapi) HRESULT,
        EnsureSuccessStatusCode: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
    };
};
pub const IHttpResponseMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), statusCode: HttpStatusCode) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.Create(@ptrCast(self), statusCode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpResponseMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52a8af99-f095-43da-b60f-7cfc2bc7ea2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, statusCode: HttpStatusCode, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
    };
};
pub const IHttpStreamContentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromInputStream(self: *@This(), content: *IInputStream) core.HResult!*HttpStreamContent {
        var _r: *HttpStreamContent = undefined;
        const _c = self.vtable.CreateFromInputStream(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpStreamContentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3e64d9d-f725-407e-942f-0eda189809f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromInputStream: *const fn(self: *anyopaque, content: *IInputStream, _r: **HttpStreamContent) callconv(.winapi) HRESULT,
    };
};
pub const IHttpStringContentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromString(self: *@This(), content: HSTRING) core.HResult!*HttpStringContent {
        var _r: *HttpStringContent = undefined;
        const _c = self.vtable.CreateFromString(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStringWithEncoding(self: *@This(), content: HSTRING, encoding: UnicodeEncoding) core.HResult!*HttpStringContent {
        var _r: *HttpStringContent = undefined;
        const _c = self.vtable.CreateFromStringWithEncoding(@ptrCast(self), content, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStringWithEncodingAndMediaType(self: *@This(), content: HSTRING, encoding: UnicodeEncoding, mediaType: HSTRING) core.HResult!*HttpStringContent {
        var _r: *HttpStringContent = undefined;
        const _c = self.vtable.CreateFromStringWithEncodingAndMediaType(@ptrCast(self), content, encoding, mediaType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpStringContentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46649d5b-2e93-48eb-8e61-19677878e57f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromString: *const fn(self: *anyopaque, content: HSTRING, _r: **HttpStringContent) callconv(.winapi) HRESULT,
        CreateFromStringWithEncoding: *const fn(self: *anyopaque, content: HSTRING, encoding: UnicodeEncoding, _r: **HttpStringContent) callconv(.winapi) HRESULT,
        CreateFromStringWithEncodingAndMediaType: *const fn(self: *anyopaque, content: HSTRING, encoding: UnicodeEncoding, mediaType: HSTRING, _r: **HttpStringContent) callconv(.winapi) HRESULT,
    };
};
pub const IHttpTransportInformation = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.Web.Http.IHttpTransportInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70127198-c6a7-4ed0-833a-83fd8b8f178d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServerCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        get_ServerCertificateErrorSeverity: *const fn(self: *anyopaque, _r: *SocketSslErrorSeverity) callconv(.winapi) HRESULT,
        get_ServerCertificateErrors: *const fn(self: *anyopaque, _r: **IVectorView(ChainValidationResult)) callconv(.winapi) HRESULT,
        get_ServerIntermediateCertificates: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Certificate = @import("../Security/Cryptography/Certificates.zig").Certificate;
const ChainValidationResult = @import("../Security/Cryptography/Certificates.zig").ChainValidationResult;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IReference = @import("../Foundation.zig").IReference;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const IStringable = @import("../Foundation.zig").IStringable;
const DateTime = @import("../Foundation.zig").DateTime;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const HttpResponseHeaderCollection = @import("./Headers.zig").HttpResponseHeaderCollection;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const UnicodeEncoding = @import("../Storage/Streams.zig").UnicodeEncoding;
const HttpContentHeaderCollection = @import("./Headers.zig").HttpContentHeaderCollection;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const SocketSslErrorSeverity = @import("../Networking/Sockets.zig").SocketSslErrorSeverity;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const Uri = @import("../Foundation.zig").Uri;
const HResult = @import("../Foundation.zig").HResult;
const IHttpFilter = @import("./Filters.zig").IHttpFilter;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const HttpRequestHeaderCollection = @import("./Headers.zig").HttpRequestHeaderCollection;
pub const Diagnostics = @import("./Http/Diagnostics.zig");
pub const Filters = @import("./Http/Filters.zig");
pub const Headers = @import("./Http/Headers.zig");
