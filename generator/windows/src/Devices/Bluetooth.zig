pub const BluetoothAdapter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IBluetoothAdapter = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getBluetoothAddress(self: *@This()) core.HResult!u64 {
        const this: *IBluetoothAdapter = @ptrCast(self);
        return try this.getBluetoothAddress();
    }
    pub fn getIsClassicSupported(self: *@This()) core.HResult!bool {
        const this: *IBluetoothAdapter = @ptrCast(self);
        return try this.getIsClassicSupported();
    }
    pub fn getIsLowEnergySupported(self: *@This()) core.HResult!bool {
        const this: *IBluetoothAdapter = @ptrCast(self);
        return try this.getIsLowEnergySupported();
    }
    pub fn getIsPeripheralRoleSupported(self: *@This()) core.HResult!bool {
        const this: *IBluetoothAdapter = @ptrCast(self);
        return try this.getIsPeripheralRoleSupported();
    }
    pub fn getIsCentralRoleSupported(self: *@This()) core.HResult!bool {
        const this: *IBluetoothAdapter = @ptrCast(self);
        return try this.getIsCentralRoleSupported();
    }
    pub fn getIsAdvertisementOffloadSupported(self: *@This()) core.HResult!bool {
        const this: *IBluetoothAdapter = @ptrCast(self);
        return try this.getIsAdvertisementOffloadSupported();
    }
    pub fn GetRadioAsync(self: *@This()) core.HResult!*IAsyncOperation(Radio) {
        const this: *IBluetoothAdapter = @ptrCast(self);
        return try this.GetRadioAsync();
    }
    pub fn getAreClassicSecureConnectionsSupported(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothAdapter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothAdapter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreClassicSecureConnectionsSupported();
    }
    pub fn getAreLowEnergySecureConnectionsSupported(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothAdapter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothAdapter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreLowEnergySecureConnectionsSupported();
    }
    pub fn getIsExtendedAdvertisingSupported(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothAdapter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothAdapter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsExtendedAdvertisingSupported();
    }
    pub fn getMaxAdvertisementDataLength(self: *@This()) core.HResult!u32 {
        var this: ?*IBluetoothAdapter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothAdapter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxAdvertisementDataLength();
    }
    pub fn getIsLowEnergyUncoded2MPhySupported(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothAdapter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothAdapter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLowEnergyUncoded2MPhySupported();
    }
    pub fn getIsLowEnergyCodedPhySupported(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothAdapter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothAdapter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLowEnergyCodedPhySupported();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IBluetoothAdapterStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(BluetoothAdapter) {
        const factory = @This().IBluetoothAdapterStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(BluetoothAdapter) {
        const factory = @This().IBluetoothAdapterStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothAdapter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothAdapter.GUID;
    pub const IID: Guid = IBluetoothAdapter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothAdapter.SIGNATURE);
    var _IBluetoothAdapterStaticsCache: FactoryCache(IBluetoothAdapterStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothAddressType = enum(i32) {
    Public = 0,
    Random = 1,
    Unspecified = 2,
};
pub const BluetoothCacheMode = enum(i32) {
    Cached = 0,
    Uncached = 1,
};
pub const BluetoothClassOfDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRawValue(self: *@This()) core.HResult!u32 {
        const this: *IBluetoothClassOfDevice = @ptrCast(self);
        return try this.getRawValue();
    }
    pub fn getMajorClass(self: *@This()) core.HResult!BluetoothMajorClass {
        const this: *IBluetoothClassOfDevice = @ptrCast(self);
        return try this.getMajorClass();
    }
    pub fn getMinorClass(self: *@This()) core.HResult!BluetoothMinorClass {
        const this: *IBluetoothClassOfDevice = @ptrCast(self);
        return try this.getMinorClass();
    }
    pub fn getServiceCapabilities(self: *@This()) core.HResult!BluetoothServiceCapabilities {
        const this: *IBluetoothClassOfDevice = @ptrCast(self);
        return try this.getServiceCapabilities();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromRawValue(rawValue: u32) core.HResult!*BluetoothClassOfDevice {
        const factory = @This().IBluetoothClassOfDeviceStaticsCache.get();
        return try factory.FromRawValue(rawValue);
    }
    pub fn FromParts(majorClass: BluetoothMajorClass, minorClass: BluetoothMinorClass, serviceCapabilities: BluetoothServiceCapabilities) core.HResult!*BluetoothClassOfDevice {
        const factory = @This().IBluetoothClassOfDeviceStaticsCache.get();
        return try factory.FromParts(majorClass, minorClass, serviceCapabilities);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothClassOfDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothClassOfDevice.GUID;
    pub const IID: Guid = IBluetoothClassOfDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothClassOfDevice.SIGNATURE);
    var _IBluetoothClassOfDeviceStaticsCache: FactoryCache(IBluetoothClassOfDeviceStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothConnectionStatus = enum(i32) {
    Disconnected = 0,
    Connected = 1,
};
pub const BluetoothDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getHostName(self: *@This()) core.HResult!*HostName {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.getHostName();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.getName();
    }
    pub fn getClassOfDevice(self: *@This()) core.HResult!*BluetoothClassOfDevice {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.getClassOfDevice();
    }
    pub fn getSdpRecords(self: *@This()) core.HResult!*IVectorView(IBuffer) {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.getSdpRecords();
    }
    pub fn getRfcommServices(self: *@This()) core.HResult!*IVectorView(RfcommDeviceService) {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.getRfcommServices();
    }
    pub fn getConnectionStatus(self: *@This()) core.HResult!BluetoothConnectionStatus {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.getConnectionStatus();
    }
    pub fn getBluetoothAddress(self: *@This()) core.HResult!u64 {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.getBluetoothAddress();
    }
    pub fn addNameChanged(self: *@This(), handler: *TypedEventHandler(BluetoothDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.addNameChanged(handler);
    }
    pub fn removeNameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.removeNameChanged(token);
    }
    pub fn addSdpRecordsChanged(self: *@This(), handler: *TypedEventHandler(BluetoothDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.addSdpRecordsChanged(handler);
    }
    pub fn removeSdpRecordsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.removeSdpRecordsChanged(token);
    }
    pub fn addConnectionStatusChanged(self: *@This(), handler: *TypedEventHandler(BluetoothDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.addConnectionStatusChanged(handler);
    }
    pub fn removeConnectionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBluetoothDevice = @ptrCast(self);
        return try this.removeConnectionStatusChanged(token);
    }
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var this: ?*IBluetoothDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceInformation();
    }
    pub fn getDeviceAccessInformation(self: *@This()) core.HResult!*DeviceAccessInformation {
        var this: ?*IBluetoothDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceAccessInformation();
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceAccessStatus) {
        var this: ?*IBluetoothDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestAccessAsync();
    }
    pub fn GetRfcommServicesAsync(self: *@This()) core.HResult!*IAsyncOperation(RfcommDeviceServicesResult) {
        var this: ?*IBluetoothDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRfcommServicesAsync();
    }
    pub fn GetRfcommServicesAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(RfcommDeviceServicesResult) {
        var this: ?*IBluetoothDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRfcommServicesAsyncWithCacheMode(cacheMode);
    }
    pub fn GetRfcommServicesForIdAsync(self: *@This(), serviceId: *RfcommServiceId) core.HResult!*IAsyncOperation(RfcommDeviceServicesResult) {
        var this: ?*IBluetoothDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRfcommServicesForIdAsync(serviceId);
    }
    pub fn GetRfcommServicesForIdAsyncWithCacheMode(self: *@This(), serviceId: *RfcommServiceId, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(RfcommDeviceServicesResult) {
        var this: ?*IBluetoothDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRfcommServicesForIdAsyncWithCacheMode(serviceId, cacheMode);
    }
    pub fn getBluetoothDeviceId(self: *@This()) core.HResult!*BluetoothDeviceId {
        var this: ?*IBluetoothDevice4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothDevice4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBluetoothDeviceId();
    }
    pub fn getWasSecureConnectionUsedForPairing(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothDevice5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothDevice5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWasSecureConnectionUsedForPairing();
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
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(BluetoothDevice) {
        const factory = @This().IBluetoothDeviceStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn FromHostNameAsync(hostName: *HostName) core.HResult!*IAsyncOperation(BluetoothDevice) {
        const factory = @This().IBluetoothDeviceStaticsCache.get();
        return try factory.FromHostNameAsync(hostName);
    }
    pub fn FromBluetoothAddressAsync(address: u64) core.HResult!*IAsyncOperation(BluetoothDevice) {
        const factory = @This().IBluetoothDeviceStaticsCache.get();
        return try factory.FromBluetoothAddressAsync(address);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IBluetoothDeviceStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorFromPairingState(pairingState: bool) core.HResult!HSTRING {
        const factory = @This().IBluetoothDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromPairingState(pairingState);
    }
    pub fn GetDeviceSelectorFromConnectionStatus(connectionStatus: BluetoothConnectionStatus) core.HResult!HSTRING {
        const factory = @This().IBluetoothDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromConnectionStatus(connectionStatus);
    }
    pub fn GetDeviceSelectorFromDeviceName(deviceName: HSTRING) core.HResult!HSTRING {
        const factory = @This().IBluetoothDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromDeviceName(deviceName);
    }
    pub fn GetDeviceSelectorFromBluetoothAddress(bluetoothAddress: u64) core.HResult!HSTRING {
        const factory = @This().IBluetoothDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromBluetoothAddress(bluetoothAddress);
    }
    pub fn GetDeviceSelectorFromClassOfDevice(classOfDevice: *BluetoothClassOfDevice) core.HResult!HSTRING {
        const factory = @This().IBluetoothDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromClassOfDevice(classOfDevice);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothDevice.GUID;
    pub const IID: Guid = IBluetoothDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothDevice.SIGNATURE);
    var _IBluetoothDeviceStaticsCache: FactoryCache(IBluetoothDeviceStatics, RUNTIME_NAME) = .{};
    var _IBluetoothDeviceStatics2Cache: FactoryCache(IBluetoothDeviceStatics2, RUNTIME_NAME) = .{};
};
pub const BluetoothDeviceId = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IBluetoothDeviceId = @ptrCast(self);
        return try this.getId();
    }
    pub fn getIsClassicDevice(self: *@This()) core.HResult!bool {
        const this: *IBluetoothDeviceId = @ptrCast(self);
        return try this.getIsClassicDevice();
    }
    pub fn getIsLowEnergyDevice(self: *@This()) core.HResult!bool {
        const this: *IBluetoothDeviceId = @ptrCast(self);
        return try this.getIsLowEnergyDevice();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromId(deviceId: HSTRING) core.HResult!*BluetoothDeviceId {
        const factory = @This().IBluetoothDeviceIdStaticsCache.get();
        return try factory.FromId(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothDeviceId.GUID;
    pub const IID: Guid = IBluetoothDeviceId.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothDeviceId.SIGNATURE);
    var _IBluetoothDeviceIdStaticsCache: FactoryCache(IBluetoothDeviceIdStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothError = enum(i32) {
    Success = 0,
    RadioNotAvailable = 1,
    ResourceInUse = 2,
    DeviceNotConnected = 3,
    OtherError = 4,
    DisabledByPolicy = 5,
    NotSupported = 6,
    DisabledByUser = 7,
    ConsentRequired = 8,
    TransportNotSupported = 9,
};
pub const BluetoothLEAppearance = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRawValue(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEAppearance = @ptrCast(self);
        return try this.getRawValue();
    }
    pub fn getCategory(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEAppearance = @ptrCast(self);
        return try this.getCategory();
    }
    pub fn getSubCategory(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEAppearance = @ptrCast(self);
        return try this.getSubCategory();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromRawValue(rawValue: u16) core.HResult!*BluetoothLEAppearance {
        const factory = @This().IBluetoothLEAppearanceStaticsCache.get();
        return try factory.FromRawValue(rawValue);
    }
    pub fn FromParts(appearanceCategory: u16, appearanceSubCategory: u16) core.HResult!*BluetoothLEAppearance {
        const factory = @This().IBluetoothLEAppearanceStaticsCache.get();
        return try factory.FromParts(appearanceCategory, appearanceSubCategory);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothLEAppearance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAppearance.GUID;
    pub const IID: Guid = IBluetoothLEAppearance.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAppearance.SIGNATURE);
    var _IBluetoothLEAppearanceStaticsCache: FactoryCache(IBluetoothLEAppearanceStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAppearanceCategories = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Uncategorized() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getUncategorized();
    }
    pub fn get_Phone() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getPhone();
    }
    pub fn get_Computer() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getComputer();
    }
    pub fn get_Watch() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getWatch();
    }
    pub fn get_Clock() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getClock();
    }
    pub fn get_Display() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getDisplay();
    }
    pub fn get_RemoteControl() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getRemoteControl();
    }
    pub fn get_EyeGlasses() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getEyeGlasses();
    }
    pub fn get_Tag() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getTag();
    }
    pub fn get_Keyring() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getKeyring();
    }
    pub fn get_MediaPlayer() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getMediaPlayer();
    }
    pub fn get_BarcodeScanner() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getBarcodeScanner();
    }
    pub fn get_Thermometer() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getThermometer();
    }
    pub fn get_HeartRate() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getHeartRate();
    }
    pub fn get_BloodPressure() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getBloodPressure();
    }
    pub fn get_HumanInterfaceDevice() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getHumanInterfaceDevice();
    }
    pub fn get_GlucoseMeter() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getGlucoseMeter();
    }
    pub fn get_RunningWalking() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getRunningWalking();
    }
    pub fn get_Cycling() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getCycling();
    }
    pub fn get_PulseOximeter() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getPulseOximeter();
    }
    pub fn get_WeightScale() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getWeightScale();
    }
    pub fn get_OutdoorSportActivity() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceCategoriesStaticsCache.get();
        return try factory.getOutdoorSportActivity();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothLEAppearanceCategories";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBluetoothLEAppearanceCategoriesStaticsCache: FactoryCache(IBluetoothLEAppearanceCategoriesStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAppearanceSubcategories = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Generic() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getGeneric();
    }
    pub fn get_SportsWatch() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getSportsWatch();
    }
    pub fn get_ThermometerEar() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getThermometerEar();
    }
    pub fn get_HeartRateBelt() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getHeartRateBelt();
    }
    pub fn get_BloodPressureArm() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getBloodPressureArm();
    }
    pub fn get_BloodPressureWrist() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getBloodPressureWrist();
    }
    pub fn get_Keyboard() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getKeyboard();
    }
    pub fn get_Mouse() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getMouse();
    }
    pub fn get_Joystick() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getJoystick();
    }
    pub fn get_Gamepad() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getGamepad();
    }
    pub fn get_DigitizerTablet() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getDigitizerTablet();
    }
    pub fn get_CardReader() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getCardReader();
    }
    pub fn get_DigitalPen() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getDigitalPen();
    }
    pub fn get_BarcodeScanner() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getBarcodeScanner();
    }
    pub fn get_RunningWalkingInShoe() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getRunningWalkingInShoe();
    }
    pub fn get_RunningWalkingOnShoe() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getRunningWalkingOnShoe();
    }
    pub fn get_RunningWalkingOnHip() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getRunningWalkingOnHip();
    }
    pub fn get_CyclingComputer() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getCyclingComputer();
    }
    pub fn get_CyclingSpeedSensor() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getCyclingSpeedSensor();
    }
    pub fn get_CyclingCadenceSensor() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getCyclingCadenceSensor();
    }
    pub fn get_CyclingPowerSensor() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getCyclingPowerSensor();
    }
    pub fn get_CyclingSpeedCadenceSensor() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getCyclingSpeedCadenceSensor();
    }
    pub fn get_OximeterFingertip() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getOximeterFingertip();
    }
    pub fn get_OximeterWristWorn() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getOximeterWristWorn();
    }
    pub fn get_LocationDisplay() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getLocationDisplay();
    }
    pub fn get_LocationNavigationDisplay() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getLocationNavigationDisplay();
    }
    pub fn get_LocationPod() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getLocationPod();
    }
    pub fn get_LocationNavigationPod() core.HResult!u16 {
        const factory = @This().IBluetoothLEAppearanceSubcategoriesStaticsCache.get();
        return try factory.getLocationNavigationPod();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothLEAppearanceSubcategories";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBluetoothLEAppearanceSubcategoriesStaticsCache: FactoryCache(IBluetoothLEAppearanceSubcategoriesStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothLEConnectionParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLinkTimeout(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEConnectionParameters = @ptrCast(self);
        return try this.getLinkTimeout();
    }
    pub fn getConnectionLatency(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEConnectionParameters = @ptrCast(self);
        return try this.getConnectionLatency();
    }
    pub fn getConnectionInterval(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEConnectionParameters = @ptrCast(self);
        return try this.getConnectionInterval();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothLEConnectionParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEConnectionParameters.GUID;
    pub const IID: Guid = IBluetoothLEConnectionParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEConnectionParameters.SIGNATURE);
};
pub const BluetoothLEConnectionPhy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTransmitInfo(self: *@This()) core.HResult!*BluetoothLEConnectionPhyInfo {
        const this: *IBluetoothLEConnectionPhy = @ptrCast(self);
        return try this.getTransmitInfo();
    }
    pub fn getReceiveInfo(self: *@This()) core.HResult!*BluetoothLEConnectionPhyInfo {
        const this: *IBluetoothLEConnectionPhy = @ptrCast(self);
        return try this.getReceiveInfo();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothLEConnectionPhy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEConnectionPhy.GUID;
    pub const IID: Guid = IBluetoothLEConnectionPhy.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEConnectionPhy.SIGNATURE);
};
pub const BluetoothLEConnectionPhyInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsUncoded1MPhy(self: *@This()) core.HResult!bool {
        const this: *IBluetoothLEConnectionPhyInfo = @ptrCast(self);
        return try this.getIsUncoded1MPhy();
    }
    pub fn getIsUncoded2MPhy(self: *@This()) core.HResult!bool {
        const this: *IBluetoothLEConnectionPhyInfo = @ptrCast(self);
        return try this.getIsUncoded2MPhy();
    }
    pub fn getIsCodedPhy(self: *@This()) core.HResult!bool {
        const this: *IBluetoothLEConnectionPhyInfo = @ptrCast(self);
        return try this.getIsCodedPhy();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothLEConnectionPhyInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEConnectionPhyInfo.GUID;
    pub const IID: Guid = IBluetoothLEConnectionPhyInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEConnectionPhyInfo.SIGNATURE);
};
pub const BluetoothLEDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.getName();
    }
    pub fn getGattServices(self: *@This()) core.HResult!*IVectorView(GattDeviceService) {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.getGattServices();
    }
    pub fn getConnectionStatus(self: *@This()) core.HResult!BluetoothConnectionStatus {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.getConnectionStatus();
    }
    pub fn getBluetoothAddress(self: *@This()) core.HResult!u64 {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.getBluetoothAddress();
    }
    pub fn GetGattService(self: *@This(), serviceUuid: *Guid) core.HResult!*GattDeviceService {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.GetGattService(serviceUuid);
    }
    pub fn addNameChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.addNameChanged(handler);
    }
    pub fn removeNameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.removeNameChanged(token);
    }
    pub fn addGattServicesChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.addGattServicesChanged(handler);
    }
    pub fn removeGattServicesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.removeGattServicesChanged(token);
    }
    pub fn addConnectionStatusChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.addConnectionStatusChanged(handler);
    }
    pub fn removeConnectionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBluetoothLEDevice = @ptrCast(self);
        return try this.removeConnectionStatusChanged(token);
    }
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var this: ?*IBluetoothLEDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceInformation();
    }
    pub fn getAppearance(self: *@This()) core.HResult!*BluetoothLEAppearance {
        var this: ?*IBluetoothLEDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppearance();
    }
    pub fn getBluetoothAddressType(self: *@This()) core.HResult!BluetoothAddressType {
        var this: ?*IBluetoothLEDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBluetoothAddressType();
    }
    pub fn getDeviceAccessInformation(self: *@This()) core.HResult!*DeviceAccessInformation {
        var this: ?*IBluetoothLEDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceAccessInformation();
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceAccessStatus) {
        var this: ?*IBluetoothLEDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestAccessAsync();
    }
    pub fn GetGattServicesAsync(self: *@This()) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var this: ?*IBluetoothLEDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetGattServicesAsync();
    }
    pub fn GetGattServicesAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var this: ?*IBluetoothLEDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetGattServicesAsyncWithCacheMode(cacheMode);
    }
    pub fn GetGattServicesForUuidAsync(self: *@This(), serviceUuid: *Guid) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var this: ?*IBluetoothLEDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetGattServicesForUuidAsync(serviceUuid);
    }
    pub fn GetGattServicesForUuidAsyncWithCacheMode(self: *@This(), serviceUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var this: ?*IBluetoothLEDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetGattServicesForUuidAsyncWithCacheMode(serviceUuid, cacheMode);
    }
    pub fn getBluetoothDeviceId(self: *@This()) core.HResult!*BluetoothDeviceId {
        var this: ?*IBluetoothLEDevice4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBluetoothDeviceId();
    }
    pub fn getWasSecureConnectionUsedForPairing(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEDevice5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWasSecureConnectionUsedForPairing();
    }
    pub fn GetConnectionParameters(self: *@This()) core.HResult!*BluetoothLEConnectionParameters {
        var this: ?*IBluetoothLEDevice6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetConnectionParameters();
    }
    pub fn GetConnectionPhy(self: *@This()) core.HResult!*BluetoothLEConnectionPhy {
        var this: ?*IBluetoothLEDevice6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetConnectionPhy();
    }
    pub fn RequestPreferredConnectionParameters(self: *@This(), preferredConnectionParameters: *BluetoothLEPreferredConnectionParameters) core.HResult!*BluetoothLEPreferredConnectionParametersRequest {
        var this: ?*IBluetoothLEDevice6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestPreferredConnectionParameters(preferredConnectionParameters);
    }
    pub fn addConnectionParametersChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IBluetoothLEDevice6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addConnectionParametersChanged(handler);
    }
    pub fn removeConnectionParametersChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IBluetoothLEDevice6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeConnectionParametersChanged(token);
    }
    pub fn addConnectionPhyChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IBluetoothLEDevice6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addConnectionPhyChanged(handler);
    }
    pub fn removeConnectionPhyChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IBluetoothLEDevice6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEDevice6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeConnectionPhyChanged(token);
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
    pub fn GetDeviceSelectorFromPairingState(pairingState: bool) core.HResult!HSTRING {
        const factory = @This().IBluetoothLEDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromPairingState(pairingState);
    }
    pub fn GetDeviceSelectorFromConnectionStatus(connectionStatus: BluetoothConnectionStatus) core.HResult!HSTRING {
        const factory = @This().IBluetoothLEDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromConnectionStatus(connectionStatus);
    }
    pub fn GetDeviceSelectorFromDeviceName(deviceName: HSTRING) core.HResult!HSTRING {
        const factory = @This().IBluetoothLEDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromDeviceName(deviceName);
    }
    pub fn GetDeviceSelectorFromBluetoothAddress(bluetoothAddress: u64) core.HResult!HSTRING {
        const factory = @This().IBluetoothLEDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromBluetoothAddress(bluetoothAddress);
    }
    pub fn GetDeviceSelectorFromBluetoothAddressWithBluetoothAddressType(bluetoothAddress: u64, bluetoothAddressType: BluetoothAddressType) core.HResult!HSTRING {
        const factory = @This().IBluetoothLEDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromBluetoothAddressWithBluetoothAddressType(bluetoothAddress, bluetoothAddressType);
    }
    pub fn GetDeviceSelectorFromAppearance(appearance: *BluetoothLEAppearance) core.HResult!HSTRING {
        const factory = @This().IBluetoothLEDeviceStatics2Cache.get();
        return try factory.GetDeviceSelectorFromAppearance(appearance);
    }
    pub fn FromBluetoothAddressAsyncWithBluetoothAddressType(bluetoothAddress: u64, bluetoothAddressType: BluetoothAddressType) core.HResult!*IAsyncOperation(BluetoothLEDevice) {
        const factory = @This().IBluetoothLEDeviceStatics2Cache.get();
        return try factory.FromBluetoothAddressAsync(bluetoothAddress, bluetoothAddressType);
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(BluetoothLEDevice) {
        const factory = @This().IBluetoothLEDeviceStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn FromBluetoothAddressAsync(bluetoothAddress: u64) core.HResult!*IAsyncOperation(BluetoothLEDevice) {
        const factory = @This().IBluetoothLEDeviceStaticsCache.get();
        return try factory.FromBluetoothAddressAsync(bluetoothAddress);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IBluetoothLEDeviceStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothLEDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEDevice.GUID;
    pub const IID: Guid = IBluetoothLEDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEDevice.SIGNATURE);
    var _IBluetoothLEDeviceStatics2Cache: FactoryCache(IBluetoothLEDeviceStatics2, RUNTIME_NAME) = .{};
    var _IBluetoothLEDeviceStaticsCache: FactoryCache(IBluetoothLEDeviceStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothLEPreferredConnectionParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLinkTimeout(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEPreferredConnectionParameters = @ptrCast(self);
        return try this.getLinkTimeout();
    }
    pub fn getConnectionLatency(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEPreferredConnectionParameters = @ptrCast(self);
        return try this.getConnectionLatency();
    }
    pub fn getMinConnectionInterval(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEPreferredConnectionParameters = @ptrCast(self);
        return try this.getMinConnectionInterval();
    }
    pub fn getMaxConnectionInterval(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEPreferredConnectionParameters = @ptrCast(self);
        return try this.getMaxConnectionInterval();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Balanced() core.HResult!*BluetoothLEPreferredConnectionParameters {
        const factory = @This().IBluetoothLEPreferredConnectionParametersStaticsCache.get();
        return try factory.getBalanced();
    }
    pub fn get_ThroughputOptimized() core.HResult!*BluetoothLEPreferredConnectionParameters {
        const factory = @This().IBluetoothLEPreferredConnectionParametersStaticsCache.get();
        return try factory.getThroughputOptimized();
    }
    pub fn get_PowerOptimized() core.HResult!*BluetoothLEPreferredConnectionParameters {
        const factory = @This().IBluetoothLEPreferredConnectionParametersStaticsCache.get();
        return try factory.getPowerOptimized();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothLEPreferredConnectionParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEPreferredConnectionParameters.GUID;
    pub const IID: Guid = IBluetoothLEPreferredConnectionParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEPreferredConnectionParameters.SIGNATURE);
    var _IBluetoothLEPreferredConnectionParametersStaticsCache: FactoryCache(IBluetoothLEPreferredConnectionParametersStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothLEPreferredConnectionParametersRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!BluetoothLEPreferredConnectionParametersRequestStatus {
        const this: *IBluetoothLEPreferredConnectionParametersRequest = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothLEPreferredConnectionParametersRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEPreferredConnectionParametersRequest.GUID;
    pub const IID: Guid = IBluetoothLEPreferredConnectionParametersRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEPreferredConnectionParametersRequest.SIGNATURE);
};
pub const BluetoothLEPreferredConnectionParametersRequestStatus = enum(i32) {
    Unspecified = 0,
    Success = 1,
    DeviceNotAvailable = 2,
    AccessDenied = 3,
};
pub const BluetoothMajorClass = enum(i32) {
    Miscellaneous = 0,
    Computer = 1,
    Phone = 2,
    NetworkAccessPoint = 3,
    AudioVideo = 4,
    Peripheral = 5,
    Imaging = 6,
    Wearable = 7,
    Toy = 8,
    Health = 9,
};
pub const BluetoothMinorClass = enum(i32) {
    Uncategorized = 0,
    ComputerDesktop = 1,
    ComputerServer = 2,
    ComputerLaptop = 3,
    ComputerHandheld = 4,
    ComputerPalmSize = 5,
    ComputerWearable = 6,
    ComputerTablet = 7,
    PhoneCellular = 1,
    PhoneCordless = 2,
    PhoneSmartPhone = 3,
    PhoneWired = 4,
    PhoneIsdn = 5,
    NetworkFullyAvailable = 0,
    NetworkUsed01To17Percent = 8,
    NetworkUsed17To33Percent = 16,
    NetworkUsed33To50Percent = 24,
    NetworkUsed50To67Percent = 32,
    NetworkUsed67To83Percent = 40,
    NetworkUsed83To99Percent = 48,
    NetworkNoServiceAvailable = 56,
    AudioVideoWearableHeadset = 1,
    AudioVideoHandsFree = 2,
    AudioVideoMicrophone = 4,
    AudioVideoLoudspeaker = 5,
    AudioVideoHeadphones = 6,
    AudioVideoPortableAudio = 7,
    AudioVideoCarAudio = 8,
    AudioVideoSetTopBox = 9,
    AudioVideoHifiAudioDevice = 10,
    AudioVideoVcr = 11,
    AudioVideoVideoCamera = 12,
    AudioVideoCamcorder = 13,
    AudioVideoVideoMonitor = 14,
    AudioVideoVideoDisplayAndLoudspeaker = 15,
    AudioVideoVideoConferencing = 16,
    AudioVideoGamingOrToy = 18,
    PeripheralJoystick = 1,
    PeripheralGamepad = 2,
    PeripheralRemoteControl = 3,
    PeripheralSensing = 4,
    PeripheralDigitizerTablet = 5,
    PeripheralCardReader = 6,
    PeripheralDigitalPen = 7,
    PeripheralHandheldScanner = 8,
    PeripheralHandheldGesture = 9,
    WearableWristwatch = 1,
    WearablePager = 2,
    WearableJacket = 3,
    WearableHelmet = 4,
    WearableGlasses = 5,
    ToyRobot = 1,
    ToyVehicle = 2,
    ToyDoll = 3,
    ToyController = 4,
    ToyGame = 5,
    HealthBloodPressureMonitor = 1,
    HealthThermometer = 2,
    HealthWeighingScale = 3,
    HealthGlucoseMeter = 4,
    HealthPulseOximeter = 5,
    HealthHeartRateMonitor = 6,
    HealthHealthDataDisplay = 7,
    HealthStepCounter = 8,
    HealthBodyCompositionAnalyzer = 9,
    HealthPeakFlowMonitor = 10,
    HealthMedicationMonitor = 11,
    HealthKneeProsthesis = 12,
    HealthAnkleProsthesis = 13,
    HealthGenericHealthManager = 14,
    HealthPersonalMobilityDevice = 15,
};
pub const BluetoothServiceCapabilities = enum(i32) {
    None = 0,
    LimitedDiscoverableMode = 1,
    PositioningService = 8,
    NetworkingService = 16,
    RenderingService = 32,
    CapturingService = 64,
    ObjectTransferService = 128,
    AudioService = 256,
    TelephoneService = 512,
    InformationService = 1024,
};
pub const BluetoothSignalStrengthFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInRangeThresholdInDBm(self: *@This()) core.HResult!*IReference(i16) {
        const this: *IBluetoothSignalStrengthFilter = @ptrCast(self);
        return try this.getInRangeThresholdInDBm();
    }
    pub fn putInRangeThresholdInDBm(self: *@This(), value: *IReference(i16)) core.HResult!void {
        const this: *IBluetoothSignalStrengthFilter = @ptrCast(self);
        return try this.putInRangeThresholdInDBm(value);
    }
    pub fn getOutOfRangeThresholdInDBm(self: *@This()) core.HResult!*IReference(i16) {
        const this: *IBluetoothSignalStrengthFilter = @ptrCast(self);
        return try this.getOutOfRangeThresholdInDBm();
    }
    pub fn putOutOfRangeThresholdInDBm(self: *@This(), value: *IReference(i16)) core.HResult!void {
        const this: *IBluetoothSignalStrengthFilter = @ptrCast(self);
        return try this.putOutOfRangeThresholdInDBm(value);
    }
    pub fn getOutOfRangeTimeout(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IBluetoothSignalStrengthFilter = @ptrCast(self);
        return try this.getOutOfRangeTimeout();
    }
    pub fn putOutOfRangeTimeout(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IBluetoothSignalStrengthFilter = @ptrCast(self);
        return try this.putOutOfRangeTimeout(value);
    }
    pub fn getSamplingInterval(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IBluetoothSignalStrengthFilter = @ptrCast(self);
        return try this.getSamplingInterval();
    }
    pub fn putSamplingInterval(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IBluetoothSignalStrengthFilter = @ptrCast(self);
        return try this.putSamplingInterval(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothSignalStrengthFilter.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothSignalStrengthFilter.GUID;
    pub const IID: Guid = IBluetoothSignalStrengthFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothSignalStrengthFilter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BluetoothUuidHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromShortId(shortId: u32) core.HResult!*Guid {
        const factory = @This().IBluetoothUuidHelperStaticsCache.get();
        return try factory.FromShortId(shortId);
    }
    pub fn TryGetShortId(uuid: *Guid) core.HResult!*IReference(u32) {
        const factory = @This().IBluetoothUuidHelperStaticsCache.get();
        return try factory.TryGetShortId(uuid);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.BluetoothUuidHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBluetoothUuidHelperStaticsCache: FactoryCache(IBluetoothUuidHelperStatics, RUNTIME_NAME) = .{};
};
pub const IBluetoothAdapter = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBluetoothAddress(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BluetoothAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsClassicSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsClassicSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLowEnergySupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLowEnergySupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPeripheralRoleSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPeripheralRoleSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCentralRoleSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCentralRoleSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAdvertisementOffloadSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAdvertisementOffloadSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRadioAsync(self: *@This()) core.HResult!*IAsyncOperation(Radio) {
        var _r: *IAsyncOperation(Radio) = undefined;
        const _c = self.vtable.GetRadioAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothAdapter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7974f04c-5f7a-4a34-9225-a855f84b1a8b";
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
        get_BluetoothAddress: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_IsClassicSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsLowEnergySupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPeripheralRoleSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCentralRoleSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsAdvertisementOffloadSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetRadioAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Radio)) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothAdapter2 = extern struct {
    vtable: *const VTable,
    pub fn getAreClassicSecureConnectionsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreClassicSecureConnectionsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAreLowEnergySecureConnectionsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreLowEnergySecureConnectionsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothAdapter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac94cecc-24d5-41b3-916d-1097c50b102b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AreClassicSecureConnectionsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AreLowEnergySecureConnectionsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothAdapter3 = extern struct {
    vtable: *const VTable,
    pub fn getIsExtendedAdvertisingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsExtendedAdvertisingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxAdvertisementDataLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxAdvertisementDataLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothAdapter3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f8624e0-cba9-5211-9f89-3aac62b4c6b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsExtendedAdvertisingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxAdvertisementDataLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothAdapter4 = extern struct {
    vtable: *const VTable,
    pub fn getIsLowEnergyUncoded2MPhySupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLowEnergyUncoded2MPhySupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLowEnergyCodedPhySupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLowEnergyCodedPhySupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothAdapter4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f875f3e1-6d9a-5d5e-aee5-a17248e5f6dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsLowEnergyUncoded2MPhySupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsLowEnergyCodedPhySupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothAdapterStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(BluetoothAdapter) {
        var _r: *IAsyncOperation(BluetoothAdapter) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(BluetoothAdapter) {
        var _r: *IAsyncOperation(BluetoothAdapter) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothAdapterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b02fb6a-ac4c-4741-8661-8eab7d17ea9f";
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
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(BluetoothAdapter)) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(BluetoothAdapter)) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothClassOfDevice = extern struct {
    vtable: *const VTable,
    pub fn getRawValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_RawValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMajorClass(self: *@This()) core.HResult!BluetoothMajorClass {
        var _r: BluetoothMajorClass = undefined;
        const _c = self.vtable.get_MajorClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinorClass(self: *@This()) core.HResult!BluetoothMinorClass {
        var _r: BluetoothMinorClass = undefined;
        const _c = self.vtable.get_MinorClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceCapabilities(self: *@This()) core.HResult!BluetoothServiceCapabilities {
        var _r: BluetoothServiceCapabilities = undefined;
        const _c = self.vtable.get_ServiceCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothClassOfDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d640227e-d7d7-4661-9454-65039ca17a2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RawValue: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MajorClass: *const fn(self: *anyopaque, _r: *BluetoothMajorClass) callconv(.winapi) HRESULT,
        get_MinorClass: *const fn(self: *anyopaque, _r: *BluetoothMinorClass) callconv(.winapi) HRESULT,
        get_ServiceCapabilities: *const fn(self: *anyopaque, _r: *BluetoothServiceCapabilities) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothClassOfDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromRawValue(self: *@This(), rawValue: u32) core.HResult!*BluetoothClassOfDevice {
        var _r: *BluetoothClassOfDevice = undefined;
        const _c = self.vtable.FromRawValue(@ptrCast(self), rawValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromParts(self: *@This(), majorClass: BluetoothMajorClass, minorClass: BluetoothMinorClass, serviceCapabilities: BluetoothServiceCapabilities) core.HResult!*BluetoothClassOfDevice {
        var _r: *BluetoothClassOfDevice = undefined;
        const _c = self.vtable.FromParts(@ptrCast(self), majorClass, minorClass, serviceCapabilities, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothClassOfDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e46135bd-0fa2-416c-91b4-c1e48ca061c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromRawValue: *const fn(self: *anyopaque, rawValue: u32, _r: **BluetoothClassOfDevice) callconv(.winapi) HRESULT,
        FromParts: *const fn(self: *anyopaque, majorClass: BluetoothMajorClass, minorClass: BluetoothMinorClass, serviceCapabilities: BluetoothServiceCapabilities, _r: **BluetoothClassOfDevice) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothDevice = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_HostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClassOfDevice(self: *@This()) core.HResult!*BluetoothClassOfDevice {
        var _r: *BluetoothClassOfDevice = undefined;
        const _c = self.vtable.get_ClassOfDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSdpRecords(self: *@This()) core.HResult!*IVectorView(IBuffer) {
        var _r: *IVectorView(IBuffer) = undefined;
        const _c = self.vtable.get_SdpRecords(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRfcommServices(self: *@This()) core.HResult!*IVectorView(RfcommDeviceService) {
        var _r: *IVectorView(RfcommDeviceService) = undefined;
        const _c = self.vtable.get_RfcommServices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionStatus(self: *@This()) core.HResult!BluetoothConnectionStatus {
        var _r: BluetoothConnectionStatus = undefined;
        const _c = self.vtable.get_ConnectionStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBluetoothAddress(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BluetoothAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addNameChanged(self: *@This(), handler: *TypedEventHandler(BluetoothDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NameChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NameChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSdpRecordsChanged(self: *@This(), handler: *TypedEventHandler(BluetoothDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SdpRecordsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSdpRecordsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SdpRecordsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addConnectionStatusChanged(self: *@This(), handler: *TypedEventHandler(BluetoothDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2335b156-90d2-4a04-aef5-0e20b9e6b707";
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
        get_HostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ClassOfDevice: *const fn(self: *anyopaque, _r: **BluetoothClassOfDevice) callconv(.winapi) HRESULT,
        get_SdpRecords: *const fn(self: *anyopaque, _r: **IVectorView(IBuffer)) callconv(.winapi) HRESULT,
        get_RfcommServices: *const fn(self: *anyopaque, _r: **IVectorView(RfcommDeviceService)) callconv(.winapi) HRESULT,
        get_ConnectionStatus: *const fn(self: *anyopaque, _r: *BluetoothConnectionStatus) callconv(.winapi) HRESULT,
        get_BluetoothAddress: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        add_NameChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NameChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SdpRecordsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SdpRecordsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ConnectionStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothDevice2 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0133f954-b156-4dd0-b1f5-c11bc31a5163";
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
pub const IBluetoothDevice3 = extern struct {
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
    pub fn GetRfcommServicesAsync(self: *@This()) core.HResult!*IAsyncOperation(RfcommDeviceServicesResult) {
        var _r: *IAsyncOperation(RfcommDeviceServicesResult) = undefined;
        const _c = self.vtable.GetRfcommServicesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRfcommServicesAsync(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(RfcommDeviceServicesResult) {
        var _r: *IAsyncOperation(RfcommDeviceServicesResult) = undefined;
        const _c = self.vtable.GetRfcommServicesAsync(@ptrCast(self), cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRfcommServicesForIdAsync(self: *@This(), serviceId: *RfcommServiceId) core.HResult!*IAsyncOperation(RfcommDeviceServicesResult) {
        var _r: *IAsyncOperation(RfcommDeviceServicesResult) = undefined;
        const _c = self.vtable.GetRfcommServicesForIdAsync(@ptrCast(self), serviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRfcommServicesForIdAsyncWithCacheMode(self: *@This(), serviceId: *RfcommServiceId, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(RfcommDeviceServicesResult) {
        var _r: *IAsyncOperation(RfcommDeviceServicesResult) = undefined;
        const _c = self.vtable.GetRfcommServicesForIdAsyncWithCacheMode(@ptrCast(self), serviceId, cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothDevice3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57fff78b-651a-4454-b90f-eb21ef0b0d71";
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
        GetRfcommServicesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(RfcommDeviceServicesResult)) callconv(.winapi) HRESULT,
        GetRfcommServicesAsync: *const fn(self: *anyopaque, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(RfcommDeviceServicesResult)) callconv(.winapi) HRESULT,
        GetRfcommServicesForIdAsync: *const fn(self: *anyopaque, serviceId: *RfcommServiceId, _r: **IAsyncOperation(RfcommDeviceServicesResult)) callconv(.winapi) HRESULT,
        GetRfcommServicesForIdAsyncWithCacheMode: *const fn(self: *anyopaque, serviceId: *RfcommServiceId, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(RfcommDeviceServicesResult)) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothDevice4 = extern struct {
    vtable: *const VTable,
    pub fn getBluetoothDeviceId(self: *@This()) core.HResult!*BluetoothDeviceId {
        var _r: *BluetoothDeviceId = undefined;
        const _c = self.vtable.get_BluetoothDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothDevice4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "817c34ad-0e9c-42b2-a8dc-3e8094940d12";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BluetoothDeviceId: *const fn(self: *anyopaque, _r: **BluetoothDeviceId) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothDevice5 = extern struct {
    vtable: *const VTable,
    pub fn getWasSecureConnectionUsedForPairing(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WasSecureConnectionUsedForPairing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothDevice5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5e0b385-5e85-4559-a10d-1c7281379f96";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WasSecureConnectionUsedForPairing: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothDeviceId = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsClassicDevice(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsClassicDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLowEnergyDevice(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLowEnergyDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c17949af-57c1-4642-bcce-e6c06b20ae76";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsClassicDevice: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsLowEnergyDevice: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothDeviceIdStatics = extern struct {
    vtable: *const VTable,
    pub fn FromId(self: *@This(), deviceId: HSTRING) core.HResult!*BluetoothDeviceId {
        var _r: *BluetoothDeviceId = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothDeviceIdStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7884e67-3efb-4f31-bbc2-810e09977404";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **BluetoothDeviceId) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(BluetoothDevice) {
        var _r: *IAsyncOperation(BluetoothDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromHostNameAsync(self: *@This(), hostName: *HostName) core.HResult!*IAsyncOperation(BluetoothDevice) {
        var _r: *IAsyncOperation(BluetoothDevice) = undefined;
        const _c = self.vtable.FromHostNameAsync(@ptrCast(self), hostName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromBluetoothAddressAsync(self: *@This(), address: u64) core.HResult!*IAsyncOperation(BluetoothDevice) {
        var _r: *IAsyncOperation(BluetoothDevice) = undefined;
        const _c = self.vtable.FromBluetoothAddressAsync(@ptrCast(self), address, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0991df51-57db-4725-bbd7-84f64327ec2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(BluetoothDevice)) callconv(.winapi) HRESULT,
        FromHostNameAsync: *const fn(self: *anyopaque, hostName: *HostName, _r: **IAsyncOperation(BluetoothDevice)) callconv(.winapi) HRESULT,
        FromBluetoothAddressAsync: *const fn(self: *anyopaque, address: u64, _r: **IAsyncOperation(BluetoothDevice)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothDeviceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelectorFromPairingState(self: *@This(), pairingState: bool) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromPairingState(@ptrCast(self), pairingState, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromConnectionStatus(self: *@This(), connectionStatus: BluetoothConnectionStatus) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromConnectionStatus(@ptrCast(self), connectionStatus, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromDeviceName(self: *@This(), deviceName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromDeviceName(@ptrCast(self), deviceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromBluetoothAddress(self: *@This(), bluetoothAddress: u64) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromBluetoothAddress(@ptrCast(self), bluetoothAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromClassOfDevice(self: *@This(), classOfDevice: *BluetoothClassOfDevice) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromClassOfDevice(@ptrCast(self), classOfDevice, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothDeviceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c29e8e2f-4e14-4477-aa1b-b8b47e5b7ece";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromPairingState: *const fn(self: *anyopaque, pairingState: bool, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromConnectionStatus: *const fn(self: *anyopaque, connectionStatus: BluetoothConnectionStatus, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromDeviceName: *const fn(self: *anyopaque, deviceName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromBluetoothAddress: *const fn(self: *anyopaque, bluetoothAddress: u64, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromClassOfDevice: *const fn(self: *anyopaque, classOfDevice: *BluetoothClassOfDevice, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAppearance = extern struct {
    vtable: *const VTable,
    pub fn getRawValue(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_RawValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCategory(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Category(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubCategory(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_SubCategory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEAppearance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d2079f2-66a8-4258-985e-02b4d9509f18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RawValue: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Category: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_SubCategory: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAppearanceCategoriesStatics = extern struct {
    vtable: *const VTable,
    pub fn getUncategorized(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Uncategorized(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhone(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Phone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComputer(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Computer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWatch(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Watch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClock(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Clock(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplay(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Display(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteControl(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_RemoteControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEyeGlasses(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_EyeGlasses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTag(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyring(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Keyring(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaPlayer(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_MediaPlayer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBarcodeScanner(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_BarcodeScanner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThermometer(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Thermometer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeartRate(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HeartRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBloodPressure(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_BloodPressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHumanInterfaceDevice(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HumanInterfaceDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGlucoseMeter(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_GlucoseMeter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRunningWalking(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_RunningWalking(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCycling(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Cycling(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPulseOximeter(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_PulseOximeter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeightScale(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_WeightScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutdoorSportActivity(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_OutdoorSportActivity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d4d54fe-046a-4185-aab6-824cf0610861";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uncategorized: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Phone: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Computer: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Watch: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Clock: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Display: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_RemoteControl: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_EyeGlasses: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Keyring: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_MediaPlayer: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_BarcodeScanner: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Thermometer: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_HeartRate: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_BloodPressure: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_HumanInterfaceDevice: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_GlucoseMeter: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_RunningWalking: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Cycling: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_PulseOximeter: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_WeightScale: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_OutdoorSportActivity: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAppearanceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromRawValue(self: *@This(), rawValue: u16) core.HResult!*BluetoothLEAppearance {
        var _r: *BluetoothLEAppearance = undefined;
        const _c = self.vtable.FromRawValue(@ptrCast(self), rawValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromParts(self: *@This(), appearanceCategory: u16, appearanceSubCategory: u16) core.HResult!*BluetoothLEAppearance {
        var _r: *BluetoothLEAppearance = undefined;
        const _c = self.vtable.FromParts(@ptrCast(self), appearanceCategory, appearanceSubCategory, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEAppearanceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a193c0c7-4504-4f4a-9ba5-cd1054e5e065";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromRawValue: *const fn(self: *anyopaque, rawValue: u16, _r: **BluetoothLEAppearance) callconv(.winapi) HRESULT,
        FromParts: *const fn(self: *anyopaque, appearanceCategory: u16, appearanceSubCategory: u16, _r: **BluetoothLEAppearance) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAppearanceSubcategoriesStatics = extern struct {
    vtable: *const VTable,
    pub fn getGeneric(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Generic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSportsWatch(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_SportsWatch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThermometerEar(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ThermometerEar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeartRateBelt(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HeartRateBelt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBloodPressureArm(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_BloodPressureArm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBloodPressureWrist(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_BloodPressureWrist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyboard(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Keyboard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMouse(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Mouse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJoystick(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Joystick(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGamepad(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Gamepad(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDigitizerTablet(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_DigitizerTablet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCardReader(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_CardReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDigitalPen(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_DigitalPen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBarcodeScanner(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_BarcodeScanner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRunningWalkingInShoe(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_RunningWalkingInShoe(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRunningWalkingOnShoe(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_RunningWalkingOnShoe(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRunningWalkingOnHip(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_RunningWalkingOnHip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingComputer(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_CyclingComputer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingSpeedSensor(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_CyclingSpeedSensor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingCadenceSensor(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_CyclingCadenceSensor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingPowerSensor(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_CyclingPowerSensor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingSpeedCadenceSensor(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_CyclingSpeedCadenceSensor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOximeterFingertip(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_OximeterFingertip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOximeterWristWorn(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_OximeterWristWorn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationDisplay(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_LocationDisplay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationNavigationDisplay(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_LocationNavigationDisplay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationPod(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_LocationPod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationNavigationPod(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_LocationNavigationPod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e57ba606-2144-415a-8312-71ccf291f8d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Generic: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_SportsWatch: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ThermometerEar: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_HeartRateBelt: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_BloodPressureArm: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_BloodPressureWrist: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Keyboard: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Mouse: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Joystick: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Gamepad: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_DigitizerTablet: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_CardReader: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_DigitalPen: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_BarcodeScanner: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_RunningWalkingInShoe: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_RunningWalkingOnShoe: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_RunningWalkingOnHip: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_CyclingComputer: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_CyclingSpeedSensor: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_CyclingCadenceSensor: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_CyclingPowerSensor: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_CyclingSpeedCadenceSensor: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_OximeterFingertip: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_OximeterWristWorn: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_LocationDisplay: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_LocationNavigationDisplay: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_LocationPod: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_LocationNavigationPod: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEConnectionParameters = extern struct {
    vtable: *const VTable,
    pub fn getLinkTimeout(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_LinkTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionLatency(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ConnectionLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionInterval(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ConnectionInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEConnectionParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33cb0771-8da9-508f-a366-1ca388c929ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LinkTimeout: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ConnectionLatency: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ConnectionInterval: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEConnectionPhy = extern struct {
    vtable: *const VTable,
    pub fn getTransmitInfo(self: *@This()) core.HResult!*BluetoothLEConnectionPhyInfo {
        var _r: *BluetoothLEConnectionPhyInfo = undefined;
        const _c = self.vtable.get_TransmitInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceiveInfo(self: *@This()) core.HResult!*BluetoothLEConnectionPhyInfo {
        var _r: *BluetoothLEConnectionPhyInfo = undefined;
        const _c = self.vtable.get_ReceiveInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEConnectionPhy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "781e5e48-621e-5a7e-8be6-1b9561ff63c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransmitInfo: *const fn(self: *anyopaque, _r: **BluetoothLEConnectionPhyInfo) callconv(.winapi) HRESULT,
        get_ReceiveInfo: *const fn(self: *anyopaque, _r: **BluetoothLEConnectionPhyInfo) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEConnectionPhyInfo = extern struct {
    vtable: *const VTable,
    pub fn getIsUncoded1MPhy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUncoded1MPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsUncoded2MPhy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUncoded2MPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCodedPhy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCodedPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEConnectionPhyInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a100bdd-602e-5c27-a1ae-b230015a6394";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsUncoded1MPhy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsUncoded2MPhy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCodedPhy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEDevice = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGattServices(self: *@This()) core.HResult!*IVectorView(GattDeviceService) {
        var _r: *IVectorView(GattDeviceService) = undefined;
        const _c = self.vtable.get_GattServices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionStatus(self: *@This()) core.HResult!BluetoothConnectionStatus {
        var _r: BluetoothConnectionStatus = undefined;
        const _c = self.vtable.get_ConnectionStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBluetoothAddress(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BluetoothAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGattService(self: *@This(), serviceUuid: *Guid) core.HResult!*GattDeviceService {
        var _r: *GattDeviceService = undefined;
        const _c = self.vtable.GetGattService(@ptrCast(self), serviceUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addNameChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NameChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NameChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGattServicesChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GattServicesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGattServicesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GattServicesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addConnectionStatusChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5ee2f7b-4ad8-4642-ac48-80a0b500e887";
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
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GattServices: *const fn(self: *anyopaque, _r: **IVectorView(GattDeviceService)) callconv(.winapi) HRESULT,
        get_ConnectionStatus: *const fn(self: *anyopaque, _r: *BluetoothConnectionStatus) callconv(.winapi) HRESULT,
        get_BluetoothAddress: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        GetGattService: *const fn(self: *anyopaque, serviceUuid: *Guid, _r: **GattDeviceService) callconv(.winapi) HRESULT,
        add_NameChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothLEDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NameChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GattServicesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothLEDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GattServicesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ConnectionStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothLEDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEDevice2 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppearance(self: *@This()) core.HResult!*BluetoothLEAppearance {
        var _r: *BluetoothLEAppearance = undefined;
        const _c = self.vtable.get_Appearance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBluetoothAddressType(self: *@This()) core.HResult!BluetoothAddressType {
        var _r: BluetoothAddressType = undefined;
        const _c = self.vtable.get_BluetoothAddressType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26f062b3-7aee-4d31-baba-b1b9775f5916";
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
        get_Appearance: *const fn(self: *anyopaque, _r: **BluetoothLEAppearance) callconv(.winapi) HRESULT,
        get_BluetoothAddressType: *const fn(self: *anyopaque, _r: *BluetoothAddressType) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEDevice3 = extern struct {
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
    pub fn GetGattServicesAsync(self: *@This()) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var _r: *IAsyncOperation(GattDeviceServicesResult) = undefined;
        const _c = self.vtable.GetGattServicesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGattServicesAsync(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var _r: *IAsyncOperation(GattDeviceServicesResult) = undefined;
        const _c = self.vtable.GetGattServicesAsync(@ptrCast(self), cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGattServicesForUuidAsync(self: *@This(), serviceUuid: *Guid) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var _r: *IAsyncOperation(GattDeviceServicesResult) = undefined;
        const _c = self.vtable.GetGattServicesForUuidAsync(@ptrCast(self), serviceUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGattServicesForUuidAsyncWithCacheMode(self: *@This(), serviceUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var _r: *IAsyncOperation(GattDeviceServicesResult) = undefined;
        const _c = self.vtable.GetGattServicesForUuidAsyncWithCacheMode(@ptrCast(self), serviceUuid, cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEDevice3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aee9e493-44ac-40dc-af33-b2c13c01ca46";
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
        GetGattServicesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattDeviceServicesResult)) callconv(.winapi) HRESULT,
        GetGattServicesAsync: *const fn(self: *anyopaque, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattDeviceServicesResult)) callconv(.winapi) HRESULT,
        GetGattServicesForUuidAsync: *const fn(self: *anyopaque, serviceUuid: *Guid, _r: **IAsyncOperation(GattDeviceServicesResult)) callconv(.winapi) HRESULT,
        GetGattServicesForUuidAsyncWithCacheMode: *const fn(self: *anyopaque, serviceUuid: *Guid, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattDeviceServicesResult)) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEDevice4 = extern struct {
    vtable: *const VTable,
    pub fn getBluetoothDeviceId(self: *@This()) core.HResult!*BluetoothDeviceId {
        var _r: *BluetoothDeviceId = undefined;
        const _c = self.vtable.get_BluetoothDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEDevice4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b605031-2248-4b2f-acf0-7cee36fc5870";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BluetoothDeviceId: *const fn(self: *anyopaque, _r: **BluetoothDeviceId) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEDevice5 = extern struct {
    vtable: *const VTable,
    pub fn getWasSecureConnectionUsedForPairing(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WasSecureConnectionUsedForPairing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEDevice5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d6a1260-5287-458e-95ba-17c8b7bb326e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WasSecureConnectionUsedForPairing: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEDevice6 = extern struct {
    vtable: *const VTable,
    pub fn GetConnectionParameters(self: *@This()) core.HResult!*BluetoothLEConnectionParameters {
        var _r: *BluetoothLEConnectionParameters = undefined;
        const _c = self.vtable.GetConnectionParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConnectionPhy(self: *@This()) core.HResult!*BluetoothLEConnectionPhy {
        var _r: *BluetoothLEConnectionPhy = undefined;
        const _c = self.vtable.GetConnectionPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPreferredConnectionParameters(self: *@This(), preferredConnectionParameters: *BluetoothLEPreferredConnectionParameters) core.HResult!*BluetoothLEPreferredConnectionParametersRequest {
        var _r: *BluetoothLEPreferredConnectionParametersRequest = undefined;
        const _c = self.vtable.RequestPreferredConnectionParameters(@ptrCast(self), preferredConnectionParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addConnectionParametersChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionParametersChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionParametersChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionParametersChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addConnectionPhyChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionPhyChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionPhyChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionPhyChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEDevice6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca7190ef-0cae-573c-a1ca-e1fc5bfc39e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetConnectionParameters: *const fn(self: *anyopaque, _r: **BluetoothLEConnectionParameters) callconv(.winapi) HRESULT,
        GetConnectionPhy: *const fn(self: *anyopaque, _r: **BluetoothLEConnectionPhy) callconv(.winapi) HRESULT,
        RequestPreferredConnectionParameters: *const fn(self: *anyopaque, preferredConnectionParameters: *BluetoothLEPreferredConnectionParameters, _r: **BluetoothLEPreferredConnectionParametersRequest) callconv(.winapi) HRESULT,
        add_ConnectionParametersChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothLEDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionParametersChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ConnectionPhyChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothLEDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionPhyChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(BluetoothLEDevice) {
        var _r: *IAsyncOperation(BluetoothLEDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromBluetoothAddressAsync(self: *@This(), bluetoothAddress: u64) core.HResult!*IAsyncOperation(BluetoothLEDevice) {
        var _r: *IAsyncOperation(BluetoothLEDevice) = undefined;
        const _c = self.vtable.FromBluetoothAddressAsync(@ptrCast(self), bluetoothAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8cf1a19-f0b6-4bf0-8689-41303de2d9f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(BluetoothLEDevice)) callconv(.winapi) HRESULT,
        FromBluetoothAddressAsync: *const fn(self: *anyopaque, bluetoothAddress: u64, _r: **IAsyncOperation(BluetoothLEDevice)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEDeviceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelectorFromPairingState(self: *@This(), pairingState: bool) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromPairingState(@ptrCast(self), pairingState, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromConnectionStatus(self: *@This(), connectionStatus: BluetoothConnectionStatus) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromConnectionStatus(@ptrCast(self), connectionStatus, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromDeviceName(self: *@This(), deviceName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromDeviceName(@ptrCast(self), deviceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromBluetoothAddress(self: *@This(), bluetoothAddress: u64) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromBluetoothAddress(@ptrCast(self), bluetoothAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromBluetoothAddressWithBluetoothAddressType(self: *@This(), bluetoothAddress: u64, bluetoothAddressType: BluetoothAddressType) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromBluetoothAddressWithBluetoothAddressType(@ptrCast(self), bluetoothAddress, bluetoothAddressType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromAppearance(self: *@This(), appearance: *BluetoothLEAppearance) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromAppearance(@ptrCast(self), appearance, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromBluetoothAddressAsync(self: *@This(), bluetoothAddress: u64, bluetoothAddressType: BluetoothAddressType) core.HResult!*IAsyncOperation(BluetoothLEDevice) {
        var _r: *IAsyncOperation(BluetoothLEDevice) = undefined;
        const _c = self.vtable.FromBluetoothAddressAsync(@ptrCast(self), bluetoothAddress, bluetoothAddressType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEDeviceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f12c06b-3bac-43e8-ad16-563271bd41c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromPairingState: *const fn(self: *anyopaque, pairingState: bool, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromConnectionStatus: *const fn(self: *anyopaque, connectionStatus: BluetoothConnectionStatus, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromDeviceName: *const fn(self: *anyopaque, deviceName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromBluetoothAddress: *const fn(self: *anyopaque, bluetoothAddress: u64, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromBluetoothAddressWithBluetoothAddressType: *const fn(self: *anyopaque, bluetoothAddress: u64, bluetoothAddressType: BluetoothAddressType, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromAppearance: *const fn(self: *anyopaque, appearance: *BluetoothLEAppearance, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromBluetoothAddressAsync: *const fn(self: *anyopaque, bluetoothAddress: u64, bluetoothAddressType: BluetoothAddressType, _r: **IAsyncOperation(BluetoothLEDevice)) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEPreferredConnectionParameters = extern struct {
    vtable: *const VTable,
    pub fn getLinkTimeout(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_LinkTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionLatency(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ConnectionLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinConnectionInterval(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_MinConnectionInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxConnectionInterval(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_MaxConnectionInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEPreferredConnectionParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2f44344-7372-5f7b-9b34-29c944f5a715";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LinkTimeout: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ConnectionLatency: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_MinConnectionInterval: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_MaxConnectionInterval: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEPreferredConnectionParametersRequest = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!BluetoothLEPreferredConnectionParametersRequestStatus {
        var _r: BluetoothLEPreferredConnectionParametersRequestStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEPreferredConnectionParametersRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a375276-a528-5266-b661-cce6a5ff9739";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *BluetoothLEPreferredConnectionParametersRequestStatus) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEPreferredConnectionParametersStatics = extern struct {
    vtable: *const VTable,
    pub fn getBalanced(self: *@This()) core.HResult!*BluetoothLEPreferredConnectionParameters {
        var _r: *BluetoothLEPreferredConnectionParameters = undefined;
        const _c = self.vtable.get_Balanced(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThroughputOptimized(self: *@This()) core.HResult!*BluetoothLEPreferredConnectionParameters {
        var _r: *BluetoothLEPreferredConnectionParameters = undefined;
        const _c = self.vtable.get_ThroughputOptimized(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerOptimized(self: *@This()) core.HResult!*BluetoothLEPreferredConnectionParameters {
        var _r: *BluetoothLEPreferredConnectionParameters = undefined;
        const _c = self.vtable.get_PowerOptimized(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothLEPreferredConnectionParametersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e3e8edc-2751-55aa-a838-8faeee818d72";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Balanced: *const fn(self: *anyopaque, _r: **BluetoothLEPreferredConnectionParameters) callconv(.winapi) HRESULT,
        get_ThroughputOptimized: *const fn(self: *anyopaque, _r: **BluetoothLEPreferredConnectionParameters) callconv(.winapi) HRESULT,
        get_PowerOptimized: *const fn(self: *anyopaque, _r: **BluetoothLEPreferredConnectionParameters) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothSignalStrengthFilter = extern struct {
    vtable: *const VTable,
    pub fn getInRangeThresholdInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var _r: *IReference(i16) = undefined;
        const _c = self.vtable.get_InRangeThresholdInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInRangeThresholdInDBm(self: *@This(), value: *IReference(i16)) core.HResult!void {
        const _c = self.vtable.put_InRangeThresholdInDBm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutOfRangeThresholdInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var _r: *IReference(i16) = undefined;
        const _c = self.vtable.get_OutOfRangeThresholdInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutOfRangeThresholdInDBm(self: *@This(), value: *IReference(i16)) core.HResult!void {
        const _c = self.vtable.put_OutOfRangeThresholdInDBm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutOfRangeTimeout(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_OutOfRangeTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutOfRangeTimeout(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_OutOfRangeTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSamplingInterval(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_SamplingInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSamplingInterval(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_SamplingInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df7b7391-6bb5-4cfe-90b1-5d7324edcf7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InRangeThresholdInDBm: *const fn(self: *anyopaque, _r: **IReference(i16)) callconv(.winapi) HRESULT,
        put_InRangeThresholdInDBm: *const fn(self: *anyopaque, value: *IReference(i16)) callconv(.winapi) HRESULT,
        get_OutOfRangeThresholdInDBm: *const fn(self: *anyopaque, _r: **IReference(i16)) callconv(.winapi) HRESULT,
        put_OutOfRangeThresholdInDBm: *const fn(self: *anyopaque, value: *IReference(i16)) callconv(.winapi) HRESULT,
        get_OutOfRangeTimeout: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_OutOfRangeTimeout: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_SamplingInterval: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_SamplingInterval: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothUuidHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn FromShortId(self: *@This(), shortId: u32) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.FromShortId(@ptrCast(self), shortId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetShortId(self: *@This(), uuid: *Guid) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.TryGetShortId(@ptrCast(self), uuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.IBluetoothUuidHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17df0cd8-cf74-4b21-afe6-f57a11bcdea0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromShortId: *const fn(self: *anyopaque, shortId: u32, _r: **Guid) callconv(.winapi) HRESULT,
        TryGetShortId: *const fn(self: *anyopaque, uuid: *Guid, _r: **IReference(u32)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IReference = @import("../Foundation.zig").IReference;
const DeviceAccessInformation = @import("./Enumeration.zig").DeviceAccessInformation;
const FactoryCache = @import("../core.zig").FactoryCache;
const RfcommServiceId = @import("./Rfcomm.zig").RfcommServiceId;
const GattDeviceService = @import("./GenericAttributeProfile.zig").GattDeviceService;
const TrustLevel = @import("../root.zig").TrustLevel;
const Radio = @import("./Radios.zig").Radio;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const GattDeviceServicesResult = @import("./GenericAttributeProfile.zig").GattDeviceServicesResult;
const IInspectable = @import("../Foundation.zig").IInspectable;
const DeviceInformation = @import("./Enumeration.zig").DeviceInformation;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const RfcommDeviceService = @import("./Rfcomm.zig").RfcommDeviceService;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const HostName = @import("../Networking.zig").HostName;
const RfcommDeviceServicesResult = @import("./Rfcomm.zig").RfcommDeviceServicesResult;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const DeviceAccessStatus = @import("./Enumeration.zig").DeviceAccessStatus;
pub const Advertisement = @import("./Bluetooth/Advertisement.zig");
pub const Background = @import("./Bluetooth/Background.zig");
pub const GenericAttributeProfile = @import("./Bluetooth/GenericAttributeProfile.zig");
pub const Rfcomm = @import("./Bluetooth/Rfcomm.zig");
