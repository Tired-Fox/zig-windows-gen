pub const IWebAccountClientView = extern struct {
    vtable: *const VTable,
    pub fn getApplicationCallbackUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ApplicationCallbackUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!WebAccountClientViewType {
        var _r: WebAccountClientViewType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccountPairwiseId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccountPairwiseId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountClientView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7bd66ba-0bc7-4c66-bfd4-65d3082cbca8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ApplicationCallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *WebAccountClientViewType) callconv(.winapi) HRESULT,
        get_AccountPairwiseId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountClientViewFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), viewType: WebAccountClientViewType, applicationCallbackUri: *Uri) core.HResult!*WebAccountClientView {
        var _r: *WebAccountClientView = undefined;
        const _c = self.vtable.Create(@ptrCast(self), viewType, applicationCallbackUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithPairwiseId(self: *@This(), viewType: WebAccountClientViewType, applicationCallbackUri: *Uri, accountPairwiseId: HSTRING) core.HResult!*WebAccountClientView {
        var _r: *WebAccountClientView = undefined;
        const _c = self.vtable.CreateWithPairwiseId(@ptrCast(self), viewType, applicationCallbackUri, accountPairwiseId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountClientViewFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "616d16a4-de22-4855-a326-06cebf2a3f23";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, viewType: WebAccountClientViewType, applicationCallbackUri: *Uri, _r: **WebAccountClientView) callconv(.winapi) HRESULT,
        CreateWithPairwiseId: *const fn(self: *anyopaque, viewType: WebAccountClientViewType, applicationCallbackUri: *Uri, accountPairwiseId: HSTRING, _r: **WebAccountClientView) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn UpdateWebAccountPropertiesAsync(self: *@This(), webAccount: *WebAccount, webAccountUserName: HSTRING, additionalProperties: *IMapView(HSTRING,HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateWebAccountPropertiesAsync(@ptrCast(self), webAccount, webAccountUserName, additionalProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddWebAccountAsync(self: *@This(), webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING)) core.HResult!*IAsyncOperation(WebAccount) {
        var _r: *IAsyncOperation(WebAccount) = undefined;
        const _c = self.vtable.AddWebAccountAsync(@ptrCast(self), webAccountId, webAccountUserName, props, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteWebAccountAsync(self: *@This(), webAccount: *WebAccount) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteWebAccountAsync(@ptrCast(self), webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllProviderWebAccountsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(WebAccount)) {
        var _r: *IAsyncOperation(IVectorView(WebAccount)) = undefined;
        const _c = self.vtable.FindAllProviderWebAccountsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PushCookiesAsync(self: *@This(), uri: *Uri, cookies: *IVectorView(HttpCookie)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.PushCookiesAsync(@ptrCast(self), uri, cookies, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetViewAsync(self: *@This(), webAccount: *WebAccount, view: *WebAccountClientView) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetViewAsync(@ptrCast(self), webAccount, view, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearViewAsync(self: *@This(), webAccount: *WebAccount, applicationCallbackUri: *Uri) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearViewAsync(@ptrCast(self), webAccount, applicationCallbackUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetViewsAsync(self: *@This(), webAccount: *WebAccount) core.HResult!*IAsyncOperation(IVectorView(WebAccountClientView)) {
        var _r: *IAsyncOperation(IVectorView(WebAccountClientView)) = undefined;
        const _c = self.vtable.GetViewsAsync(@ptrCast(self), webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetWebAccountPictureAsync(self: *@This(), webAccount: *WebAccount, webAccountPicture: *IRandomAccessStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetWebAccountPictureAsync(@ptrCast(self), webAccount, webAccountPicture, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearWebAccountPictureAsync(self: *@This(), webAccount: *WebAccount) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearWebAccountPictureAsync(@ptrCast(self), webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2e8e1a6-d49a-4032-84bf-1a2847747bf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UpdateWebAccountPropertiesAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, webAccountUserName: HSTRING, additionalProperties: *IMapView(HSTRING,HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AddWebAccountAsync: *const fn(self: *anyopaque, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), _r: **IAsyncOperation(WebAccount)) callconv(.winapi) HRESULT,
        DeleteWebAccountAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        FindAllProviderWebAccountsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(WebAccount))) callconv(.winapi) HRESULT,
        PushCookiesAsync: *const fn(self: *anyopaque, uri: *Uri, cookies: *IVectorView(HttpCookie), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetViewAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, view: *WebAccountClientView, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ClearViewAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, applicationCallbackUri: *Uri, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetViewsAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, _r: **IAsyncOperation(IVectorView(WebAccountClientView))) callconv(.winapi) HRESULT,
        SetWebAccountPictureAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, webAccountPicture: *IRandomAccessStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ClearWebAccountPictureAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn PullCookiesAsync(self: *@This(), uriString: HSTRING, callerPFN: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.PullCookiesAsync(@ptrCast(self), uriString, callerPFN, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68a7a829-2d5f-4653-8bb0-bd2fa6bd2d87";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PullCookiesAsync: *const fn(self: *anyopaque, uriString: HSTRING, callerPFN: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn FindAllProviderWebAccountsForUserAsync(self: *@This(), user: *User) core.HResult!*IAsyncOperation(IVectorView(WebAccount)) {
        var _r: *IAsyncOperation(IVectorView(WebAccount)) = undefined;
        const _c = self.vtable.FindAllProviderWebAccountsForUserAsync(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddWebAccountForUserAsync(self: *@This(), user: *User, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING)) core.HResult!*IAsyncOperation(WebAccount) {
        var _r: *IAsyncOperation(WebAccount) = undefined;
        const _c = self.vtable.AddWebAccountForUserAsync(@ptrCast(self), user, webAccountId, webAccountUserName, props, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddWebAccountForUserAsyncWithWebAccountIdWithWebAccountUserNameWithPropsWithScope(self: *@This(), user: *User, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope) core.HResult!*IAsyncOperation(WebAccount) {
        var _r: *IAsyncOperation(WebAccount) = undefined;
        const _c = self.vtable.AddWebAccountForUserAsyncWithWebAccountIdWithWebAccountUserNameWithPropsWithScope(@ptrCast(self), user, webAccountId, webAccountUserName, props, scope, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddWebAccountForUserAsyncWithWebAccountUserNameWithPropsWithScopeWithPerUserWebAccountId(self: *@This(), user: *User, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope, perUserWebAccountId: HSTRING) core.HResult!*IAsyncOperation(WebAccount) {
        var _r: *IAsyncOperation(WebAccount) = undefined;
        const _c = self.vtable.AddWebAccountForUserAsyncWithWebAccountUserNameWithPropsWithScopeWithPerUserWebAccountId(@ptrCast(self), user, webAccountId, webAccountUserName, props, scope, perUserWebAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd4523a6-8a4f-4aa2-b15e-03f550af1359";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAllProviderWebAccountsForUserAsync: *const fn(self: *anyopaque, user: *User, _r: **IAsyncOperation(IVectorView(WebAccount))) callconv(.winapi) HRESULT,
        AddWebAccountForUserAsync: *const fn(self: *anyopaque, user: *User, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), _r: **IAsyncOperation(WebAccount)) callconv(.winapi) HRESULT,
        AddWebAccountForUserAsyncWithWebAccountIdWithWebAccountUserNameWithPropsWithScope: *const fn(self: *anyopaque, user: *User, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope, _r: **IAsyncOperation(WebAccount)) callconv(.winapi) HRESULT,
        AddWebAccountForUserAsyncWithWebAccountUserNameWithPropsWithScopeWithPerUserWebAccountId: *const fn(self: *anyopaque, user: *User, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope, perUserWebAccountId: HSTRING, _r: **IAsyncOperation(WebAccount)) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountManagerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn InvalidateAppCacheForAllAccountsAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InvalidateAppCacheForAllAccountsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InvalidateAppCacheForAccountAsync(self: *@This(), webAccount: *WebAccount) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InvalidateAppCacheForAccountAsync(@ptrCast(self), webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountManagerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59ebc2d2-f7db-412f-bc3f-f2fea04430b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InvalidateAppCacheForAllAccountsAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        InvalidateAppCacheForAccountAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountMapManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn AddWebAccountAsync(self: *@This(), webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope, perUserWebAccountId: HSTRING) core.HResult!*IAsyncOperation(WebAccount) {
        var _r: *IAsyncOperation(WebAccount) = undefined;
        const _c = self.vtable.AddWebAccountAsync(@ptrCast(self), webAccountId, webAccountUserName, props, scope, perUserWebAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPerAppToPerUserAccountAsync(self: *@This(), perAppAccount: *WebAccount, perUserWebAccountId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetPerAppToPerUserAccountAsync(@ptrCast(self), perAppAccount, perUserWebAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPerUserFromPerAppAccountAsync(self: *@This(), perAppAccount: *WebAccount) core.HResult!*IAsyncOperation(WebAccount) {
        var _r: *IAsyncOperation(WebAccount) = undefined;
        const _c = self.vtable.GetPerUserFromPerAppAccountAsync(@ptrCast(self), perAppAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearPerUserFromPerAppAccountAsync(self: *@This(), perAppAccount: *WebAccount) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearPerUserFromPerAppAccountAsync(@ptrCast(self), perAppAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountMapManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8fa446f-3a1b-48a4-8e90-1e59ca6f54db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddWebAccountAsync: *const fn(self: *anyopaque, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope, perUserWebAccountId: HSTRING, _r: **IAsyncOperation(WebAccount)) callconv(.winapi) HRESULT,
        SetPerAppToPerUserAccountAsync: *const fn(self: *anyopaque, perAppAccount: *WebAccount, perUserWebAccountId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetPerUserFromPerAppAccountAsync: *const fn(self: *anyopaque, perAppAccount: *WebAccount, _r: **IAsyncOperation(WebAccount)) callconv(.winapi) HRESULT,
        ClearPerUserFromPerAppAccountAsync: *const fn(self: *anyopaque, perAppAccount: *WebAccount, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderAddAccountOperation = extern struct {
    vtable: *const VTable,
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderAddAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73ebdccf-4378-4c79-9335-a5d7ab81594e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderBaseReportOperation = extern struct {
    vtable: *const VTable,
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportError(self: *@This(), value: *WebProviderError) core.HResult!void {
        const _c = self.vtable.ReportError(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderBaseReportOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bba4acbb-993b-4d57-bbe4-1421e3668b4c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportError: *const fn(self: *anyopaque, value: *WebProviderError) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderDeleteAccountOperation = extern struct {
    vtable: *const VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        var _r: *WebAccount = undefined;
        const _c = self.vtable.get_WebAccount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderDeleteAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0abb48b8-9e01-49c9-a355-7d48caf7d6ca";
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
    };
};
pub const IWebAccountProviderManageAccountOperation = extern struct {
    vtable: *const VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        var _r: *WebAccount = undefined;
        const _c = self.vtable.get_WebAccount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderManageAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed20dc5c-d21b-463e-a9b7-c1fd0edae978";
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
        ReportCompleted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderOperation = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!WebAccountProviderOperationKind {
        var _r: WebAccountProviderOperationKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d5d2426-10b1-419a-a44e-f9c5161574e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *WebAccountProviderOperationKind) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderRetrieveCookiesOperation = extern struct {
    vtable: *const VTable,
    pub fn getContext(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCookies(self: *@This()) core.HResult!*IVector(HttpCookie) {
        var _r: *IVector(HttpCookie) = undefined;
        const _c = self.vtable.get_Cookies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUri(self: *@This(), uri: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), uri);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApplicationCallbackUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ApplicationCallbackUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderRetrieveCookiesOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a040441-0fa3-4ab1-a01c-20b110358594";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Cookies: *const fn(self: *anyopaque, _r: **IVector(HttpCookie)) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, uri: *Uri) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ApplicationCallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderSignOutAccountOperation = extern struct {
    vtable: *const VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        var _r: *WebAccount = undefined;
        const _c = self.vtable.get_WebAccount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApplicationCallbackUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ApplicationCallbackUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClientId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ClientId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderSignOutAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b890e21d-0c55-47bc-8c72-04a6fc7cac07";
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
        get_ApplicationCallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ClientId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderSilentReportOperation = extern struct {
    vtable: *const VTable,
    pub fn ReportUserInteractionRequired(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportUserInteractionRequired(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportUserInteractionRequired(self: *@This(), value: *WebProviderError) core.HResult!void {
        const _c = self.vtable.ReportUserInteractionRequired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderSilentReportOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0b545f8-3b0f-44da-924c-7b18baaa62a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportUserInteractionRequired: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportUserInteractionRequired: *const fn(self: *anyopaque, value: *WebProviderError) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderTokenObjects = extern struct {
    vtable: *const VTable,
    pub fn getOperation(self: *@This()) core.HResult!*IWebAccountProviderOperation {
        var _r: *IWebAccountProviderOperation = undefined;
        const _c = self.vtable.get_Operation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderTokenObjects";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "408f284b-1328-42db-89a4-0bce7a717d8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Operation: *const fn(self: *anyopaque, _r: **IWebAccountProviderOperation) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderTokenObjects2 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderTokenObjects2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1020b893-5ca5-4fff-95fb-b820273fc395";
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
pub const IWebAccountProviderTokenOperation = extern struct {
    vtable: *const VTable,
    pub fn getProviderRequest(self: *@This()) core.HResult!*WebProviderTokenRequest {
        var _r: *WebProviderTokenRequest = undefined;
        const _c = self.vtable.get_ProviderRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderResponses(self: *@This()) core.HResult!*IVector(WebProviderTokenResponse) {
        var _r: *IVector(WebProviderTokenResponse) = undefined;
        const _c = self.vtable.get_ProviderResponses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCacheExpirationTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_CacheExpirationTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCacheExpirationTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_CacheExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderTokenOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95c613be-2034-4c38-9434-d26c14b2b4b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProviderRequest: *const fn(self: *anyopaque, _r: **WebProviderTokenRequest) callconv(.winapi) HRESULT,
        get_ProviderResponses: *const fn(self: *anyopaque, _r: **IVector(WebProviderTokenResponse)) callconv(.winapi) HRESULT,
        put_CacheExpirationTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_CacheExpirationTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderUIReportOperation = extern struct {
    vtable: *const VTable,
    pub fn ReportUserCanceled(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportUserCanceled(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountProviderUIReportOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28ff92d3-8f80-42fb-944f-b2107bbd42e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportUserCanceled: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountScopeManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn AddWebAccountAsync(self: *@This(), webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope) core.HResult!*IAsyncOperation(WebAccount) {
        var _r: *IAsyncOperation(WebAccount) = undefined;
        const _c = self.vtable.AddWebAccountAsync(@ptrCast(self), webAccountId, webAccountUserName, props, scope, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetScopeAsync(self: *@This(), webAccount: *WebAccount, scope: WebAccountScope) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetScopeAsync(@ptrCast(self), webAccount, scope, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetScope(self: *@This(), webAccount: *WebAccount) core.HResult!WebAccountScope {
        var _r: WebAccountScope = undefined;
        const _c = self.vtable.GetScope(@ptrCast(self), webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebAccountScopeManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c6ce37c-12b2-423a-bf3d-85b8d7e53656";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddWebAccountAsync: *const fn(self: *anyopaque, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope, _r: **IAsyncOperation(WebAccount)) callconv(.winapi) HRESULT,
        SetScopeAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, scope: WebAccountScope, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetScope: *const fn(self: *anyopaque, webAccount: *WebAccount, _r: *WebAccountScope) callconv(.winapi) HRESULT,
    };
};
pub const IWebProviderTokenRequest = extern struct {
    vtable: *const VTable,
    pub fn getClientRequest(self: *@This()) core.HResult!*WebTokenRequest {
        var _r: *WebTokenRequest = undefined;
        const _c = self.vtable.get_ClientRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWebAccounts(self: *@This()) core.HResult!*IVectorView(WebAccount) {
        var _r: *IVectorView(WebAccount) = undefined;
        const _c = self.vtable.get_WebAccounts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWebAccountSelectionOptions(self: *@This()) core.HResult!WebAccountSelectionOptions {
        var _r: WebAccountSelectionOptions = undefined;
        const _c = self.vtable.get_WebAccountSelectionOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApplicationCallbackUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ApplicationCallbackUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetApplicationTokenBindingKeyAsync(self: *@This(), keyType: TokenBindingKeyType, target: *Uri) core.HResult!*IAsyncOperation(CryptographicKey) {
        var _r: *IAsyncOperation(CryptographicKey) = undefined;
        const _c = self.vtable.GetApplicationTokenBindingKeyAsync(@ptrCast(self), keyType, target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebProviderTokenRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e18778b-8805-454b-9f11-468d2af1095a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClientRequest: *const fn(self: *anyopaque, _r: **WebTokenRequest) callconv(.winapi) HRESULT,
        get_WebAccounts: *const fn(self: *anyopaque, _r: **IVectorView(WebAccount)) callconv(.winapi) HRESULT,
        get_WebAccountSelectionOptions: *const fn(self: *anyopaque, _r: *WebAccountSelectionOptions) callconv(.winapi) HRESULT,
        get_ApplicationCallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        GetApplicationTokenBindingKeyAsync: *const fn(self: *anyopaque, keyType: TokenBindingKeyType, target: *Uri, _r: **IAsyncOperation(CryptographicKey)) callconv(.winapi) HRESULT,
    };
};
pub const IWebProviderTokenRequest2 = extern struct {
    vtable: *const VTable,
    pub fn GetApplicationTokenBindingKeyIdAsync(self: *@This(), keyType: TokenBindingKeyType, target: *Uri) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.GetApplicationTokenBindingKeyIdAsync(@ptrCast(self), keyType, target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebProviderTokenRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5d72e4c-10b1-4aa6-88b1-0b6c9e0c1e46";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetApplicationTokenBindingKeyIdAsync: *const fn(self: *anyopaque, keyType: TokenBindingKeyType, target: *Uri, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const IWebProviderTokenRequest3 = extern struct {
    vtable: *const VTable,
    pub fn getApplicationPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ApplicationPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApplicationProcessName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ApplicationProcessName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckApplicationForCapabilityAsync(self: *@This(), capabilityName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.CheckApplicationForCapabilityAsync(@ptrCast(self), capabilityName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebProviderTokenRequest3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b2716aa-4289-446e-9256-dafb6f66a51e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ApplicationPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ApplicationProcessName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        CheckApplicationForCapabilityAsync: *const fn(self: *anyopaque, capabilityName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IWebProviderTokenResponse = extern struct {
    vtable: *const VTable,
    pub fn getClientResponse(self: *@This()) core.HResult!*WebTokenResponse {
        var _r: *WebTokenResponse = undefined;
        const _c = self.vtable.get_ClientResponse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebProviderTokenResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef213793-ef55-4186-b7ce-8cb2e7f9849e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClientResponse: *const fn(self: *anyopaque, _r: **WebTokenResponse) callconv(.winapi) HRESULT,
    };
};
pub const IWebProviderTokenResponseFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), webTokenResponse: *WebTokenResponse) core.HResult!*WebProviderTokenResponse {
        var _r: *WebProviderTokenResponse = undefined;
        const _c = self.vtable.Create(@ptrCast(self), webTokenResponse, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.IWebProviderTokenResponseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa49d99a-25ba-4077-9cfa-9db4dea7b71a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, webTokenResponse: *WebTokenResponse, _r: **WebProviderTokenResponse) callconv(.winapi) HRESULT,
    };
};
pub const WebAccountClientView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getApplicationCallbackUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebAccountClientView = @ptrCast(self);
        return try this.getApplicationCallbackUri();
    }
    pub fn getType(self: *@This()) core.HResult!WebAccountClientViewType {
        const this: *IWebAccountClientView = @ptrCast(self);
        return try this.getType();
    }
    pub fn getAccountPairwiseId(self: *@This()) core.HResult!HSTRING {
        const this: *IWebAccountClientView = @ptrCast(self);
        return try this.getAccountPairwiseId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(viewType: WebAccountClientViewType, applicationCallbackUri: *Uri) core.HResult!*WebAccountClientView {
        const factory = @This().IWebAccountClientViewFactoryCache.get();
        return try factory.Create(viewType, applicationCallbackUri);
    }
    pub fn CreateWithPairwiseId(viewType: WebAccountClientViewType, applicationCallbackUri: *Uri, accountPairwiseId: HSTRING) core.HResult!*WebAccountClientView {
        const factory = @This().IWebAccountClientViewFactoryCache.get();
        return try factory.CreateWithPairwiseId(viewType, applicationCallbackUri, accountPairwiseId);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountClientView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountClientView.GUID;
    pub const IID: Guid = IWebAccountClientView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountClientView.SIGNATURE);
    var _IWebAccountClientViewFactoryCache: FactoryCache(IWebAccountClientViewFactory, RUNTIME_NAME) = .{};
};
pub const WebAccountClientViewType = enum(i32) {
    IdOnly = 0,
    IdAndProperties = 1,
};
pub const WebAccountManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindAllProviderWebAccountsForUserAsync(user: *User) core.HResult!*IAsyncOperation(IVectorView(WebAccount)) {
        const factory = @This().IWebAccountManagerStatics3Cache.get();
        return try factory.FindAllProviderWebAccountsForUserAsync(user);
    }
    pub fn AddWebAccountForUserAsync(user: *User, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING)) core.HResult!*IAsyncOperation(WebAccount) {
        const factory = @This().IWebAccountManagerStatics3Cache.get();
        return try factory.AddWebAccountForUserAsync(user, webAccountId, webAccountUserName, props);
    }
    pub fn AddWebAccountForUserAsyncWithScope(user: *User, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope) core.HResult!*IAsyncOperation(WebAccount) {
        const factory = @This().IWebAccountManagerStatics3Cache.get();
        return try factory.AddWebAccountForUserAsyncWithScope(user, webAccountId, webAccountUserName, props, scope);
    }
    pub fn AddWebAccountForUserAsyncWithScopeWithPerUserWebAccountId(user: *User, webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope, perUserWebAccountId: HSTRING) core.HResult!*IAsyncOperation(WebAccount) {
        const factory = @This().IWebAccountManagerStatics3Cache.get();
        return try factory.AddWebAccountForUserAsyncWithScopeWithPerUserWebAccountId(user, webAccountId, webAccountUserName, props, scope, perUserWebAccountId);
    }
    pub fn AddWebAccountAsyncWithScope(webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope) core.HResult!*IAsyncOperation(WebAccount) {
        const factory = @This().IWebAccountScopeManagerStaticsCache.get();
        return try factory.AddWebAccountAsync(webAccountId, webAccountUserName, props, scope);
    }
    pub fn SetScopeAsync(webAccount: *WebAccount, scope: WebAccountScope) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountScopeManagerStaticsCache.get();
        return try factory.SetScopeAsync(webAccount, scope);
    }
    pub fn GetScope(webAccount: *WebAccount) core.HResult!WebAccountScope {
        const factory = @This().IWebAccountScopeManagerStaticsCache.get();
        return try factory.GetScope(webAccount);
    }
    pub fn PullCookiesAsync(uriString: HSTRING, callerPFN: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStatics2Cache.get();
        return try factory.PullCookiesAsync(uriString, callerPFN);
    }
    pub fn InvalidateAppCacheForAllAccountsAsync() core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStatics4Cache.get();
        return try factory.InvalidateAppCacheForAllAccountsAsync();
    }
    pub fn InvalidateAppCacheForAccountAsync(webAccount: *WebAccount) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStatics4Cache.get();
        return try factory.InvalidateAppCacheForAccountAsync(webAccount);
    }
    pub fn AddWebAccountAsyncWithScopeWithPerUserWebAccountId(webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING), scope: WebAccountScope, perUserWebAccountId: HSTRING) core.HResult!*IAsyncOperation(WebAccount) {
        const factory = @This().IWebAccountMapManagerStaticsCache.get();
        return try factory.AddWebAccountAsync(webAccountId, webAccountUserName, props, scope, perUserWebAccountId);
    }
    pub fn SetPerAppToPerUserAccountAsync(perAppAccount: *WebAccount, perUserWebAccountId: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountMapManagerStaticsCache.get();
        return try factory.SetPerAppToPerUserAccountAsync(perAppAccount, perUserWebAccountId);
    }
    pub fn GetPerUserFromPerAppAccountAsync(perAppAccount: *WebAccount) core.HResult!*IAsyncOperation(WebAccount) {
        const factory = @This().IWebAccountMapManagerStaticsCache.get();
        return try factory.GetPerUserFromPerAppAccountAsync(perAppAccount);
    }
    pub fn ClearPerUserFromPerAppAccountAsync(perAppAccount: *WebAccount) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountMapManagerStaticsCache.get();
        return try factory.ClearPerUserFromPerAppAccountAsync(perAppAccount);
    }
    pub fn UpdateWebAccountPropertiesAsync(webAccount: *WebAccount, webAccountUserName: HSTRING, additionalProperties: *IMapView(HSTRING,HSTRING)) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.UpdateWebAccountPropertiesAsync(webAccount, webAccountUserName, additionalProperties);
    }
    pub fn AddWebAccountAsync(webAccountId: HSTRING, webAccountUserName: HSTRING, props: *IMapView(HSTRING,HSTRING)) core.HResult!*IAsyncOperation(WebAccount) {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.AddWebAccountAsync(webAccountId, webAccountUserName, props);
    }
    pub fn DeleteWebAccountAsync(webAccount: *WebAccount) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.DeleteWebAccountAsync(webAccount);
    }
    pub fn FindAllProviderWebAccountsAsync() core.HResult!*IAsyncOperation(IVectorView(WebAccount)) {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.FindAllProviderWebAccountsAsync();
    }
    pub fn PushCookiesAsync(uri: *Uri, cookies: *IVectorView(HttpCookie)) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.PushCookiesAsync(uri, cookies);
    }
    pub fn SetViewAsync(webAccount: *WebAccount, view: *WebAccountClientView) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.SetViewAsync(webAccount, view);
    }
    pub fn ClearViewAsync(webAccount: *WebAccount, applicationCallbackUri: *Uri) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.ClearViewAsync(webAccount, applicationCallbackUri);
    }
    pub fn GetViewsAsync(webAccount: *WebAccount) core.HResult!*IAsyncOperation(IVectorView(WebAccountClientView)) {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.GetViewsAsync(webAccount);
    }
    pub fn SetWebAccountPictureAsync(webAccount: *WebAccount, webAccountPicture: *IRandomAccessStream) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.SetWebAccountPictureAsync(webAccount, webAccountPicture);
    }
    pub fn ClearWebAccountPictureAsync(webAccount: *WebAccount) core.HResult!*IAsyncAction {
        const factory = @This().IWebAccountManagerStaticsCache.get();
        return try factory.ClearWebAccountPictureAsync(webAccount);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWebAccountManagerStatics3Cache: FactoryCache(IWebAccountManagerStatics3, RUNTIME_NAME) = .{};
    var _IWebAccountScopeManagerStaticsCache: FactoryCache(IWebAccountScopeManagerStatics, RUNTIME_NAME) = .{};
    var _IWebAccountManagerStatics2Cache: FactoryCache(IWebAccountManagerStatics2, RUNTIME_NAME) = .{};
    var _IWebAccountManagerStatics4Cache: FactoryCache(IWebAccountManagerStatics4, RUNTIME_NAME) = .{};
    var _IWebAccountMapManagerStaticsCache: FactoryCache(IWebAccountMapManagerStatics, RUNTIME_NAME) = .{};
    var _IWebAccountManagerStaticsCache: FactoryCache(IWebAccountManagerStatics, RUNTIME_NAME) = .{};
};
pub const WebAccountProviderAddAccountOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const this: *IWebAccountProviderAddAccountOperation = @ptrCast(self);
        return try this.ReportCompleted();
    }
    pub fn getKind(self: *@This()) core.HResult!WebAccountProviderOperationKind {
        var this: ?*IWebAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountProviderAddAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderAddAccountOperation.GUID;
    pub const IID: Guid = IWebAccountProviderAddAccountOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderAddAccountOperation.SIGNATURE);
};
pub const WebAccountProviderDeleteAccountOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        const this: *IWebAccountProviderDeleteAccountOperation = @ptrCast(self);
        return try this.getWebAccount();
    }
    pub fn getKind(self: *@This()) core.HResult!WebAccountProviderOperationKind {
        var this: ?*IWebAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportCompleted();
    }
    pub fn ReportError(self: *@This(), value: *WebProviderError) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportError(value);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountProviderDeleteAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderDeleteAccountOperation.GUID;
    pub const IID: Guid = IWebAccountProviderDeleteAccountOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderDeleteAccountOperation.SIGNATURE);
};
pub const WebAccountProviderGetTokenSilentOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviderRequest(self: *@This()) core.HResult!*WebProviderTokenRequest {
        const this: *IWebAccountProviderTokenOperation = @ptrCast(self);
        return try this.getProviderRequest();
    }
    pub fn getProviderResponses(self: *@This()) core.HResult!*IVector(WebProviderTokenResponse) {
        const this: *IWebAccountProviderTokenOperation = @ptrCast(self);
        return try this.getProviderResponses();
    }
    pub fn putCacheExpirationTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IWebAccountProviderTokenOperation = @ptrCast(self);
        return try this.putCacheExpirationTime(value);
    }
    pub fn getCacheExpirationTime(self: *@This()) core.HResult!DateTime {
        const this: *IWebAccountProviderTokenOperation = @ptrCast(self);
        return try this.getCacheExpirationTime();
    }
    pub fn getKind(self: *@This()) core.HResult!WebAccountProviderOperationKind {
        var this: ?*IWebAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn ReportUserInteractionRequired(self: *@This()) core.HResult!void {
        var this: ?*IWebAccountProviderSilentReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderSilentReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportUserInteractionRequired();
    }
    pub fn ReportUserInteractionRequired(self: *@This(), value: *WebProviderError) core.HResult!void {
        var this: ?*IWebAccountProviderSilentReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderSilentReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportUserInteractionRequired(value);
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportCompleted();
    }
    pub fn ReportError(self: *@This(), value: *WebProviderError) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportError(value);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountProviderGetTokenSilentOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderTokenOperation.GUID;
    pub const IID: Guid = IWebAccountProviderTokenOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderTokenOperation.SIGNATURE);
};
pub const WebAccountProviderManageAccountOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        const this: *IWebAccountProviderManageAccountOperation = @ptrCast(self);
        return try this.getWebAccount();
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const this: *IWebAccountProviderManageAccountOperation = @ptrCast(self);
        return try this.ReportCompleted();
    }
    pub fn getKind(self: *@This()) core.HResult!WebAccountProviderOperationKind {
        var this: ?*IWebAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountProviderManageAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderManageAccountOperation.GUID;
    pub const IID: Guid = IWebAccountProviderManageAccountOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderManageAccountOperation.SIGNATURE);
};
pub const WebAccountProviderOperationKind = enum(i32) {
    RequestToken = 0,
    GetTokenSilently = 1,
    AddAccount = 2,
    ManageAccount = 3,
    DeleteAccount = 4,
    RetrieveCookies = 5,
    SignOutAccount = 6,
};
pub const WebAccountProviderRequestTokenOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviderRequest(self: *@This()) core.HResult!*WebProviderTokenRequest {
        const this: *IWebAccountProviderTokenOperation = @ptrCast(self);
        return try this.getProviderRequest();
    }
    pub fn getProviderResponses(self: *@This()) core.HResult!*IVector(WebProviderTokenResponse) {
        const this: *IWebAccountProviderTokenOperation = @ptrCast(self);
        return try this.getProviderResponses();
    }
    pub fn putCacheExpirationTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IWebAccountProviderTokenOperation = @ptrCast(self);
        return try this.putCacheExpirationTime(value);
    }
    pub fn getCacheExpirationTime(self: *@This()) core.HResult!DateTime {
        const this: *IWebAccountProviderTokenOperation = @ptrCast(self);
        return try this.getCacheExpirationTime();
    }
    pub fn getKind(self: *@This()) core.HResult!WebAccountProviderOperationKind {
        var this: ?*IWebAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn ReportUserCanceled(self: *@This()) core.HResult!void {
        var this: ?*IWebAccountProviderUIReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderUIReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportUserCanceled();
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportCompleted();
    }
    pub fn ReportError(self: *@This(), value: *WebProviderError) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportError(value);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountProviderRequestTokenOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderTokenOperation.GUID;
    pub const IID: Guid = IWebAccountProviderTokenOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderTokenOperation.SIGNATURE);
};
pub const WebAccountProviderRetrieveCookiesOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContext(self: *@This()) core.HResult!*Uri {
        const this: *IWebAccountProviderRetrieveCookiesOperation = @ptrCast(self);
        return try this.getContext();
    }
    pub fn getCookies(self: *@This()) core.HResult!*IVector(HttpCookie) {
        const this: *IWebAccountProviderRetrieveCookiesOperation = @ptrCast(self);
        return try this.getCookies();
    }
    pub fn putUri(self: *@This(), uri: *Uri) core.HResult!void {
        const this: *IWebAccountProviderRetrieveCookiesOperation = @ptrCast(self);
        return try this.putUri(uri);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebAccountProviderRetrieveCookiesOperation = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getApplicationCallbackUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebAccountProviderRetrieveCookiesOperation = @ptrCast(self);
        return try this.getApplicationCallbackUri();
    }
    pub fn getKind(self: *@This()) core.HResult!WebAccountProviderOperationKind {
        var this: ?*IWebAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportCompleted();
    }
    pub fn ReportError(self: *@This(), value: *WebProviderError) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportError(value);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountProviderRetrieveCookiesOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderRetrieveCookiesOperation.GUID;
    pub const IID: Guid = IWebAccountProviderRetrieveCookiesOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderRetrieveCookiesOperation.SIGNATURE);
};
pub const WebAccountProviderSignOutAccountOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        const this: *IWebAccountProviderSignOutAccountOperation = @ptrCast(self);
        return try this.getWebAccount();
    }
    pub fn getApplicationCallbackUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebAccountProviderSignOutAccountOperation = @ptrCast(self);
        return try this.getApplicationCallbackUri();
    }
    pub fn getClientId(self: *@This()) core.HResult!HSTRING {
        const this: *IWebAccountProviderSignOutAccountOperation = @ptrCast(self);
        return try this.getClientId();
    }
    pub fn getKind(self: *@This()) core.HResult!WebAccountProviderOperationKind {
        var this: ?*IWebAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportCompleted();
    }
    pub fn ReportError(self: *@This(), value: *WebProviderError) core.HResult!void {
        var this: ?*IWebAccountProviderBaseReportOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderBaseReportOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportError(value);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountProviderSignOutAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderSignOutAccountOperation.GUID;
    pub const IID: Guid = IWebAccountProviderSignOutAccountOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderSignOutAccountOperation.SIGNATURE);
};
pub const WebAccountProviderTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperation(self: *@This()) core.HResult!*IWebAccountProviderOperation {
        const this: *IWebAccountProviderTokenObjects = @ptrCast(self);
        return try this.getOperation();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IWebAccountProviderTokenObjects2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProviderTokenObjects2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebAccountProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderTokenObjects.GUID;
    pub const IID: Guid = IWebAccountProviderTokenObjects.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderTokenObjects.SIGNATURE);
};
pub const WebAccountScope = enum(i32) {
    PerUser = 0,
    PerApplication = 1,
};
pub const WebAccountSelectionOptions = enum(i32) {
    Default = 0,
    New = 1,
};
pub const WebProviderTokenRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getClientRequest(self: *@This()) core.HResult!*WebTokenRequest {
        const this: *IWebProviderTokenRequest = @ptrCast(self);
        return try this.getClientRequest();
    }
    pub fn getWebAccounts(self: *@This()) core.HResult!*IVectorView(WebAccount) {
        const this: *IWebProviderTokenRequest = @ptrCast(self);
        return try this.getWebAccounts();
    }
    pub fn getWebAccountSelectionOptions(self: *@This()) core.HResult!WebAccountSelectionOptions {
        const this: *IWebProviderTokenRequest = @ptrCast(self);
        return try this.getWebAccountSelectionOptions();
    }
    pub fn getApplicationCallbackUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebProviderTokenRequest = @ptrCast(self);
        return try this.getApplicationCallbackUri();
    }
    pub fn GetApplicationTokenBindingKeyAsync(self: *@This(), keyType: TokenBindingKeyType, target: *Uri) core.HResult!*IAsyncOperation(CryptographicKey) {
        const this: *IWebProviderTokenRequest = @ptrCast(self);
        return try this.GetApplicationTokenBindingKeyAsync(keyType, target);
    }
    pub fn GetApplicationTokenBindingKeyIdAsync(self: *@This(), keyType: TokenBindingKeyType, target: *Uri) core.HResult!*IAsyncOperation(IBuffer) {
        var this: ?*IWebProviderTokenRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebProviderTokenRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetApplicationTokenBindingKeyIdAsync(keyType, target);
    }
    pub fn getApplicationPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IWebProviderTokenRequest3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebProviderTokenRequest3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getApplicationPackageFamilyName();
    }
    pub fn getApplicationProcessName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IWebProviderTokenRequest3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebProviderTokenRequest3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getApplicationProcessName();
    }
    pub fn CheckApplicationForCapabilityAsync(self: *@This(), capabilityName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IWebProviderTokenRequest3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebProviderTokenRequest3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CheckApplicationForCapabilityAsync(capabilityName);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebProviderTokenRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebProviderTokenRequest.GUID;
    pub const IID: Guid = IWebProviderTokenRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebProviderTokenRequest.SIGNATURE);
};
pub const WebProviderTokenResponse = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getClientResponse(self: *@This()) core.HResult!*WebTokenResponse {
        const this: *IWebProviderTokenResponse = @ptrCast(self);
        return try this.getClientResponse();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(webTokenResponse: *WebTokenResponse) core.HResult!*WebProviderTokenResponse {
        const factory = @This().IWebProviderTokenResponseFactoryCache.get();
        return try factory.Create(webTokenResponse);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Web.Provider.WebProviderTokenResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebProviderTokenResponse.GUID;
    pub const IID: Guid = IWebProviderTokenResponse.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebProviderTokenResponse.SIGNATURE);
    var _IWebProviderTokenResponseFactoryCache: FactoryCache(IWebProviderTokenResponseFactory, RUNTIME_NAME) = .{};
};
const CryptographicKey = @import("../../Cryptography/Core.zig").CryptographicKey;
const IUnknown = @import("../../../root.zig").IUnknown;
const Guid = @import("../../../root.zig").Guid;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const IMapView = @import("../../../Foundation/Collections.zig").IMapView;
const IVector = @import("../../../Foundation/Collections.zig").IVector;
const IBuffer = @import("../../../Storage/Streams.zig").IBuffer;
const DateTime = @import("../../../Foundation.zig").DateTime;
const WebAccount = @import("../../Credentials.zig").WebAccount;
const WebProviderError = @import("./Core.zig").WebProviderError;
const IRandomAccessStream = @import("../../../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const HSTRING = @import("../../../root.zig").HSTRING;
const WebTokenRequest = @import("./Core.zig").WebTokenRequest;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const Uri = @import("../../../Foundation.zig").Uri;
const HRESULT = @import("../../../root.zig").HRESULT;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const core = @import("../../../root.zig").core;
const HttpCookie = @import("../../../Web/Http.zig").HttpCookie;
const WebTokenResponse = @import("./Core.zig").WebTokenResponse;
const TokenBindingKeyType = @import("../Web.zig").TokenBindingKeyType;
const IAsyncAction = @import("../../../Foundation.zig").IAsyncAction;
const User = @import("../../../System.zig").User;
