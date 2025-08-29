pub const IMicrosoftAccountMultiFactorAuthenticationManager = extern struct {
    vtable: *const VTable,
    pub fn GetOneTimePassCodeAsync(self: *@This(), userAccountId: HSTRING, codeLength: u32) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorOneTimeCodedInfo) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorOneTimeCodedInfo) = undefined;
        const _c = self.vtable.GetOneTimePassCodeAsync(@ptrCast(self), userAccountId, codeLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddDeviceAsync(self: *@This(), userAccountId: HSTRING, authenticationToken: HSTRING, wnsChannelId: HSTRING) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) = undefined;
        const _c = self.vtable.AddDeviceAsync(@ptrCast(self), userAccountId, authenticationToken, wnsChannelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveDeviceAsync(self: *@This(), userAccountId: HSTRING) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) = undefined;
        const _c = self.vtable.RemoveDeviceAsync(@ptrCast(self), userAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateWnsChannelAsync(self: *@This(), userAccountId: HSTRING, channelUri: HSTRING) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) = undefined;
        const _c = self.vtable.UpdateWnsChannelAsync(@ptrCast(self), userAccountId, channelUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSessionsAsync(self: *@This(), userAccountIdList: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorGetSessionsResult) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorGetSessionsResult) = undefined;
        const _c = self.vtable.GetSessionsAsync(@ptrCast(self), userAccountIdList, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSessionsAndUnregisteredAccountsAsync(self: *@This(), userAccountIdList: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo) = undefined;
        const _c = self.vtable.GetSessionsAndUnregisteredAccountsAsync(@ptrCast(self), userAccountIdList, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApproveSessionAsync(self: *@This(), sessionAuthentictionStatus: MicrosoftAccountMultiFactorSessionAuthenticationStatus, authenticationSessionInfo: *MicrosoftAccountMultiFactorSessionInfo) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) = undefined;
        const _c = self.vtable.ApproveSessionAsync(@ptrCast(self), sessionAuthentictionStatus, authenticationSessionInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApproveSessionAsync(self: *@This(), sessionAuthentictionStatus: MicrosoftAccountMultiFactorSessionAuthenticationStatus, userAccountId: HSTRING, sessionId: HSTRING, sessionAuthenticationType: MicrosoftAccountMultiFactorAuthenticationType) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) = undefined;
        const _c = self.vtable.ApproveSessionAsync(@ptrCast(self), sessionAuthentictionStatus, userAccountId, sessionId, sessionAuthenticationType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DenySessionAsync(self: *@This(), authenticationSessionInfo: *MicrosoftAccountMultiFactorSessionInfo) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) = undefined;
        const _c = self.vtable.DenySessionAsync(@ptrCast(self), authenticationSessionInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DenySessionAsync(self: *@This(), userAccountId: HSTRING, sessionId: HSTRING, sessionAuthenticationType: MicrosoftAccountMultiFactorAuthenticationType) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        var _r: *IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) = undefined;
        const _c = self.vtable.DenySessionAsync(@ptrCast(self), userAccountId, sessionId, sessionAuthenticationType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0fd340a5-f574-4320-a08e-0a19a82322aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetOneTimePassCodeAsync: *const fn(self: *anyopaque, userAccountId: HSTRING, codeLength: u32, _r: **IAsyncOperation(MicrosoftAccountMultiFactorOneTimeCodedInfo)) callconv(.winapi) HRESULT,
        AddDeviceAsync: *const fn(self: *anyopaque, userAccountId: HSTRING, authenticationToken: HSTRING, wnsChannelId: HSTRING, _r: **IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse)) callconv(.winapi) HRESULT,
        RemoveDeviceAsync: *const fn(self: *anyopaque, userAccountId: HSTRING, _r: **IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse)) callconv(.winapi) HRESULT,
        UpdateWnsChannelAsync: *const fn(self: *anyopaque, userAccountId: HSTRING, channelUri: HSTRING, _r: **IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse)) callconv(.winapi) HRESULT,
        GetSessionsAsync: *const fn(self: *anyopaque, userAccountIdList: *IIterable(HSTRING), _r: **IAsyncOperation(MicrosoftAccountMultiFactorGetSessionsResult)) callconv(.winapi) HRESULT,
        GetSessionsAndUnregisteredAccountsAsync: *const fn(self: *anyopaque, userAccountIdList: *IIterable(HSTRING), _r: **IAsyncOperation(MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo)) callconv(.winapi) HRESULT,
        ApproveSessionAsync: *const fn(self: *anyopaque, sessionAuthentictionStatus: MicrosoftAccountMultiFactorSessionAuthenticationStatus, authenticationSessionInfo: *MicrosoftAccountMultiFactorSessionInfo, _r: **IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse)) callconv(.winapi) HRESULT,
        ApproveSessionAsync: *const fn(self: *anyopaque, sessionAuthentictionStatus: MicrosoftAccountMultiFactorSessionAuthenticationStatus, userAccountId: HSTRING, sessionId: HSTRING, sessionAuthenticationType: MicrosoftAccountMultiFactorAuthenticationType, _r: **IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse)) callconv(.winapi) HRESULT,
        DenySessionAsync: *const fn(self: *anyopaque, authenticationSessionInfo: *MicrosoftAccountMultiFactorSessionInfo, _r: **IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse)) callconv(.winapi) HRESULT,
        DenySessionAsync: *const fn(self: *anyopaque, userAccountId: HSTRING, sessionId: HSTRING, sessionAuthenticationType: MicrosoftAccountMultiFactorAuthenticationType, _r: **IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse)) callconv(.winapi) HRESULT,
    };
};
pub const IMicrosoftAccountMultiFactorAuthenticatorStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*MicrosoftAccountMultiFactorAuthenticationManager {
        var _r: *MicrosoftAccountMultiFactorAuthenticationManager = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticatorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d964c2e6-f446-4c71-8b79-6ea4024aa9b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **MicrosoftAccountMultiFactorAuthenticationManager) callconv(.winapi) HRESULT,
    };
};
pub const IMicrosoftAccountMultiFactorGetSessionsResult = extern struct {
    vtable: *const VTable,
    pub fn getSessions(self: *@This()) core.HResult!*IVectorView(MicrosoftAccountMultiFactorSessionInfo) {
        var _r: *IVectorView(MicrosoftAccountMultiFactorSessionInfo) = undefined;
        const _c = self.vtable.get_Sessions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceResponse(self: *@This()) core.HResult!MicrosoftAccountMultiFactorServiceResponse {
        var _r: MicrosoftAccountMultiFactorServiceResponse = undefined;
        const _c = self.vtable.get_ServiceResponse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorGetSessionsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e23a9a0-e9fa-497a-95de-6d5747bf974c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Sessions: *const fn(self: *anyopaque, _r: **IVectorView(MicrosoftAccountMultiFactorSessionInfo)) callconv(.winapi) HRESULT,
        get_ServiceResponse: *const fn(self: *anyopaque, _r: *MicrosoftAccountMultiFactorServiceResponse) callconv(.winapi) HRESULT,
    };
};
pub const IMicrosoftAccountMultiFactorOneTimeCodedInfo = extern struct {
    vtable: *const VTable,
    pub fn getCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Code(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TimeInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeToLive(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TimeToLive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceResponse(self: *@This()) core.HResult!MicrosoftAccountMultiFactorServiceResponse {
        var _r: MicrosoftAccountMultiFactorServiceResponse = undefined;
        const _c = self.vtable.get_ServiceResponse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorOneTimeCodedInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82ba264b-d87c-4668-a976-40cfae547d08";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Code: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TimeInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_TimeToLive: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_ServiceResponse: *const fn(self: *anyopaque, _r: *MicrosoftAccountMultiFactorServiceResponse) callconv(.winapi) HRESULT,
    };
};
pub const IMicrosoftAccountMultiFactorSessionInfo = extern struct {
    vtable: *const VTable,
    pub fn getUserAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplaySessionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplaySessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApprovalStatus(self: *@This()) core.HResult!MicrosoftAccountMultiFactorSessionApprovalStatus {
        var _r: MicrosoftAccountMultiFactorSessionApprovalStatus = undefined;
        const _c = self.vtable.get_ApprovalStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationType(self: *@This()) core.HResult!MicrosoftAccountMultiFactorAuthenticationType {
        var _r: MicrosoftAccountMultiFactorAuthenticationType = undefined;
        const _c = self.vtable.get_AuthenticationType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_RequestTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorSessionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f7eabb4-a278-4635-b765-b494eb260af4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplaySessionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ApprovalStatus: *const fn(self: *anyopaque, _r: *MicrosoftAccountMultiFactorSessionApprovalStatus) callconv(.winapi) HRESULT,
        get_AuthenticationType: *const fn(self: *anyopaque, _r: *MicrosoftAccountMultiFactorAuthenticationType) callconv(.winapi) HRESULT,
        get_RequestTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_ExpirationTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo = extern struct {
    vtable: *const VTable,
    pub fn getSessions(self: *@This()) core.HResult!*IVectorView(MicrosoftAccountMultiFactorSessionInfo) {
        var _r: *IVectorView(MicrosoftAccountMultiFactorSessionInfo) = undefined;
        const _c = self.vtable.get_Sessions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnregisteredAccounts(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_UnregisteredAccounts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceResponse(self: *@This()) core.HResult!MicrosoftAccountMultiFactorServiceResponse {
        var _r: MicrosoftAccountMultiFactorServiceResponse = undefined;
        const _c = self.vtable.get_ServiceResponse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa7ec5fb-da3f-4088-a20d-5618afadb2e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Sessions: *const fn(self: *anyopaque, _r: **IVectorView(MicrosoftAccountMultiFactorSessionInfo)) callconv(.winapi) HRESULT,
        get_UnregisteredAccounts: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_ServiceResponse: *const fn(self: *anyopaque, _r: *MicrosoftAccountMultiFactorServiceResponse) callconv(.winapi) HRESULT,
    };
};
pub const MicrosoftAccountMultiFactorAuthenticationManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetOneTimePassCodeAsync(self: *@This(), userAccountId: HSTRING, codeLength: u32) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorOneTimeCodedInfo) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.GetOneTimePassCodeAsync(userAccountId, codeLength);
    }
    pub fn AddDeviceAsync(self: *@This(), userAccountId: HSTRING, authenticationToken: HSTRING, wnsChannelId: HSTRING) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.AddDeviceAsync(userAccountId, authenticationToken, wnsChannelId);
    }
    pub fn RemoveDeviceAsync(self: *@This(), userAccountId: HSTRING) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.RemoveDeviceAsync(userAccountId);
    }
    pub fn UpdateWnsChannelAsync(self: *@This(), userAccountId: HSTRING, channelUri: HSTRING) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.UpdateWnsChannelAsync(userAccountId, channelUri);
    }
    pub fn GetSessionsAsync(self: *@This(), userAccountIdList: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorGetSessionsResult) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.GetSessionsAsync(userAccountIdList);
    }
    pub fn GetSessionsAndUnregisteredAccountsAsync(self: *@This(), userAccountIdList: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.GetSessionsAndUnregisteredAccountsAsync(userAccountIdList);
    }
    pub fn ApproveSessionAsync(self: *@This(), sessionAuthentictionStatus: MicrosoftAccountMultiFactorSessionAuthenticationStatus, authenticationSessionInfo: *MicrosoftAccountMultiFactorSessionInfo) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.ApproveSessionAsync(sessionAuthentictionStatus, authenticationSessionInfo);
    }
    pub fn ApproveSessionAsync(self: *@This(), sessionAuthentictionStatus: MicrosoftAccountMultiFactorSessionAuthenticationStatus, userAccountId: HSTRING, sessionId: HSTRING, sessionAuthenticationType: MicrosoftAccountMultiFactorAuthenticationType) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.ApproveSessionAsync(sessionAuthentictionStatus, userAccountId, sessionId, sessionAuthenticationType);
    }
    pub fn DenySessionAsync(self: *@This(), authenticationSessionInfo: *MicrosoftAccountMultiFactorSessionInfo) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.DenySessionAsync(authenticationSessionInfo);
    }
    pub fn DenySessionAsync(self: *@This(), userAccountId: HSTRING, sessionId: HSTRING, sessionAuthenticationType: MicrosoftAccountMultiFactorAuthenticationType) core.HResult!*IAsyncOperation(MicrosoftAccountMultiFactorServiceResponse) {
        const this: *IMicrosoftAccountMultiFactorAuthenticationManager = @ptrCast(self);
        return try this.DenySessionAsync(userAccountId, sessionId, sessionAuthenticationType);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*MicrosoftAccountMultiFactorAuthenticationManager {
        const factory = @This().IMicrosoftAccountMultiFactorAuthenticatorStaticsCache.get();
        return try factory.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMicrosoftAccountMultiFactorAuthenticationManager.GUID;
    pub const IID: Guid = IMicrosoftAccountMultiFactorAuthenticationManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMicrosoftAccountMultiFactorAuthenticationManager.SIGNATURE);
    var _IMicrosoftAccountMultiFactorAuthenticatorStaticsCache: FactoryCache(IMicrosoftAccountMultiFactorAuthenticatorStatics, RUNTIME_NAME) = .{};
};
pub const MicrosoftAccountMultiFactorAuthenticationType = enum(i32) {
    User = 0,
    Device = 1,
};
pub const MicrosoftAccountMultiFactorGetSessionsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessions(self: *@This()) core.HResult!*IVectorView(MicrosoftAccountMultiFactorSessionInfo) {
        const this: *IMicrosoftAccountMultiFactorGetSessionsResult = @ptrCast(self);
        return try this.getSessions();
    }
    pub fn getServiceResponse(self: *@This()) core.HResult!MicrosoftAccountMultiFactorServiceResponse {
        const this: *IMicrosoftAccountMultiFactorGetSessionsResult = @ptrCast(self);
        return try this.getServiceResponse();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorGetSessionsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMicrosoftAccountMultiFactorGetSessionsResult.GUID;
    pub const IID: Guid = IMicrosoftAccountMultiFactorGetSessionsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMicrosoftAccountMultiFactorGetSessionsResult.SIGNATURE);
};
pub const MicrosoftAccountMultiFactorOneTimeCodedInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCode(self: *@This()) core.HResult!HSTRING {
        const this: *IMicrosoftAccountMultiFactorOneTimeCodedInfo = @ptrCast(self);
        return try this.getCode();
    }
    pub fn getTimeInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IMicrosoftAccountMultiFactorOneTimeCodedInfo = @ptrCast(self);
        return try this.getTimeInterval();
    }
    pub fn getTimeToLive(self: *@This()) core.HResult!TimeSpan {
        const this: *IMicrosoftAccountMultiFactorOneTimeCodedInfo = @ptrCast(self);
        return try this.getTimeToLive();
    }
    pub fn getServiceResponse(self: *@This()) core.HResult!MicrosoftAccountMultiFactorServiceResponse {
        const this: *IMicrosoftAccountMultiFactorOneTimeCodedInfo = @ptrCast(self);
        return try this.getServiceResponse();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorOneTimeCodedInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMicrosoftAccountMultiFactorOneTimeCodedInfo.GUID;
    pub const IID: Guid = IMicrosoftAccountMultiFactorOneTimeCodedInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMicrosoftAccountMultiFactorOneTimeCodedInfo.SIGNATURE);
};
pub const MicrosoftAccountMultiFactorServiceResponse = enum(i32) {
    Success = 0,
    Error = 1,
    NoNetworkConnection = 2,
    ServiceUnavailable = 3,
    TotpSetupDenied = 4,
    NgcNotSetup = 5,
    SessionAlreadyDenied = 6,
    SessionAlreadyApproved = 7,
    SessionExpired = 8,
    NgcNonceExpired = 9,
    InvalidSessionId = 10,
    InvalidSessionType = 11,
    InvalidOperation = 12,
    InvalidStateTransition = 13,
    DeviceNotFound = 14,
    FlowDisabled = 15,
    SessionNotApproved = 16,
    OperationCanceledByUser = 17,
    NgcDisabledByServer = 18,
    NgcKeyNotFoundOnServer = 19,
    UIRequired = 20,
    DeviceIdChanged = 21,
};
pub const MicrosoftAccountMultiFactorSessionApprovalStatus = enum(i32) {
    Pending = 0,
    Approved = 1,
    Denied = 2,
};
pub const MicrosoftAccountMultiFactorSessionAuthenticationStatus = enum(i32) {
    Authenticated = 0,
    Unauthenticated = 1,
};
pub const MicrosoftAccountMultiFactorSessionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUserAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IMicrosoftAccountMultiFactorSessionInfo = @ptrCast(self);
        return try this.getUserAccountId();
    }
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        const this: *IMicrosoftAccountMultiFactorSessionInfo = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn getDisplaySessionId(self: *@This()) core.HResult!HSTRING {
        const this: *IMicrosoftAccountMultiFactorSessionInfo = @ptrCast(self);
        return try this.getDisplaySessionId();
    }
    pub fn getApprovalStatus(self: *@This()) core.HResult!MicrosoftAccountMultiFactorSessionApprovalStatus {
        const this: *IMicrosoftAccountMultiFactorSessionInfo = @ptrCast(self);
        return try this.getApprovalStatus();
    }
    pub fn getAuthenticationType(self: *@This()) core.HResult!MicrosoftAccountMultiFactorAuthenticationType {
        const this: *IMicrosoftAccountMultiFactorSessionInfo = @ptrCast(self);
        return try this.getAuthenticationType();
    }
    pub fn getRequestTime(self: *@This()) core.HResult!DateTime {
        const this: *IMicrosoftAccountMultiFactorSessionInfo = @ptrCast(self);
        return try this.getRequestTime();
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!DateTime {
        const this: *IMicrosoftAccountMultiFactorSessionInfo = @ptrCast(self);
        return try this.getExpirationTime();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMicrosoftAccountMultiFactorSessionInfo.GUID;
    pub const IID: Guid = IMicrosoftAccountMultiFactorSessionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMicrosoftAccountMultiFactorSessionInfo.SIGNATURE);
};
pub const MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessions(self: *@This()) core.HResult!*IVectorView(MicrosoftAccountMultiFactorSessionInfo) {
        const this: *IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo = @ptrCast(self);
        return try this.getSessions();
    }
    pub fn getUnregisteredAccounts(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo = @ptrCast(self);
        return try this.getUnregisteredAccounts();
    }
    pub fn getServiceResponse(self: *@This()) core.HResult!MicrosoftAccountMultiFactorServiceResponse {
        const this: *IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo = @ptrCast(self);
        return try this.getServiceResponse();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo.GUID;
    pub const IID: Guid = IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo.SIGNATURE);
};
const IUnknown = @import("../../../root.zig").IUnknown;
const HSTRING = @import("../../../root.zig").HSTRING;
const Guid = @import("../../../root.zig").Guid;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const TimeSpan = @import("../../../Foundation.zig").TimeSpan;
const DateTime = @import("../../../Foundation.zig").DateTime;
const HRESULT = @import("../../../root.zig").HRESULT;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const core = @import("../../../root.zig").core;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const TrustLevel = @import("../../../root.zig").TrustLevel;
