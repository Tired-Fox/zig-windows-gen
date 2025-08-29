pub const IUriToStreamResolver = extern struct {
    vtable: *const VTable,
    pub fn UriToStreamAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperation(IInputStream) {
        var _r: *IAsyncOperation(IInputStream) = undefined;
        const _c = self.vtable.UriToStreamAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.IUriToStreamResolver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0aba86a-9aeb-4d3a-9590-003e3ca7e290";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UriToStreamAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperation(IInputStream)) callconv(.winapi) HRESULT,
    };
};
pub const IWebErrorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetStatus(self: *@This(), hresult: i32) core.HResult!WebErrorStatus {
        var _r: WebErrorStatus = undefined;
        const _c = self.vtable.GetStatus(@ptrCast(self), hresult, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.IWebErrorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe616766-bf27-4064-87b7-6563bb11ce2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatus: *const fn(self: *anyopaque, hresult: i32, _r: *WebErrorStatus) callconv(.winapi) HRESULT,
    };
};
pub const WebError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetStatus(hresult: i32) core.HResult!WebErrorStatus {
        const factory = @This().IWebErrorStaticsCache.get();
        return try factory.GetStatus(hresult);
    }
    pub const NAME: []const u8 = "Windows.Web.WebError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWebErrorStaticsCache: FactoryCache(IWebErrorStatics, RUNTIME_NAME) = .{};
};
pub const WebErrorStatus = enum(i32) {
    Unknown = 0,
    CertificateCommonNameIsIncorrect = 1,
    CertificateExpired = 2,
    CertificateContainsErrors = 3,
    CertificateRevoked = 4,
    CertificateIsInvalid = 5,
    ServerUnreachable = 6,
    Timeout = 7,
    ErrorHttpInvalidServerResponse = 8,
    ConnectionAborted = 9,
    ConnectionReset = 10,
    Disconnected = 11,
    HttpToHttpsOnRedirection = 12,
    HttpsToHttpOnRedirection = 13,
    CannotConnect = 14,
    HostNameNotResolved = 15,
    OperationCanceled = 16,
    RedirectFailed = 17,
    UnexpectedStatusCode = 18,
    UnexpectedRedirection = 19,
    UnexpectedClientError = 20,
    UnexpectedServerError = 21,
    InsufficientRangeSupport = 22,
    MissingContentLengthSupport = 23,
    MultipleChoices = 300,
    MovedPermanently = 301,
    Found = 302,
    SeeOther = 303,
    NotModified = 304,
    UseProxy = 305,
    TemporaryRedirect = 307,
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
    InternalServerError = 500,
    NotImplemented = 501,
    BadGateway = 502,
    ServiceUnavailable = 503,
    GatewayTimeout = 504,
    HttpVersionNotSupported = 505,
};
const IUnknown = @import("./root.zig").IUnknown;
const Guid = @import("./root.zig").Guid;
const HRESULT = @import("./root.zig").HRESULT;
const core = @import("./root.zig").core;
const IAsyncOperation = @import("./Foundation.zig").IAsyncOperation;
const IInspectable = @import("./Foundation.zig").IInspectable;
const FactoryCache = @import("./core.zig").FactoryCache;
const IInputStream = @import("./Storage/Streams.zig").IInputStream;
const TrustLevel = @import("./root.zig").TrustLevel;
const Uri = @import("./Foundation.zig").Uri;
const HSTRING = @import("./root.zig").HSTRING;
pub const AtomPub = @import("./Web/AtomPub.zig");
pub const Http = @import("./Web/Http.zig");
pub const Syndication = @import("./Web/Syndication.zig");
pub const UI = @import("./Web/UI.zig");
