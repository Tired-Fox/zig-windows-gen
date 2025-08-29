pub const ISecondaryAuthenticationFactorAuthentication = extern struct {
    vtable: *const VTable,
    pub fn getServiceAuthenticationHmac(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ServiceAuthenticationHmac(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionNonce(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_SessionNonce(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceNonce(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_DeviceNonce(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceConfigurationData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_DeviceConfigurationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FinishAuthenticationAsync(self: *@This(), deviceHmac: *IBuffer, sessionHmac: *IBuffer) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorFinishAuthenticationStatus) {
        var _r: *IAsyncOperation(SecondaryAuthenticationFactorFinishAuthenticationStatus) = undefined;
        const _c = self.vtable.FinishAuthenticationAsync(@ptrCast(self), deviceHmac, sessionHmac, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AbortAuthenticationAsync(self: *@This(), errorLogMessage: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AbortAuthenticationAsync(@ptrCast(self), errorLogMessage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthentication";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "020a16e5-6a25-40a3-8c00-50a023f619d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceAuthenticationHmac: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_SessionNonce: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_DeviceNonce: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_DeviceConfigurationData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        FinishAuthenticationAsync: *const fn(self: *anyopaque, deviceHmac: *IBuffer, sessionHmac: *IBuffer, _r: **IAsyncOperation(SecondaryAuthenticationFactorFinishAuthenticationStatus)) callconv(.winapi) HRESULT,
        AbortAuthenticationAsync: *const fn(self: *anyopaque, errorLogMessage: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorAuthenticationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SecondaryAuthenticationFactorAuthenticationStatus {
        var _r: SecondaryAuthenticationFactorAuthenticationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthentication(self: *@This()) core.HResult!*SecondaryAuthenticationFactorAuthentication {
        var _r: *SecondaryAuthenticationFactorAuthentication = undefined;
        const _c = self.vtable.get_Authentication(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9cbb5987-ef6d-4bc2-bf49-4617515a0f9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SecondaryAuthenticationFactorAuthenticationStatus) callconv(.winapi) HRESULT,
        get_Authentication: *const fn(self: *anyopaque, _r: **SecondaryAuthenticationFactorAuthentication) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorAuthenticationStageChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStageInfo(self: *@This()) core.HResult!*SecondaryAuthenticationFactorAuthenticationStageInfo {
        var _r: *SecondaryAuthenticationFactorAuthenticationStageInfo = undefined;
        const _c = self.vtable.get_StageInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStageChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4a5ee56-7291-4073-bc1f-ccb8f5afdf96";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StageInfo: *const fn(self: *anyopaque, _r: **SecondaryAuthenticationFactorAuthenticationStageInfo) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorAuthenticationStageInfo = extern struct {
    vtable: *const VTable,
    pub fn getStage(self: *@This()) core.HResult!SecondaryAuthenticationFactorAuthenticationStage {
        var _r: SecondaryAuthenticationFactorAuthenticationStage = undefined;
        const _c = self.vtable.get_Stage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScenario(self: *@This()) core.HResult!SecondaryAuthenticationFactorAuthenticationScenario {
        var _r: SecondaryAuthenticationFactorAuthenticationScenario = undefined;
        const _c = self.vtable.get_Scenario(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStageInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56fec28b-e8aa-4c0f-8e4c-a559e73add88";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Stage: *const fn(self: *anyopaque, _r: *SecondaryAuthenticationFactorAuthenticationStage) callconv(.winapi) HRESULT,
        get_Scenario: *const fn(self: *anyopaque, _r: *SecondaryAuthenticationFactorAuthenticationScenario) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorAuthenticationStatics = extern struct {
    vtable: *const VTable,
    pub fn ShowNotificationMessageAsync(self: *@This(), deviceName: HSTRING, message: SecondaryAuthenticationFactorAuthenticationMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowNotificationMessageAsync(@ptrCast(self), deviceName, message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAuthenticationAsync(self: *@This(), deviceId: HSTRING, serviceAuthenticationNonce: *IBuffer) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorAuthenticationResult) {
        var _r: *IAsyncOperation(SecondaryAuthenticationFactorAuthenticationResult) = undefined;
        const _c = self.vtable.StartAuthenticationAsync(@ptrCast(self), deviceId, serviceAuthenticationNonce, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAuthenticationStageChanged(self: *@This(), handler: *EventHandler(SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AuthenticationStageChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAuthenticationStageChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AuthenticationStageChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAuthenticationStageInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorAuthenticationStageInfo) {
        var _r: *IAsyncOperation(SecondaryAuthenticationFactorAuthenticationStageInfo) = undefined;
        const _c = self.vtable.GetAuthenticationStageInfoAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f582656-28f8-4e0f-ae8c-5898b9ae2469";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowNotificationMessageAsync: *const fn(self: *anyopaque, deviceName: HSTRING, message: SecondaryAuthenticationFactorAuthenticationMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartAuthenticationAsync: *const fn(self: *anyopaque, deviceId: HSTRING, serviceAuthenticationNonce: *IBuffer, _r: **IAsyncOperation(SecondaryAuthenticationFactorAuthenticationResult)) callconv(.winapi) HRESULT,
        add_AuthenticationStageChanged: *const fn(self: *anyopaque, handler: *EventHandler(SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AuthenticationStageChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetAuthenticationStageInfoAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SecondaryAuthenticationFactorAuthenticationStageInfo)) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatics = extern struct {
    vtable: *const VTable,
    pub fn RegisterDevicePresenceMonitoringAsync(self: *@This(), deviceId: HSTRING, deviceInstancePath: HSTRING, monitoringMode: SecondaryAuthenticationFactorDevicePresenceMonitoringMode) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) {
        var _r: *IAsyncOperation(SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) = undefined;
        const _c = self.vtable.RegisterDevicePresenceMonitoringAsync(@ptrCast(self), deviceId, deviceInstancePath, monitoringMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterDevicePresenceMonitoringAsyncWithDeviceFriendlyNameWithDeviceModelNumberWithDeviceConfigurationData(self: *@This(), deviceId: HSTRING, deviceInstancePath: HSTRING, monitoringMode: SecondaryAuthenticationFactorDevicePresenceMonitoringMode, deviceFriendlyName: HSTRING, deviceModelNumber: HSTRING, deviceConfigurationData: *IBuffer) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) {
        var _r: *IAsyncOperation(SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) = undefined;
        const _c = self.vtable.RegisterDevicePresenceMonitoringAsyncWithDeviceFriendlyNameWithDeviceModelNumberWithDeviceConfigurationData(@ptrCast(self), deviceId, deviceInstancePath, monitoringMode, deviceFriendlyName, deviceModelNumber, deviceConfigurationData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnregisterDevicePresenceMonitoringAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnregisterDevicePresenceMonitoringAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsDevicePresenceMonitoringSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsDevicePresenceMonitoringSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90499a19-7ef2-4523-951c-a417a24acf93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterDevicePresenceMonitoringAsync: *const fn(self: *anyopaque, deviceId: HSTRING, deviceInstancePath: HSTRING, monitoringMode: SecondaryAuthenticationFactorDevicePresenceMonitoringMode, _r: **IAsyncOperation(SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus)) callconv(.winapi) HRESULT,
        RegisterDevicePresenceMonitoringAsyncWithDeviceFriendlyNameWithDeviceModelNumberWithDeviceConfigurationData: *const fn(self: *anyopaque, deviceId: HSTRING, deviceInstancePath: HSTRING, monitoringMode: SecondaryAuthenticationFactorDevicePresenceMonitoringMode, deviceFriendlyName: HSTRING, deviceModelNumber: HSTRING, deviceConfigurationData: *IBuffer, _r: **IAsyncOperation(SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus)) callconv(.winapi) HRESULT,
        UnregisterDevicePresenceMonitoringAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        IsDevicePresenceMonitoringSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorInfo = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceFriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceModelNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceModelNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceConfigurationData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_DeviceConfigurationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e2ba861-8533-4fce-839b-ecb72410ac14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceFriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceModelNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceConfigurationData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getPresenceMonitoringMode(self: *@This()) core.HResult!SecondaryAuthenticationFactorDevicePresenceMonitoringMode {
        var _r: SecondaryAuthenticationFactorDevicePresenceMonitoringMode = undefined;
        const _c = self.vtable.get_PresenceMonitoringMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateDevicePresenceAsync(self: *@This(), presenceState: SecondaryAuthenticationFactorDevicePresence) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateDevicePresenceAsync(@ptrCast(self), presenceState, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAuthenticationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAuthenticationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14d981a3-fc26-4ff7-abc3-48e82a512a0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PresenceMonitoringMode: *const fn(self: *anyopaque, _r: *SecondaryAuthenticationFactorDevicePresenceMonitoringMode) callconv(.winapi) HRESULT,
        UpdateDevicePresenceAsync: *const fn(self: *anyopaque, presenceState: SecondaryAuthenticationFactorDevicePresence, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_IsAuthenticationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorRegistration = extern struct {
    vtable: *const VTable,
    pub fn FinishRegisteringDeviceAsync(self: *@This(), deviceConfigurationData: *IBuffer) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.FinishRegisteringDeviceAsync(@ptrCast(self), deviceConfigurationData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AbortRegisteringDeviceAsync(self: *@This(), errorLogMessage: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AbortRegisteringDeviceAsync(@ptrCast(self), errorLogMessage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f4cbbb4-8cba-48b0-840d-dbb22a54c678";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FinishRegisteringDeviceAsync: *const fn(self: *anyopaque, deviceConfigurationData: *IBuffer, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AbortRegisteringDeviceAsync: *const fn(self: *anyopaque, errorLogMessage: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorRegistrationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SecondaryAuthenticationFactorRegistrationStatus {
        var _r: SecondaryAuthenticationFactorRegistrationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegistration(self: *@This()) core.HResult!*SecondaryAuthenticationFactorRegistration {
        var _r: *SecondaryAuthenticationFactorRegistration = undefined;
        const _c = self.vtable.get_Registration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorRegistrationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4fe35f0-ade3-4981-af6b-ec195921682a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SecondaryAuthenticationFactorRegistrationStatus) callconv(.winapi) HRESULT,
        get_Registration: *const fn(self: *anyopaque, _r: **SecondaryAuthenticationFactorRegistration) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorRegistrationStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestStartRegisteringDeviceAsync(self: *@This(), deviceId: HSTRING, capabilities: SecondaryAuthenticationFactorDeviceCapabilities, deviceFriendlyName: HSTRING, deviceModelNumber: HSTRING, deviceKey: *IBuffer, mutualAuthenticationKey: *IBuffer) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorRegistrationResult) {
        var _r: *IAsyncOperation(SecondaryAuthenticationFactorRegistrationResult) = undefined;
        const _c = self.vtable.RequestStartRegisteringDeviceAsync(@ptrCast(self), deviceId, capabilities, deviceFriendlyName, deviceModelNumber, deviceKey, mutualAuthenticationKey, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllRegisteredDeviceInfoAsync(self: *@This(), queryType: SecondaryAuthenticationFactorDeviceFindScope) core.HResult!*IAsyncOperation(IVectorView(SecondaryAuthenticationFactorInfo)) {
        var _r: *IAsyncOperation(IVectorView(SecondaryAuthenticationFactorInfo)) = undefined;
        const _c = self.vtable.FindAllRegisteredDeviceInfoAsync(@ptrCast(self), queryType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnregisterDeviceAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnregisterDeviceAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateDeviceConfigurationDataAsync(self: *@This(), deviceId: HSTRING, deviceConfigurationData: *IBuffer) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateDeviceConfigurationDataAsync(@ptrCast(self), deviceId, deviceConfigurationData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorRegistrationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1adf0f65-e3b7-4155-997f-b756ef65beba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStartRegisteringDeviceAsync: *const fn(self: *anyopaque, deviceId: HSTRING, capabilities: SecondaryAuthenticationFactorDeviceCapabilities, deviceFriendlyName: HSTRING, deviceModelNumber: HSTRING, deviceKey: *IBuffer, mutualAuthenticationKey: *IBuffer, _r: **IAsyncOperation(SecondaryAuthenticationFactorRegistrationResult)) callconv(.winapi) HRESULT,
        FindAllRegisteredDeviceInfoAsync: *const fn(self: *anyopaque, queryType: SecondaryAuthenticationFactorDeviceFindScope, _r: **IAsyncOperation(IVectorView(SecondaryAuthenticationFactorInfo))) callconv(.winapi) HRESULT,
        UnregisterDeviceAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UpdateDeviceConfigurationDataAsync: *const fn(self: *anyopaque, deviceId: HSTRING, deviceConfigurationData: *IBuffer, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const SecondaryAuthenticationFactorAuthentication = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServiceAuthenticationHmac(self: *@This()) core.HResult!*IBuffer {
        const this: *ISecondaryAuthenticationFactorAuthentication = @ptrCast(self);
        return try this.getServiceAuthenticationHmac();
    }
    pub fn getSessionNonce(self: *@This()) core.HResult!*IBuffer {
        const this: *ISecondaryAuthenticationFactorAuthentication = @ptrCast(self);
        return try this.getSessionNonce();
    }
    pub fn getDeviceNonce(self: *@This()) core.HResult!*IBuffer {
        const this: *ISecondaryAuthenticationFactorAuthentication = @ptrCast(self);
        return try this.getDeviceNonce();
    }
    pub fn getDeviceConfigurationData(self: *@This()) core.HResult!*IBuffer {
        const this: *ISecondaryAuthenticationFactorAuthentication = @ptrCast(self);
        return try this.getDeviceConfigurationData();
    }
    pub fn FinishAuthenticationAsync(self: *@This(), deviceHmac: *IBuffer, sessionHmac: *IBuffer) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorFinishAuthenticationStatus) {
        const this: *ISecondaryAuthenticationFactorAuthentication = @ptrCast(self);
        return try this.FinishAuthenticationAsync(deviceHmac, sessionHmac);
    }
    pub fn AbortAuthenticationAsync(self: *@This(), errorLogMessage: HSTRING) core.HResult!*IAsyncAction {
        const this: *ISecondaryAuthenticationFactorAuthentication = @ptrCast(self);
        return try this.AbortAuthenticationAsync(errorLogMessage);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ShowNotificationMessageAsync(deviceName: HSTRING, message: SecondaryAuthenticationFactorAuthenticationMessage) core.HResult!*IAsyncAction {
        const factory = @This().ISecondaryAuthenticationFactorAuthenticationStaticsCache.get();
        return try factory.ShowNotificationMessageAsync(deviceName, message);
    }
    pub fn StartAuthenticationAsync(deviceId: HSTRING, serviceAuthenticationNonce: *IBuffer) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorAuthenticationResult) {
        const factory = @This().ISecondaryAuthenticationFactorAuthenticationStaticsCache.get();
        return try factory.StartAuthenticationAsync(deviceId, serviceAuthenticationNonce);
    }
    pub fn addAuthenticationStageChanged(handler: *EventHandler(SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().ISecondaryAuthenticationFactorAuthenticationStaticsCache.get();
        return try factory.addAuthenticationStageChanged(handler);
    }
    pub fn removeAuthenticationStageChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ISecondaryAuthenticationFactorAuthenticationStaticsCache.get();
        return try factory.removeAuthenticationStageChanged(token);
    }
    pub fn GetAuthenticationStageInfoAsync() core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorAuthenticationStageInfo) {
        const factory = @This().ISecondaryAuthenticationFactorAuthenticationStaticsCache.get();
        return try factory.GetAuthenticationStageInfoAsync();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthentication";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryAuthenticationFactorAuthentication.GUID;
    pub const IID: Guid = ISecondaryAuthenticationFactorAuthentication.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryAuthenticationFactorAuthentication.SIGNATURE);
    var _ISecondaryAuthenticationFactorAuthenticationStaticsCache: FactoryCache(ISecondaryAuthenticationFactorAuthenticationStatics, RUNTIME_NAME) = .{};
};
pub const SecondaryAuthenticationFactorAuthenticationMessage = enum(i32) {
    Invalid = 0,
    SwipeUpWelcome = 1,
    TapWelcome = 2,
    DeviceNeedsAttention = 3,
    LookingForDevice = 4,
    LookingForDevicePluggedin = 5,
    BluetoothIsDisabled = 6,
    NfcIsDisabled = 7,
    WiFiIsDisabled = 8,
    ExtraTapIsRequired = 9,
    DisabledByPolicy = 10,
    TapOnDeviceRequired = 11,
    HoldFinger = 12,
    ScanFinger = 13,
    UnauthorizedUser = 14,
    ReregisterRequired = 15,
    TryAgain = 16,
    SayPassphrase = 17,
    ReadyToSignIn = 18,
    UseAnotherSignInOption = 19,
    ConnectionRequired = 20,
    TimeLimitExceeded = 21,
    CanceledByUser = 22,
    CenterHand = 23,
    MoveHandCloser = 24,
    MoveHandFarther = 25,
    PlaceHandAbove = 26,
    RecognitionFailed = 27,
    DeviceUnavailable = 28,
};
pub const SecondaryAuthenticationFactorAuthenticationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SecondaryAuthenticationFactorAuthenticationStatus {
        const this: *ISecondaryAuthenticationFactorAuthenticationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getAuthentication(self: *@This()) core.HResult!*SecondaryAuthenticationFactorAuthentication {
        const this: *ISecondaryAuthenticationFactorAuthenticationResult = @ptrCast(self);
        return try this.getAuthentication();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryAuthenticationFactorAuthenticationResult.GUID;
    pub const IID: Guid = ISecondaryAuthenticationFactorAuthenticationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryAuthenticationFactorAuthenticationResult.SIGNATURE);
};
pub const SecondaryAuthenticationFactorAuthenticationScenario = enum(i32) {
    SignIn = 0,
    CredentialPrompt = 1,
};
pub const SecondaryAuthenticationFactorAuthenticationStage = enum(i32) {
    NotStarted = 0,
    WaitingForUserConfirmation = 1,
    CollectingCredential = 2,
    SuspendingAuthentication = 3,
    CredentialCollected = 4,
    CredentialAuthenticated = 5,
    StoppingAuthentication = 6,
    ReadyForLock = 7,
    CheckingDevicePresence = 8,
};
pub const SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStageInfo(self: *@This()) core.HResult!*SecondaryAuthenticationFactorAuthenticationStageInfo {
        const this: *ISecondaryAuthenticationFactorAuthenticationStageChangedEventArgs = @ptrCast(self);
        return try this.getStageInfo();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryAuthenticationFactorAuthenticationStageChangedEventArgs.GUID;
    pub const IID: Guid = ISecondaryAuthenticationFactorAuthenticationStageChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryAuthenticationFactorAuthenticationStageChangedEventArgs.SIGNATURE);
};
pub const SecondaryAuthenticationFactorAuthenticationStageInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStage(self: *@This()) core.HResult!SecondaryAuthenticationFactorAuthenticationStage {
        const this: *ISecondaryAuthenticationFactorAuthenticationStageInfo = @ptrCast(self);
        return try this.getStage();
    }
    pub fn getScenario(self: *@This()) core.HResult!SecondaryAuthenticationFactorAuthenticationScenario {
        const this: *ISecondaryAuthenticationFactorAuthenticationStageInfo = @ptrCast(self);
        return try this.getScenario();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ISecondaryAuthenticationFactorAuthenticationStageInfo = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryAuthenticationFactorAuthenticationStageInfo.GUID;
    pub const IID: Guid = ISecondaryAuthenticationFactorAuthenticationStageInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryAuthenticationFactorAuthenticationStageInfo.SIGNATURE);
};
pub const SecondaryAuthenticationFactorAuthenticationStatus = enum(i32) {
    Failed = 0,
    Started = 1,
    UnknownDevice = 2,
    DisabledByPolicy = 3,
    InvalidAuthenticationStage = 4,
};
pub const SecondaryAuthenticationFactorDeviceCapabilities = enum(i32) {
    None = 0,
    SecureStorage = 1,
    StoreKeys = 2,
    ConfirmUserIntentToAuthenticate = 4,
    SupportSecureUserPresenceCheck = 8,
    TransmittedDataIsEncrypted = 16,
    HMacSha256 = 32,
    CloseRangeDataTransmission = 64,
};
pub const SecondaryAuthenticationFactorDeviceFindScope = enum(i32) {
    User = 0,
    AllUsers = 1,
};
pub const SecondaryAuthenticationFactorDevicePresence = enum(i32) {
    Absent = 0,
    Present = 1,
};
pub const SecondaryAuthenticationFactorDevicePresenceMonitoringMode = enum(i32) {
    Unsupported = 0,
    AppManaged = 1,
    SystemManaged = 2,
};
pub const SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus = enum(i32) {
    Unsupported = 0,
    Succeeded = 1,
    DisabledByPolicy = 2,
};
pub const SecondaryAuthenticationFactorFinishAuthenticationStatus = enum(i32) {
    Failed = 0,
    Completed = 1,
    NonceExpired = 2,
};
pub const SecondaryAuthenticationFactorInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ISecondaryAuthenticationFactorInfo = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getDeviceFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *ISecondaryAuthenticationFactorInfo = @ptrCast(self);
        return try this.getDeviceFriendlyName();
    }
    pub fn getDeviceModelNumber(self: *@This()) core.HResult!HSTRING {
        const this: *ISecondaryAuthenticationFactorInfo = @ptrCast(self);
        return try this.getDeviceModelNumber();
    }
    pub fn getDeviceConfigurationData(self: *@This()) core.HResult!*IBuffer {
        const this: *ISecondaryAuthenticationFactorInfo = @ptrCast(self);
        return try this.getDeviceConfigurationData();
    }
    pub fn getPresenceMonitoringMode(self: *@This()) core.HResult!SecondaryAuthenticationFactorDevicePresenceMonitoringMode {
        var this: ?*ISecondaryAuthenticationFactorInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryAuthenticationFactorInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPresenceMonitoringMode();
    }
    pub fn UpdateDevicePresenceAsync(self: *@This(), presenceState: SecondaryAuthenticationFactorDevicePresence) core.HResult!*IAsyncAction {
        var this: ?*ISecondaryAuthenticationFactorInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryAuthenticationFactorInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateDevicePresenceAsync(presenceState);
    }
    pub fn getIsAuthenticationSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISecondaryAuthenticationFactorInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISecondaryAuthenticationFactorInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAuthenticationSupported();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryAuthenticationFactorInfo.GUID;
    pub const IID: Guid = ISecondaryAuthenticationFactorInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryAuthenticationFactorInfo.SIGNATURE);
};
pub const SecondaryAuthenticationFactorRegistration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FinishRegisteringDeviceAsync(self: *@This(), deviceConfigurationData: *IBuffer) core.HResult!*IAsyncAction {
        const this: *ISecondaryAuthenticationFactorRegistration = @ptrCast(self);
        return try this.FinishRegisteringDeviceAsync(deviceConfigurationData);
    }
    pub fn AbortRegisteringDeviceAsync(self: *@This(), errorLogMessage: HSTRING) core.HResult!*IAsyncAction {
        const this: *ISecondaryAuthenticationFactorRegistration = @ptrCast(self);
        return try this.AbortRegisteringDeviceAsync(errorLogMessage);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RegisterDevicePresenceMonitoringAsync(deviceId: HSTRING, deviceInstancePath: HSTRING, monitoringMode: SecondaryAuthenticationFactorDevicePresenceMonitoringMode) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) {
        const factory = @This().ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStaticsCache.get();
        return try factory.RegisterDevicePresenceMonitoringAsync(deviceId, deviceInstancePath, monitoringMode);
    }
    pub fn RegisterDevicePresenceMonitoringAsyncWithDeviceFriendlyNameWithDeviceModelNumberWithDeviceConfigurationData(deviceId: HSTRING, deviceInstancePath: HSTRING, monitoringMode: SecondaryAuthenticationFactorDevicePresenceMonitoringMode, deviceFriendlyName: HSTRING, deviceModelNumber: HSTRING, deviceConfigurationData: *IBuffer) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) {
        const factory = @This().ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStaticsCache.get();
        return try factory.RegisterDevicePresenceMonitoringAsyncWithDeviceFriendlyNameWithDeviceModelNumberWithDeviceConfigurationData(deviceId, deviceInstancePath, monitoringMode, deviceFriendlyName, deviceModelNumber, deviceConfigurationData);
    }
    pub fn UnregisterDevicePresenceMonitoringAsync(deviceId: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStaticsCache.get();
        return try factory.UnregisterDevicePresenceMonitoringAsync(deviceId);
    }
    pub fn IsDevicePresenceMonitoringSupported() core.HResult!bool {
        const factory = @This().ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStaticsCache.get();
        return try factory.IsDevicePresenceMonitoringSupported();
    }
    pub fn RequestStartRegisteringDeviceAsync(deviceId: HSTRING, capabilities: SecondaryAuthenticationFactorDeviceCapabilities, deviceFriendlyName: HSTRING, deviceModelNumber: HSTRING, deviceKey: *IBuffer, mutualAuthenticationKey: *IBuffer) core.HResult!*IAsyncOperation(SecondaryAuthenticationFactorRegistrationResult) {
        const factory = @This().ISecondaryAuthenticationFactorRegistrationStaticsCache.get();
        return try factory.RequestStartRegisteringDeviceAsync(deviceId, capabilities, deviceFriendlyName, deviceModelNumber, deviceKey, mutualAuthenticationKey);
    }
    pub fn FindAllRegisteredDeviceInfoAsync(queryType: SecondaryAuthenticationFactorDeviceFindScope) core.HResult!*IAsyncOperation(IVectorView(SecondaryAuthenticationFactorInfo)) {
        const factory = @This().ISecondaryAuthenticationFactorRegistrationStaticsCache.get();
        return try factory.FindAllRegisteredDeviceInfoAsync(queryType);
    }
    pub fn UnregisterDeviceAsync(deviceId: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().ISecondaryAuthenticationFactorRegistrationStaticsCache.get();
        return try factory.UnregisterDeviceAsync(deviceId);
    }
    pub fn UpdateDeviceConfigurationDataAsync(deviceId: HSTRING, deviceConfigurationData: *IBuffer) core.HResult!*IAsyncAction {
        const factory = @This().ISecondaryAuthenticationFactorRegistrationStaticsCache.get();
        return try factory.UpdateDeviceConfigurationDataAsync(deviceId, deviceConfigurationData);
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryAuthenticationFactorRegistration.GUID;
    pub const IID: Guid = ISecondaryAuthenticationFactorRegistration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryAuthenticationFactorRegistration.SIGNATURE);
    var _ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStaticsCache: FactoryCache(ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatics, RUNTIME_NAME) = .{};
    var _ISecondaryAuthenticationFactorRegistrationStaticsCache: FactoryCache(ISecondaryAuthenticationFactorRegistrationStatics, RUNTIME_NAME) = .{};
};
pub const SecondaryAuthenticationFactorRegistrationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SecondaryAuthenticationFactorRegistrationStatus {
        const this: *ISecondaryAuthenticationFactorRegistrationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getRegistration(self: *@This()) core.HResult!*SecondaryAuthenticationFactorRegistration {
        const this: *ISecondaryAuthenticationFactorRegistrationResult = @ptrCast(self);
        return try this.getRegistration();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistrationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryAuthenticationFactorRegistrationResult.GUID;
    pub const IID: Guid = ISecondaryAuthenticationFactorRegistrationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryAuthenticationFactorRegistrationResult.SIGNATURE);
};
pub const SecondaryAuthenticationFactorRegistrationStatus = enum(i32) {
    Failed = 0,
    Started = 1,
    CanceledByUser = 2,
    PinSetupRequired = 3,
    DisabledByPolicy = 4,
};
const IUnknown = @import("../../../root.zig").IUnknown;
const Guid = @import("../../../root.zig").Guid;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const IBuffer = @import("../../../Storage/Streams.zig").IBuffer;
const EventHandler = @import("../../../Foundation.zig").EventHandler;
const HRESULT = @import("../../../root.zig").HRESULT;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const core = @import("../../../root.zig").core;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const IAsyncAction = @import("../../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../../root.zig").HSTRING;
