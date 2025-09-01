pub const FindAllAccountsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAccounts(self: *@This()) core.HResult!*IVectorView(WebAccount) {
        const this: *IFindAllAccountsResult = @ptrCast(self);
        return try this.getAccounts();
    }
    pub fn getStatus(self: *@This()) core.HResult!FindAllWebAccountsStatus {
        const this: *IFindAllAccountsResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getProviderError(self: *@This()) core.HResult!*WebProviderError {
        const this: *IFindAllAccountsResult = @ptrCast(self);
        return try this.getProviderError();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.FindAllAccountsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFindAllAccountsResult.GUID;
    pub const IID: Guid = IFindAllAccountsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFindAllAccountsResult.SIGNATURE);
};
pub const FindAllWebAccountsStatus = enum(i32) {
    Success = 0,
    NotAllowedByProvider = 1,
    NotSupportedByProvider = 2,
    ProviderError = 3,
};
pub const IFindAllAccountsResult = extern struct {
    vtable: *const VTable,
    pub fn getAccounts(self: *@This()) core.HResult!*IVectorView(WebAccount) {
        var _r: *IVectorView(WebAccount) = undefined;
        const _c = self.vtable.get_Accounts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!FindAllWebAccountsStatus {
        var _r: FindAllWebAccountsStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderError(self: *@This()) core.HResult!*WebProviderError {
        var _r: *WebProviderError = undefined;
        const _c = self.vtable.get_ProviderError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IFindAllAccountsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5812b5d-b72e-420c-86ab-aac0d7b7261f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Accounts: *const fn(self: *anyopaque, _r: **IVectorView(WebAccount)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *FindAllWebAccountsStatus) callconv(.winapi) HRESULT,
        get_ProviderError: *const fn(self: *anyopaque, _r: **WebProviderError) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAccount(self: *@This()) core.HResult!*WebAccount {
        var _r: *WebAccount = undefined;
        const _c = self.vtable.get_Account(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAccountEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fb7037d-424e-44ec-977c-ef2415462a5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Account: *const fn(self: *anyopaque, _r: **WebAccount) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountMonitor = extern struct {
    vtable: *const VTable,
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(WebAccountMonitor,WebAccountEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(WebAccountMonitor,WebAccountEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDefaultSignInAccountChanged(self: *@This(), handler: *TypedEventHandler(WebAccountMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DefaultSignInAccountChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDefaultSignInAccountChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DefaultSignInAccountChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAccountMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7445f5fd-aa9d-4619-8d5d-c138a4ede3e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebAccountMonitor,WebAccountEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebAccountMonitor,WebAccountEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DefaultSignInAccountChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebAccountMonitor,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DefaultSignInAccountChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountMonitor2 = extern struct {
    vtable: *const VTable,
    pub fn addAccountPictureUpdated(self: *@This(), handler: *TypedEventHandler(WebAccountMonitor,WebAccountEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccountPictureUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccountPictureUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccountPictureUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAccountMonitor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7adc1f8-24b8-4f01-9ae5-24545e71233a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AccountPictureUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(WebAccountMonitor,WebAccountEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccountPictureUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationAddAccountResponse = extern struct {
    vtable: *const VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        var _r: *WebAccount = undefined;
        const _c = self.vtable.get_WebAccount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationAddAccountResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7fb013e8-0bd8-542b-b486-8323163a4b85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebAccount: *const fn(self: *anyopaque, _r: **WebAccount) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationAddAccountResponseFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithAccount(self: *@This(), webAccount: *WebAccount) core.HResult!*WebAuthenticationAddAccountResponse {
        var _r: *WebAuthenticationAddAccountResponse = undefined;
        const _c = self.vtable.CreateWithAccount(@ptrCast(self), webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationAddAccountResponseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "325f903e-77be-5365-81d9-0321cdd82195";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithAccount: *const fn(self: *anyopaque, webAccount: *WebAccount, _r: **WebAuthenticationAddAccountResponse) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationAddAccountResult = extern struct {
    vtable: *const VTable,
    pub fn getResponseData(self: *@This()) core.HResult!*WebAuthenticationAddAccountResponse {
        var _r: *WebAuthenticationAddAccountResponse = undefined;
        const _c = self.vtable.get_ResponseData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseStatus(self: *@This()) core.HResult!WebAuthenticationAddAccountStatus {
        var _r: WebAuthenticationAddAccountStatus = undefined;
        const _c = self.vtable.get_ResponseStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseError(self: *@This()) core.HResult!*WebProviderError {
        var _r: *WebProviderError = undefined;
        const _c = self.vtable.get_ResponseError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationAddAccountResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88fad03c-901d-5ffa-9259-701d3ca08ef2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResponseData: *const fn(self: *anyopaque, _r: **WebAuthenticationAddAccountResponse) callconv(.winapi) HRESULT,
        get_ResponseStatus: *const fn(self: *anyopaque, _r: *WebAuthenticationAddAccountStatus) callconv(.winapi) HRESULT,
        get_ResponseError: *const fn(self: *anyopaque, _r: **WebProviderError) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationCoreManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetTokenSilentlyAsync(self: *@This(), request: *WebTokenRequest) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        var _r: *IAsyncOperation(WebTokenRequestResult) = undefined;
        const _c = self.vtable.GetTokenSilentlyAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTokenSilentlyAsyncWithWebAccount(self: *@This(), request: *WebTokenRequest, webAccount: *WebAccount) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        var _r: *IAsyncOperation(WebTokenRequestResult) = undefined;
        const _c = self.vtable.GetTokenSilentlyAsyncWithWebAccount(@ptrCast(self), request, webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestTokenAsync(self: *@This(), request: *WebTokenRequest) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        var _r: *IAsyncOperation(WebTokenRequestResult) = undefined;
        const _c = self.vtable.RequestTokenAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestTokenAsyncWithWebAccount(self: *@This(), request: *WebTokenRequest, webAccount: *WebAccount) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        var _r: *IAsyncOperation(WebTokenRequestResult) = undefined;
        const _c = self.vtable.RequestTokenAsyncWithWebAccount(@ptrCast(self), request, webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAccountAsync(self: *@This(), provider: *WebAccountProvider, webAccountId: HSTRING) core.HResult!*IAsyncOperation(WebAccount) {
        var _r: *IAsyncOperation(WebAccount) = undefined;
        const _c = self.vtable.FindAccountAsync(@ptrCast(self), provider, webAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAccountProviderAsync(self: *@This(), webAccountProviderId: HSTRING) core.HResult!*IAsyncOperation(WebAccountProvider) {
        var _r: *IAsyncOperation(WebAccountProvider) = undefined;
        const _c = self.vtable.FindAccountProviderAsync(@ptrCast(self), webAccountProviderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAccountProviderAsyncWithAuthority(self: *@This(), webAccountProviderId: HSTRING, authority: HSTRING) core.HResult!*IAsyncOperation(WebAccountProvider) {
        var _r: *IAsyncOperation(WebAccountProvider) = undefined;
        const _c = self.vtable.FindAccountProviderAsyncWithAuthority(@ptrCast(self), webAccountProviderId, authority, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationCoreManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6aca7c92-a581-4479-9c10-752eff44fd34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetTokenSilentlyAsync: *const fn(self: *anyopaque, request: *WebTokenRequest, _r: **IAsyncOperation(WebTokenRequestResult)) callconv(.winapi) HRESULT,
        GetTokenSilentlyAsyncWithWebAccount: *const fn(self: *anyopaque, request: *WebTokenRequest, webAccount: *WebAccount, _r: **IAsyncOperation(WebTokenRequestResult)) callconv(.winapi) HRESULT,
        RequestTokenAsync: *const fn(self: *anyopaque, request: *WebTokenRequest, _r: **IAsyncOperation(WebTokenRequestResult)) callconv(.winapi) HRESULT,
        RequestTokenAsyncWithWebAccount: *const fn(self: *anyopaque, request: *WebTokenRequest, webAccount: *WebAccount, _r: **IAsyncOperation(WebTokenRequestResult)) callconv(.winapi) HRESULT,
        FindAccountAsync: *const fn(self: *anyopaque, provider: *WebAccountProvider, webAccountId: HSTRING, _r: **IAsyncOperation(WebAccount)) callconv(.winapi) HRESULT,
        FindAccountProviderAsync: *const fn(self: *anyopaque, webAccountProviderId: HSTRING, _r: **IAsyncOperation(WebAccountProvider)) callconv(.winapi) HRESULT,
        FindAccountProviderAsyncWithAuthority: *const fn(self: *anyopaque, webAccountProviderId: HSTRING, authority: HSTRING, _r: **IAsyncOperation(WebAccountProvider)) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationCoreManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FindAccountProviderAsync(self: *@This(), webAccountProviderId: HSTRING, authority: HSTRING, user: *User) core.HResult!*IAsyncOperation(WebAccountProvider) {
        var _r: *IAsyncOperation(WebAccountProvider) = undefined;
        const _c = self.vtable.FindAccountProviderAsync(@ptrCast(self), webAccountProviderId, authority, user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationCoreManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f584184a-8b57-4820-b6a4-70a5b6fcf44a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAccountProviderAsync: *const fn(self: *anyopaque, webAccountProviderId: HSTRING, authority: HSTRING, user: *User, _r: **IAsyncOperation(WebAccountProvider)) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationCoreManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn CreateWebAccountMonitor(self: *@This(), webAccounts: *IIterable(WebAccount)) core.HResult!*WebAccountMonitor {
        var _r: *WebAccountMonitor = undefined;
        const _c = self.vtable.CreateWebAccountMonitor(@ptrCast(self), webAccounts, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationCoreManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2404eeb2-8924-4d93-ab3a-99688b419d56";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWebAccountMonitor: *const fn(self: *anyopaque, webAccounts: *IIterable(WebAccount), _r: **WebAccountMonitor) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationCoreManagerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn FindAllAccountsAsync(self: *@This(), provider: *WebAccountProvider) core.HResult!*IAsyncOperation(FindAllAccountsResult) {
        var _r: *IAsyncOperation(FindAllAccountsResult) = undefined;
        const _c = self.vtable.FindAllAccountsAsync(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAccountsAsyncWithClientId(self: *@This(), provider: *WebAccountProvider, clientId: HSTRING) core.HResult!*IAsyncOperation(FindAllAccountsResult) {
        var _r: *IAsyncOperation(FindAllAccountsResult) = undefined;
        const _c = self.vtable.FindAllAccountsAsyncWithClientId(@ptrCast(self), provider, clientId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindSystemAccountProviderAsync(self: *@This(), webAccountProviderId: HSTRING) core.HResult!*IAsyncOperation(WebAccountProvider) {
        var _r: *IAsyncOperation(WebAccountProvider) = undefined;
        const _c = self.vtable.FindSystemAccountProviderAsync(@ptrCast(self), webAccountProviderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindSystemAccountProviderAsyncWithAuthority(self: *@This(), webAccountProviderId: HSTRING, authority: HSTRING) core.HResult!*IAsyncOperation(WebAccountProvider) {
        var _r: *IAsyncOperation(WebAccountProvider) = undefined;
        const _c = self.vtable.FindSystemAccountProviderAsyncWithAuthority(@ptrCast(self), webAccountProviderId, authority, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindSystemAccountProviderAsyncWithAuthorityAndUser(self: *@This(), webAccountProviderId: HSTRING, authority: HSTRING, user: *User) core.HResult!*IAsyncOperation(WebAccountProvider) {
        var _r: *IAsyncOperation(WebAccountProvider) = undefined;
        const _c = self.vtable.FindSystemAccountProviderAsyncWithAuthorityAndUser(@ptrCast(self), webAccountProviderId, authority, user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationCoreManagerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "54e633fe-96e0-41e8-9832-1298897c2aaf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAllAccountsAsync: *const fn(self: *anyopaque, provider: *WebAccountProvider, _r: **IAsyncOperation(FindAllAccountsResult)) callconv(.winapi) HRESULT,
        FindAllAccountsAsyncWithClientId: *const fn(self: *anyopaque, provider: *WebAccountProvider, clientId: HSTRING, _r: **IAsyncOperation(FindAllAccountsResult)) callconv(.winapi) HRESULT,
        FindSystemAccountProviderAsync: *const fn(self: *anyopaque, webAccountProviderId: HSTRING, _r: **IAsyncOperation(WebAccountProvider)) callconv(.winapi) HRESULT,
        FindSystemAccountProviderAsyncWithAuthority: *const fn(self: *anyopaque, webAccountProviderId: HSTRING, authority: HSTRING, _r: **IAsyncOperation(WebAccountProvider)) callconv(.winapi) HRESULT,
        FindSystemAccountProviderAsyncWithAuthorityAndUser: *const fn(self: *anyopaque, webAccountProviderId: HSTRING, authority: HSTRING, user: *User, _r: **IAsyncOperation(WebAccountProvider)) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationCoreManagerStatics5 = extern struct {
    vtable: *const VTable,
    pub fn AddAccountWithTransferTokenAsync(self: *@This(), request: *WebAuthenticationTransferTokenRequest) core.HResult!*IAsyncOperation(WebAuthenticationAddAccountResult) {
        var _r: *IAsyncOperation(WebAuthenticationAddAccountResult) = undefined;
        const _c = self.vtable.AddAccountWithTransferTokenAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationCoreManagerStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d07c1ded-270f-4554-9966-27b7df05b965";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddAccountWithTransferTokenAsync: *const fn(self: *anyopaque, request: *WebAuthenticationTransferTokenRequest, _r: **IAsyncOperation(WebAuthenticationAddAccountResult)) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationTransferTokenRequest = extern struct {
    vtable: *const VTable,
    pub fn getWebAccountProvider(self: *@This()) core.HResult!*WebAccountProvider {
        var _r: *WebAccountProvider = undefined;
        const _c = self.vtable.get_WebAccountProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransferToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransferToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransferToken(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TransferToken(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCorrelationId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CorrelationId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationTransferTokenRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7acfa5b6-529d-5e76-9846-f3fd999304d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebAccountProvider: *const fn(self: *anyopaque, _r: **WebAccountProvider) callconv(.winapi) HRESULT,
        get_TransferToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TransferToken: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        get_CorrelationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CorrelationId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationTransferTokenRequestFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), provider: *WebAccountProvider, transferToken: HSTRING) core.HResult!*WebAuthenticationTransferTokenRequest {
        var _r: *WebAuthenticationTransferTokenRequest = undefined;
        const _c = self.vtable.Create(@ptrCast(self), provider, transferToken, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithCorrelationId(self: *@This(), provider: *WebAccountProvider, transferToken: HSTRING, correlationId: HSTRING) core.HResult!*WebAuthenticationTransferTokenRequest {
        var _r: *WebAuthenticationTransferTokenRequest = undefined;
        const _c = self.vtable.CreateWithCorrelationId(@ptrCast(self), provider, transferToken, correlationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebAuthenticationTransferTokenRequestFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f16b627-04c4-5f0b-8683-8bab58965656";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, provider: *WebAccountProvider, transferToken: HSTRING, _r: **WebAuthenticationTransferTokenRequest) callconv(.winapi) HRESULT,
        CreateWithCorrelationId: *const fn(self: *anyopaque, provider: *WebAccountProvider, transferToken: HSTRING, correlationId: HSTRING, _r: **WebAuthenticationTransferTokenRequest) callconv(.winapi) HRESULT,
    };
};
pub const IWebProviderError = extern struct {
    vtable: *const VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ErrorMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebProviderError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db191bb1-50c5-4809-8dca-09c99410245c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ErrorMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IWebProviderErrorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), errorCode: u32, errorMessage: HSTRING) core.HResult!*WebProviderError {
        var _r: *WebProviderError = undefined;
        const _c = self.vtable.Create(@ptrCast(self), errorCode, errorMessage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebProviderErrorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3c40a2d-89ef-4e37-847f-a8b9d5a32910";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, errorCode: u32, errorMessage: HSTRING, _r: **WebProviderError) callconv(.winapi) HRESULT,
    };
};
pub const IWebTokenRequest = extern struct {
    vtable: *const VTable,
    pub fn getWebAccountProvider(self: *@This()) core.HResult!*WebAccountProvider {
        var _r: *WebAccountProvider = undefined;
        const _c = self.vtable.get_WebAccountProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScope(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Scope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClientId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ClientId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPromptType(self: *@This()) core.HResult!WebTokenRequestPromptType {
        var _r: WebTokenRequestPromptType = undefined;
        const _c = self.vtable.get_PromptType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebTokenRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b77b4d68-adcb-4673-b364-0cf7b35caf97";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebAccountProvider: *const fn(self: *anyopaque, _r: **WebAccountProvider) callconv(.winapi) HRESULT,
        get_Scope: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ClientId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PromptType: *const fn(self: *anyopaque, _r: *WebTokenRequestPromptType) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IWebTokenRequest2 = extern struct {
    vtable: *const VTable,
    pub fn getAppProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_AppProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebTokenRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d700c079-30c8-4397-9654-961c3be8b855";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppProperties: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IWebTokenRequest3 = extern struct {
    vtable: *const VTable,
    pub fn getCorrelationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCorrelationId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CorrelationId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebTokenRequest3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a755b51-3bb1-41a5-a63d-90bc32c7db9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CorrelationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CorrelationId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebTokenRequestFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), provider: *WebAccountProvider, scope: HSTRING, clientId: HSTRING) core.HResult!*WebTokenRequest {
        var _r: *WebTokenRequest = undefined;
        const _c = self.vtable.Create(@ptrCast(self), provider, scope, clientId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithPromptType(self: *@This(), provider: *WebAccountProvider, scope: HSTRING, clientId: HSTRING, promptType: WebTokenRequestPromptType) core.HResult!*WebTokenRequest {
        var _r: *WebTokenRequest = undefined;
        const _c = self.vtable.CreateWithPromptType(@ptrCast(self), provider, scope, clientId, promptType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithProvider(self: *@This(), provider: *WebAccountProvider) core.HResult!*WebTokenRequest {
        var _r: *WebTokenRequest = undefined;
        const _c = self.vtable.CreateWithProvider(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithScope(self: *@This(), provider: *WebAccountProvider, scope: HSTRING) core.HResult!*WebTokenRequest {
        var _r: *WebTokenRequest = undefined;
        const _c = self.vtable.CreateWithScope(@ptrCast(self), provider, scope, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebTokenRequestFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6cf2141c-0ff0-4c67-b84f-99ddbe4a72c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, provider: *WebAccountProvider, scope: HSTRING, clientId: HSTRING, _r: **WebTokenRequest) callconv(.winapi) HRESULT,
        CreateWithPromptType: *const fn(self: *anyopaque, provider: *WebAccountProvider, scope: HSTRING, clientId: HSTRING, promptType: WebTokenRequestPromptType, _r: **WebTokenRequest) callconv(.winapi) HRESULT,
        CreateWithProvider: *const fn(self: *anyopaque, provider: *WebAccountProvider, _r: **WebTokenRequest) callconv(.winapi) HRESULT,
        CreateWithScope: *const fn(self: *anyopaque, provider: *WebAccountProvider, scope: HSTRING, _r: **WebTokenRequest) callconv(.winapi) HRESULT,
    };
};
pub const IWebTokenRequestResult = extern struct {
    vtable: *const VTable,
    pub fn getResponseData(self: *@This()) core.HResult!*IVectorView(WebTokenResponse) {
        var _r: *IVectorView(WebTokenResponse) = undefined;
        const _c = self.vtable.get_ResponseData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseStatus(self: *@This()) core.HResult!WebTokenRequestStatus {
        var _r: WebTokenRequestStatus = undefined;
        const _c = self.vtable.get_ResponseStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseError(self: *@This()) core.HResult!*WebProviderError {
        var _r: *WebProviderError = undefined;
        const _c = self.vtable.get_ResponseError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InvalidateCacheAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InvalidateCacheAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebTokenRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c12a8305-d1f8-4483-8d54-38fe292784ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResponseData: *const fn(self: *anyopaque, _r: **IVectorView(WebTokenResponse)) callconv(.winapi) HRESULT,
        get_ResponseStatus: *const fn(self: *anyopaque, _r: *WebTokenRequestStatus) callconv(.winapi) HRESULT,
        get_ResponseError: *const fn(self: *anyopaque, _r: **WebProviderError) callconv(.winapi) HRESULT,
        InvalidateCacheAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IWebTokenResponse = extern struct {
    vtable: *const VTable,
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Token(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderError(self: *@This()) core.HResult!*WebProviderError {
        var _r: *WebProviderError = undefined;
        const _c = self.vtable.get_ProviderError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        var _r: *WebAccount = undefined;
        const _c = self.vtable.get_WebAccount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebTokenResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67a7c5ca-83f6-44c6-a3b1-0eb69e41fa8a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Token: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProviderError: *const fn(self: *anyopaque, _r: **WebProviderError) callconv(.winapi) HRESULT,
        get_WebAccount: *const fn(self: *anyopaque, _r: **WebAccount) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IWebTokenResponseFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithToken(self: *@This(), token: HSTRING) core.HResult!*WebTokenResponse {
        var _r: *WebTokenResponse = undefined;
        const _c = self.vtable.CreateWithToken(@ptrCast(self), token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithTokenAndAccount(self: *@This(), token: HSTRING, webAccount: *WebAccount) core.HResult!*WebTokenResponse {
        var _r: *WebTokenResponse = undefined;
        const _c = self.vtable.CreateWithTokenAndAccount(@ptrCast(self), token, webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithTokenAccountAndError(self: *@This(), token: HSTRING, webAccount: *WebAccount, err: *WebProviderError) core.HResult!*WebTokenResponse {
        var _r: *WebTokenResponse = undefined;
        const _c = self.vtable.CreateWithTokenAccountAndError(@ptrCast(self), token, webAccount, err, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.IWebTokenResponseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab6bf7f8-5450-4ef6-97f7-052b0431c0f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithToken: *const fn(self: *anyopaque, token: HSTRING, _r: **WebTokenResponse) callconv(.winapi) HRESULT,
        CreateWithTokenAndAccount: *const fn(self: *anyopaque, token: HSTRING, webAccount: *WebAccount, _r: **WebTokenResponse) callconv(.winapi) HRESULT,
        CreateWithTokenAccountAndError: *const fn(self: *anyopaque, token: HSTRING, webAccount: *WebAccount, err: *WebProviderError, _r: **WebTokenResponse) callconv(.winapi) HRESULT,
    };
};
pub const WebAccountEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAccount(self: *@This()) core.HResult!*WebAccount {
        const this: *IWebAccountEventArgs = @ptrCast(self);
        return try this.getAccount();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebAccountEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountEventArgs.GUID;
    pub const IID: Guid = IWebAccountEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountEventArgs.SIGNATURE);
};
pub const WebAccountMonitor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(WebAccountMonitor,WebAccountEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebAccountMonitor = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebAccountMonitor = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(WebAccountMonitor,WebAccountEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWebAccountMonitor = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebAccountMonitor = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addDefaultSignInAccountChanged(self: *@This(), handler: *TypedEventHandler(WebAccountMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWebAccountMonitor = @ptrCast(self);
        return try this.addDefaultSignInAccountChanged(handler);
    }
    pub fn removeDefaultSignInAccountChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWebAccountMonitor = @ptrCast(self);
        return try this.removeDefaultSignInAccountChanged(token);
    }
    pub fn addAccountPictureUpdated(self: *@This(), handler: *TypedEventHandler(WebAccountMonitor,WebAccountEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebAccountMonitor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountMonitor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAccountPictureUpdated(handler);
    }
    pub fn removeAccountPictureUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebAccountMonitor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountMonitor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAccountPictureUpdated(token);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebAccountMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountMonitor.GUID;
    pub const IID: Guid = IWebAccountMonitor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountMonitor.SIGNATURE);
};
pub const WebAuthenticationAddAccountResponse = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        const this: *IWebAuthenticationAddAccountResponse = @ptrCast(self);
        return try this.getWebAccount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IWebAuthenticationAddAccountResponse = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithAccount(webAccount: *WebAccount) core.HResult!*WebAuthenticationAddAccountResponse {
        const _f = @This().IWebAuthenticationAddAccountResponseFactoryCache.get();
        return try _f.CreateWithAccount(webAccount);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebAuthenticationAddAccountResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAuthenticationAddAccountResponse.GUID;
    pub const IID: Guid = IWebAuthenticationAddAccountResponse.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAuthenticationAddAccountResponse.SIGNATURE);
    var _IWebAuthenticationAddAccountResponseFactoryCache: FactoryCache(IWebAuthenticationAddAccountResponseFactory, RUNTIME_NAME) = .{};
};
pub const WebAuthenticationAddAccountResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResponseData(self: *@This()) core.HResult!*WebAuthenticationAddAccountResponse {
        const this: *IWebAuthenticationAddAccountResult = @ptrCast(self);
        return try this.getResponseData();
    }
    pub fn getResponseStatus(self: *@This()) core.HResult!WebAuthenticationAddAccountStatus {
        const this: *IWebAuthenticationAddAccountResult = @ptrCast(self);
        return try this.getResponseStatus();
    }
    pub fn getResponseError(self: *@This()) core.HResult!*WebProviderError {
        const this: *IWebAuthenticationAddAccountResult = @ptrCast(self);
        return try this.getResponseError();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebAuthenticationAddAccountResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAuthenticationAddAccountResult.GUID;
    pub const IID: Guid = IWebAuthenticationAddAccountResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAuthenticationAddAccountResult.SIGNATURE);
};
pub const WebAuthenticationAddAccountStatus = enum(i32) {
    Success = 0,
    Error = 1,
    NotSupportedByProvider = 2,
    ServiceConnectionError = 3,
    ProviderError = 4,
};
pub const WebAuthenticationCoreManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWebAccountMonitor(webAccounts: *IIterable(WebAccount)) core.HResult!*WebAccountMonitor {
        const _f = @This().IWebAuthenticationCoreManagerStatics3Cache.get();
        return try _f.CreateWebAccountMonitor(webAccounts);
    }
    pub fn FindAllAccountsAsync(provider: *WebAccountProvider) core.HResult!*IAsyncOperation(FindAllAccountsResult) {
        const _f = @This().IWebAuthenticationCoreManagerStatics4Cache.get();
        return try _f.FindAllAccountsAsync(provider);
    }
    pub fn FindAllAccountsAsyncWithClientId(provider: *WebAccountProvider, clientId: HSTRING) core.HResult!*IAsyncOperation(FindAllAccountsResult) {
        const _f = @This().IWebAuthenticationCoreManagerStatics4Cache.get();
        return try _f.FindAllAccountsAsyncWithClientId(provider, clientId);
    }
    pub fn FindSystemAccountProviderAsync(webAccountProviderId: HSTRING) core.HResult!*IAsyncOperation(WebAccountProvider) {
        const _f = @This().IWebAuthenticationCoreManagerStatics4Cache.get();
        return try _f.FindSystemAccountProviderAsync(webAccountProviderId);
    }
    pub fn FindSystemAccountProviderAsyncWithAuthority(webAccountProviderId: HSTRING, authority: HSTRING) core.HResult!*IAsyncOperation(WebAccountProvider) {
        const _f = @This().IWebAuthenticationCoreManagerStatics4Cache.get();
        return try _f.FindSystemAccountProviderAsyncWithAuthority(webAccountProviderId, authority);
    }
    pub fn FindSystemAccountProviderAsyncWithAuthorityAndUser(webAccountProviderId: HSTRING, authority: HSTRING, user: *User) core.HResult!*IAsyncOperation(WebAccountProvider) {
        const _f = @This().IWebAuthenticationCoreManagerStatics4Cache.get();
        return try _f.FindSystemAccountProviderAsyncWithAuthorityAndUser(webAccountProviderId, authority, user);
    }
    pub fn FindAccountProviderAsyncWithAuthorityAndUser(webAccountProviderId: HSTRING, authority: HSTRING, user: *User) core.HResult!*IAsyncOperation(WebAccountProvider) {
        const _f = @This().IWebAuthenticationCoreManagerStatics2Cache.get();
        return try _f.FindAccountProviderAsync(webAccountProviderId, authority, user);
    }
    pub fn GetTokenSilentlyAsync(request: *WebTokenRequest) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        const _f = @This().IWebAuthenticationCoreManagerStaticsCache.get();
        return try _f.GetTokenSilentlyAsync(request);
    }
    pub fn GetTokenSilentlyAsyncWithWebAccount(request: *WebTokenRequest, webAccount: *WebAccount) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        const _f = @This().IWebAuthenticationCoreManagerStaticsCache.get();
        return try _f.GetTokenSilentlyAsyncWithWebAccount(request, webAccount);
    }
    pub fn RequestTokenAsync(request: *WebTokenRequest) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        const _f = @This().IWebAuthenticationCoreManagerStaticsCache.get();
        return try _f.RequestTokenAsync(request);
    }
    pub fn RequestTokenAsyncWithWebAccount(request: *WebTokenRequest, webAccount: *WebAccount) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        const _f = @This().IWebAuthenticationCoreManagerStaticsCache.get();
        return try _f.RequestTokenAsyncWithWebAccount(request, webAccount);
    }
    pub fn FindAccountAsync(provider: *WebAccountProvider, webAccountId: HSTRING) core.HResult!*IAsyncOperation(WebAccount) {
        const _f = @This().IWebAuthenticationCoreManagerStaticsCache.get();
        return try _f.FindAccountAsync(provider, webAccountId);
    }
    pub fn FindAccountProviderAsync(webAccountProviderId: HSTRING) core.HResult!*IAsyncOperation(WebAccountProvider) {
        const _f = @This().IWebAuthenticationCoreManagerStaticsCache.get();
        return try _f.FindAccountProviderAsync(webAccountProviderId);
    }
    pub fn FindAccountProviderAsyncWithAuthority(webAccountProviderId: HSTRING, authority: HSTRING) core.HResult!*IAsyncOperation(WebAccountProvider) {
        const _f = @This().IWebAuthenticationCoreManagerStaticsCache.get();
        return try _f.FindAccountProviderAsyncWithAuthority(webAccountProviderId, authority);
    }
    pub fn AddAccountWithTransferTokenAsync(request: *WebAuthenticationTransferTokenRequest) core.HResult!*IAsyncOperation(WebAuthenticationAddAccountResult) {
        const _f = @This().IWebAuthenticationCoreManagerStatics5Cache.get();
        return try _f.AddAccountWithTransferTokenAsync(request);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebAuthenticationCoreManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWebAuthenticationCoreManagerStatics3Cache: FactoryCache(IWebAuthenticationCoreManagerStatics3, RUNTIME_NAME) = .{};
    var _IWebAuthenticationCoreManagerStatics4Cache: FactoryCache(IWebAuthenticationCoreManagerStatics4, RUNTIME_NAME) = .{};
    var _IWebAuthenticationCoreManagerStatics2Cache: FactoryCache(IWebAuthenticationCoreManagerStatics2, RUNTIME_NAME) = .{};
    var _IWebAuthenticationCoreManagerStaticsCache: FactoryCache(IWebAuthenticationCoreManagerStatics, RUNTIME_NAME) = .{};
    var _IWebAuthenticationCoreManagerStatics5Cache: FactoryCache(IWebAuthenticationCoreManagerStatics5, RUNTIME_NAME) = .{};
};
pub const WebAuthenticationTransferTokenRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccountProvider(self: *@This()) core.HResult!*WebAccountProvider {
        const this: *IWebAuthenticationTransferTokenRequest = @ptrCast(self);
        return try this.getWebAccountProvider();
    }
    pub fn getTransferToken(self: *@This()) core.HResult!HSTRING {
        const this: *IWebAuthenticationTransferTokenRequest = @ptrCast(self);
        return try this.getTransferToken();
    }
    pub fn putTransferToken(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWebAuthenticationTransferTokenRequest = @ptrCast(self);
        return try this.putTransferToken(value);
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IWebAuthenticationTransferTokenRequest = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!HSTRING {
        const this: *IWebAuthenticationTransferTokenRequest = @ptrCast(self);
        return try this.getCorrelationId();
    }
    pub fn putCorrelationId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWebAuthenticationTransferTokenRequest = @ptrCast(self);
        return try this.putCorrelationId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(provider: *WebAccountProvider, transferToken: HSTRING) core.HResult!*WebAuthenticationTransferTokenRequest {
        const _f = @This().IWebAuthenticationTransferTokenRequestFactoryCache.get();
        return try _f.Create(provider, transferToken);
    }
    pub fn CreateWithCorrelationId(provider: *WebAccountProvider, transferToken: HSTRING, correlationId: HSTRING) core.HResult!*WebAuthenticationTransferTokenRequest {
        const _f = @This().IWebAuthenticationTransferTokenRequestFactoryCache.get();
        return try _f.CreateWithCorrelationId(provider, transferToken, correlationId);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebAuthenticationTransferTokenRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAuthenticationTransferTokenRequest.GUID;
    pub const IID: Guid = IWebAuthenticationTransferTokenRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAuthenticationTransferTokenRequest.SIGNATURE);
    var _IWebAuthenticationTransferTokenRequestFactoryCache: FactoryCache(IWebAuthenticationTransferTokenRequestFactory, RUNTIME_NAME) = .{};
};
pub const WebProviderError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        const this: *IWebProviderError = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn getErrorMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IWebProviderError = @ptrCast(self);
        return try this.getErrorMessage();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IWebProviderError = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(errorCode: u32, errorMessage: HSTRING) core.HResult!*WebProviderError {
        const _f = @This().IWebProviderErrorFactoryCache.get();
        return try _f.Create(errorCode, errorMessage);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebProviderError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebProviderError.GUID;
    pub const IID: Guid = IWebProviderError.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebProviderError.SIGNATURE);
    var _IWebProviderErrorFactoryCache: FactoryCache(IWebProviderErrorFactory, RUNTIME_NAME) = .{};
};
pub const WebTokenRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccountProvider(self: *@This()) core.HResult!*WebAccountProvider {
        const this: *IWebTokenRequest = @ptrCast(self);
        return try this.getWebAccountProvider();
    }
    pub fn getScope(self: *@This()) core.HResult!HSTRING {
        const this: *IWebTokenRequest = @ptrCast(self);
        return try this.getScope();
    }
    pub fn getClientId(self: *@This()) core.HResult!HSTRING {
        const this: *IWebTokenRequest = @ptrCast(self);
        return try this.getClientId();
    }
    pub fn getPromptType(self: *@This()) core.HResult!WebTokenRequestPromptType {
        const this: *IWebTokenRequest = @ptrCast(self);
        return try this.getPromptType();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IWebTokenRequest = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getAppProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var this: ?*IWebTokenRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebTokenRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppProperties();
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IWebTokenRequest3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebTokenRequest3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCorrelationId();
    }
    pub fn putCorrelationId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IWebTokenRequest3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebTokenRequest3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCorrelationId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(provider: *WebAccountProvider, scope: HSTRING, clientId: HSTRING) core.HResult!*WebTokenRequest {
        const _f = @This().IWebTokenRequestFactoryCache.get();
        return try _f.Create(provider, scope, clientId);
    }
    pub fn CreateWithPromptType(provider: *WebAccountProvider, scope: HSTRING, clientId: HSTRING, promptType: WebTokenRequestPromptType) core.HResult!*WebTokenRequest {
        const _f = @This().IWebTokenRequestFactoryCache.get();
        return try _f.CreateWithPromptType(provider, scope, clientId, promptType);
    }
    pub fn CreateWithProvider(provider: *WebAccountProvider) core.HResult!*WebTokenRequest {
        const _f = @This().IWebTokenRequestFactoryCache.get();
        return try _f.CreateWithProvider(provider);
    }
    pub fn CreateWithScope(provider: *WebAccountProvider, scope: HSTRING) core.HResult!*WebTokenRequest {
        const _f = @This().IWebTokenRequestFactoryCache.get();
        return try _f.CreateWithScope(provider, scope);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebTokenRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebTokenRequest.GUID;
    pub const IID: Guid = IWebTokenRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebTokenRequest.SIGNATURE);
    var _IWebTokenRequestFactoryCache: FactoryCache(IWebTokenRequestFactory, RUNTIME_NAME) = .{};
};
pub const WebTokenRequestPromptType = enum(i32) {
    Default = 0,
    ForceAuthentication = 1,
};
pub const WebTokenRequestResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResponseData(self: *@This()) core.HResult!*IVectorView(WebTokenResponse) {
        const this: *IWebTokenRequestResult = @ptrCast(self);
        return try this.getResponseData();
    }
    pub fn getResponseStatus(self: *@This()) core.HResult!WebTokenRequestStatus {
        const this: *IWebTokenRequestResult = @ptrCast(self);
        return try this.getResponseStatus();
    }
    pub fn getResponseError(self: *@This()) core.HResult!*WebProviderError {
        const this: *IWebTokenRequestResult = @ptrCast(self);
        return try this.getResponseError();
    }
    pub fn InvalidateCacheAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IWebTokenRequestResult = @ptrCast(self);
        return try this.InvalidateCacheAsync();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebTokenRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebTokenRequestResult.GUID;
    pub const IID: Guid = IWebTokenRequestResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebTokenRequestResult.SIGNATURE);
};
pub const WebTokenRequestStatus = enum(i32) {
    Success = 0,
    UserCancel = 1,
    AccountSwitch = 2,
    UserInteractionRequired = 3,
    AccountProviderNotAvailable = 4,
    ProviderError = 5,
};
pub const WebTokenResponse = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        const this: *IWebTokenResponse = @ptrCast(self);
        return try this.getToken();
    }
    pub fn getProviderError(self: *@This()) core.HResult!*WebProviderError {
        const this: *IWebTokenResponse = @ptrCast(self);
        return try this.getProviderError();
    }
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        const this: *IWebTokenResponse = @ptrCast(self);
        return try this.getWebAccount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IWebTokenResponse = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWebTokenResponse.IID)));
    }
    pub fn CreateWithToken(token: HSTRING) core.HResult!*WebTokenResponse {
        const _f = @This().IWebTokenResponseFactoryCache.get();
        return try _f.CreateWithToken(token);
    }
    pub fn CreateWithTokenAndAccount(token: HSTRING, webAccount: *WebAccount) core.HResult!*WebTokenResponse {
        const _f = @This().IWebTokenResponseFactoryCache.get();
        return try _f.CreateWithTokenAndAccount(token, webAccount);
    }
    pub fn CreateWithTokenAccountAndError(token: HSTRING, webAccount: *WebAccount, err: *WebProviderError) core.HResult!*WebTokenResponse {
        const _f = @This().IWebTokenResponseFactoryCache.get();
        return try _f.CreateWithTokenAccountAndError(token, webAccount, err);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Core.WebTokenResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebTokenResponse.GUID;
    pub const IID: Guid = IWebTokenResponse.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebTokenResponse.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IWebTokenResponseFactoryCache: FactoryCache(IWebTokenResponseFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../../root.zig").IUnknown;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const Guid = @import("../../../root.zig").Guid;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const IMap = @import("../../../Foundation/Collections.zig").IMap;
const WebAccount = @import("../../Credentials.zig").WebAccount;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../../root.zig").HSTRING;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const IIterable = @import("../../../Foundation/Collections.zig").IIterable;
const WebAccountProvider = @import("../../Credentials.zig").WebAccountProvider;
const HRESULT = @import("../../../root.zig").HRESULT;
const core = @import("../../../root.zig").core;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../../../Foundation.zig").IAsyncAction;
const User = @import("../../../System.zig").User;
