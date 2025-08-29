pub const IWiFiAdapter = extern struct {
    vtable: *const VTable,
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        var _r: *NetworkAdapter = undefined;
        const _c = self.vtable.get_NetworkAdapter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ScanAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ScanAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkReport(self: *@This()) core.HResult!*WiFiNetworkReport {
        var _r: *WiFiNetworkReport = undefined;
        const _c = self.vtable.get_NetworkReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAvailableNetworksChanged(self: *@This(), args: *TypedEventHandler(WiFiAdapter,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AvailableNetworksChanged(@ptrCast(self), args, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAvailableNetworksChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AvailableNetworksChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConnectAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind) core.HResult!*IAsyncOperation(WiFiConnectionResult) {
        var _r: *IAsyncOperation(WiFiConnectionResult) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), availableNetwork, reconnectionKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, passwordCredential: *PasswordCredential) core.HResult!*IAsyncOperation(WiFiConnectionResult) {
        var _r: *IAsyncOperation(WiFiConnectionResult) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), availableNetwork, reconnectionKind, passwordCredential, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, passwordCredential: *PasswordCredential, ssid: HSTRING) core.HResult!*IAsyncOperation(WiFiConnectionResult) {
        var _r: *IAsyncOperation(WiFiConnectionResult) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), availableNetwork, reconnectionKind, passwordCredential, ssid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Disconnect(self: *@This()) core.HResult!void {
        const _c = self.vtable.Disconnect(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiAdapter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6c4e423-3d75-43a4-b9de-11e26b72d9b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkAdapter: *const fn(self: *anyopaque, _r: **NetworkAdapter) callconv(.winapi) HRESULT,
        ScanAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_NetworkReport: *const fn(self: *anyopaque, _r: **WiFiNetworkReport) callconv(.winapi) HRESULT,
        add_AvailableNetworksChanged: *const fn(self: *anyopaque, args: *TypedEventHandler(WiFiAdapter,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AvailableNetworksChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, _r: **IAsyncOperation(WiFiConnectionResult)) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, passwordCredential: *PasswordCredential, _r: **IAsyncOperation(WiFiConnectionResult)) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, passwordCredential: *PasswordCredential, ssid: HSTRING, _r: **IAsyncOperation(WiFiConnectionResult)) callconv(.winapi) HRESULT,
        Disconnect: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiAdapter2 = extern struct {
    vtable: *const VTable,
    pub fn GetWpsConfigurationAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork) core.HResult!*IAsyncOperation(WiFiWpsConfigurationResult) {
        var _r: *IAsyncOperation(WiFiWpsConfigurationResult) = undefined;
        const _c = self.vtable.GetWpsConfigurationAsync(@ptrCast(self), availableNetwork, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, passwordCredential: *PasswordCredential, ssid: HSTRING, connectionMethod: WiFiConnectionMethod) core.HResult!*IAsyncOperation(WiFiConnectionResult) {
        var _r: *IAsyncOperation(WiFiConnectionResult) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), availableNetwork, reconnectionKind, passwordCredential, ssid, connectionMethod, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiAdapter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bc4501d-81e4-453d-9430-1fcafbadd6b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetWpsConfigurationAsync: *const fn(self: *anyopaque, availableNetwork: *WiFiAvailableNetwork, _r: **IAsyncOperation(WiFiWpsConfigurationResult)) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, passwordCredential: *PasswordCredential, ssid: HSTRING, connectionMethod: WiFiConnectionMethod, _r: **IAsyncOperation(WiFiConnectionResult)) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiAdapterStatics = extern struct {
    vtable: *const VTable,
    pub fn FindAllAdaptersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(WiFiAdapter)) {
        var _r: *IAsyncOperation(IVectorView(WiFiAdapter)) = undefined;
        const _c = self.vtable.FindAllAdaptersAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(WiFiAdapter) {
        var _r: *IAsyncOperation(WiFiAdapter) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(WiFiAccessStatus) {
        var _r: *IAsyncOperation(WiFiAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiAdapterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da25fddd-d24c-43e3-aabd-c4659f730f99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAllAdaptersAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(WiFiAdapter))) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(WiFiAdapter)) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WiFiAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiAvailableNetwork = extern struct {
    vtable: *const VTable,
    pub fn getUptime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Uptime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSsid(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ssid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBssid(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Bssid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChannelCenterFrequencyInKilohertz(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ChannelCenterFrequencyInKilohertz(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkRssiInDecibelMilliwatts(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NetworkRssiInDecibelMilliwatts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignalBars(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SignalBars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkKind(self: *@This()) core.HResult!WiFiNetworkKind {
        var _r: WiFiNetworkKind = undefined;
        const _c = self.vtable.get_NetworkKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhyKind(self: *@This()) core.HResult!WiFiPhyKind {
        var _r: WiFiPhyKind = undefined;
        const _c = self.vtable.get_PhyKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecuritySettings(self: *@This()) core.HResult!*NetworkSecuritySettings {
        var _r: *NetworkSecuritySettings = undefined;
        const _c = self.vtable.get_SecuritySettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBeaconInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_BeaconInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsWiFiDirect(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWiFiDirect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiAvailableNetwork";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26e96246-183e-4704-9826-71b4a2f0f668";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uptime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Ssid: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Bssid: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ChannelCenterFrequencyInKilohertz: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NetworkRssiInDecibelMilliwatts: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_SignalBars: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_NetworkKind: *const fn(self: *anyopaque, _r: *WiFiNetworkKind) callconv(.winapi) HRESULT,
        get_PhyKind: *const fn(self: *anyopaque, _r: *WiFiPhyKind) callconv(.winapi) HRESULT,
        get_SecuritySettings: *const fn(self: *anyopaque, _r: **NetworkSecuritySettings) callconv(.winapi) HRESULT,
        get_BeaconInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_IsWiFiDirect: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiConnectionResult = extern struct {
    vtable: *const VTable,
    pub fn getConnectionStatus(self: *@This()) core.HResult!WiFiConnectionStatus {
        var _r: WiFiConnectionStatus = undefined;
        const _c = self.vtable.get_ConnectionStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiConnectionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "143bdfd9-c37d-40be-a5c8-857bce85a931";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConnectionStatus: *const fn(self: *anyopaque, _r: *WiFiConnectionStatus) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiNetworkReport = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailableNetworks(self: *@This()) core.HResult!*IVectorView(WiFiAvailableNetwork) {
        var _r: *IVectorView(WiFiAvailableNetwork) = undefined;
        const _c = self.vtable.get_AvailableNetworks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiNetworkReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9524ded2-5911-445e-8194-be4f1a704895";
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
        get_AvailableNetworks: *const fn(self: *anyopaque, _r: **IVectorView(WiFiAvailableNetwork)) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiOnDemandHotspotConnectTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getRequestedNetwork(self: *@This()) core.HResult!*WiFiOnDemandHotspotNetwork {
        var _r: *WiFiOnDemandHotspotNetwork = undefined;
        const _c = self.vtable.get_RequestedNetwork(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportError(self: *@This(), status: WiFiOnDemandHotspotConnectStatus) core.HResult!void {
        const _c = self.vtable.ReportError(@ptrCast(self), status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConnectAsync(self: *@This()) core.HResult!*IAsyncOperation(WiFiOnDemandHotspotConnectionResult) {
        var _r: *IAsyncOperation(WiFiOnDemandHotspotConnectionResult) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Connect(self: *@This()) core.HResult!*WiFiOnDemandHotspotConnectionResult {
        var _r: *WiFiOnDemandHotspotConnectionResult = undefined;
        const _c = self.vtable.Connect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiOnDemandHotspotConnectTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a268eb58-68f5-59cf-8d38-35bf44b097ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestedNetwork: *const fn(self: *anyopaque, _r: **WiFiOnDemandHotspotNetwork) callconv(.winapi) HRESULT,
        ReportError: *const fn(self: *anyopaque, status: WiFiOnDemandHotspotConnectStatus) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WiFiOnDemandHotspotConnectionResult)) callconv(.winapi) HRESULT,
        Connect: *const fn(self: *anyopaque, _r: **WiFiOnDemandHotspotConnectionResult) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiOnDemandHotspotConnectionResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!WiFiOnDemandHotspotConnectStatus {
        var _r: WiFiOnDemandHotspotConnectStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiOnDemandHotspotConnectionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "911794a1-6c82-5de3-8a4a-f9ff22a4957a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *WiFiOnDemandHotspotConnectStatus) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiOnDemandHotspotNetwork = extern struct {
    vtable: *const VTable,
    pub fn GetProperties(self: *@This()) core.HResult!*WiFiOnDemandHotspotNetworkProperties {
        var _r: *WiFiOnDemandHotspotNetworkProperties = undefined;
        const _c = self.vtable.GetProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateProperties(self: *@This(), newProperties: *WiFiOnDemandHotspotNetworkProperties) core.HResult!void {
        const _c = self.vtable.UpdateProperties(@ptrCast(self), newProperties);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiOnDemandHotspotNetwork";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18dc7115-a04e-507c-bbaf-b78369d29fa7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetProperties: *const fn(self: *anyopaque, _r: **WiFiOnDemandHotspotNetworkProperties) callconv(.winapi) HRESULT,
        UpdateProperties: *const fn(self: *anyopaque, newProperties: *WiFiOnDemandHotspotNetworkProperties) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiOnDemandHotspotNetworkProperties = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAvailability(self: *@This()) core.HResult!WiFiOnDemandHotspotAvailability {
        var _r: WiFiOnDemandHotspotAvailability = undefined;
        const _c = self.vtable.get_Availability(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAvailability(self: *@This(), value: WiFiOnDemandHotspotAvailability) core.HResult!void {
        const _c = self.vtable.put_Availability(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemainingBatteryPercent(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_RemainingBatteryPercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemainingBatteryPercent(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_RemainingBatteryPercent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCellularBars(self: *@This()) core.HResult!*IReference(WiFiOnDemandHotspotCellularBars) {
        var _r: *IReference(WiFiOnDemandHotspotCellularBars) = undefined;
        const _c = self.vtable.get_CellularBars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCellularBars(self: *@This(), value: *IReference(WiFiOnDemandHotspotCellularBars)) core.HResult!void {
        const _c = self.vtable.put_CellularBars(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsMetered(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMetered(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsMetered(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsMetered(@ptrCast(self), value);
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
    pub fn getPassword(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_Password(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPassword(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_Password(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiOnDemandHotspotNetworkProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c810a1f2-c81d-5852-be50-e4bd4d81e98d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Availability: *const fn(self: *anyopaque, _r: *WiFiOnDemandHotspotAvailability) callconv(.winapi) HRESULT,
        put_Availability: *const fn(self: *anyopaque, value: WiFiOnDemandHotspotAvailability) callconv(.winapi) HRESULT,
        get_RemainingBatteryPercent: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_RemainingBatteryPercent: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_CellularBars: *const fn(self: *anyopaque, _r: **IReference(WiFiOnDemandHotspotCellularBars)) callconv(.winapi) HRESULT,
        put_CellularBars: *const fn(self: *anyopaque, value: *IReference(WiFiOnDemandHotspotCellularBars)) callconv(.winapi) HRESULT,
        get_IsMetered: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsMetered: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Ssid: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Ssid: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Password: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_Password: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiOnDemandHotspotNetworkStatics = extern struct {
    vtable: *const VTable,
    pub fn GetOrCreateById(self: *@This(), networkId: *Guid) core.HResult!*WiFiOnDemandHotspotNetwork {
        var _r: *WiFiOnDemandHotspotNetwork = undefined;
        const _c = self.vtable.GetOrCreateById(@ptrCast(self), networkId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiOnDemandHotspotNetworkStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00f5b8ac-80e7-5054-871c-8739f374e3c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetOrCreateById: *const fn(self: *anyopaque, networkId: *Guid, _r: **WiFiOnDemandHotspotNetwork) callconv(.winapi) HRESULT,
    };
};
pub const IWiFiWpsConfigurationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!WiFiWpsConfigurationStatus {
        var _r: WiFiWpsConfigurationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedWpsKinds(self: *@This()) core.HResult!*IVectorView(WiFiWpsKind) {
        var _r: *IVectorView(WiFiWpsKind) = undefined;
        const _c = self.vtable.get_SupportedWpsKinds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.IWiFiWpsConfigurationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67b49871-17ee-42d1-b14f-5a11f1226fb5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *WiFiWpsConfigurationStatus) callconv(.winapi) HRESULT,
        get_SupportedWpsKinds: *const fn(self: *anyopaque, _r: **IVectorView(WiFiWpsKind)) callconv(.winapi) HRESULT,
    };
};
pub const WiFiAccessStatus = enum(i32) {
    Unspecified = 0,
    Allowed = 1,
    DeniedByUser = 2,
    DeniedBySystem = 3,
};
pub const WiFiAdapter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        const this: *IWiFiAdapter = @ptrCast(self);
        return try this.getNetworkAdapter();
    }
    pub fn ScanAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IWiFiAdapter = @ptrCast(self);
        return try this.ScanAsync();
    }
    pub fn getNetworkReport(self: *@This()) core.HResult!*WiFiNetworkReport {
        const this: *IWiFiAdapter = @ptrCast(self);
        return try this.getNetworkReport();
    }
    pub fn addAvailableNetworksChanged(self: *@This(), args: *TypedEventHandler(WiFiAdapter,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IWiFiAdapter = @ptrCast(self);
        return try this.addAvailableNetworksChanged(args);
    }
    pub fn removeAvailableNetworksChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IWiFiAdapter = @ptrCast(self);
        return try this.removeAvailableNetworksChanged(eventCookie);
    }
    pub fn ConnectAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind) core.HResult!*IAsyncOperation(WiFiConnectionResult) {
        var this: ?*IWiFiAdapter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWiFiAdapter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(availableNetwork, reconnectionKind);
    }
    pub fn ConnectAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, passwordCredential: *PasswordCredential) core.HResult!*IAsyncOperation(WiFiConnectionResult) {
        var this: ?*IWiFiAdapter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWiFiAdapter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(availableNetwork, reconnectionKind, passwordCredential);
    }
    pub fn ConnectAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, passwordCredential: *PasswordCredential, ssid: HSTRING) core.HResult!*IAsyncOperation(WiFiConnectionResult) {
        var this: ?*IWiFiAdapter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWiFiAdapter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(availableNetwork, reconnectionKind, passwordCredential, ssid);
    }
    pub fn Disconnect(self: *@This()) core.HResult!void {
        const this: *IWiFiAdapter = @ptrCast(self);
        return try this.Disconnect();
    }
    pub fn GetWpsConfigurationAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork) core.HResult!*IAsyncOperation(WiFiWpsConfigurationResult) {
        var this: ?*IWiFiAdapter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWiFiAdapter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetWpsConfigurationAsync(availableNetwork);
    }
    pub fn ConnectAsync(self: *@This(), availableNetwork: *WiFiAvailableNetwork, reconnectionKind: WiFiReconnectionKind, passwordCredential: *PasswordCredential, ssid: HSTRING, connectionMethod: WiFiConnectionMethod) core.HResult!*IAsyncOperation(WiFiConnectionResult) {
        var this: ?*IWiFiAdapter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWiFiAdapter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(availableNetwork, reconnectionKind, passwordCredential, ssid, connectionMethod);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindAllAdaptersAsync() core.HResult!*IAsyncOperation(IVectorView(WiFiAdapter)) {
        const factory = @This().IWiFiAdapterStaticsCache.get();
        return try factory.FindAllAdaptersAsync();
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IWiFiAdapterStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(WiFiAdapter) {
        const factory = @This().IWiFiAdapterStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(WiFiAccessStatus) {
        const factory = @This().IWiFiAdapterStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.WiFiAdapter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiAdapter.GUID;
    pub const IID: Guid = IWiFiAdapter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiAdapter.SIGNATURE);
    var _IWiFiAdapterStaticsCache: FactoryCache(IWiFiAdapterStatics, RUNTIME_NAME) = .{};
};
pub const WiFiAvailableNetwork = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUptime(self: *@This()) core.HResult!TimeSpan {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getUptime();
    }
    pub fn getSsid(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getSsid();
    }
    pub fn getBssid(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getBssid();
    }
    pub fn getChannelCenterFrequencyInKilohertz(self: *@This()) core.HResult!i32 {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getChannelCenterFrequencyInKilohertz();
    }
    pub fn getNetworkRssiInDecibelMilliwatts(self: *@This()) core.HResult!f64 {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getNetworkRssiInDecibelMilliwatts();
    }
    pub fn getSignalBars(self: *@This()) core.HResult!u8 {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getSignalBars();
    }
    pub fn getNetworkKind(self: *@This()) core.HResult!WiFiNetworkKind {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getNetworkKind();
    }
    pub fn getPhyKind(self: *@This()) core.HResult!WiFiPhyKind {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getPhyKind();
    }
    pub fn getSecuritySettings(self: *@This()) core.HResult!*NetworkSecuritySettings {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getSecuritySettings();
    }
    pub fn getBeaconInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getBeaconInterval();
    }
    pub fn getIsWiFiDirect(self: *@This()) core.HResult!bool {
        const this: *IWiFiAvailableNetwork = @ptrCast(self);
        return try this.getIsWiFiDirect();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.WiFiAvailableNetwork";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiAvailableNetwork.GUID;
    pub const IID: Guid = IWiFiAvailableNetwork.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiAvailableNetwork.SIGNATURE);
};
pub const WiFiConnectionMethod = enum(i32) {
    Default = 0,
    WpsPin = 1,
    WpsPushButton = 2,
};
pub const WiFiConnectionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnectionStatus(self: *@This()) core.HResult!WiFiConnectionStatus {
        const this: *IWiFiConnectionResult = @ptrCast(self);
        return try this.getConnectionStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.WiFiConnectionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiConnectionResult.GUID;
    pub const IID: Guid = IWiFiConnectionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiConnectionResult.SIGNATURE);
};
pub const WiFiConnectionStatus = enum(i32) {
    UnspecifiedFailure = 0,
    Success = 1,
    AccessRevoked = 2,
    InvalidCredential = 3,
    NetworkNotAvailable = 4,
    Timeout = 5,
    UnsupportedAuthenticationProtocol = 6,
};
pub const WiFiNetworkKind = enum(i32) {
    Any = 0,
    Infrastructure = 1,
    Adhoc = 2,
};
pub const WiFiNetworkReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IWiFiNetworkReport = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getAvailableNetworks(self: *@This()) core.HResult!*IVectorView(WiFiAvailableNetwork) {
        const this: *IWiFiNetworkReport = @ptrCast(self);
        return try this.getAvailableNetworks();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.WiFiNetworkReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiNetworkReport.GUID;
    pub const IID: Guid = IWiFiNetworkReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiNetworkReport.SIGNATURE);
};
pub const WiFiOnDemandHotspotAvailability = enum(i32) {
    Available = 0,
    Unavailable = 1,
};
pub const WiFiOnDemandHotspotCellularBars = enum(i32) {
    ZeroBars = 0,
    OneBar = 1,
    TwoBars = 2,
    ThreeBars = 3,
    FourBars = 4,
    FiveBars = 5,
};
pub const WiFiOnDemandHotspotConnectStatus = enum(i32) {
    UnspecifiedFailure = 0,
    Success = 1,
    AppTimedOut = 2,
    InvalidCredential = 3,
    NetworkNotAvailable = 4,
    UnsupportedAuthenticationProtocol = 5,
    BluetoothConnectFailed = 6,
    BluetoothTransmissionError = 7,
    OperationCanceledByUser = 8,
    EntitlementCheckFailed = 9,
    NoCellularSignal = 10,
    CellularDataTurnedOff = 11,
    WlanConnectFailed = 12,
    WlanNotVisible = 13,
    AccessPointCannotConnect = 14,
    CellularConnectTimedOut = 15,
    RoamingNotAllowed = 16,
    PairingRequired = 17,
    DataLimitReached = 18,
};
pub const WiFiOnDemandHotspotConnectTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestedNetwork(self: *@This()) core.HResult!*WiFiOnDemandHotspotNetwork {
        const this: *IWiFiOnDemandHotspotConnectTriggerDetails = @ptrCast(self);
        return try this.getRequestedNetwork();
    }
    pub fn ReportError(self: *@This(), status: WiFiOnDemandHotspotConnectStatus) core.HResult!void {
        const this: *IWiFiOnDemandHotspotConnectTriggerDetails = @ptrCast(self);
        return try this.ReportError(status);
    }
    pub fn ConnectAsync(self: *@This()) core.HResult!*IAsyncOperation(WiFiOnDemandHotspotConnectionResult) {
        const this: *IWiFiOnDemandHotspotConnectTriggerDetails = @ptrCast(self);
        return try this.ConnectAsync();
    }
    pub fn Connect(self: *@This()) core.HResult!*WiFiOnDemandHotspotConnectionResult {
        const this: *IWiFiOnDemandHotspotConnectTriggerDetails = @ptrCast(self);
        return try this.Connect();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.WiFiOnDemandHotspotConnectTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiOnDemandHotspotConnectTriggerDetails.GUID;
    pub const IID: Guid = IWiFiOnDemandHotspotConnectTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiOnDemandHotspotConnectTriggerDetails.SIGNATURE);
};
pub const WiFiOnDemandHotspotConnectionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!WiFiOnDemandHotspotConnectStatus {
        const this: *IWiFiOnDemandHotspotConnectionResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.WiFiOnDemandHotspotConnectionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiOnDemandHotspotConnectionResult.GUID;
    pub const IID: Guid = IWiFiOnDemandHotspotConnectionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiOnDemandHotspotConnectionResult.SIGNATURE);
};
pub const WiFiOnDemandHotspotNetwork = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetProperties(self: *@This()) core.HResult!*WiFiOnDemandHotspotNetworkProperties {
        const this: *IWiFiOnDemandHotspotNetwork = @ptrCast(self);
        return try this.GetProperties();
    }
    pub fn UpdateProperties(self: *@This(), newProperties: *WiFiOnDemandHotspotNetworkProperties) core.HResult!void {
        const this: *IWiFiOnDemandHotspotNetwork = @ptrCast(self);
        return try this.UpdateProperties(newProperties);
    }
    pub fn getId(self: *@This()) core.HResult!*Guid {
        const this: *IWiFiOnDemandHotspotNetwork = @ptrCast(self);
        return try this.getId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetOrCreateById(networkId: *Guid) core.HResult!*WiFiOnDemandHotspotNetwork {
        const factory = @This().IWiFiOnDemandHotspotNetworkStaticsCache.get();
        return try factory.GetOrCreateById(networkId);
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.WiFiOnDemandHotspotNetwork";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiOnDemandHotspotNetwork.GUID;
    pub const IID: Guid = IWiFiOnDemandHotspotNetwork.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiOnDemandHotspotNetwork.SIGNATURE);
    var _IWiFiOnDemandHotspotNetworkStaticsCache: FactoryCache(IWiFiOnDemandHotspotNetworkStatics, RUNTIME_NAME) = .{};
};
pub const WiFiOnDemandHotspotNetworkProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getAvailability(self: *@This()) core.HResult!WiFiOnDemandHotspotAvailability {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.getAvailability();
    }
    pub fn putAvailability(self: *@This(), value: WiFiOnDemandHotspotAvailability) core.HResult!void {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.putAvailability(value);
    }
    pub fn getRemainingBatteryPercent(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.getRemainingBatteryPercent();
    }
    pub fn putRemainingBatteryPercent(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.putRemainingBatteryPercent(value);
    }
    pub fn getCellularBars(self: *@This()) core.HResult!*IReference(WiFiOnDemandHotspotCellularBars) {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.getCellularBars();
    }
    pub fn putCellularBars(self: *@This(), value: *IReference(WiFiOnDemandHotspotCellularBars)) core.HResult!void {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.putCellularBars(value);
    }
    pub fn getIsMetered(self: *@This()) core.HResult!bool {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.getIsMetered();
    }
    pub fn putIsMetered(self: *@This(), value: bool) core.HResult!void {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.putIsMetered(value);
    }
    pub fn getSsid(self: *@This()) core.HResult!HSTRING {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.getSsid();
    }
    pub fn putSsid(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.putSsid(value);
    }
    pub fn getPassword(self: *@This()) core.HResult!*PasswordCredential {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.getPassword();
    }
    pub fn putPassword(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const this: *IWiFiOnDemandHotspotNetworkProperties = @ptrCast(self);
        return try this.putPassword(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.WiFiOnDemandHotspotNetworkProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiOnDemandHotspotNetworkProperties.GUID;
    pub const IID: Guid = IWiFiOnDemandHotspotNetworkProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiOnDemandHotspotNetworkProperties.SIGNATURE);
};
pub const WiFiPhyKind = enum(i32) {
    Unknown = 0,
    Fhss = 1,
    Dsss = 2,
    IRBaseband = 3,
    Ofdm = 4,
    Hrdsss = 5,
    Erp = 6,
    HT = 7,
    Vht = 8,
    Dmg = 9,
    HE = 10,
    Eht = 11,
};
pub const WiFiReconnectionKind = enum(i32) {
    Automatic = 0,
    Manual = 1,
};
pub const WiFiWpsConfigurationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!WiFiWpsConfigurationStatus {
        const this: *IWiFiWpsConfigurationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getSupportedWpsKinds(self: *@This()) core.HResult!*IVectorView(WiFiWpsKind) {
        const this: *IWiFiWpsConfigurationResult = @ptrCast(self);
        return try this.getSupportedWpsKinds();
    }
    pub const NAME: []const u8 = "Windows.Devices.WiFi.WiFiWpsConfigurationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWiFiWpsConfigurationResult.GUID;
    pub const IID: Guid = IWiFiWpsConfigurationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWiFiWpsConfigurationResult.SIGNATURE);
};
pub const WiFiWpsConfigurationStatus = enum(i32) {
    UnspecifiedFailure = 0,
    Success = 1,
    Timeout = 2,
};
pub const WiFiWpsKind = enum(i32) {
    Unknown = 0,
    Pin = 1,
    PushButton = 2,
    Nfc = 3,
    Ethernet = 4,
    Usb = 5,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const IReference = @import("../Foundation.zig").IReference;
const NetworkAdapter = @import("../Networking/Connectivity.zig").NetworkAdapter;
const DateTime = @import("../Foundation.zig").DateTime;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const NetworkSecuritySettings = @import("../Networking/Connectivity.zig").NetworkSecuritySettings;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
