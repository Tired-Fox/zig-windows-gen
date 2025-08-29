pub const CredentialPromptType = enum(i32) {
    PromptIfNeeded = 0,
    RetypeCredentials = 1,
    DoNotPrompt = 2,
};
pub const IOnlineIdAuthenticator = extern struct {
    vtable: *const VTable,
    pub fn AuthenticateUserAsync(self: *@This(), request: *OnlineIdServiceTicketRequest) core.HResult!*UserAuthenticationOperation {
        var _r: *UserAuthenticationOperation = undefined;
        const _c = self.vtable.AuthenticateUserAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AuthenticateUserAsyncWithCredentialPromptType(self: *@This(), requests: *IIterable(OnlineIdServiceTicketRequest), credentialPromptType: CredentialPromptType) core.HResult!*UserAuthenticationOperation {
        var _r: *UserAuthenticationOperation = undefined;
        const _c = self.vtable.AuthenticateUserAsyncWithCredentialPromptType(@ptrCast(self), requests, credentialPromptType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SignOutUserAsync(self: *@This()) core.HResult!*SignOutUserOperation {
        var _r: *SignOutUserOperation = undefined;
        const _c = self.vtable.SignOutUserAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putApplicationId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_ApplicationId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getApplicationId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ApplicationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanSignOut(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSignOut(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticatedSafeCustomerId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AuthenticatedSafeCustomerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.IOnlineIdAuthenticator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a003f58a-29ab-4817-b884-d7516dad18b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AuthenticateUserAsync: *const fn(self: *anyopaque, request: *OnlineIdServiceTicketRequest, _r: **UserAuthenticationOperation) callconv(.winapi) HRESULT,
        AuthenticateUserAsyncWithCredentialPromptType: *const fn(self: *anyopaque, requests: *IIterable(OnlineIdServiceTicketRequest), credentialPromptType: CredentialPromptType, _r: **UserAuthenticationOperation) callconv(.winapi) HRESULT,
        SignOutUserAsync: *const fn(self: *anyopaque, _r: **SignOutUserOperation) callconv(.winapi) HRESULT,
        put_ApplicationId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
        get_ApplicationId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CanSignOut: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AuthenticatedSafeCustomerId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IOnlineIdServiceTicket = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequest(self: *@This()) core.HResult!*OnlineIdServiceTicketRequest {
        var _r: *OnlineIdServiceTicketRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c95c547f-d781-4a94-acb8-c59874238c26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **OnlineIdServiceTicketRequest) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IOnlineIdServiceTicketRequest = extern struct {
    vtable: *const VTable,
    pub fn getService(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Service(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPolicy(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Policy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicketRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "297445d3-fb63-4135-8909-4e354c061466";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Service: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Policy: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IOnlineIdServiceTicketRequestFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateOnlineIdServiceTicketRequest(self: *@This(), service: HSTRING, policy: HSTRING) core.HResult!*OnlineIdServiceTicketRequest {
        var _r: *OnlineIdServiceTicketRequest = undefined;
        const _c = self.vtable.CreateOnlineIdServiceTicketRequest(@ptrCast(self), service, policy, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateOnlineIdServiceTicketRequestAdvanced(self: *@This(), service: HSTRING) core.HResult!*OnlineIdServiceTicketRequest {
        var _r: *OnlineIdServiceTicketRequest = undefined;
        const _c = self.vtable.CreateOnlineIdServiceTicketRequestAdvanced(@ptrCast(self), service, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicketRequestFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bebb0a08-9e73-4077-9614-08614c0bc245";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateOnlineIdServiceTicketRequest: *const fn(self: *anyopaque, service: HSTRING, policy: HSTRING, _r: **OnlineIdServiceTicketRequest) callconv(.winapi) HRESULT,
        CreateOnlineIdServiceTicketRequestAdvanced: *const fn(self: *anyopaque, service: HSTRING, _r: **OnlineIdServiceTicketRequest) callconv(.winapi) HRESULT,
    };
};
pub const IOnlineIdSystemAuthenticatorForUser = extern struct {
    vtable: *const VTable,
    pub fn GetTicketAsync(self: *@This(), request: *OnlineIdServiceTicketRequest) core.HResult!*IAsyncOperation(OnlineIdSystemTicketResult) {
        var _r: *IAsyncOperation(OnlineIdSystemTicketResult) = undefined;
        const _c = self.vtable.GetTicketAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putApplicationId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_ApplicationId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getApplicationId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ApplicationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5798befb-1de4-4186-a2e6-b563f86aaf44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetTicketAsync: *const fn(self: *anyopaque, request: *OnlineIdServiceTicketRequest, _r: **IAsyncOperation(OnlineIdSystemTicketResult)) callconv(.winapi) HRESULT,
        put_ApplicationId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
        get_ApplicationId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IOnlineIdSystemAuthenticatorStatics = extern struct {
    vtable: *const VTable,
    pub fn getDefault(self: *@This()) core.HResult!*OnlineIdSystemAuthenticatorForUser {
        var _r: *OnlineIdSystemAuthenticatorForUser = undefined;
        const _c = self.vtable.get_Default(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*OnlineIdSystemAuthenticatorForUser {
        var _r: *OnlineIdSystemAuthenticatorForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85047792-f634-41e3-96a4-5164e902c740";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Default: *const fn(self: *anyopaque, _r: **OnlineIdSystemAuthenticatorForUser) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **OnlineIdSystemAuthenticatorForUser) callconv(.winapi) HRESULT,
    };
};
pub const IOnlineIdSystemIdentity = extern struct {
    vtable: *const VTable,
    pub fn getTicket(self: *@This()) core.HResult!*OnlineIdServiceTicket {
        var _r: *OnlineIdServiceTicket = undefined;
        const _c = self.vtable.get_Ticket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.IOnlineIdSystemIdentity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "743cd20d-b6ca-434d-8124-53ea12685307";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Ticket: *const fn(self: *anyopaque, _r: **OnlineIdServiceTicket) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IOnlineIdSystemTicketResult = extern struct {
    vtable: *const VTable,
    pub fn getIdentity(self: *@This()) core.HResult!*OnlineIdSystemIdentity {
        var _r: *OnlineIdSystemIdentity = undefined;
        const _c = self.vtable.get_Identity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!OnlineIdSystemTicketStatus {
        var _r: OnlineIdSystemTicketStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.IOnlineIdSystemTicketResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db0a5ff8-b098-4acd-9d13-9e640652b5b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Identity: *const fn(self: *anyopaque, _r: **OnlineIdSystemIdentity) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *OnlineIdSystemTicketStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IUserIdentity = extern struct {
    vtable: *const VTable,
    pub fn getTickets(self: *@This()) core.HResult!*IVectorView(OnlineIdServiceTicket) {
        var _r: *IVectorView(OnlineIdServiceTicket) = undefined;
        const _c = self.vtable.get_Tickets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSafeCustomerId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SafeCustomerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignInName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SignInName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FirstName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LastName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBetaAccount(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBetaAccount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsConfirmedPC(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConfirmedPC(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.IUserIdentity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2146d9cd-0742-4be3-8a1c-7c7ae679aa88";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Tickets: *const fn(self: *anyopaque, _r: **IVectorView(OnlineIdServiceTicket)) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SafeCustomerId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SignInName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirstName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LastName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsBetaAccount: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsConfirmedPC: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const OnlineIdAuthenticator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AuthenticateUserAsync(self: *@This(), request: *OnlineIdServiceTicketRequest) core.HResult!*UserAuthenticationOperation {
        const this: *IOnlineIdAuthenticator = @ptrCast(self);
        return try this.AuthenticateUserAsync(request);
    }
    pub fn AuthenticateUserAsyncWithCredentialPromptType(self: *@This(), requests: *IIterable(OnlineIdServiceTicketRequest), credentialPromptType: CredentialPromptType) core.HResult!*UserAuthenticationOperation {
        const this: *IOnlineIdAuthenticator = @ptrCast(self);
        return try this.AuthenticateUserAsyncWithCredentialPromptType(requests, credentialPromptType);
    }
    pub fn SignOutUserAsync(self: *@This()) core.HResult!*SignOutUserOperation {
        const this: *IOnlineIdAuthenticator = @ptrCast(self);
        return try this.SignOutUserAsync();
    }
    pub fn putApplicationId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IOnlineIdAuthenticator = @ptrCast(self);
        return try this.putApplicationId(value);
    }
    pub fn getApplicationId(self: *@This()) core.HResult!*Guid {
        const this: *IOnlineIdAuthenticator = @ptrCast(self);
        return try this.getApplicationId();
    }
    pub fn getCanSignOut(self: *@This()) core.HResult!bool {
        const this: *IOnlineIdAuthenticator = @ptrCast(self);
        return try this.getCanSignOut();
    }
    pub fn getAuthenticatedSafeCustomerId(self: *@This()) core.HResult!HSTRING {
        const this: *IOnlineIdAuthenticator = @ptrCast(self);
        return try this.getAuthenticatedSafeCustomerId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IOnlineIdAuthenticator.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.OnlineIdAuthenticator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOnlineIdAuthenticator.GUID;
    pub const IID: Guid = IOnlineIdAuthenticator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOnlineIdAuthenticator.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const OnlineIdServiceTicket = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IOnlineIdServiceTicket = @ptrCast(self);
        return try this.getValue();
    }
    pub fn getRequest(self: *@This()) core.HResult!*OnlineIdServiceTicketRequest {
        const this: *IOnlineIdServiceTicket = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!i32 {
        const this: *IOnlineIdServiceTicket = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOnlineIdServiceTicket.GUID;
    pub const IID: Guid = IOnlineIdServiceTicket.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOnlineIdServiceTicket.SIGNATURE);
};
pub const OnlineIdServiceTicketRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getService(self: *@This()) core.HResult!HSTRING {
        const this: *IOnlineIdServiceTicketRequest = @ptrCast(self);
        return try this.getService();
    }
    pub fn getPolicy(self: *@This()) core.HResult!HSTRING {
        const this: *IOnlineIdServiceTicketRequest = @ptrCast(self);
        return try this.getPolicy();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateOnlineIdServiceTicketRequest(service: HSTRING, policy: HSTRING) core.HResult!*OnlineIdServiceTicketRequest {
        const factory = @This().IOnlineIdServiceTicketRequestFactoryCache.get();
        return try factory.CreateOnlineIdServiceTicketRequest(service, policy);
    }
    pub fn CreateOnlineIdServiceTicketRequestAdvanced(service: HSTRING) core.HResult!*OnlineIdServiceTicketRequest {
        const factory = @This().IOnlineIdServiceTicketRequestFactoryCache.get();
        return try factory.CreateOnlineIdServiceTicketRequestAdvanced(service);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOnlineIdServiceTicketRequest.GUID;
    pub const IID: Guid = IOnlineIdServiceTicketRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOnlineIdServiceTicketRequest.SIGNATURE);
    var _IOnlineIdServiceTicketRequestFactoryCache: FactoryCache(IOnlineIdServiceTicketRequestFactory, RUNTIME_NAME) = .{};
};
pub const OnlineIdSystemAuthenticator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Default() core.HResult!*OnlineIdSystemAuthenticatorForUser {
        const factory = @This().IOnlineIdSystemAuthenticatorStaticsCache.get();
        return try factory.getDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*OnlineIdSystemAuthenticatorForUser {
        const factory = @This().IOnlineIdSystemAuthenticatorStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IOnlineIdSystemAuthenticatorStaticsCache: FactoryCache(IOnlineIdSystemAuthenticatorStatics, RUNTIME_NAME) = .{};
};
pub const OnlineIdSystemAuthenticatorForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetTicketAsync(self: *@This(), request: *OnlineIdServiceTicketRequest) core.HResult!*IAsyncOperation(OnlineIdSystemTicketResult) {
        const this: *IOnlineIdSystemAuthenticatorForUser = @ptrCast(self);
        return try this.GetTicketAsync(request);
    }
    pub fn putApplicationId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IOnlineIdSystemAuthenticatorForUser = @ptrCast(self);
        return try this.putApplicationId(value);
    }
    pub fn getApplicationId(self: *@This()) core.HResult!*Guid {
        const this: *IOnlineIdSystemAuthenticatorForUser = @ptrCast(self);
        return try this.getApplicationId();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IOnlineIdSystemAuthenticatorForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOnlineIdSystemAuthenticatorForUser.GUID;
    pub const IID: Guid = IOnlineIdSystemAuthenticatorForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOnlineIdSystemAuthenticatorForUser.SIGNATURE);
};
pub const OnlineIdSystemIdentity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTicket(self: *@This()) core.HResult!*OnlineIdServiceTicket {
        const this: *IOnlineIdSystemIdentity = @ptrCast(self);
        return try this.getTicket();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IOnlineIdSystemIdentity = @ptrCast(self);
        return try this.getId();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.OnlineIdSystemIdentity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOnlineIdSystemIdentity.GUID;
    pub const IID: Guid = IOnlineIdSystemIdentity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOnlineIdSystemIdentity.SIGNATURE);
};
pub const OnlineIdSystemTicketResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIdentity(self: *@This()) core.HResult!*OnlineIdSystemIdentity {
        const this: *IOnlineIdSystemTicketResult = @ptrCast(self);
        return try this.getIdentity();
    }
    pub fn getStatus(self: *@This()) core.HResult!OnlineIdSystemTicketStatus {
        const this: *IOnlineIdSystemTicketResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IOnlineIdSystemTicketResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOnlineIdSystemTicketResult.GUID;
    pub const IID: Guid = IOnlineIdSystemTicketResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOnlineIdSystemTicketResult.SIGNATURE);
};
pub const OnlineIdSystemTicketStatus = enum(i32) {
    Success = 0,
    Error = 1,
    ServiceConnectionError = 2,
};
pub const SignOutUserOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncActionCompletedHandler) core.HResult!void {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncActionCompletedHandler {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn GetResults(self: *@This()) core.HResult!void {
        const this: *IAsyncAction = @ptrCast(self);
        return try this.GetResults();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.SignOutUserOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncAction.GUID;
    pub const IID: Guid = IAsyncAction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncAction.SIGNATURE);
};
pub const UserAuthenticationOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCompleted(self: *@This(), handler: *AsyncOperationCompletedHandler(UserIdentity)) core.HResult!void {
        const this: *IAsyncOperation = @ptrCast(self);
        return try this.putCompleted(handler);
    }
    pub fn getCompleted(self: *@This()) core.HResult!*AsyncOperationCompletedHandler(UserIdentity) {
        const this: *IAsyncOperation = @ptrCast(self);
        return try this.getCompleted();
    }
    pub fn GetResults(self: *@This()) core.HResult!*UserIdentity {
        const this: *IAsyncOperation = @ptrCast(self);
        return try this.GetResults();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getStatus(self: *@This()) core.HResult!AsyncStatus {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getErrorCode();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IAsyncInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsyncInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.UserAuthenticationOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsyncOperation.GUID;
    pub const IID: Guid = IAsyncOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsyncOperation.SIGNATURE);
};
pub const UserIdentity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTickets(self: *@This()) core.HResult!*IVectorView(OnlineIdServiceTicket) {
        const this: *IUserIdentity = @ptrCast(self);
        return try this.getTickets();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserIdentity = @ptrCast(self);
        return try this.getId();
    }
    pub fn getSafeCustomerId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserIdentity = @ptrCast(self);
        return try this.getSafeCustomerId();
    }
    pub fn getSignInName(self: *@This()) core.HResult!HSTRING {
        const this: *IUserIdentity = @ptrCast(self);
        return try this.getSignInName();
    }
    pub fn getFirstName(self: *@This()) core.HResult!HSTRING {
        const this: *IUserIdentity = @ptrCast(self);
        return try this.getFirstName();
    }
    pub fn getLastName(self: *@This()) core.HResult!HSTRING {
        const this: *IUserIdentity = @ptrCast(self);
        return try this.getLastName();
    }
    pub fn getIsBetaAccount(self: *@This()) core.HResult!bool {
        const this: *IUserIdentity = @ptrCast(self);
        return try this.getIsBetaAccount();
    }
    pub fn getIsConfirmedPC(self: *@This()) core.HResult!bool {
        const this: *IUserIdentity = @ptrCast(self);
        return try this.getIsConfirmedPC();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.OnlineId.UserIdentity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserIdentity.GUID;
    pub const IID: Guid = IUserIdentity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserIdentity.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IAsyncInfo = @import("../../Foundation.zig").IAsyncInfo;
const AsyncStatus = @import("../../Foundation.zig").AsyncStatus;
const AsyncOperationCompletedHandler = @import("../../Foundation.zig").AsyncOperationCompletedHandler;
const HResult = @import("../../Foundation.zig").HResult;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const AsyncActionCompletedHandler = @import("../../Foundation.zig").AsyncActionCompletedHandler;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const User = @import("../../System.zig").User;
const HSTRING = @import("../../root.zig").HSTRING;
