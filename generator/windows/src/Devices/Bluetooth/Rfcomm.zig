pub const IRfcommDeviceService = extern struct {
    vtable: *const VTable,
    pub fn getConnectionHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_ConnectionHostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ConnectionServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceId(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_ServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        var _r: SocketProtectionLevel = undefined;
        const _c = self.vtable.get_ProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        var _r: SocketProtectionLevel = undefined;
        const _c = self.vtable.get_MaxProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSdpRawAttributesAsync(self: *@This()) core.HResult!*IAsyncOperation(IMapView(u32,IBuffer)) {
        var _r: *IAsyncOperation(IMapView(u32,IBuffer)) = undefined;
        const _c = self.vtable.GetSdpRawAttributesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSdpRawAttributesAsync(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(IMapView(u32,IBuffer)) {
        var _r: *IAsyncOperation(IMapView(u32,IBuffer)) = undefined;
        const _c = self.vtable.GetSdpRawAttributesAsync(@ptrCast(self), cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae81ff1f-c5a1-4c40-8c28-f3efd69062f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConnectionHostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_ConnectionServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServiceId: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        get_ProtectionLevel: *const fn(self: *anyopaque, _r: *SocketProtectionLevel) callconv(.winapi) HRESULT,
        get_MaxProtectionLevel: *const fn(self: *anyopaque, _r: *SocketProtectionLevel) callconv(.winapi) HRESULT,
        GetSdpRawAttributesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IMapView(u32,IBuffer))) callconv(.winapi) HRESULT,
        GetSdpRawAttributesAsync: *const fn(self: *anyopaque, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(IMapView(u32,IBuffer))) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommDeviceService2 = extern struct {
    vtable: *const VTable,
    pub fn getDevice(self: *@This()) core.HResult!*BluetoothDevice {
        var _r: *BluetoothDevice = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "536ced14-ebcd-49fe-bf9f-40efc689b20d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **BluetoothDevice) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommDeviceService3 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceAccessInformation(self: *@This()) core.HResult!*DeviceAccessInformation {
        var _r: *DeviceAccessInformation = undefined;
        const _c = self.vtable.get_DeviceAccessInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceAccessStatus) {
        var _r: *IAsyncOperation(DeviceAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c22ace6-dd44-4d23-866d-8f3486ee6490";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceAccessInformation: *const fn(self: *anyopaque, _r: **DeviceAccessInformation) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DeviceAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommDeviceServiceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(RfcommDeviceService) {
        var _r: *IAsyncOperation(RfcommDeviceService) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This(), serviceId: *RfcommServiceId) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), serviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServiceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4a149ef-626d-41ac-b253-87ac5c27e28a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(RfcommDeviceService)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, serviceId: *RfcommServiceId, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommDeviceServiceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelectorForBluetoothDevice(self: *@This(), bluetoothDevice: *BluetoothDevice) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorForBluetoothDevice(@ptrCast(self), bluetoothDevice, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorForBluetoothDeviceWithCacheMode(self: *@This(), bluetoothDevice: *BluetoothDevice, cacheMode: BluetoothCacheMode) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorForBluetoothDeviceWithCacheMode(@ptrCast(self), bluetoothDevice, cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorForBluetoothDeviceAndServiceId(self: *@This(), bluetoothDevice: *BluetoothDevice, serviceId: *RfcommServiceId) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorForBluetoothDeviceAndServiceId(@ptrCast(self), bluetoothDevice, serviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorForBluetoothDeviceAndServiceIdWithServiceIdWithCacheMode(self: *@This(), bluetoothDevice: *BluetoothDevice, serviceId: *RfcommServiceId, cacheMode: BluetoothCacheMode) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorForBluetoothDeviceAndServiceIdWithServiceIdWithCacheMode(@ptrCast(self), bluetoothDevice, serviceId, cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServiceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa8cb1c9-e78d-4be4-8076-0a3d87a0a05f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelectorForBluetoothDevice: *const fn(self: *anyopaque, bluetoothDevice: *BluetoothDevice, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorForBluetoothDeviceWithCacheMode: *const fn(self: *anyopaque, bluetoothDevice: *BluetoothDevice, cacheMode: BluetoothCacheMode, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorForBluetoothDeviceAndServiceId: *const fn(self: *anyopaque, bluetoothDevice: *BluetoothDevice, serviceId: *RfcommServiceId, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorForBluetoothDeviceAndServiceIdWithServiceIdWithCacheMode: *const fn(self: *anyopaque, bluetoothDevice: *BluetoothDevice, serviceId: *RfcommServiceId, cacheMode: BluetoothCacheMode, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommDeviceServicesResult = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServices(self: *@This()) core.HResult!*IVectorView(RfcommDeviceService) {
        var _r: *IVectorView(RfcommDeviceService) = undefined;
        const _c = self.vtable.get_Services(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServicesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b48388c-7ccf-488e-9625-d259a5732d55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *BluetoothError) callconv(.winapi) HRESULT,
        get_Services: *const fn(self: *anyopaque, _r: **IVectorView(RfcommDeviceService)) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommServiceId = extern struct {
    vtable: *const VTable,
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Uuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AsShortId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.AsShortId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.AsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22629204-7e02-4017-8136-da1b6a1b9bbf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uuid: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        AsShortId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        AsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommServiceIdStatics = extern struct {
    vtable: *const VTable,
    pub fn FromUuid(self: *@This(), uuid: *Guid) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.FromUuid(@ptrCast(self), uuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromShortId(self: *@This(), shortId: u32) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.FromShortId(@ptrCast(self), shortId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSerialPort(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_SerialPort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getObexObjectPush(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_ObexObjectPush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getObexFileTransfer(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_ObexFileTransfer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneBookAccessPce(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_PhoneBookAccessPce(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneBookAccessPse(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_PhoneBookAccessPse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGenericFileTransfer(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_GenericFileTransfer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceIdStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a179eba-a975-46e3-b56b-08ffd783a5fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromUuid: *const fn(self: *anyopaque, uuid: *Guid, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        FromShortId: *const fn(self: *anyopaque, shortId: u32, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        get_SerialPort: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        get_ObexObjectPush: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        get_ObexFileTransfer: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        get_PhoneBookAccessPce: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        get_PhoneBookAccessPse: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        get_GenericFileTransfer: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommServiceProvider = extern struct {
    vtable: *const VTable,
    pub fn getServiceId(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_ServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSdpRawAttributes(self: *@This()) core.HResult!*IMap(u32,IBuffer) {
        var _r: *IMap(u32,IBuffer) = undefined;
        const _c = self.vtable.get_SdpRawAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAdvertising(self: *@This(), listener: *StreamSocketListener) core.HResult!void {
        const _c = self.vtable.StartAdvertising(@ptrCast(self), listener);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopAdvertising(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopAdvertising(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eadbfdc4-b1f6-44ff-9f7c-e7a82ab86821";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceId: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        get_SdpRawAttributes: *const fn(self: *anyopaque, _r: **IMap(u32,IBuffer)) callconv(.winapi) HRESULT,
        StartAdvertising: *const fn(self: *anyopaque, listener: *StreamSocketListener) callconv(.winapi) HRESULT,
        StopAdvertising: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommServiceProvider2 = extern struct {
    vtable: *const VTable,
    pub fn StartAdvertising(self: *@This(), listener: *StreamSocketListener, radioDiscoverable: bool) core.HResult!void {
        const _c = self.vtable.StartAdvertising(@ptrCast(self), listener, radioDiscoverable);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "736bdfc6-3c81-4d1e-baf2-ddbb81284512";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAdvertising: *const fn(self: *anyopaque, listener: *StreamSocketListener, radioDiscoverable: bool) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommServiceProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAsync(self: *@This(), serviceId: *RfcommServiceId) core.HResult!*IAsyncOperation(RfcommServiceProvider) {
        var _r: *IAsyncOperation(RfcommServiceProvider) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), serviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98888303-69ca-413a-84f7-4344c7292997";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, serviceId: *RfcommServiceId, _r: **IAsyncOperation(RfcommServiceProvider)) callconv(.winapi) HRESULT,
    };
};
pub const RfcommDeviceService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnectionHostName(self: *@This()) core.HResult!*HostName {
        const this: *IRfcommDeviceService = @ptrCast(self);
        return try this.getConnectionHostName();
    }
    pub fn getConnectionServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IRfcommDeviceService = @ptrCast(self);
        return try this.getConnectionServiceName();
    }
    pub fn getServiceId(self: *@This()) core.HResult!*RfcommServiceId {
        const this: *IRfcommDeviceService = @ptrCast(self);
        return try this.getServiceId();
    }
    pub fn getProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        const this: *IRfcommDeviceService = @ptrCast(self);
        return try this.getProtectionLevel();
    }
    pub fn getMaxProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        const this: *IRfcommDeviceService = @ptrCast(self);
        return try this.getMaxProtectionLevel();
    }
    pub fn GetSdpRawAttributesAsync(self: *@This()) core.HResult!*IAsyncOperation(IMapView(u32,IBuffer)) {
        const this: *IRfcommDeviceService = @ptrCast(self);
        return try this.GetSdpRawAttributesAsync();
    }
    pub fn GetSdpRawAttributesAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(IMapView(u32,IBuffer)) {
        const this: *IRfcommDeviceService = @ptrCast(self);
        return try this.GetSdpRawAttributesAsyncWithCacheMode(cacheMode);
    }
    pub fn getDevice(self: *@This()) core.HResult!*BluetoothDevice {
        var this: ?*IRfcommDeviceService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRfcommDeviceService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDevice();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getDeviceAccessInformation(self: *@This()) core.HResult!*DeviceAccessInformation {
        var this: ?*IRfcommDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRfcommDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceAccessInformation();
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceAccessStatus) {
        var this: ?*IRfcommDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRfcommDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestAccessAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(RfcommDeviceService) {
        const factory = @This().IRfcommDeviceServiceStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector(serviceId: *RfcommServiceId) core.HResult!HSTRING {
        const factory = @This().IRfcommDeviceServiceStaticsCache.get();
        return try factory.GetDeviceSelector(serviceId);
    }
    pub fn GetDeviceSelectorForBluetoothDevice(bluetoothDevice: *BluetoothDevice) core.HResult!HSTRING {
        const factory = @This().IRfcommDeviceServiceStatics2Cache.get();
        return try factory.GetDeviceSelectorForBluetoothDevice(bluetoothDevice);
    }
    pub fn GetDeviceSelectorForBluetoothDeviceWithCacheMode(bluetoothDevice: *BluetoothDevice, cacheMode: BluetoothCacheMode) core.HResult!HSTRING {
        const factory = @This().IRfcommDeviceServiceStatics2Cache.get();
        return try factory.GetDeviceSelectorForBluetoothDeviceWithCacheMode(bluetoothDevice, cacheMode);
    }
    pub fn GetDeviceSelectorForBluetoothDeviceAndServiceId(bluetoothDevice: *BluetoothDevice, serviceId: *RfcommServiceId) core.HResult!HSTRING {
        const factory = @This().IRfcommDeviceServiceStatics2Cache.get();
        return try factory.GetDeviceSelectorForBluetoothDeviceAndServiceId(bluetoothDevice, serviceId);
    }
    pub fn GetDeviceSelectorForBluetoothDeviceAndServiceIdWithCacheMode(bluetoothDevice: *BluetoothDevice, serviceId: *RfcommServiceId, cacheMode: BluetoothCacheMode) core.HResult!HSTRING {
        const factory = @This().IRfcommDeviceServiceStatics2Cache.get();
        return try factory.GetDeviceSelectorForBluetoothDeviceAndServiceIdWithCacheMode(bluetoothDevice, serviceId, cacheMode);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRfcommDeviceService.GUID;
    pub const IID: Guid = IRfcommDeviceService.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRfcommDeviceService.SIGNATURE);
    var _IRfcommDeviceServiceStaticsCache: FactoryCache(IRfcommDeviceServiceStatics, RUNTIME_NAME) = .{};
    var _IRfcommDeviceServiceStatics2Cache: FactoryCache(IRfcommDeviceServiceStatics2, RUNTIME_NAME) = .{};
};
pub const RfcommDeviceServicesResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IRfcommDeviceServicesResult = @ptrCast(self);
        return try this.getError();
    }
    pub fn getServices(self: *@This()) core.HResult!*IVectorView(RfcommDeviceService) {
        const this: *IRfcommDeviceServicesResult = @ptrCast(self);
        return try this.getServices();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRfcommDeviceServicesResult.GUID;
    pub const IID: Guid = IRfcommDeviceServicesResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRfcommDeviceServicesResult.SIGNATURE);
};
pub const RfcommServiceId = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        const this: *IRfcommServiceId = @ptrCast(self);
        return try this.getUuid();
    }
    pub fn AsShortId(self: *@This()) core.HResult!u32 {
        const this: *IRfcommServiceId = @ptrCast(self);
        return try this.AsShortId();
    }
    pub fn AsString(self: *@This()) core.HResult!HSTRING {
        const this: *IRfcommServiceId = @ptrCast(self);
        return try this.AsString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromUuid(uuid: *Guid) core.HResult!*RfcommServiceId {
        const factory = @This().IRfcommServiceIdStaticsCache.get();
        return try factory.FromUuid(uuid);
    }
    pub fn FromShortId(shortId: u32) core.HResult!*RfcommServiceId {
        const factory = @This().IRfcommServiceIdStaticsCache.get();
        return try factory.FromShortId(shortId);
    }
    pub fn get_SerialPort() core.HResult!*RfcommServiceId {
        const factory = @This().IRfcommServiceIdStaticsCache.get();
        return try factory.getSerialPort();
    }
    pub fn get_ObexObjectPush() core.HResult!*RfcommServiceId {
        const factory = @This().IRfcommServiceIdStaticsCache.get();
        return try factory.getObexObjectPush();
    }
    pub fn get_ObexFileTransfer() core.HResult!*RfcommServiceId {
        const factory = @This().IRfcommServiceIdStaticsCache.get();
        return try factory.getObexFileTransfer();
    }
    pub fn get_PhoneBookAccessPce() core.HResult!*RfcommServiceId {
        const factory = @This().IRfcommServiceIdStaticsCache.get();
        return try factory.getPhoneBookAccessPce();
    }
    pub fn get_PhoneBookAccessPse() core.HResult!*RfcommServiceId {
        const factory = @This().IRfcommServiceIdStaticsCache.get();
        return try factory.getPhoneBookAccessPse();
    }
    pub fn get_GenericFileTransfer() core.HResult!*RfcommServiceId {
        const factory = @This().IRfcommServiceIdStaticsCache.get();
        return try factory.getGenericFileTransfer();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRfcommServiceId.GUID;
    pub const IID: Guid = IRfcommServiceId.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRfcommServiceId.SIGNATURE);
    var _IRfcommServiceIdStaticsCache: FactoryCache(IRfcommServiceIdStatics, RUNTIME_NAME) = .{};
};
pub const RfcommServiceProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServiceId(self: *@This()) core.HResult!*RfcommServiceId {
        const this: *IRfcommServiceProvider = @ptrCast(self);
        return try this.getServiceId();
    }
    pub fn getSdpRawAttributes(self: *@This()) core.HResult!*IMap(u32,IBuffer) {
        const this: *IRfcommServiceProvider = @ptrCast(self);
        return try this.getSdpRawAttributes();
    }
    pub fn StartAdvertising(self: *@This(), listener: *StreamSocketListener) core.HResult!void {
        const this: *IRfcommServiceProvider = @ptrCast(self);
        return try this.StartAdvertising(listener);
    }
    pub fn StopAdvertising(self: *@This()) core.HResult!void {
        const this: *IRfcommServiceProvider = @ptrCast(self);
        return try this.StopAdvertising();
    }
    pub fn StartAdvertisingWithRadioDiscoverable(self: *@This(), listener: *StreamSocketListener, radioDiscoverable: bool) core.HResult!void {
        var this: ?*IRfcommServiceProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRfcommServiceProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartAdvertisingWithRadioDiscoverable(listener, radioDiscoverable);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAsync(serviceId: *RfcommServiceId) core.HResult!*IAsyncOperation(RfcommServiceProvider) {
        const factory = @This().IRfcommServiceProviderStaticsCache.get();
        return try factory.CreateAsync(serviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRfcommServiceProvider.GUID;
    pub const IID: Guid = IRfcommServiceProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRfcommServiceProvider.SIGNATURE);
    var _IRfcommServiceProviderStaticsCache: FactoryCache(IRfcommServiceProviderStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const BluetoothDevice = @import("../Bluetooth.zig").BluetoothDevice;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const IMap = @import("../../Foundation/Collections.zig").IMap;
const DeviceAccessInformation = @import("../Enumeration.zig").DeviceAccessInformation;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const BluetoothError = @import("../Bluetooth.zig").BluetoothError;
const StreamSocketListener = @import("../../Networking/Sockets.zig").StreamSocketListener;
const HostName = @import("../../Networking.zig").HostName;
const BluetoothCacheMode = @import("../Bluetooth.zig").BluetoothCacheMode;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const SocketProtectionLevel = @import("../../Networking/Sockets.zig").SocketProtectionLevel;
const IClosable = @import("../../Foundation.zig").IClosable;
const DeviceAccessStatus = @import("../Enumeration.zig").DeviceAccessStatus;
const HSTRING = @import("../../root.zig").HSTRING;
