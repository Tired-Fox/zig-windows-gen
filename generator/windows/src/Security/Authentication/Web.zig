pub const IWebAuthenticationBrokerStatics = extern struct {
    vtable: *const VTable,
    pub fn AuthenticateAsync(self: *@This(), options: WebAuthenticationOptions, requestUri: *Uri, callbackUri: *Uri) core.HResult!*IAsyncOperation(WebAuthenticationResult) {
        var _r: *IAsyncOperation(WebAuthenticationResult) = undefined;
        const _c = self.vtable.AuthenticateAsync(@ptrCast(self), options, requestUri, callbackUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AuthenticateAsync(self: *@This(), options: WebAuthenticationOptions, requestUri: *Uri) core.HResult!*IAsyncOperation(WebAuthenticationResult) {
        var _r: *IAsyncOperation(WebAuthenticationResult) = undefined;
        const _c = self.vtable.AuthenticateAsync(@ptrCast(self), options, requestUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentApplicationCallbackUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.GetCurrentApplicationCallbackUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.IWebAuthenticationBrokerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f149f1a-e673-40b5-bc22-201a6864a37b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AuthenticateAsync: *const fn(self: *anyopaque, options: WebAuthenticationOptions, requestUri: *Uri, callbackUri: *Uri, _r: **IAsyncOperation(WebAuthenticationResult)) callconv(.winapi) HRESULT,
        AuthenticateAsync: *const fn(self: *anyopaque, options: WebAuthenticationOptions, requestUri: *Uri, _r: **IAsyncOperation(WebAuthenticationResult)) callconv(.winapi) HRESULT,
        GetCurrentApplicationCallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationBrokerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn AuthenticateAndContinue(self: *@This(), requestUri: *Uri) core.HResult!void {
        const _c = self.vtable.AuthenticateAndContinue(@ptrCast(self), requestUri);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AuthenticateAndContinue(self: *@This(), requestUri: *Uri, callbackUri: *Uri) core.HResult!void {
        const _c = self.vtable.AuthenticateAndContinue(@ptrCast(self), requestUri, callbackUri);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AuthenticateAndContinue(self: *@This(), requestUri: *Uri, callbackUri: *Uri, continuationData: *ValueSet, options: WebAuthenticationOptions) core.HResult!void {
        const _c = self.vtable.AuthenticateAndContinue(@ptrCast(self), requestUri, callbackUri, continuationData, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AuthenticateSilentlyAsync(self: *@This(), requestUri: *Uri) core.HResult!*IAsyncOperation(WebAuthenticationResult) {
        var _r: *IAsyncOperation(WebAuthenticationResult) = undefined;
        const _c = self.vtable.AuthenticateSilentlyAsync(@ptrCast(self), requestUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AuthenticateSilentlyAsync(self: *@This(), requestUri: *Uri, options: WebAuthenticationOptions) core.HResult!*IAsyncOperation(WebAuthenticationResult) {
        var _r: *IAsyncOperation(WebAuthenticationResult) = undefined;
        const _c = self.vtable.AuthenticateSilentlyAsync(@ptrCast(self), requestUri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.IWebAuthenticationBrokerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73cdfb9e-14e7-41da-a971-aaf4410b621e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AuthenticateAndContinue: *const fn(self: *anyopaque, requestUri: *Uri) callconv(.winapi) HRESULT,
        AuthenticateAndContinue: *const fn(self: *anyopaque, requestUri: *Uri, callbackUri: *Uri) callconv(.winapi) HRESULT,
        AuthenticateAndContinue: *const fn(self: *anyopaque, requestUri: *Uri, callbackUri: *Uri, continuationData: *ValueSet, options: WebAuthenticationOptions) callconv(.winapi) HRESULT,
        AuthenticateSilentlyAsync: *const fn(self: *anyopaque, requestUri: *Uri, _r: **IAsyncOperation(WebAuthenticationResult)) callconv(.winapi) HRESULT,
        AuthenticateSilentlyAsync: *const fn(self: *anyopaque, requestUri: *Uri, options: WebAuthenticationOptions, _r: **IAsyncOperation(WebAuthenticationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationResult = extern struct {
    vtable: *const VTable,
    pub fn getResponseData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResponseData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseStatus(self: *@This()) core.HResult!WebAuthenticationStatus {
        var _r: WebAuthenticationStatus = undefined;
        const _c = self.vtable.get_ResponseStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseErrorDetail(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ResponseErrorDetail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.IWebAuthenticationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64002b4b-ede9-470a-a5cd-0323faf6e262";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResponseData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ResponseStatus: *const fn(self: *anyopaque, _r: *WebAuthenticationStatus) callconv(.winapi) HRESULT,
        get_ResponseErrorDetail: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const TokenBindingKeyType = enum(i32) {
    Rsa2048 = 0,
    EcdsaP256 = 1,
    AnyExisting = 2,
};
pub const WebAuthenticationBroker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn AuthenticateAndContinue(requestUri: *Uri) core.HResult!void {
        const factory = @This().IWebAuthenticationBrokerStatics2Cache.get();
        return try factory.AuthenticateAndContinue(requestUri);
    }
    pub fn AuthenticateAndContinue(requestUri: *Uri, callbackUri: *Uri) core.HResult!void {
        const factory = @This().IWebAuthenticationBrokerStatics2Cache.get();
        return try factory.AuthenticateAndContinue(requestUri, callbackUri);
    }
    pub fn AuthenticateAndContinue(requestUri: *Uri, callbackUri: *Uri, continuationData: *ValueSet, options: WebAuthenticationOptions) core.HResult!void {
        const factory = @This().IWebAuthenticationBrokerStatics2Cache.get();
        return try factory.AuthenticateAndContinue(requestUri, callbackUri, continuationData, options);
    }
    pub fn AuthenticateSilentlyAsync(requestUri: *Uri) core.HResult!*IAsyncOperation(WebAuthenticationResult) {
        const factory = @This().IWebAuthenticationBrokerStatics2Cache.get();
        return try factory.AuthenticateSilentlyAsync(requestUri);
    }
    pub fn AuthenticateSilentlyAsync(requestUri: *Uri, options: WebAuthenticationOptions) core.HResult!*IAsyncOperation(WebAuthenticationResult) {
        const factory = @This().IWebAuthenticationBrokerStatics2Cache.get();
        return try factory.AuthenticateSilentlyAsync(requestUri, options);
    }
    pub fn AuthenticateAsync(options: WebAuthenticationOptions, requestUri: *Uri, callbackUri: *Uri) core.HResult!*IAsyncOperation(WebAuthenticationResult) {
        const factory = @This().IWebAuthenticationBrokerStaticsCache.get();
        return try factory.AuthenticateAsync(options, requestUri, callbackUri);
    }
    pub fn AuthenticateAsync(options: WebAuthenticationOptions, requestUri: *Uri) core.HResult!*IAsyncOperation(WebAuthenticationResult) {
        const factory = @This().IWebAuthenticationBrokerStaticsCache.get();
        return try factory.AuthenticateAsync(options, requestUri);
    }
    pub fn GetCurrentApplicationCallbackUri() core.HResult!*Uri {
        const factory = @This().IWebAuthenticationBrokerStaticsCache.get();
        return try factory.GetCurrentApplicationCallbackUri();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.WebAuthenticationBroker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWebAuthenticationBrokerStatics2Cache: FactoryCache(IWebAuthenticationBrokerStatics2, RUNTIME_NAME) = .{};
    var _IWebAuthenticationBrokerStaticsCache: FactoryCache(IWebAuthenticationBrokerStatics, RUNTIME_NAME) = .{};
};
pub const WebAuthenticationOptions = enum(i32) {
    None = 0,
    SilentMode = 1,
    UseTitle = 2,
    UseHttpPost = 4,
    UseCorporateNetwork = 8,
};
pub const WebAuthenticationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResponseData(self: *@This()) core.HResult!HSTRING {
        const this: *IWebAuthenticationResult = @ptrCast(self);
        return try this.getResponseData();
    }
    pub fn getResponseStatus(self: *@This()) core.HResult!WebAuthenticationStatus {
        const this: *IWebAuthenticationResult = @ptrCast(self);
        return try this.getResponseStatus();
    }
    pub fn getResponseErrorDetail(self: *@This()) core.HResult!u32 {
        const this: *IWebAuthenticationResult = @ptrCast(self);
        return try this.getResponseErrorDetail();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.WebAuthenticationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAuthenticationResult.GUID;
    pub const IID: Guid = IWebAuthenticationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAuthenticationResult.SIGNATURE);
};
pub const WebAuthenticationStatus = enum(i32) {
    Success = 0,
    UserCancel = 1,
    ErrorHttp = 2,
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const ValueSet = @import("../../Foundation/Collections.zig").ValueSet;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Uri = @import("../../Foundation.zig").Uri;
const HSTRING = @import("../../root.zig").HSTRING;
pub const Core = @import("./Web/Core.zig");
pub const Provider = @import("./Web/Provider.zig");
