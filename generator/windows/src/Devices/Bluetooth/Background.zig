pub const BluetoothEventTriggeringMode = enum(i32) {
    Serial = 0,
    Batch = 1,
    KeepLatest = 2,
};
pub const BluetoothLEAdvertisementPublisherTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!BluetoothLEAdvertisementPublisherStatus {
        const this: *IBluetoothLEAdvertisementPublisherTriggerDetails = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IBluetoothLEAdvertisementPublisherTriggerDetails = @ptrCast(self);
        return try this.getError();
    }
    pub fn getSelectedTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var this: ?*IBluetoothLEAdvertisementPublisherTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedTransmitPowerLevelInDBm();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.BluetoothLEAdvertisementPublisherTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementPublisherTriggerDetails.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementPublisherTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementPublisherTriggerDetails.SIGNATURE);
};
pub const BluetoothLEAdvertisementWatcherTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IBluetoothLEAdvertisementWatcherTriggerDetails = @ptrCast(self);
        return try this.getError();
    }
    pub fn getAdvertisements(self: *@This()) core.HResult!*IVectorView(BluetoothLEAdvertisementReceivedEventArgs) {
        const this: *IBluetoothLEAdvertisementWatcherTriggerDetails = @ptrCast(self);
        return try this.getAdvertisements();
    }
    pub fn getSignalStrengthFilter(self: *@This()) core.HResult!*BluetoothSignalStrengthFilter {
        const this: *IBluetoothLEAdvertisementWatcherTriggerDetails = @ptrCast(self);
        return try this.getSignalStrengthFilter();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.BluetoothLEAdvertisementWatcherTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementWatcherTriggerDetails.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementWatcherTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementWatcherTriggerDetails.SIGNATURE);
};
pub const GattCharacteristicNotificationTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCharacteristic(self: *@This()) core.HResult!*GattCharacteristic {
        const this: *IGattCharacteristicNotificationTriggerDetails = @ptrCast(self);
        return try this.getCharacteristic();
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IGattCharacteristicNotificationTriggerDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var this: ?*IGattCharacteristicNotificationTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristicNotificationTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getError();
    }
    pub fn getEventTriggeringMode(self: *@This()) core.HResult!BluetoothEventTriggeringMode {
        var this: ?*IGattCharacteristicNotificationTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristicNotificationTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEventTriggeringMode();
    }
    pub fn getValueChangedEvents(self: *@This()) core.HResult!*IVectorView(GattValueChangedEventArgs) {
        var this: ?*IGattCharacteristicNotificationTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristicNotificationTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getValueChangedEvents();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.GattCharacteristicNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattCharacteristicNotificationTriggerDetails.GUID;
    pub const IID: Guid = IGattCharacteristicNotificationTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattCharacteristicNotificationTriggerDetails.SIGNATURE);
};
pub const GattServiceProviderConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTriggerId(self: *@This()) core.HResult!HSTRING {
        const this: *IGattServiceProviderConnection = @ptrCast(self);
        return try this.getTriggerId();
    }
    pub fn getService(self: *@This()) core.HResult!*GattLocalService {
        const this: *IGattServiceProviderConnection = @ptrCast(self);
        return try this.getService();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IGattServiceProviderConnection = @ptrCast(self);
        return try this.Start();
    }
    pub fn UpdateAdvertisingParameters(self: *@This(), parameters: *GattServiceProviderAdvertisingParameters) core.HResult!void {
        var this: ?*IGattServiceProviderConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattServiceProviderConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateAdvertisingParameters(parameters);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAllServices() core.HResult!*IMapView(HSTRING,GattServiceProviderConnection) {
        const factory = @This().IGattServiceProviderConnectionStaticsCache.get();
        return try factory.getAllServices();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.GattServiceProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattServiceProviderConnection.GUID;
    pub const IID: Guid = IGattServiceProviderConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattServiceProviderConnection.SIGNATURE);
    var _IGattServiceProviderConnectionStaticsCache: FactoryCache(IGattServiceProviderConnectionStatics, RUNTIME_NAME) = .{};
};
pub const GattServiceProviderTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*GattServiceProviderConnection {
        const this: *IGattServiceProviderTriggerDetails = @ptrCast(self);
        return try this.getConnection();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.GattServiceProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattServiceProviderTriggerDetails.GUID;
    pub const IID: Guid = IGattServiceProviderTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattServiceProviderTriggerDetails.SIGNATURE);
};
pub const IBluetoothLEAdvertisementPublisherTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!BluetoothLEAdvertisementPublisherStatus {
        var _r: BluetoothLEAdvertisementPublisherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementPublisherTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "610eca86-3480-41c9-a918-7ddadf207e00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *BluetoothLEAdvertisementPublisherStatus) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *BluetoothError) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementPublisherTriggerDetails2 = extern struct {
    vtable: *const VTable,
    pub fn getSelectedTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var _r: *IReference(i16) = undefined;
        const _c = self.vtable.get_SelectedTransmitPowerLevelInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementPublisherTriggerDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4a3d025-c601-42d6-9829-4ccb3f5cd77f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedTransmitPowerLevelInDBm: *const fn(self: *anyopaque, _r: **IReference(i16)) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementWatcherTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdvertisements(self: *@This()) core.HResult!*IVectorView(BluetoothLEAdvertisementReceivedEventArgs) {
        var _r: *IVectorView(BluetoothLEAdvertisementReceivedEventArgs) = undefined;
        const _c = self.vtable.get_Advertisements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignalStrengthFilter(self: *@This()) core.HResult!*BluetoothSignalStrengthFilter {
        var _r: *BluetoothSignalStrengthFilter = undefined;
        const _c = self.vtable.get_SignalStrengthFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementWatcherTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7db5ad7-2257-4e69-9784-fee645c1dce0";
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
        get_Advertisements: *const fn(self: *anyopaque, _r: **IVectorView(BluetoothLEAdvertisementReceivedEventArgs)) callconv(.winapi) HRESULT,
        get_SignalStrengthFilter: *const fn(self: *anyopaque, _r: **BluetoothSignalStrengthFilter) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicNotificationTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getCharacteristic(self: *@This()) core.HResult!*GattCharacteristic {
        var _r: *GattCharacteristic = undefined;
        const _c = self.vtable.get_Characteristic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ba03b18-0fec-436a-93b1-f46c697532a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Characteristic: *const fn(self: *anyopaque, _r: **GattCharacteristic) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicNotificationTriggerDetails2 = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEventTriggeringMode(self: *@This()) core.HResult!BluetoothEventTriggeringMode {
        var _r: BluetoothEventTriggeringMode = undefined;
        const _c = self.vtable.get_EventTriggeringMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValueChangedEvents(self: *@This()) core.HResult!*IVectorView(GattValueChangedEventArgs) {
        var _r: *IVectorView(GattValueChangedEventArgs) = undefined;
        const _c = self.vtable.get_ValueChangedEvents(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "727a50dc-949d-454a-b192-983467e3d50f";
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
        get_EventTriggeringMode: *const fn(self: *anyopaque, _r: *BluetoothEventTriggeringMode) callconv(.winapi) HRESULT,
        get_ValueChangedEvents: *const fn(self: *anyopaque, _r: **IVectorView(GattValueChangedEventArgs)) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderConnection = extern struct {
    vtable: *const VTable,
    pub fn getTriggerId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TriggerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getService(self: *@This()) core.HResult!*GattLocalService {
        var _r: *GattLocalService = undefined;
        const _c = self.vtable.get_Service(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IGattServiceProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7fa1b9b9-2f13-40b5-9582-8eb78e98ef13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TriggerId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Service: *const fn(self: *anyopaque, _r: **GattLocalService) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderConnection2 = extern struct {
    vtable: *const VTable,
    pub fn UpdateAdvertisingParameters(self: *@This(), parameters: *GattServiceProviderAdvertisingParameters) core.HResult!void {
        const _c = self.vtable.UpdateAdvertisingParameters(@ptrCast(self), parameters);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IGattServiceProviderConnection2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90d12be0-ebc0-484f-ae0a-7eb8b6266bac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UpdateAdvertisingParameters: *const fn(self: *anyopaque, parameters: *GattServiceProviderAdvertisingParameters) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderConnectionStatics = extern struct {
    vtable: *const VTable,
    pub fn getAllServices(self: *@This()) core.HResult!*IMapView(HSTRING,GattServiceProviderConnection) {
        var _r: *IMapView(HSTRING,GattServiceProviderConnection) = undefined;
        const _c = self.vtable.get_AllServices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IGattServiceProviderConnectionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d509f4b-0b0e-4466-b8cd-6ebdda1fa17d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllServices: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,GattServiceProviderConnection)) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*GattServiceProviderConnection {
        var _r: *GattServiceProviderConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IGattServiceProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae8c0625-05ff-4afb-b16a-de95f3cf0158";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **GattServiceProviderConnection) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommConnectionTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getSocket(self: *@This()) core.HResult!*StreamSocket {
        var _r: *StreamSocket = undefined;
        const _c = self.vtable.get_Socket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncoming(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Incoming(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteDevice(self: *@This()) core.HResult!*BluetoothDevice {
        var _r: *BluetoothDevice = undefined;
        const _c = self.vtable.get_RemoteDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IRfcommConnectionTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f922734d-2e3c-4efc-ab59-fc5cf96f97e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Socket: *const fn(self: *anyopaque, _r: **StreamSocket) callconv(.winapi) HRESULT,
        get_Incoming: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_RemoteDevice: *const fn(self: *anyopaque, _r: **BluetoothDevice) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommInboundConnectionInformation = extern struct {
    vtable: *const VTable,
    pub fn getSdpRecord(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_SdpRecord(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSdpRecord(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_SdpRecord(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocalServiceId(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_LocalServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocalServiceId(self: *@This(), value: *RfcommServiceId) core.HResult!void {
        const _c = self.vtable.put_LocalServiceId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceCapabilities(self: *@This()) core.HResult!BluetoothServiceCapabilities {
        var _r: BluetoothServiceCapabilities = undefined;
        const _c = self.vtable.get_ServiceCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServiceCapabilities(self: *@This(), value: BluetoothServiceCapabilities) core.HResult!void {
        const _c = self.vtable.put_ServiceCapabilities(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d3e75a8-5429-4059-92e3-1e8b65528707";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SdpRecord: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_SdpRecord: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_LocalServiceId: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        put_LocalServiceId: *const fn(self: *anyopaque, value: *RfcommServiceId) callconv(.winapi) HRESULT,
        get_ServiceCapabilities: *const fn(self: *anyopaque, _r: *BluetoothServiceCapabilities) callconv(.winapi) HRESULT,
        put_ServiceCapabilities: *const fn(self: *anyopaque, value: BluetoothServiceCapabilities) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommOutboundConnectionInformation = extern struct {
    vtable: *const VTable,
    pub fn getRemoteServiceId(self: *@This()) core.HResult!*RfcommServiceId {
        var _r: *RfcommServiceId = undefined;
        const _c = self.vtable.get_RemoteServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteServiceId(self: *@This(), value: *RfcommServiceId) core.HResult!void {
        const _c = self.vtable.put_RemoteServiceId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.IRfcommOutboundConnectionInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b091227b-f434-4cb0-99b1-4ab8cedaedd7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteServiceId: *const fn(self: *anyopaque, _r: **RfcommServiceId) callconv(.winapi) HRESULT,
        put_RemoteServiceId: *const fn(self: *anyopaque, value: *RfcommServiceId) callconv(.winapi) HRESULT,
    };
};
pub const RfcommConnectionTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSocket(self: *@This()) core.HResult!*StreamSocket {
        const this: *IRfcommConnectionTriggerDetails = @ptrCast(self);
        return try this.getSocket();
    }
    pub fn getIncoming(self: *@This()) core.HResult!bool {
        const this: *IRfcommConnectionTriggerDetails = @ptrCast(self);
        return try this.getIncoming();
    }
    pub fn getRemoteDevice(self: *@This()) core.HResult!*BluetoothDevice {
        const this: *IRfcommConnectionTriggerDetails = @ptrCast(self);
        return try this.getRemoteDevice();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.RfcommConnectionTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRfcommConnectionTriggerDetails.GUID;
    pub const IID: Guid = IRfcommConnectionTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRfcommConnectionTriggerDetails.SIGNATURE);
};
pub const RfcommInboundConnectionInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSdpRecord(self: *@This()) core.HResult!*IBuffer {
        const this: *IRfcommInboundConnectionInformation = @ptrCast(self);
        return try this.getSdpRecord();
    }
    pub fn putSdpRecord(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IRfcommInboundConnectionInformation = @ptrCast(self);
        return try this.putSdpRecord(value);
    }
    pub fn getLocalServiceId(self: *@This()) core.HResult!*RfcommServiceId {
        const this: *IRfcommInboundConnectionInformation = @ptrCast(self);
        return try this.getLocalServiceId();
    }
    pub fn putLocalServiceId(self: *@This(), value: *RfcommServiceId) core.HResult!void {
        const this: *IRfcommInboundConnectionInformation = @ptrCast(self);
        return try this.putLocalServiceId(value);
    }
    pub fn getServiceCapabilities(self: *@This()) core.HResult!BluetoothServiceCapabilities {
        const this: *IRfcommInboundConnectionInformation = @ptrCast(self);
        return try this.getServiceCapabilities();
    }
    pub fn putServiceCapabilities(self: *@This(), value: BluetoothServiceCapabilities) core.HResult!void {
        const this: *IRfcommInboundConnectionInformation = @ptrCast(self);
        return try this.putServiceCapabilities(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.RfcommInboundConnectionInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRfcommInboundConnectionInformation.GUID;
    pub const IID: Guid = IRfcommInboundConnectionInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRfcommInboundConnectionInformation.SIGNATURE);
};
pub const RfcommOutboundConnectionInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteServiceId(self: *@This()) core.HResult!*RfcommServiceId {
        const this: *IRfcommOutboundConnectionInformation = @ptrCast(self);
        return try this.getRemoteServiceId();
    }
    pub fn putRemoteServiceId(self: *@This(), value: *RfcommServiceId) core.HResult!void {
        const this: *IRfcommOutboundConnectionInformation = @ptrCast(self);
        return try this.putRemoteServiceId(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Background.RfcommOutboundConnectionInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRfcommOutboundConnectionInformation.GUID;
    pub const IID: Guid = IRfcommOutboundConnectionInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRfcommOutboundConnectionInformation.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const BluetoothDevice = @import("../Bluetooth.zig").BluetoothDevice;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const GattServiceProviderAdvertisingParameters = @import("./GenericAttributeProfile.zig").GattServiceProviderAdvertisingParameters;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IReference = @import("../../Foundation.zig").IReference;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const GattValueChangedEventArgs = @import("./GenericAttributeProfile.zig").GattValueChangedEventArgs;
const GattLocalService = @import("./GenericAttributeProfile.zig").GattLocalService;
const BluetoothSignalStrengthFilter = @import("../Bluetooth.zig").BluetoothSignalStrengthFilter;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const BluetoothError = @import("../Bluetooth.zig").BluetoothError;
const GattCharacteristic = @import("./GenericAttributeProfile.zig").GattCharacteristic;
const RfcommServiceId = @import("./Rfcomm.zig").RfcommServiceId;
const BluetoothServiceCapabilities = @import("../Bluetooth.zig").BluetoothServiceCapabilities;
const BluetoothLEAdvertisementReceivedEventArgs = @import("./Advertisement.zig").BluetoothLEAdvertisementReceivedEventArgs;
const StreamSocket = @import("../../Networking/Sockets.zig").StreamSocket;
const TrustLevel = @import("../../root.zig").TrustLevel;
const BluetoothLEAdvertisementPublisherStatus = @import("./Advertisement.zig").BluetoothLEAdvertisementPublisherStatus;
const HSTRING = @import("../../root.zig").HSTRING;
