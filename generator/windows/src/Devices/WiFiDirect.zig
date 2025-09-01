pub const IWiFiDirectAdvertisement = extern struct {
    vtable: *const VTable,
    pub fn getInformationElements(self: *@This()) core.HResult!*IVector(WiFiDirectInformationElement) {
        var _r: *IVector(WiFiDirectInformationElement) = undefined;
        const _c = self.vtable.get_InformationElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInformationElements(self: *@This(), value: *IVector(WiFiDirectInformationElement)) core.HResult!void {
        const _c = self.vtable.put_InformationElements(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListenStateDiscoverability(self: *@This()) core.HResult!WiFiDirectAdvertisementListenStateDiscoverability {
        var _r: WiFiDirectAdvertisementListenStateDiscoverability = undefined;
        const _c = self.vtable.get_ListenStateDiscoverability(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListenStateDiscoverability(self: *@This(), value: WiFiDirectAdvertisementListenStateDiscoverability) core.HResult!void {
        const _c = self.vtable.put_ListenStateDiscoverability(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAutonomousGroupOwnerEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAutonomousGroupOwnerEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAutonomousGroupOwnerEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAutonomousGroupOwnerEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLegacySettings(self: *@This()) core.HResult!*WiFiDirectLegacySettings {
        var _r: *WiFiDirectLegacySettings = undefined;
        const _c = self.vtable.get_LegacySettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab511a2d-2a06-49a1-a584-61435c7905a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InformationElements: *const fn(self: *anyopaque, _r: **IVector(WiFiDirectInformationElement)) callconv(.winapi) HRESULT,
        put_InformationElements: *const fn(self: *anyopaque, value: *IVector(WiFiDirectInformationElement)) callconv(.winapi) HRESULT,
        get_ListenStateDiscoverability: *const fn(self: *anyopaque, _r: *WiFiDirectAdvertisementListenStateDiscoverability) callconv(.winapi) HRESULT,
        put_ListenStateDiscoverability: *const fn(self: *anyopaque, value: WiFiDirectAdvertisementListenStateDiscoverability) callconv(.winapi) HRESULT,
        get_IsAutonomousGroupOwnerEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAutonomousGroupOwnerEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_LegacySettings: *const fn(self: *anyopaque, _r: **WiFiDirectLegacySettings) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectAdvertisement2 = extern struct {
    vtable: *const VTable,
    pub fn getSupportedConfigurationMethods(self: *@This()) core.HResult!*IVector(WiFiDirectConfigurationMethod) {
        var _r: *IVector(WiFiDirectConfigurationMethod) = undefined;
        const _c = self.vtable.get_SupportedConfigurationMethods(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b759aa46-d816-491b-917a-b40d7dc403a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedConfigurationMethods: *const fn(self: *anyopaque, _r: **IVector(WiFiDirectConfigurationMethod)) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectAdvertisementPublisher = extern struct {
    vtable: *const VTable,
    pub fn getAdvertisement(self: *@This()) core.HResult!*WiFiDirectAdvertisement {
        var _r: *WiFiDirectAdvertisement = undefined;
        const _c = self.vtable.get_Advertisement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!WiFiDirectAdvertisementPublisherStatus {
        var _r: WiFiDirectAdvertisementPublisherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(WiFiDirectAdvertisementPublisher,WiFiDirectAdvertisementPublisherStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b35a2d1a-9b1f-45d9-925a-694d66df68ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Advertisement: *const fn(self: *anyopaque, _r: **WiFiDirectAdvertisement) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *WiFiDirectAdvertisementPublisherStatus) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WiFiDirectAdvertisementPublisher,WiFiDirectAdvertisementPublisherStatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectAdvertisementPublisherStatusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!WiFiDirectAdvertisementPublisherStatus {
        var _r: WiFiDirectAdvertisementPublisherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getError(self: *@This()) core.HResult!WiFiDirectError {
        var _r: WiFiDirectError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisherStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aafde53c-5481-46e6-90dd-32116518f192";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *WiFiDirectAdvertisementPublisherStatus) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *WiFiDirectError) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectConnectionListener = extern struct {
    vtable: *const VTable,
    pub fn addConnectionRequested(self: *@This(), handler: *TypedEventHandler(WiFiDirectConnectionListener,WiFiDirectConnectionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectConnectionListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "699c1b0d-8d13-4ee9-b9ec-9c72f8251f7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ConnectionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(WiFiDirectConnectionListener,WiFiDirectConnectionRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectConnectionParameters = extern struct {
    vtable: *const VTable,
    pub fn getGroupOwnerIntent(self: *@This()) core.HResult!i16 {
        var _r: i16 = undefined;
        const _c = self.vtable.get_GroupOwnerIntent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGroupOwnerIntent(self: *@This(), value: i16) core.HResult!void {
        const _c = self.vtable.put_GroupOwnerIntent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectConnectionParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2e55405-5702-4b16-a02c-bbcd21ef6098";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GroupOwnerIntent: *const fn(self: *anyopaque, _r: *i16) callconv(.winapi) HRESULT,
        put_GroupOwnerIntent: *const fn(self: *anyopaque, value: i16) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectConnectionParameters2 = extern struct {
    vtable: *const VTable,
    pub fn getPreferenceOrderedConfigurationMethods(self: *@This()) core.HResult!*IVector(WiFiDirectConfigurationMethod) {
        var _r: *IVector(WiFiDirectConfigurationMethod) = undefined;
        const _c = self.vtable.get_PreferenceOrderedConfigurationMethods(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreferredPairingProcedure(self: *@This()) core.HResult!WiFiDirectPairingProcedure {
        var _r: WiFiDirectPairingProcedure = undefined;
        const _c = self.vtable.get_PreferredPairingProcedure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredPairingProcedure(self: *@This(), value: WiFiDirectPairingProcedure) core.HResult!void {
        const _c = self.vtable.put_PreferredPairingProcedure(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectConnectionParameters2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab3b0fbe-aa82-44b4-88c8-e3056b89801d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreferenceOrderedConfigurationMethods: *const fn(self: *anyopaque, _r: **IVector(WiFiDirectConfigurationMethod)) callconv(.winapi) HRESULT,
        get_PreferredPairingProcedure: *const fn(self: *anyopaque, _r: *WiFiDirectPairingProcedure) callconv(.winapi) HRESULT,
        put_PreferredPairingProcedure: *const fn(self: *anyopaque, value: WiFiDirectPairingProcedure) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectConnectionParametersStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDevicePairingKinds(self: *@This(), configurationMethod: WiFiDirectConfigurationMethod) core.HResult!DevicePairingKinds {
        var _r: DevicePairingKinds = undefined;
        const _c = self.vtable.GetDevicePairingKinds(@ptrCast(self), configurationMethod, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectConnectionParametersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "598af493-7642-456f-b9d8-e8a9eb1f401a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDevicePairingKinds: *const fn(self: *anyopaque, configurationMethod: WiFiDirectConfigurationMethod, _r: *DevicePairingKinds) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectConnectionRequest = extern struct {
    vtable: *const VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectConnectionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8eb99605-914f-49c3-a614-d18dc5b19b43";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceInformation: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectConnectionRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetConnectionRequest(self: *@This()) core.HResult!*WiFiDirectConnectionRequest {
        var _r: *WiFiDirectConnectionRequest = undefined;
        const _c = self.vtable.GetConnectionRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectConnectionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f99d20be-d38d-484f-8215-e7b65abf244c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetConnectionRequest: *const fn(self: *anyopaque, _r: **WiFiDirectConnectionRequest) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectDevice = extern struct {
    vtable: *const VTable,
    pub fn getConnectionStatus(self: *@This()) core.HResult!WiFiDirectConnectionStatus {
        var _r: WiFiDirectConnectionStatus = undefined;
        const _c = self.vtable.get_ConnectionStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addConnectionStatusChanged(self: *@This(), handler: *TypedEventHandler(WiFiDirectDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetConnectionEndpointPairs(self: *@This()) core.HResult!*IVectorView(EndpointPair) {
        var _r: *IVectorView(EndpointPair) = undefined;
        const _c = self.vtable.GetConnectionEndpointPairs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72deaaa8-72eb-4dae-8a28-8513355d2777";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConnectionStatus: *const fn(self: *anyopaque, _r: *WiFiDirectConnectionStatus) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_ConnectionStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WiFiDirectDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetConnectionEndpointPairs: *const fn(self: *anyopaque, _r: **IVectorView(EndpointPair)) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(WiFiDirectDevice) {
        var _r: *IAsyncOperation(WiFiDirectDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e86cb57c-3aac-4851-a792-482aaf931b04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(WiFiDirectDevice)) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectDeviceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), ty: WiFiDirectDeviceSelectorType) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING, connectionParameters: *WiFiDirectConnectionParameters) core.HResult!*IAsyncOperation(WiFiDirectDevice) {
        var _r: *IAsyncOperation(WiFiDirectDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, connectionParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectDeviceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a953e49-b103-437e-9226-ab67971342f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, ty: WiFiDirectDeviceSelectorType, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, connectionParameters: *WiFiDirectConnectionParameters, _r: **IAsyncOperation(WiFiDirectDevice)) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectInformationElement = extern struct {
    vtable: *const VTable,
    pub fn getOui(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Oui(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOui(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Oui(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOuiType(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_OuiType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOuiType(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_OuiType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectInformationElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "affb72d6-76bb-497e-ac8b-dc72838bc309";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Oui: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_Oui: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_OuiType: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_OuiType: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectInformationElementStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromBuffer(self: *@This(), buffer: *IBuffer) core.HResult!*IVector(WiFiDirectInformationElement) {
        var _r: *IVector(WiFiDirectInformationElement) = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromDeviceInformation(self: *@This(), deviceInformation: *DeviceInformation) core.HResult!*IVector(WiFiDirectInformationElement) {
        var _r: *IVector(WiFiDirectInformationElement) = undefined;
        const _c = self.vtable.CreateFromDeviceInformation(@ptrCast(self), deviceInformation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectInformationElementStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbd02f16-11a5-4e60-8caa-34772148378a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, buffer: *IBuffer, _r: **IVector(WiFiDirectInformationElement)) callconv(.winapi) HRESULT,
        CreateFromDeviceInformation: *const fn(self: *anyopaque, deviceInformation: *DeviceInformation, _r: **IVector(WiFiDirectInformationElement)) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiDirectLegacySettings = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSsid(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ssid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSsid(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Ssid(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPassphrase(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_Passphrase(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPassphrase(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_Passphrase(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.IWiFiDirectLegacySettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a64fdbba-f2fd-4567-a91b-f5c2f5321057";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Ssid: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Ssid: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Passphrase: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_Passphrase: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
    };
};
pub const WiFiDirectAdvertisement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInformationElements(self: *@This()) core.HResult!*IVector(WiFiDirectInformationElement) {
        const this: *IWiFiDirectAdvertisement = @ptrCast(self);
        return try this.getInformationElements();
    }
    pub fn putInformationElements(self: *@This(), value: *IVector(WiFiDirectInformationElement)) core.HResult!void {
        const this: *IWiFiDirectAdvertisement = @ptrCast(self);
        return try this.putInformationElements(value);
    }
    pub fn getListenStateDiscoverability(self: *@This()) core.HResult!WiFiDirectAdvertisementListenStateDiscoverability {
        const this: *IWiFiDirectAdvertisement = @ptrCast(self);
        return try this.getListenStateDiscoverability();
    }
    pub fn putListenStateDiscoverability(self: *@This(), value: WiFiDirectAdvertisementListenStateDiscoverability) core.HResult!void {
        const this: *IWiFiDirectAdvertisement = @ptrCast(self);
        return try this.putListenStateDiscoverability(value);
    }
    pub fn getIsAutonomousGroupOwnerEnabled(self: *@This()) core.HResult!bool {
        const this: *IWiFiDirectAdvertisement = @ptrCast(self);
        return try this.getIsAutonomousGroupOwnerEnabled();
    }
    pub fn putIsAutonomousGroupOwnerEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IWiFiDirectAdvertisement = @ptrCast(self);
        return try this.putIsAutonomousGroupOwnerEnabled(value);
    }
    pub fn getLegacySettings(self: *@This()) core.HResult!*WiFiDirectLegacySettings {
        const this: *IWiFiDirectAdvertisement = @ptrCast(self);
        return try this.getLegacySettings();
    }
    pub fn getSupportedConfigurationMethods(self: *@This()) core.HResult!*IVector(WiFiDirectConfigurationMethod) {
        var this: ?*IWiFiDirectAdvertisement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWiFiDirectAdvertisement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedConfigurationMethods();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectAdvertisement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectAdvertisement.GUID;
    pub const IID: Guid = IWiFiDirectAdvertisement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectAdvertisement.SIGNATURE);
};
pub const WiFiDirectAdvertisementListenStateDiscoverability = enum(i32) {
    None = 0,
    Normal = 1,
    Intensive = 2,
};
pub const WiFiDirectAdvertisementPublisher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAdvertisement(self: *@This()) core.HResult!*WiFiDirectAdvertisement {
        const this: *IWiFiDirectAdvertisementPublisher = @ptrCast(self);
        return try this.getAdvertisement();
    }
    pub fn getStatus(self: *@This()) core.HResult!WiFiDirectAdvertisementPublisherStatus {
        const this: *IWiFiDirectAdvertisementPublisher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(WiFiDirectAdvertisementPublisher,WiFiDirectAdvertisementPublisherStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWiFiDirectAdvertisementPublisher = @ptrCast(self);
        return try this.addStatusChanged(handler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiDirectAdvertisementPublisher = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IWiFiDirectAdvertisementPublisher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IWiFiDirectAdvertisementPublisher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWiFiDirectAdvertisementPublisher.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectAdvertisementPublisher.GUID;
    pub const IID: Guid = IWiFiDirectAdvertisementPublisher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectAdvertisementPublisher.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WiFiDirectAdvertisementPublisherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    Stopped = 2,
    Aborted = 3,
};
pub const WiFiDirectAdvertisementPublisherStatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!WiFiDirectAdvertisementPublisherStatus {
        const this: *IWiFiDirectAdvertisementPublisherStatusChangedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getError(self: *@This()) core.HResult!WiFiDirectError {
        const this: *IWiFiDirectAdvertisementPublisherStatusChangedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectAdvertisementPublisherStatusChangedEventArgs.GUID;
    pub const IID: Guid = IWiFiDirectAdvertisementPublisherStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectAdvertisementPublisherStatusChangedEventArgs.SIGNATURE);
};
pub const WiFiDirectConfigurationMethod = enum(i32) {
    ProvidePin = 0,
    DisplayPin = 1,
    PushButton = 2,
};
pub const WiFiDirectConnectionListener = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addConnectionRequested(self: *@This(), handler: *TypedEventHandler(WiFiDirectConnectionListener,WiFiDirectConnectionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWiFiDirectConnectionListener = @ptrCast(self);
        return try this.addConnectionRequested(handler);
    }
    pub fn removeConnectionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiDirectConnectionListener = @ptrCast(self);
        return try this.removeConnectionRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWiFiDirectConnectionListener.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectConnectionListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectConnectionListener.GUID;
    pub const IID: Guid = IWiFiDirectConnectionListener.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectConnectionListener.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WiFiDirectConnectionParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGroupOwnerIntent(self: *@This()) core.HResult!i16 {
        const this: *IWiFiDirectConnectionParameters = @ptrCast(self);
        return try this.getGroupOwnerIntent();
    }
    pub fn putGroupOwnerIntent(self: *@This(), value: i16) core.HResult!void {
        const this: *IWiFiDirectConnectionParameters = @ptrCast(self);
        return try this.putGroupOwnerIntent(value);
    }
    pub fn getPreferenceOrderedConfigurationMethods(self: *@This()) core.HResult!*IVector(WiFiDirectConfigurationMethod) {
        var this: ?*IWiFiDirectConnectionParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWiFiDirectConnectionParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreferenceOrderedConfigurationMethods();
    }
    pub fn getPreferredPairingProcedure(self: *@This()) core.HResult!WiFiDirectPairingProcedure {
        var this: ?*IWiFiDirectConnectionParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWiFiDirectConnectionParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreferredPairingProcedure();
    }
    pub fn putPreferredPairingProcedure(self: *@This(), value: WiFiDirectPairingProcedure) core.HResult!void {
        var this: ?*IWiFiDirectConnectionParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWiFiDirectConnectionParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPreferredPairingProcedure(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWiFiDirectConnectionParameters.IID)));
    }
    pub fn GetDevicePairingKinds(configurationMethod: WiFiDirectConfigurationMethod) core.HResult!DevicePairingKinds {
        const _f = @This().IWiFiDirectConnectionParametersStaticsCache.get();
        return try _f.GetDevicePairingKinds(configurationMethod);
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectConnectionParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectConnectionParameters.GUID;
    pub const IID: Guid = IWiFiDirectConnectionParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectConnectionParameters.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IWiFiDirectConnectionParametersStaticsCache: FactoryCache(IWiFiDirectConnectionParametersStatics, RUNTIME_NAME) = .{};
};
pub const WiFiDirectConnectionRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IWiFiDirectConnectionRequest = @ptrCast(self);
        return try this.getDeviceInformation();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectConnectionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectConnectionRequest.GUID;
    pub const IID: Guid = IWiFiDirectConnectionRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectConnectionRequest.SIGNATURE);
};
pub const WiFiDirectConnectionRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetConnectionRequest(self: *@This()) core.HResult!*WiFiDirectConnectionRequest {
        const this: *IWiFiDirectConnectionRequestedEventArgs = @ptrCast(self);
        return try this.GetConnectionRequest();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectConnectionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectConnectionRequestedEventArgs.GUID;
    pub const IID: Guid = IWiFiDirectConnectionRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectConnectionRequestedEventArgs.SIGNATURE);
};
pub const WiFiDirectConnectionStatus = enum(i32) {
    Disconnected = 0,
    Connected = 1,
};
pub const WiFiDirectDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnectionStatus(self: *@This()) core.HResult!WiFiDirectConnectionStatus {
        const this: *IWiFiDirectDevice = @ptrCast(self);
        return try this.getConnectionStatus();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiDirectDevice = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn addConnectionStatusChanged(self: *@This(), handler: *TypedEventHandler(WiFiDirectDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWiFiDirectDevice = @ptrCast(self);
        return try this.addConnectionStatusChanged(handler);
    }
    pub fn removeConnectionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiDirectDevice = @ptrCast(self);
        return try this.removeConnectionStatusChanged(token);
    }
    pub fn GetConnectionEndpointPairs(self: *@This()) core.HResult!*IVectorView(EndpointPair) {
        const this: *IWiFiDirectDevice = @ptrCast(self);
        return try this.GetConnectionEndpointPairs();
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
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().IWiFiDirectDeviceStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(WiFiDirectDevice) {
        const _f = @This().IWiFiDirectDeviceStaticsCache.get();
        return try _f.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelectorWithTy(ty: WiFiDirectDeviceSelectorType) core.HResult!HSTRING {
        const _f = @This().IWiFiDirectDeviceStatics2Cache.get();
        return try _f.GetDeviceSelector(ty);
    }
    pub fn FromIdAsyncWithConnectionParameters(deviceId: HSTRING, connectionParameters: *WiFiDirectConnectionParameters) core.HResult!*IAsyncOperation(WiFiDirectDevice) {
        const _f = @This().IWiFiDirectDeviceStatics2Cache.get();
        return try _f.FromIdAsync(deviceId, connectionParameters);
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectDevice.GUID;
    pub const IID: Guid = IWiFiDirectDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectDevice.SIGNATURE);
    var _IWiFiDirectDeviceStaticsCache: FactoryCache(IWiFiDirectDeviceStatics, RUNTIME_NAME) = .{};
    var _IWiFiDirectDeviceStatics2Cache: FactoryCache(IWiFiDirectDeviceStatics2, RUNTIME_NAME) = .{};
};
pub const WiFiDirectDeviceSelectorType = enum(i32) {
    DeviceInterface = 0,
    AssociationEndpoint = 1,
};
pub const WiFiDirectError = enum(i32) {
    Success = 0,
    RadioNotAvailable = 1,
    ResourceInUse = 2,
};
pub const WiFiDirectInformationElement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOui(self: *@This()) core.HResult!*IBuffer {
        const this: *IWiFiDirectInformationElement = @ptrCast(self);
        return try this.getOui();
    }
    pub fn putOui(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IWiFiDirectInformationElement = @ptrCast(self);
        return try this.putOui(value);
    }
    pub fn getOuiType(self: *@This()) core.HResult!u8 {
        const this: *IWiFiDirectInformationElement = @ptrCast(self);
        return try this.getOuiType();
    }
    pub fn putOuiType(self: *@This(), value: u8) core.HResult!void {
        const this: *IWiFiDirectInformationElement = @ptrCast(self);
        return try this.putOuiType(value);
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IWiFiDirectInformationElement = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IWiFiDirectInformationElement = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWiFiDirectInformationElement.IID)));
    }
    pub fn CreateFromBuffer(buffer: *IBuffer) core.HResult!*IVector(WiFiDirectInformationElement) {
        const _f = @This().IWiFiDirectInformationElementStaticsCache.get();
        return try _f.CreateFromBuffer(buffer);
    }
    pub fn CreateFromDeviceInformation(deviceInformation: *DeviceInformation) core.HResult!*IVector(WiFiDirectInformationElement) {
        const _f = @This().IWiFiDirectInformationElementStaticsCache.get();
        return try _f.CreateFromDeviceInformation(deviceInformation);
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectInformationElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectInformationElement.GUID;
    pub const IID: Guid = IWiFiDirectInformationElement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectInformationElement.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IWiFiDirectInformationElementStaticsCache: FactoryCache(IWiFiDirectInformationElementStatics, RUNTIME_NAME) = .{};
};
pub const WiFiDirectLegacySettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IWiFiDirectLegacySettings = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IWiFiDirectLegacySettings = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getSsid(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiDirectLegacySettings = @ptrCast(self);
        return try this.getSsid();
    }
    pub fn putSsid(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWiFiDirectLegacySettings = @ptrCast(self);
        return try this.putSsid(value);
    }
    pub fn getPassphrase(self: *@This()) core.HResult!*PasswordCredential {
        const this: *IWiFiDirectLegacySettings = @ptrCast(self);
        return try this.getPassphrase();
    }
    pub fn putPassphrase(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const this: *IWiFiDirectLegacySettings = @ptrCast(self);
        return try this.putPassphrase(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFiDirect.WiFiDirectLegacySettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiDirectLegacySettings.GUID;
    pub const IID: Guid = IWiFiDirectLegacySettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiDirectLegacySettings.SIGNATURE);
};
pub const WiFiDirectPairingProcedure = enum(i32) {
    GroupOwnerNegotiation = 0,
    Invitation = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IDevicePairingSettings = @import("./Enumeration.zig").IDevicePairingSettings;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const DeviceInformation = @import("./Enumeration.zig").DeviceInformation;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const DevicePairingKinds = @import("./Enumeration.zig").DevicePairingKinds;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EndpointPair = @import("../Networking.zig").EndpointPair;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
pub const Services = @import("./WiFiDirect/Services.zig");
