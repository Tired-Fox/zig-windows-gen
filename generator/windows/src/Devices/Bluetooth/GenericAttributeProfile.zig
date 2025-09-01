pub const GattCharacteristic = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDescriptors(self: *@This(), descriptorUuid: *Guid) core.HResult!*IVectorView(GattDescriptor) {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.GetDescriptors(descriptorUuid);
    }
    pub fn getCharacteristicProperties(self: *@This()) core.HResult!GattCharacteristicProperties {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.getCharacteristicProperties();
    }
    pub fn getProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.getProtectionLevel();
    }
    pub fn putProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.putProtectionLevel(value);
    }
    pub fn getUserDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.getUserDescription();
    }
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.getUuid();
    }
    pub fn getAttributeHandle(self: *@This()) core.HResult!u16 {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.getAttributeHandle();
    }
    pub fn getPresentationFormats(self: *@This()) core.HResult!*IVectorView(GattPresentationFormat) {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.getPresentationFormats();
    }
    pub fn ReadValueAsync(self: *@This()) core.HResult!*IAsyncOperation(GattReadResult) {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.ReadValueAsync();
    }
    pub fn ReadValueAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattReadResult) {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.ReadValueAsyncWithCacheMode(cacheMode);
    }
    pub fn WriteValueAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.WriteValueAsync(value);
    }
    pub fn WriteValueAsyncWithWriteOption(self: *@This(), value: *IBuffer, writeOption: GattWriteOption) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.WriteValueAsyncWithWriteOption(value, writeOption);
    }
    pub fn ReadClientCharacteristicConfigurationDescriptorAsync(self: *@This()) core.HResult!*IAsyncOperation(GattReadClientCharacteristicConfigurationDescriptorResult) {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.ReadClientCharacteristicConfigurationDescriptorAsync();
    }
    pub fn WriteClientCharacteristicConfigurationDescriptorAsync(self: *@This(), clientCharacteristicConfigurationDescriptorValue: GattClientCharacteristicConfigurationDescriptorValue) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.WriteClientCharacteristicConfigurationDescriptorAsync(clientCharacteristicConfigurationDescriptorValue);
    }
    pub fn addValueChanged(self: *@This(), valueChangedHandler: *TypedEventHandler(GattCharacteristic,GattValueChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.addValueChanged(valueChangedHandler);
    }
    pub fn removeValueChanged(self: *@This(), valueChangedEventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IGattCharacteristic = @ptrCast(self);
        return try this.removeValueChanged(valueChangedEventCookie);
    }
    pub fn getService(self: *@This()) core.HResult!*GattDeviceService {
        var this: ?*IGattCharacteristic2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristic2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getService();
    }
    pub fn GetAllDescriptors(self: *@This()) core.HResult!*IVectorView(GattDescriptor) {
        var this: ?*IGattCharacteristic2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristic2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllDescriptors();
    }
    pub fn GetDescriptorsAsync(self: *@This()) core.HResult!*IAsyncOperation(GattDescriptorsResult) {
        var this: ?*IGattCharacteristic3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristic3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDescriptorsAsync();
    }
    pub fn GetDescriptorsAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDescriptorsResult) {
        var this: ?*IGattCharacteristic3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristic3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDescriptorsAsyncWithCacheMode(cacheMode);
    }
    pub fn GetDescriptorsForUuidAsync(self: *@This(), descriptorUuid: *Guid) core.HResult!*IAsyncOperation(GattDescriptorsResult) {
        var this: ?*IGattCharacteristic3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristic3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDescriptorsForUuidAsync(descriptorUuid);
    }
    pub fn GetDescriptorsForUuidAsyncWithCacheMode(self: *@This(), descriptorUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDescriptorsResult) {
        var this: ?*IGattCharacteristic3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristic3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDescriptorsForUuidAsyncWithCacheMode(descriptorUuid, cacheMode);
    }
    pub fn WriteValueWithResultAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(GattWriteResult) {
        var this: ?*IGattCharacteristic3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristic3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WriteValueWithResultAsync(value);
    }
    pub fn WriteValueWithResultAsyncWithWriteOption(self: *@This(), value: *IBuffer, writeOption: GattWriteOption) core.HResult!*IAsyncOperation(GattWriteResult) {
        var this: ?*IGattCharacteristic3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristic3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WriteValueWithResultAsyncWithWriteOption(value, writeOption);
    }
    pub fn WriteClientCharacteristicConfigurationDescriptorWithResultAsync(self: *@This(), clientCharacteristicConfigurationDescriptorValue: GattClientCharacteristicConfigurationDescriptorValue) core.HResult!*IAsyncOperation(GattWriteResult) {
        var this: ?*IGattCharacteristic3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristic3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WriteClientCharacteristicConfigurationDescriptorWithResultAsync(clientCharacteristicConfigurationDescriptorValue);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ConvertShortIdToUuid(shortId: u16) core.HResult!*Guid {
        const _f = @This().IGattCharacteristicStaticsCache.get();
        return try _f.ConvertShortIdToUuid(shortId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattCharacteristic.GUID;
    pub const IID: Guid = IGattCharacteristic.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattCharacteristic.SIGNATURE);
    var _IGattCharacteristicStaticsCache: FactoryCache(IGattCharacteristicStatics, RUNTIME_NAME) = .{};
};
pub const GattCharacteristicProperties = enum(i32) {
    None = 0,
    Broadcast = 1,
    Read = 2,
    WriteWithoutResponse = 4,
    Write = 8,
    Notify = 16,
    Indicate = 32,
    AuthenticatedSignedWrites = 64,
    ExtendedProperties = 128,
    ReliableWrites = 256,
    WritableAuxiliaries = 512,
};
pub const GattCharacteristicUuids = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAlertCategoryId() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getAlertCategoryId();
    }
    pub fn getAlertCategoryIdBitMask() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getAlertCategoryIdBitMask();
    }
    pub fn getAlertLevel() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getAlertLevel();
    }
    pub fn getAlertNotificationControlPoint() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getAlertNotificationControlPoint();
    }
    pub fn getAlertStatus() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getAlertStatus();
    }
    pub fn getGapAppearance() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getGapAppearance();
    }
    pub fn getBootKeyboardInputReport() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getBootKeyboardInputReport();
    }
    pub fn getBootKeyboardOutputReport() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getBootKeyboardOutputReport();
    }
    pub fn getBootMouseInputReport() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getBootMouseInputReport();
    }
    pub fn getCurrentTime() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getCurrentTime();
    }
    pub fn getCyclingPowerControlPoint() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getCyclingPowerControlPoint();
    }
    pub fn getCyclingPowerFeature() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getCyclingPowerFeature();
    }
    pub fn getCyclingPowerMeasurement() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getCyclingPowerMeasurement();
    }
    pub fn getCyclingPowerVector() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getCyclingPowerVector();
    }
    pub fn getDateTime() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getDateTime();
    }
    pub fn getDayDateTime() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getDayDateTime();
    }
    pub fn getDayOfWeek() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getDayOfWeek();
    }
    pub fn getGapDeviceName() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getGapDeviceName();
    }
    pub fn getDstOffset() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getDstOffset();
    }
    pub fn getExactTime256() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getExactTime256();
    }
    pub fn getFirmwareRevisionString() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getFirmwareRevisionString();
    }
    pub fn getHardwareRevisionString() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getHardwareRevisionString();
    }
    pub fn getHidControlPoint() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getHidControlPoint();
    }
    pub fn getHidInformation() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getHidInformation();
    }
    pub fn getIeee1107320601RegulatoryCertificationDataList() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getIeee1107320601RegulatoryCertificationDataList();
    }
    pub fn getLnControlPoint() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getLnControlPoint();
    }
    pub fn getLnFeature() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getLnFeature();
    }
    pub fn getLocalTimeInformation() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getLocalTimeInformation();
    }
    pub fn getLocationAndSpeed() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getLocationAndSpeed();
    }
    pub fn getManufacturerNameString() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getManufacturerNameString();
    }
    pub fn getModelNumberString() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getModelNumberString();
    }
    pub fn getNavigation() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getNavigation();
    }
    pub fn getNewAlert() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getNewAlert();
    }
    pub fn getGapPeripheralPreferredConnectionParameters() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getGapPeripheralPreferredConnectionParameters();
    }
    pub fn getGapPeripheralPrivacyFlag() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getGapPeripheralPrivacyFlag();
    }
    pub fn getPnpId() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getPnpId();
    }
    pub fn getPositionQuality() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getPositionQuality();
    }
    pub fn getProtocolMode() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getProtocolMode();
    }
    pub fn getGapReconnectionAddress() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getGapReconnectionAddress();
    }
    pub fn getReferenceTimeInformation() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getReferenceTimeInformation();
    }
    pub fn getReport() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getReport();
    }
    pub fn getReportMap() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getReportMap();
    }
    pub fn getRingerControlPoint() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getRingerControlPoint();
    }
    pub fn getRingerSetting() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getRingerSetting();
    }
    pub fn getScanIntervalWindow() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getScanIntervalWindow();
    }
    pub fn getScanRefresh() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getScanRefresh();
    }
    pub fn getSerialNumberString() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getSerialNumberString();
    }
    pub fn getGattServiceChanged() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getGattServiceChanged();
    }
    pub fn getSoftwareRevisionString() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getSoftwareRevisionString();
    }
    pub fn getSupportedNewAlertCategory() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getSupportedNewAlertCategory();
    }
    pub fn getSupportUnreadAlertCategory() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getSupportUnreadAlertCategory();
    }
    pub fn getSystemId() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getSystemId();
    }
    pub fn getTimeAccuracy() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getTimeAccuracy();
    }
    pub fn getTimeSource() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getTimeSource();
    }
    pub fn getTimeUpdateControlPoint() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getTimeUpdateControlPoint();
    }
    pub fn getTimeUpdateState() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getTimeUpdateState();
    }
    pub fn getTimeWithDst() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getTimeWithDst();
    }
    pub fn getTimeZone() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getTimeZone();
    }
    pub fn getTxPowerLevel() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getTxPowerLevel();
    }
    pub fn getUnreadAlertStatus() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStatics2Cache.get();
        return try _f.getUnreadAlertStatus();
    }
    pub fn getBatteryLevel() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getBatteryLevel();
    }
    pub fn getBloodPressureFeature() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getBloodPressureFeature();
    }
    pub fn getBloodPressureMeasurement() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getBloodPressureMeasurement();
    }
    pub fn getBodySensorLocation() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getBodySensorLocation();
    }
    pub fn getCscFeature() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getCscFeature();
    }
    pub fn getCscMeasurement() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getCscMeasurement();
    }
    pub fn getGlucoseFeature() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getGlucoseFeature();
    }
    pub fn getGlucoseMeasurement() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getGlucoseMeasurement();
    }
    pub fn getGlucoseMeasurementContext() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getGlucoseMeasurementContext();
    }
    pub fn getHeartRateControlPoint() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getHeartRateControlPoint();
    }
    pub fn getHeartRateMeasurement() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getHeartRateMeasurement();
    }
    pub fn getIntermediateCuffPressure() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getIntermediateCuffPressure();
    }
    pub fn getIntermediateTemperature() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getIntermediateTemperature();
    }
    pub fn getMeasurementInterval() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getMeasurementInterval();
    }
    pub fn getRecordAccessControlPoint() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getRecordAccessControlPoint();
    }
    pub fn getRscFeature() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getRscFeature();
    }
    pub fn getRscMeasurement() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getRscMeasurement();
    }
    pub fn getSCControlPoint() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getSCControlPoint();
    }
    pub fn getSensorLocation() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getSensorLocation();
    }
    pub fn getTemperatureMeasurement() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getTemperatureMeasurement();
    }
    pub fn getTemperatureType() core.HResult!*Guid {
        const _f = @This().IGattCharacteristicUuidsStaticsCache.get();
        return try _f.getTemperatureType();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicUuids";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGattCharacteristicUuidsStatics2Cache: FactoryCache(IGattCharacteristicUuidsStatics2, RUNTIME_NAME) = .{};
    var _IGattCharacteristicUuidsStaticsCache: FactoryCache(IGattCharacteristicUuidsStatics, RUNTIME_NAME) = .{};
};
pub const GattCharacteristicsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        const this: *IGattCharacteristicsResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        const this: *IGattCharacteristicsResult = @ptrCast(self);
        return try this.getProtocolError();
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(GattCharacteristic) {
        const this: *IGattCharacteristicsResult = @ptrCast(self);
        return try this.getCharacteristics();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattCharacteristicsResult.GUID;
    pub const IID: Guid = IGattCharacteristicsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattCharacteristicsResult.SIGNATURE);
};
pub const GattClientCharacteristicConfigurationDescriptorValue = enum(i32) {
    None = 0,
    Notify = 1,
    Indicate = 2,
};
pub const GattClientNotificationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSubscribedClient(self: *@This()) core.HResult!*GattSubscribedClient {
        const this: *IGattClientNotificationResult = @ptrCast(self);
        return try this.getSubscribedClient();
    }
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        const this: *IGattClientNotificationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        const this: *IGattClientNotificationResult = @ptrCast(self);
        return try this.getProtocolError();
    }
    pub fn getBytesSent(self: *@This()) core.HResult!u16 {
        var this: ?*IGattClientNotificationResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattClientNotificationResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBytesSent();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattClientNotificationResult.GUID;
    pub const IID: Guid = IGattClientNotificationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattClientNotificationResult.SIGNATURE);
};
pub const GattCommunicationStatus = enum(i32) {
    Success = 0,
    Unreachable = 1,
    ProtocolError = 2,
    AccessDenied = 3,
};
pub const GattDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattDescriptor = @ptrCast(self);
        return try this.getProtectionLevel();
    }
    pub fn putProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const this: *IGattDescriptor = @ptrCast(self);
        return try this.putProtectionLevel(value);
    }
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        const this: *IGattDescriptor = @ptrCast(self);
        return try this.getUuid();
    }
    pub fn getAttributeHandle(self: *@This()) core.HResult!u16 {
        const this: *IGattDescriptor = @ptrCast(self);
        return try this.getAttributeHandle();
    }
    pub fn ReadValueAsync(self: *@This()) core.HResult!*IAsyncOperation(GattReadResult) {
        const this: *IGattDescriptor = @ptrCast(self);
        return try this.ReadValueAsync();
    }
    pub fn ReadValueAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattReadResult) {
        const this: *IGattDescriptor = @ptrCast(self);
        return try this.ReadValueAsyncWithCacheMode(cacheMode);
    }
    pub fn WriteValueAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        const this: *IGattDescriptor = @ptrCast(self);
        return try this.WriteValueAsync(value);
    }
    pub fn WriteValueWithResultAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(GattWriteResult) {
        var this: ?*IGattDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WriteValueWithResultAsync(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ConvertShortIdToUuid(shortId: u16) core.HResult!*Guid {
        const _f = @This().IGattDescriptorStaticsCache.get();
        return try _f.ConvertShortIdToUuid(shortId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattDescriptor.GUID;
    pub const IID: Guid = IGattDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattDescriptor.SIGNATURE);
    var _IGattDescriptorStaticsCache: FactoryCache(IGattDescriptorStatics, RUNTIME_NAME) = .{};
};
pub const GattDescriptorUuids = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCharacteristicAggregateFormat() core.HResult!*Guid {
        const _f = @This().IGattDescriptorUuidsStaticsCache.get();
        return try _f.getCharacteristicAggregateFormat();
    }
    pub fn getCharacteristicExtendedProperties() core.HResult!*Guid {
        const _f = @This().IGattDescriptorUuidsStaticsCache.get();
        return try _f.getCharacteristicExtendedProperties();
    }
    pub fn getCharacteristicPresentationFormat() core.HResult!*Guid {
        const _f = @This().IGattDescriptorUuidsStaticsCache.get();
        return try _f.getCharacteristicPresentationFormat();
    }
    pub fn getCharacteristicUserDescription() core.HResult!*Guid {
        const _f = @This().IGattDescriptorUuidsStaticsCache.get();
        return try _f.getCharacteristicUserDescription();
    }
    pub fn getClientCharacteristicConfiguration() core.HResult!*Guid {
        const _f = @This().IGattDescriptorUuidsStaticsCache.get();
        return try _f.getClientCharacteristicConfiguration();
    }
    pub fn getServerCharacteristicConfiguration() core.HResult!*Guid {
        const _f = @This().IGattDescriptorUuidsStaticsCache.get();
        return try _f.getServerCharacteristicConfiguration();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorUuids";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGattDescriptorUuidsStaticsCache: FactoryCache(IGattDescriptorUuidsStatics, RUNTIME_NAME) = .{};
};
pub const GattDescriptorsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        const this: *IGattDescriptorsResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        const this: *IGattDescriptorsResult = @ptrCast(self);
        return try this.getProtocolError();
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(GattDescriptor) {
        const this: *IGattDescriptorsResult = @ptrCast(self);
        return try this.getDescriptors();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattDescriptorsResult.GUID;
    pub const IID: Guid = IGattDescriptorsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattDescriptorsResult.SIGNATURE);
};
pub const GattDeviceService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCharacteristics(self: *@This(), characteristicUuid: *Guid) core.HResult!*IVectorView(GattCharacteristic) {
        const this: *IGattDeviceService = @ptrCast(self);
        return try this.GetCharacteristics(characteristicUuid);
    }
    pub fn GetIncludedServices(self: *@This(), serviceUuid: *Guid) core.HResult!*IVectorView(GattDeviceService) {
        const this: *IGattDeviceService = @ptrCast(self);
        return try this.GetIncludedServices(serviceUuid);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IGattDeviceService = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        const this: *IGattDeviceService = @ptrCast(self);
        return try this.getUuid();
    }
    pub fn getAttributeHandle(self: *@This()) core.HResult!u16 {
        const this: *IGattDeviceService = @ptrCast(self);
        return try this.getAttributeHandle();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getDevice(self: *@This()) core.HResult!*BluetoothLEDevice {
        var this: ?*IGattDeviceService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDevice();
    }
    pub fn getParentServices(self: *@This()) core.HResult!*IVectorView(GattDeviceService) {
        var this: ?*IGattDeviceService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentServices();
    }
    pub fn GetAllCharacteristics(self: *@This()) core.HResult!*IVectorView(GattCharacteristic) {
        var this: ?*IGattDeviceService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllCharacteristics();
    }
    pub fn GetAllIncludedServices(self: *@This()) core.HResult!*IVectorView(GattDeviceService) {
        var this: ?*IGattDeviceService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllIncludedServices();
    }
    pub fn getDeviceAccessInformation(self: *@This()) core.HResult!*DeviceAccessInformation {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceAccessInformation();
    }
    pub fn getSession(self: *@This()) core.HResult!*GattSession {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSession();
    }
    pub fn getSharingMode(self: *@This()) core.HResult!GattSharingMode {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSharingMode();
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceAccessStatus) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestAccessAsync();
    }
    pub fn OpenAsync(self: *@This(), sharingMode: GattSharingMode) core.HResult!*IAsyncOperation(GattOpenStatus) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenAsync(sharingMode);
    }
    pub fn GetCharacteristicsAsync(self: *@This()) core.HResult!*IAsyncOperation(GattCharacteristicsResult) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCharacteristicsAsync();
    }
    pub fn GetCharacteristicsAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattCharacteristicsResult) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCharacteristicsAsyncWithCacheMode(cacheMode);
    }
    pub fn GetCharacteristicsForUuidAsync(self: *@This(), characteristicUuid: *Guid) core.HResult!*IAsyncOperation(GattCharacteristicsResult) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCharacteristicsForUuidAsync(characteristicUuid);
    }
    pub fn GetCharacteristicsForUuidAsyncWithCacheMode(self: *@This(), characteristicUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattCharacteristicsResult) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCharacteristicsForUuidAsyncWithCacheMode(characteristicUuid, cacheMode);
    }
    pub fn GetIncludedServicesAsync(self: *@This()) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIncludedServicesAsync();
    }
    pub fn GetIncludedServicesAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIncludedServicesAsyncWithCacheMode(cacheMode);
    }
    pub fn GetIncludedServicesForUuidAsync(self: *@This(), serviceUuid: *Guid) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIncludedServicesForUuidAsync(serviceUuid);
    }
    pub fn GetIncludedServicesForUuidAsyncWithCacheMode(self: *@This(), serviceUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var this: ?*IGattDeviceService3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattDeviceService3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIncludedServicesForUuidAsyncWithCacheMode(serviceUuid, cacheMode);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(GattDeviceService) {
        const _f = @This().IGattDeviceServiceStaticsCache.get();
        return try _f.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelectorFromUuid(serviceUuid: *Guid) core.HResult!HSTRING {
        const _f = @This().IGattDeviceServiceStaticsCache.get();
        return try _f.GetDeviceSelectorFromUuid(serviceUuid);
    }
    pub fn GetDeviceSelectorFromShortId(serviceShortId: u16) core.HResult!HSTRING {
        const _f = @This().IGattDeviceServiceStaticsCache.get();
        return try _f.GetDeviceSelectorFromShortId(serviceShortId);
    }
    pub fn ConvertShortIdToUuid(shortId: u16) core.HResult!*Guid {
        const _f = @This().IGattDeviceServiceStaticsCache.get();
        return try _f.ConvertShortIdToUuid(shortId);
    }
    pub fn FromIdAsyncWithSharingMode(deviceId: HSTRING, sharingMode: GattSharingMode) core.HResult!*IAsyncOperation(GattDeviceService) {
        const _f = @This().IGattDeviceServiceStatics2Cache.get();
        return try _f.FromIdAsync(deviceId, sharingMode);
    }
    pub fn GetDeviceSelectorForBluetoothDeviceId(bluetoothDeviceId: *BluetoothDeviceId) core.HResult!HSTRING {
        const _f = @This().IGattDeviceServiceStatics2Cache.get();
        return try _f.GetDeviceSelectorForBluetoothDeviceId(bluetoothDeviceId);
    }
    pub fn GetDeviceSelectorForBluetoothDeviceIdWithCacheMode(bluetoothDeviceId: *BluetoothDeviceId, cacheMode: BluetoothCacheMode) core.HResult!HSTRING {
        const _f = @This().IGattDeviceServiceStatics2Cache.get();
        return try _f.GetDeviceSelectorForBluetoothDeviceIdWithCacheMode(bluetoothDeviceId, cacheMode);
    }
    pub fn GetDeviceSelectorForBluetoothDeviceIdAndUuid(bluetoothDeviceId: *BluetoothDeviceId, serviceUuid: *Guid) core.HResult!HSTRING {
        const _f = @This().IGattDeviceServiceStatics2Cache.get();
        return try _f.GetDeviceSelectorForBluetoothDeviceIdAndUuid(bluetoothDeviceId, serviceUuid);
    }
    pub fn GetDeviceSelectorForBluetoothDeviceIdAndUuidWithCacheMode(bluetoothDeviceId: *BluetoothDeviceId, serviceUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!HSTRING {
        const _f = @This().IGattDeviceServiceStatics2Cache.get();
        return try _f.GetDeviceSelectorForBluetoothDeviceIdAndUuidWithCacheMode(bluetoothDeviceId, serviceUuid, cacheMode);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattDeviceService.GUID;
    pub const IID: Guid = IGattDeviceService.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattDeviceService.SIGNATURE);
    var _IGattDeviceServiceStaticsCache: FactoryCache(IGattDeviceServiceStatics, RUNTIME_NAME) = .{};
    var _IGattDeviceServiceStatics2Cache: FactoryCache(IGattDeviceServiceStatics2, RUNTIME_NAME) = .{};
};
pub const GattDeviceServicesResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        const this: *IGattDeviceServicesResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        const this: *IGattDeviceServicesResult = @ptrCast(self);
        return try this.getProtocolError();
    }
    pub fn getServices(self: *@This()) core.HResult!*IVectorView(GattDeviceService) {
        const this: *IGattDeviceServicesResult = @ptrCast(self);
        return try this.getServices();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattDeviceServicesResult.GUID;
    pub const IID: Guid = IGattDeviceServicesResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattDeviceServicesResult.SIGNATURE);
};
pub const GattLocalCharacteristic = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.getUuid();
    }
    pub fn getStaticValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.getStaticValue();
    }
    pub fn getCharacteristicProperties(self: *@This()) core.HResult!GattCharacteristicProperties {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.getCharacteristicProperties();
    }
    pub fn getReadProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.getReadProtectionLevel();
    }
    pub fn getWriteProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.getWriteProtectionLevel();
    }
    pub fn CreateDescriptorAsync(self: *@This(), descriptorUuid: *Guid, parameters: *GattLocalDescriptorParameters) core.HResult!*IAsyncOperation(GattLocalDescriptorResult) {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.CreateDescriptorAsync(descriptorUuid, parameters);
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(GattLocalDescriptor) {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.getDescriptors();
    }
    pub fn getUserDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.getUserDescription();
    }
    pub fn getPresentationFormats(self: *@This()) core.HResult!*IVectorView(GattPresentationFormat) {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.getPresentationFormats();
    }
    pub fn getSubscribedClients(self: *@This()) core.HResult!*IVectorView(GattSubscribedClient) {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.getSubscribedClients();
    }
    pub fn addSubscribedClientsChanged(self: *@This(), handler: *TypedEventHandler(GattLocalCharacteristic,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.addSubscribedClientsChanged(handler);
    }
    pub fn removeSubscribedClientsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.removeSubscribedClientsChanged(token);
    }
    pub fn addReadRequested(self: *@This(), handler: *TypedEventHandler(GattLocalCharacteristic,GattReadRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.addReadRequested(handler);
    }
    pub fn removeReadRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.removeReadRequested(token);
    }
    pub fn addWriteRequested(self: *@This(), handler: *TypedEventHandler(GattLocalCharacteristic,GattWriteRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.addWriteRequested(handler);
    }
    pub fn removeWriteRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.removeWriteRequested(token);
    }
    pub fn NotifyValueAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(IVectorView(GattClientNotificationResult)) {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.NotifyValueAsync(value);
    }
    pub fn NotifyValueAsyncWithSubscribedClient(self: *@This(), value: *IBuffer, subscribedClient: *GattSubscribedClient) core.HResult!*IAsyncOperation(GattClientNotificationResult) {
        const this: *IGattLocalCharacteristic = @ptrCast(self);
        return try this.NotifyValueAsyncWithSubscribedClient(value, subscribedClient);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattLocalCharacteristic.GUID;
    pub const IID: Guid = IGattLocalCharacteristic.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattLocalCharacteristic.SIGNATURE);
};
pub const GattLocalCharacteristicParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putStaticValue(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.putStaticValue(value);
    }
    pub fn getStaticValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.getStaticValue();
    }
    pub fn putCharacteristicProperties(self: *@This(), value: GattCharacteristicProperties) core.HResult!void {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.putCharacteristicProperties(value);
    }
    pub fn getCharacteristicProperties(self: *@This()) core.HResult!GattCharacteristicProperties {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.getCharacteristicProperties();
    }
    pub fn putReadProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.putReadProtectionLevel(value);
    }
    pub fn getReadProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.getReadProtectionLevel();
    }
    pub fn putWriteProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.putWriteProtectionLevel(value);
    }
    pub fn getWriteProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.getWriteProtectionLevel();
    }
    pub fn putUserDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.putUserDescription(value);
    }
    pub fn getUserDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.getUserDescription();
    }
    pub fn getPresentationFormats(self: *@This()) core.HResult!*IVector(GattPresentationFormat) {
        const this: *IGattLocalCharacteristicParameters = @ptrCast(self);
        return try this.getPresentationFormats();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGattLocalCharacteristicParameters.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattLocalCharacteristicParameters.GUID;
    pub const IID: Guid = IGattLocalCharacteristicParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattLocalCharacteristicParameters.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const GattLocalCharacteristicResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCharacteristic(self: *@This()) core.HResult!*GattLocalCharacteristic {
        const this: *IGattLocalCharacteristicResult = @ptrCast(self);
        return try this.getCharacteristic();
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IGattLocalCharacteristicResult = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattLocalCharacteristicResult.GUID;
    pub const IID: Guid = IGattLocalCharacteristicResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattLocalCharacteristicResult.SIGNATURE);
};
pub const GattLocalDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        const this: *IGattLocalDescriptor = @ptrCast(self);
        return try this.getUuid();
    }
    pub fn getStaticValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IGattLocalDescriptor = @ptrCast(self);
        return try this.getStaticValue();
    }
    pub fn getReadProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattLocalDescriptor = @ptrCast(self);
        return try this.getReadProtectionLevel();
    }
    pub fn getWriteProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattLocalDescriptor = @ptrCast(self);
        return try this.getWriteProtectionLevel();
    }
    pub fn addReadRequested(self: *@This(), handler: *TypedEventHandler(GattLocalDescriptor,GattReadRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGattLocalDescriptor = @ptrCast(self);
        return try this.addReadRequested(handler);
    }
    pub fn removeReadRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattLocalDescriptor = @ptrCast(self);
        return try this.removeReadRequested(token);
    }
    pub fn addWriteRequested(self: *@This(), handler: *TypedEventHandler(GattLocalDescriptor,GattWriteRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGattLocalDescriptor = @ptrCast(self);
        return try this.addWriteRequested(handler);
    }
    pub fn removeWriteRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattLocalDescriptor = @ptrCast(self);
        return try this.removeWriteRequested(token);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattLocalDescriptor.GUID;
    pub const IID: Guid = IGattLocalDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattLocalDescriptor.SIGNATURE);
};
pub const GattLocalDescriptorParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putStaticValue(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IGattLocalDescriptorParameters = @ptrCast(self);
        return try this.putStaticValue(value);
    }
    pub fn getStaticValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IGattLocalDescriptorParameters = @ptrCast(self);
        return try this.getStaticValue();
    }
    pub fn putReadProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const this: *IGattLocalDescriptorParameters = @ptrCast(self);
        return try this.putReadProtectionLevel(value);
    }
    pub fn getReadProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattLocalDescriptorParameters = @ptrCast(self);
        return try this.getReadProtectionLevel();
    }
    pub fn putWriteProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const this: *IGattLocalDescriptorParameters = @ptrCast(self);
        return try this.putWriteProtectionLevel(value);
    }
    pub fn getWriteProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        const this: *IGattLocalDescriptorParameters = @ptrCast(self);
        return try this.getWriteProtectionLevel();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGattLocalDescriptorParameters.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattLocalDescriptorParameters.GUID;
    pub const IID: Guid = IGattLocalDescriptorParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattLocalDescriptorParameters.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const GattLocalDescriptorResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDescriptor(self: *@This()) core.HResult!*GattLocalDescriptor {
        const this: *IGattLocalDescriptorResult = @ptrCast(self);
        return try this.getDescriptor();
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IGattLocalDescriptorResult = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattLocalDescriptorResult.GUID;
    pub const IID: Guid = IGattLocalDescriptorResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattLocalDescriptorResult.SIGNATURE);
};
pub const GattLocalService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        const this: *IGattLocalService = @ptrCast(self);
        return try this.getUuid();
    }
    pub fn CreateCharacteristicAsync(self: *@This(), characteristicUuid: *Guid, parameters: *GattLocalCharacteristicParameters) core.HResult!*IAsyncOperation(GattLocalCharacteristicResult) {
        const this: *IGattLocalService = @ptrCast(self);
        return try this.CreateCharacteristicAsync(characteristicUuid, parameters);
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(GattLocalCharacteristic) {
        const this: *IGattLocalService = @ptrCast(self);
        return try this.getCharacteristics();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattLocalService.GUID;
    pub const IID: Guid = IGattLocalService.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattLocalService.SIGNATURE);
};
pub const GattOpenStatus = enum(i32) {
    Unspecified = 0,
    Success = 1,
    AlreadyOpened = 2,
    NotFound = 3,
    SharingViolation = 4,
    AccessDenied = 5,
};
pub const GattPresentationFormat = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFormatType(self: *@This()) core.HResult!u8 {
        const this: *IGattPresentationFormat = @ptrCast(self);
        return try this.getFormatType();
    }
    pub fn getExponent(self: *@This()) core.HResult!i32 {
        const this: *IGattPresentationFormat = @ptrCast(self);
        return try this.getExponent();
    }
    pub fn getUnit(self: *@This()) core.HResult!u16 {
        const this: *IGattPresentationFormat = @ptrCast(self);
        return try this.getUnit();
    }
    pub fn getNamespace(self: *@This()) core.HResult!u8 {
        const this: *IGattPresentationFormat = @ptrCast(self);
        return try this.getNamespace();
    }
    pub fn getDescription(self: *@This()) core.HResult!u16 {
        const this: *IGattPresentationFormat = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromParts(formatType: u8, exponent: i32, unit: u16, namespaceId: u8, description: u16) core.HResult!*GattPresentationFormat {
        const _f = @This().IGattPresentationFormatStatics2Cache.get();
        return try _f.FromParts(formatType, exponent, unit, namespaceId, description);
    }
    pub fn getBluetoothSigAssignedNumbers() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatStaticsCache.get();
        return try _f.getBluetoothSigAssignedNumbers();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattPresentationFormat.GUID;
    pub const IID: Guid = IGattPresentationFormat.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattPresentationFormat.SIGNATURE);
    var _IGattPresentationFormatStatics2Cache: FactoryCache(IGattPresentationFormatStatics2, RUNTIME_NAME) = .{};
    var _IGattPresentationFormatStaticsCache: FactoryCache(IGattPresentationFormatStatics, RUNTIME_NAME) = .{};
};
pub const GattPresentationFormatTypes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getBoolean() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getBoolean();
    }
    pub fn getBit2() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getBit2();
    }
    pub fn getNibble() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getNibble();
    }
    pub fn getUInt8() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUInt8();
    }
    pub fn getUInt12() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUInt12();
    }
    pub fn getUInt16() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUInt16();
    }
    pub fn getUInt24() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUInt24();
    }
    pub fn getUInt32() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUInt32();
    }
    pub fn getUInt48() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUInt48();
    }
    pub fn getUInt64() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUInt64();
    }
    pub fn getUInt128() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUInt128();
    }
    pub fn getSInt8() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getSInt8();
    }
    pub fn getSInt12() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getSInt12();
    }
    pub fn getSInt16() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getSInt16();
    }
    pub fn getSInt24() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getSInt24();
    }
    pub fn getSInt32() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getSInt32();
    }
    pub fn getSInt48() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getSInt48();
    }
    pub fn getSInt64() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getSInt64();
    }
    pub fn getSInt128() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getSInt128();
    }
    pub fn getFloat32() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getFloat32();
    }
    pub fn getFloat64() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getFloat64();
    }
    pub fn getSFloat() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getSFloat();
    }
    pub fn getFloat() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getFloat();
    }
    pub fn getDUInt16() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getDUInt16();
    }
    pub fn getUtf8() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUtf8();
    }
    pub fn getUtf16() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getUtf16();
    }
    pub fn getStruct() core.HResult!u8 {
        const _f = @This().IGattPresentationFormatTypesStaticsCache.get();
        return try _f.getStruct();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormatTypes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGattPresentationFormatTypesStaticsCache: FactoryCache(IGattPresentationFormatTypesStatics, RUNTIME_NAME) = .{};
};
pub const GattProtectionLevel = enum(i32) {
    Plain = 0,
    AuthenticationRequired = 1,
    EncryptionRequired = 2,
    EncryptionAndAuthenticationRequired = 3,
};
pub const GattProtocolError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getInvalidHandle() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getInvalidHandle();
    }
    pub fn getReadNotPermitted() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getReadNotPermitted();
    }
    pub fn getWriteNotPermitted() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getWriteNotPermitted();
    }
    pub fn getInvalidPdu() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getInvalidPdu();
    }
    pub fn getInsufficientAuthentication() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getInsufficientAuthentication();
    }
    pub fn getRequestNotSupported() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getRequestNotSupported();
    }
    pub fn getInvalidOffset() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getInvalidOffset();
    }
    pub fn getInsufficientAuthorization() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getInsufficientAuthorization();
    }
    pub fn getPrepareQueueFull() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getPrepareQueueFull();
    }
    pub fn getAttributeNotFound() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getAttributeNotFound();
    }
    pub fn getAttributeNotLong() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getAttributeNotLong();
    }
    pub fn getInsufficientEncryptionKeySize() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getInsufficientEncryptionKeySize();
    }
    pub fn getInvalidAttributeValueLength() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getInvalidAttributeValueLength();
    }
    pub fn getUnlikelyError() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getUnlikelyError();
    }
    pub fn getInsufficientEncryption() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getInsufficientEncryption();
    }
    pub fn getUnsupportedGroupType() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getUnsupportedGroupType();
    }
    pub fn getInsufficientResources() core.HResult!u8 {
        const _f = @This().IGattProtocolErrorStaticsCache.get();
        return try _f.getInsufficientResources();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtocolError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGattProtocolErrorStaticsCache: FactoryCache(IGattProtocolErrorStatics, RUNTIME_NAME) = .{};
};
pub const GattReadClientCharacteristicConfigurationDescriptorResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        const this: *IGattReadClientCharacteristicConfigurationDescriptorResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getClientCharacteristicConfigurationDescriptor(self: *@This()) core.HResult!GattClientCharacteristicConfigurationDescriptorValue {
        const this: *IGattReadClientCharacteristicConfigurationDescriptorResult = @ptrCast(self);
        return try this.getClientCharacteristicConfigurationDescriptor();
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        var this: ?*IGattReadClientCharacteristicConfigurationDescriptorResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattReadClientCharacteristicConfigurationDescriptorResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtocolError();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadClientCharacteristicConfigurationDescriptorResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattReadClientCharacteristicConfigurationDescriptorResult.GUID;
    pub const IID: Guid = IGattReadClientCharacteristicConfigurationDescriptorResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattReadClientCharacteristicConfigurationDescriptorResult.SIGNATURE);
};
pub const GattReadRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOffset(self: *@This()) core.HResult!u32 {
        const this: *IGattReadRequest = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        const this: *IGattReadRequest = @ptrCast(self);
        return try this.getLength();
    }
    pub fn getState(self: *@This()) core.HResult!GattRequestState {
        const this: *IGattReadRequest = @ptrCast(self);
        return try this.getState();
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(GattReadRequest,GattRequestStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGattReadRequest = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattReadRequest = @ptrCast(self);
        return try this.removeStateChanged(token);
    }
    pub fn RespondWithValue(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IGattReadRequest = @ptrCast(self);
        return try this.RespondWithValue(value);
    }
    pub fn RespondWithProtocolError(self: *@This(), protocolError: u8) core.HResult!void {
        const this: *IGattReadRequest = @ptrCast(self);
        return try this.RespondWithProtocolError(protocolError);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattReadRequest.GUID;
    pub const IID: Guid = IGattReadRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattReadRequest.SIGNATURE);
};
pub const GattReadRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*GattSession {
        const this: *IGattReadRequestedEventArgs = @ptrCast(self);
        return try this.getSession();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IGattReadRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn GetRequestAsync(self: *@This()) core.HResult!*IAsyncOperation(GattReadRequest) {
        const this: *IGattReadRequestedEventArgs = @ptrCast(self);
        return try this.GetRequestAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattReadRequestedEventArgs.GUID;
    pub const IID: Guid = IGattReadRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattReadRequestedEventArgs.SIGNATURE);
};
pub const GattReadResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        const this: *IGattReadResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IGattReadResult = @ptrCast(self);
        return try this.getValue();
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        var this: ?*IGattReadResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattReadResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtocolError();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattReadResult.GUID;
    pub const IID: Guid = IGattReadResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattReadResult.SIGNATURE);
};
pub const GattReliableWriteTransaction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn WriteValue(self: *@This(), characteristic: *GattCharacteristic, value: *IBuffer) core.HResult!void {
        const this: *IGattReliableWriteTransaction = @ptrCast(self);
        return try this.WriteValue(characteristic, value);
    }
    pub fn CommitAsync(self: *@This()) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        const this: *IGattReliableWriteTransaction = @ptrCast(self);
        return try this.CommitAsync();
    }
    pub fn CommitWithResultAsync(self: *@This()) core.HResult!*IAsyncOperation(GattWriteResult) {
        var this: ?*IGattReliableWriteTransaction2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattReliableWriteTransaction2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CommitWithResultAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGattReliableWriteTransaction.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattReliableWriteTransaction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattReliableWriteTransaction.GUID;
    pub const IID: Guid = IGattReliableWriteTransaction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattReliableWriteTransaction.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const GattRequestState = enum(i32) {
    Pending = 0,
    Completed = 1,
    Canceled = 2,
};
pub const GattRequestStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!GattRequestState {
        const this: *IGattRequestStateChangedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IGattRequestStateChangedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattRequestStateChangedEventArgs.GUID;
    pub const IID: Guid = IGattRequestStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattRequestStateChangedEventArgs.SIGNATURE);
};
pub const GattServiceProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getService(self: *@This()) core.HResult!*GattLocalService {
        const this: *IGattServiceProvider = @ptrCast(self);
        return try this.getService();
    }
    pub fn getAdvertisementStatus(self: *@This()) core.HResult!GattServiceProviderAdvertisementStatus {
        const this: *IGattServiceProvider = @ptrCast(self);
        return try this.getAdvertisementStatus();
    }
    pub fn addAdvertisementStatusChanged(self: *@This(), handler: *TypedEventHandler(GattServiceProvider,GattServiceProviderAdvertisementStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGattServiceProvider = @ptrCast(self);
        return try this.addAdvertisementStatusChanged(handler);
    }
    pub fn removeAdvertisementStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattServiceProvider = @ptrCast(self);
        return try this.removeAdvertisementStatusChanged(token);
    }
    pub fn StartAdvertising(self: *@This()) core.HResult!void {
        const this: *IGattServiceProvider = @ptrCast(self);
        return try this.StartAdvertising();
    }
    pub fn StartAdvertisingWithParameters(self: *@This(), parameters: *GattServiceProviderAdvertisingParameters) core.HResult!void {
        const this: *IGattServiceProvider = @ptrCast(self);
        return try this.StartAdvertisingWithParameters(parameters);
    }
    pub fn StopAdvertising(self: *@This()) core.HResult!void {
        const this: *IGattServiceProvider = @ptrCast(self);
        return try this.StopAdvertising();
    }
    pub fn UpdateAdvertisingParameters(self: *@This(), parameters: *GattServiceProviderAdvertisingParameters) core.HResult!void {
        var this: ?*IGattServiceProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattServiceProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateAdvertisingParameters(parameters);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAsync(serviceUuid: *Guid) core.HResult!*IAsyncOperation(GattServiceProviderResult) {
        const _f = @This().IGattServiceProviderStaticsCache.get();
        return try _f.CreateAsync(serviceUuid);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattServiceProvider.GUID;
    pub const IID: Guid = IGattServiceProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattServiceProvider.SIGNATURE);
    var _IGattServiceProviderStaticsCache: FactoryCache(IGattServiceProviderStatics, RUNTIME_NAME) = .{};
};
pub const GattServiceProviderAdvertisementStatus = enum(i32) {
    Created = 0,
    Stopped = 1,
    Started = 2,
    Aborted = 3,
    StartedWithoutAllAdvertisementData = 4,
};
pub const GattServiceProviderAdvertisementStatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IGattServiceProviderAdvertisementStatusChangedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub fn getStatus(self: *@This()) core.HResult!GattServiceProviderAdvertisementStatus {
        const this: *IGattServiceProviderAdvertisementStatusChangedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattServiceProviderAdvertisementStatusChangedEventArgs.GUID;
    pub const IID: Guid = IGattServiceProviderAdvertisementStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattServiceProviderAdvertisementStatusChangedEventArgs.SIGNATURE);
};
pub const GattServiceProviderAdvertisingParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putIsConnectable(self: *@This(), value: bool) core.HResult!void {
        const this: *IGattServiceProviderAdvertisingParameters = @ptrCast(self);
        return try this.putIsConnectable(value);
    }
    pub fn getIsConnectable(self: *@This()) core.HResult!bool {
        const this: *IGattServiceProviderAdvertisingParameters = @ptrCast(self);
        return try this.getIsConnectable();
    }
    pub fn putIsDiscoverable(self: *@This(), value: bool) core.HResult!void {
        const this: *IGattServiceProviderAdvertisingParameters = @ptrCast(self);
        return try this.putIsDiscoverable(value);
    }
    pub fn getIsDiscoverable(self: *@This()) core.HResult!bool {
        const this: *IGattServiceProviderAdvertisingParameters = @ptrCast(self);
        return try this.getIsDiscoverable();
    }
    pub fn putServiceData(self: *@This(), value: *IBuffer) core.HResult!void {
        var this: ?*IGattServiceProviderAdvertisingParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattServiceProviderAdvertisingParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putServiceData(value);
    }
    pub fn getServiceData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IGattServiceProviderAdvertisingParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattServiceProviderAdvertisingParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServiceData();
    }
    pub fn getUseLowEnergyUncoded1MPhyAsSecondaryPhy(self: *@This()) core.HResult!bool {
        var this: ?*IGattServiceProviderAdvertisingParameters3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattServiceProviderAdvertisingParameters3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseLowEnergyUncoded1MPhyAsSecondaryPhy();
    }
    pub fn putUseLowEnergyUncoded1MPhyAsSecondaryPhy(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IGattServiceProviderAdvertisingParameters3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattServiceProviderAdvertisingParameters3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseLowEnergyUncoded1MPhyAsSecondaryPhy(value);
    }
    pub fn getUseLowEnergyUncoded2MPhyAsSecondaryPhy(self: *@This()) core.HResult!bool {
        var this: ?*IGattServiceProviderAdvertisingParameters3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattServiceProviderAdvertisingParameters3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseLowEnergyUncoded2MPhyAsSecondaryPhy();
    }
    pub fn putUseLowEnergyUncoded2MPhyAsSecondaryPhy(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IGattServiceProviderAdvertisingParameters3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattServiceProviderAdvertisingParameters3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseLowEnergyUncoded2MPhyAsSecondaryPhy(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGattServiceProviderAdvertisingParameters.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattServiceProviderAdvertisingParameters.GUID;
    pub const IID: Guid = IGattServiceProviderAdvertisingParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattServiceProviderAdvertisingParameters.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const GattServiceProviderResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IGattServiceProviderResult = @ptrCast(self);
        return try this.getError();
    }
    pub fn getServiceProvider(self: *@This()) core.HResult!*GattServiceProvider {
        const this: *IGattServiceProviderResult = @ptrCast(self);
        return try this.getServiceProvider();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattServiceProviderResult.GUID;
    pub const IID: Guid = IGattServiceProviderResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattServiceProviderResult.SIGNATURE);
};
pub const GattServiceUuids = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAlertNotification() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getAlertNotification();
    }
    pub fn getCurrentTime() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getCurrentTime();
    }
    pub fn getCyclingPower() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getCyclingPower();
    }
    pub fn getDeviceInformation() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getDeviceInformation();
    }
    pub fn getHumanInterfaceDevice() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getHumanInterfaceDevice();
    }
    pub fn getImmediateAlert() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getImmediateAlert();
    }
    pub fn getLinkLoss() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getLinkLoss();
    }
    pub fn getLocationAndNavigation() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getLocationAndNavigation();
    }
    pub fn getNextDstChange() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getNextDstChange();
    }
    pub fn getPhoneAlertStatus() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getPhoneAlertStatus();
    }
    pub fn getReferenceTimeUpdate() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getReferenceTimeUpdate();
    }
    pub fn getScanParameters() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getScanParameters();
    }
    pub fn getTxPower() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStatics2Cache.get();
        return try _f.getTxPower();
    }
    pub fn getBattery() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStaticsCache.get();
        return try _f.getBattery();
    }
    pub fn getBloodPressure() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStaticsCache.get();
        return try _f.getBloodPressure();
    }
    pub fn getCyclingSpeedAndCadence() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStaticsCache.get();
        return try _f.getCyclingSpeedAndCadence();
    }
    pub fn getGenericAccess() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStaticsCache.get();
        return try _f.getGenericAccess();
    }
    pub fn getGenericAttribute() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStaticsCache.get();
        return try _f.getGenericAttribute();
    }
    pub fn getGlucose() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStaticsCache.get();
        return try _f.getGlucose();
    }
    pub fn getHealthThermometer() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStaticsCache.get();
        return try _f.getHealthThermometer();
    }
    pub fn getHeartRate() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStaticsCache.get();
        return try _f.getHeartRate();
    }
    pub fn getRunningSpeedAndCadence() core.HResult!*Guid {
        const _f = @This().IGattServiceUuidsStaticsCache.get();
        return try _f.getRunningSpeedAndCadence();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceUuids";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGattServiceUuidsStatics2Cache: FactoryCache(IGattServiceUuidsStatics2, RUNTIME_NAME) = .{};
    var _IGattServiceUuidsStaticsCache: FactoryCache(IGattServiceUuidsStatics, RUNTIME_NAME) = .{};
};
pub const GattSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!*BluetoothDeviceId {
        const this: *IGattSession = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getCanMaintainConnection(self: *@This()) core.HResult!bool {
        const this: *IGattSession = @ptrCast(self);
        return try this.getCanMaintainConnection();
    }
    pub fn putMaintainConnection(self: *@This(), value: bool) core.HResult!void {
        const this: *IGattSession = @ptrCast(self);
        return try this.putMaintainConnection(value);
    }
    pub fn getMaintainConnection(self: *@This()) core.HResult!bool {
        const this: *IGattSession = @ptrCast(self);
        return try this.getMaintainConnection();
    }
    pub fn getMaxPduSize(self: *@This()) core.HResult!u16 {
        const this: *IGattSession = @ptrCast(self);
        return try this.getMaxPduSize();
    }
    pub fn getSessionStatus(self: *@This()) core.HResult!GattSessionStatus {
        const this: *IGattSession = @ptrCast(self);
        return try this.getSessionStatus();
    }
    pub fn addMaxPduSizeChanged(self: *@This(), handler: *TypedEventHandler(GattSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGattSession = @ptrCast(self);
        return try this.addMaxPduSizeChanged(handler);
    }
    pub fn removeMaxPduSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattSession = @ptrCast(self);
        return try this.removeMaxPduSizeChanged(token);
    }
    pub fn addSessionStatusChanged(self: *@This(), handler: *TypedEventHandler(GattSession,GattSessionStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGattSession = @ptrCast(self);
        return try this.addSessionStatusChanged(handler);
    }
    pub fn removeSessionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattSession = @ptrCast(self);
        return try this.removeSessionStatusChanged(token);
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
    pub fn FromDeviceIdAsync(deviceId: *BluetoothDeviceId) core.HResult!*IAsyncOperation(GattSession) {
        const _f = @This().IGattSessionStaticsCache.get();
        return try _f.FromDeviceIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattSession.GUID;
    pub const IID: Guid = IGattSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattSession.SIGNATURE);
    var _IGattSessionStaticsCache: FactoryCache(IGattSessionStatics, RUNTIME_NAME) = .{};
};
pub const GattSessionStatus = enum(i32) {
    Closed = 0,
    Active = 1,
};
pub const GattSessionStatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IGattSessionStatusChangedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub fn getStatus(self: *@This()) core.HResult!GattSessionStatus {
        const this: *IGattSessionStatusChangedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattSessionStatusChangedEventArgs.GUID;
    pub const IID: Guid = IGattSessionStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattSessionStatusChangedEventArgs.SIGNATURE);
};
pub const GattSharingMode = enum(i32) {
    Unspecified = 0,
    Exclusive = 1,
    SharedReadOnly = 2,
    SharedReadAndWrite = 3,
};
pub const GattSubscribedClient = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*GattSession {
        const this: *IGattSubscribedClient = @ptrCast(self);
        return try this.getSession();
    }
    pub fn getMaxNotificationSize(self: *@This()) core.HResult!u16 {
        const this: *IGattSubscribedClient = @ptrCast(self);
        return try this.getMaxNotificationSize();
    }
    pub fn addMaxNotificationSizeChanged(self: *@This(), handler: *TypedEventHandler(GattSubscribedClient,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGattSubscribedClient = @ptrCast(self);
        return try this.addMaxNotificationSizeChanged(handler);
    }
    pub fn removeMaxNotificationSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattSubscribedClient = @ptrCast(self);
        return try this.removeMaxNotificationSizeChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattSubscribedClient.GUID;
    pub const IID: Guid = IGattSubscribedClient.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattSubscribedClient.SIGNATURE);
};
pub const GattValueChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCharacteristicValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IGattValueChangedEventArgs = @ptrCast(self);
        return try this.getCharacteristicValue();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IGattValueChangedEventArgs = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattValueChangedEventArgs.GUID;
    pub const IID: Guid = IGattValueChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattValueChangedEventArgs.SIGNATURE);
};
pub const GattWriteOption = enum(i32) {
    WriteWithResponse = 0,
    WriteWithoutResponse = 1,
};
pub const GattWriteRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IGattWriteRequest = @ptrCast(self);
        return try this.getValue();
    }
    pub fn getOffset(self: *@This()) core.HResult!u32 {
        const this: *IGattWriteRequest = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn getOption(self: *@This()) core.HResult!GattWriteOption {
        const this: *IGattWriteRequest = @ptrCast(self);
        return try this.getOption();
    }
    pub fn getState(self: *@This()) core.HResult!GattRequestState {
        const this: *IGattWriteRequest = @ptrCast(self);
        return try this.getState();
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(GattWriteRequest,GattRequestStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGattWriteRequest = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGattWriteRequest = @ptrCast(self);
        return try this.removeStateChanged(token);
    }
    pub fn Respond(self: *@This()) core.HResult!void {
        const this: *IGattWriteRequest = @ptrCast(self);
        return try this.Respond();
    }
    pub fn RespondWithProtocolError(self: *@This(), protocolError: u8) core.HResult!void {
        const this: *IGattWriteRequest = @ptrCast(self);
        return try this.RespondWithProtocolError(protocolError);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattWriteRequest.GUID;
    pub const IID: Guid = IGattWriteRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattWriteRequest.SIGNATURE);
};
pub const GattWriteRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*GattSession {
        const this: *IGattWriteRequestedEventArgs = @ptrCast(self);
        return try this.getSession();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IGattWriteRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn GetRequestAsync(self: *@This()) core.HResult!*IAsyncOperation(GattWriteRequest) {
        const this: *IGattWriteRequestedEventArgs = @ptrCast(self);
        return try this.GetRequestAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattWriteRequestedEventArgs.GUID;
    pub const IID: Guid = IGattWriteRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattWriteRequestedEventArgs.SIGNATURE);
};
pub const GattWriteResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        const this: *IGattWriteResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        const this: *IGattWriteResult = @ptrCast(self);
        return try this.getProtocolError();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattWriteResult.GUID;
    pub const IID: Guid = IGattWriteResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattWriteResult.SIGNATURE);
};
pub const IGattCharacteristic = extern struct {
    vtable: *const VTable,
    pub fn GetDescriptors(self: *@This(), descriptorUuid: *Guid) core.HResult!*IVectorView(GattDescriptor) {
        var _r: *IVectorView(GattDescriptor) = undefined;
        const _c = self.vtable.GetDescriptors(@ptrCast(self), descriptorUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristicProperties(self: *@This()) core.HResult!GattCharacteristicProperties {
        var _r: GattCharacteristicProperties = undefined;
        const _c = self.vtable.get_CharacteristicProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_ProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_ProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Uuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributeHandle(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_AttributeHandle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresentationFormats(self: *@This()) core.HResult!*IVectorView(GattPresentationFormat) {
        var _r: *IVectorView(GattPresentationFormat) = undefined;
        const _c = self.vtable.get_PresentationFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadValueAsync(self: *@This()) core.HResult!*IAsyncOperation(GattReadResult) {
        var _r: *IAsyncOperation(GattReadResult) = undefined;
        const _c = self.vtable.ReadValueAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadValueAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattReadResult) {
        var _r: *IAsyncOperation(GattReadResult) = undefined;
        const _c = self.vtable.ReadValueAsyncWithCacheMode(@ptrCast(self), cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteValueAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        var _r: *IAsyncOperation(GattCommunicationStatus) = undefined;
        const _c = self.vtable.WriteValueAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteValueAsyncWithWriteOption(self: *@This(), value: *IBuffer, writeOption: GattWriteOption) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        var _r: *IAsyncOperation(GattCommunicationStatus) = undefined;
        const _c = self.vtable.WriteValueAsyncWithWriteOption(@ptrCast(self), value, writeOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadClientCharacteristicConfigurationDescriptorAsync(self: *@This()) core.HResult!*IAsyncOperation(GattReadClientCharacteristicConfigurationDescriptorResult) {
        var _r: *IAsyncOperation(GattReadClientCharacteristicConfigurationDescriptorResult) = undefined;
        const _c = self.vtable.ReadClientCharacteristicConfigurationDescriptorAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteClientCharacteristicConfigurationDescriptorAsync(self: *@This(), clientCharacteristicConfigurationDescriptorValue: GattClientCharacteristicConfigurationDescriptorValue) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        var _r: *IAsyncOperation(GattCommunicationStatus) = undefined;
        const _c = self.vtable.WriteClientCharacteristicConfigurationDescriptorAsync(@ptrCast(self), clientCharacteristicConfigurationDescriptorValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addValueChanged(self: *@This(), valueChangedHandler: *TypedEventHandler(GattCharacteristic,GattValueChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ValueChanged(@ptrCast(self), valueChangedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeValueChanged(self: *@This(), valueChangedEventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ValueChanged(@ptrCast(self), valueChangedEventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59cb50c1-5934-4f68-a198-eb864fa44e6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDescriptors: *const fn(self: *anyopaque, descriptorUuid: *Guid, _r: **IVectorView(GattDescriptor)) callconv(.winapi) HRESULT,
        get_CharacteristicProperties: *const fn(self: *anyopaque, _r: *GattCharacteristicProperties) callconv(.winapi) HRESULT,
        get_ProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
        put_ProtectionLevel: *const fn(self: *anyopaque, value: GattProtectionLevel) callconv(.winapi) HRESULT,
        get_UserDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Uuid: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_AttributeHandle: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_PresentationFormats: *const fn(self: *anyopaque, _r: **IVectorView(GattPresentationFormat)) callconv(.winapi) HRESULT,
        ReadValueAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattReadResult)) callconv(.winapi) HRESULT,
        ReadValueAsyncWithCacheMode: *const fn(self: *anyopaque, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattReadResult)) callconv(.winapi) HRESULT,
        WriteValueAsync: *const fn(self: *anyopaque, value: *IBuffer, _r: **IAsyncOperation(GattCommunicationStatus)) callconv(.winapi) HRESULT,
        WriteValueAsyncWithWriteOption: *const fn(self: *anyopaque, value: *IBuffer, writeOption: GattWriteOption, _r: **IAsyncOperation(GattCommunicationStatus)) callconv(.winapi) HRESULT,
        ReadClientCharacteristicConfigurationDescriptorAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattReadClientCharacteristicConfigurationDescriptorResult)) callconv(.winapi) HRESULT,
        WriteClientCharacteristicConfigurationDescriptorAsync: *const fn(self: *anyopaque, clientCharacteristicConfigurationDescriptorValue: GattClientCharacteristicConfigurationDescriptorValue, _r: **IAsyncOperation(GattCommunicationStatus)) callconv(.winapi) HRESULT,
        add_ValueChanged: *const fn(self: *anyopaque, valueChangedHandler: *TypedEventHandler(GattCharacteristic,GattValueChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ValueChanged: *const fn(self: *anyopaque, valueChangedEventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristic2 = extern struct {
    vtable: *const VTable,
    pub fn getService(self: *@This()) core.HResult!*GattDeviceService {
        var _r: *GattDeviceService = undefined;
        const _c = self.vtable.get_Service(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllDescriptors(self: *@This()) core.HResult!*IVectorView(GattDescriptor) {
        var _r: *IVectorView(GattDescriptor) = undefined;
        const _c = self.vtable.GetAllDescriptors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae1ab578-ec06-4764-b780-9835a1d35d6e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Service: *const fn(self: *anyopaque, _r: **GattDeviceService) callconv(.winapi) HRESULT,
        GetAllDescriptors: *const fn(self: *anyopaque, _r: **IVectorView(GattDescriptor)) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristic3 = extern struct {
    vtable: *const VTable,
    pub fn GetDescriptorsAsync(self: *@This()) core.HResult!*IAsyncOperation(GattDescriptorsResult) {
        var _r: *IAsyncOperation(GattDescriptorsResult) = undefined;
        const _c = self.vtable.GetDescriptorsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDescriptorsAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDescriptorsResult) {
        var _r: *IAsyncOperation(GattDescriptorsResult) = undefined;
        const _c = self.vtable.GetDescriptorsAsyncWithCacheMode(@ptrCast(self), cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDescriptorsForUuidAsync(self: *@This(), descriptorUuid: *Guid) core.HResult!*IAsyncOperation(GattDescriptorsResult) {
        var _r: *IAsyncOperation(GattDescriptorsResult) = undefined;
        const _c = self.vtable.GetDescriptorsForUuidAsync(@ptrCast(self), descriptorUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDescriptorsForUuidAsyncWithCacheMode(self: *@This(), descriptorUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDescriptorsResult) {
        var _r: *IAsyncOperation(GattDescriptorsResult) = undefined;
        const _c = self.vtable.GetDescriptorsForUuidAsyncWithCacheMode(@ptrCast(self), descriptorUuid, cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteValueWithResultAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(GattWriteResult) {
        var _r: *IAsyncOperation(GattWriteResult) = undefined;
        const _c = self.vtable.WriteValueWithResultAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteValueWithResultAsyncWithWriteOption(self: *@This(), value: *IBuffer, writeOption: GattWriteOption) core.HResult!*IAsyncOperation(GattWriteResult) {
        var _r: *IAsyncOperation(GattWriteResult) = undefined;
        const _c = self.vtable.WriteValueWithResultAsyncWithWriteOption(@ptrCast(self), value, writeOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteClientCharacteristicConfigurationDescriptorWithResultAsync(self: *@This(), clientCharacteristicConfigurationDescriptorValue: GattClientCharacteristicConfigurationDescriptorValue) core.HResult!*IAsyncOperation(GattWriteResult) {
        var _r: *IAsyncOperation(GattWriteResult) = undefined;
        const _c = self.vtable.WriteClientCharacteristicConfigurationDescriptorWithResultAsync(@ptrCast(self), clientCharacteristicConfigurationDescriptorValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f3c663e-93d4-406b-b817-db81f8ed53b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDescriptorsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattDescriptorsResult)) callconv(.winapi) HRESULT,
        GetDescriptorsAsyncWithCacheMode: *const fn(self: *anyopaque, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattDescriptorsResult)) callconv(.winapi) HRESULT,
        GetDescriptorsForUuidAsync: *const fn(self: *anyopaque, descriptorUuid: *Guid, _r: **IAsyncOperation(GattDescriptorsResult)) callconv(.winapi) HRESULT,
        GetDescriptorsForUuidAsyncWithCacheMode: *const fn(self: *anyopaque, descriptorUuid: *Guid, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattDescriptorsResult)) callconv(.winapi) HRESULT,
        WriteValueWithResultAsync: *const fn(self: *anyopaque, value: *IBuffer, _r: **IAsyncOperation(GattWriteResult)) callconv(.winapi) HRESULT,
        WriteValueWithResultAsyncWithWriteOption: *const fn(self: *anyopaque, value: *IBuffer, writeOption: GattWriteOption, _r: **IAsyncOperation(GattWriteResult)) callconv(.winapi) HRESULT,
        WriteClientCharacteristicConfigurationDescriptorWithResultAsync: *const fn(self: *anyopaque, clientCharacteristicConfigurationDescriptorValue: GattClientCharacteristicConfigurationDescriptorValue, _r: **IAsyncOperation(GattWriteResult)) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicStatics = extern struct {
    vtable: *const VTable,
    pub fn ConvertShortIdToUuid(self: *@This(), shortId: u16) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.ConvertShortIdToUuid(@ptrCast(self), shortId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59cb50c3-5934-4f68-a198-eb864fa44e6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConvertShortIdToUuid: *const fn(self: *anyopaque, shortId: u16, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicUuidsStatics = extern struct {
    vtable: *const VTable,
    pub fn getBatteryLevel(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BatteryLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBloodPressureFeature(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BloodPressureFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBloodPressureMeasurement(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BloodPressureMeasurement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBodySensorLocation(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BodySensorLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCscFeature(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CscFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCscMeasurement(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CscMeasurement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGlucoseFeature(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GlucoseFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGlucoseMeasurement(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GlucoseMeasurement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGlucoseMeasurementContext(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GlucoseMeasurementContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeartRateControlPoint(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HeartRateControlPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeartRateMeasurement(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HeartRateMeasurement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIntermediateCuffPressure(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_IntermediateCuffPressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIntermediateTemperature(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_IntermediateTemperature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMeasurementInterval(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_MeasurementInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecordAccessControlPoint(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_RecordAccessControlPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRscFeature(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_RscFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRscMeasurement(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_RscMeasurement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSCControlPoint(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SCControlPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSensorLocation(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SensorLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTemperatureMeasurement(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TemperatureMeasurement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTemperatureType(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TemperatureType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicUuidsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58fa4586-b1de-470c-b7de-0d11ff44f4b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BatteryLevel: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_BloodPressureFeature: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_BloodPressureMeasurement: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_BodySensorLocation: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CscFeature: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CscMeasurement: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GlucoseFeature: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GlucoseMeasurement: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GlucoseMeasurementContext: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_HeartRateControlPoint: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_HeartRateMeasurement: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_IntermediateCuffPressure: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_IntermediateTemperature: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_MeasurementInterval: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_RecordAccessControlPoint: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_RscFeature: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_RscMeasurement: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SCControlPoint: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SensorLocation: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TemperatureMeasurement: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TemperatureType: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicUuidsStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getAlertCategoryId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_AlertCategoryId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlertCategoryIdBitMask(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_AlertCategoryIdBitMask(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlertLevel(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_AlertLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlertNotificationControlPoint(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_AlertNotificationControlPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlertStatus(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_AlertStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGapAppearance(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GapAppearance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBootKeyboardInputReport(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BootKeyboardInputReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBootKeyboardOutputReport(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BootKeyboardOutputReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBootMouseInputReport(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BootMouseInputReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentTime(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CurrentTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingPowerControlPoint(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CyclingPowerControlPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingPowerFeature(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CyclingPowerFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingPowerMeasurement(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CyclingPowerMeasurement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingPowerVector(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CyclingPowerVector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateTime(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDayDateTime(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DayDateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDayOfWeek(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DayOfWeek(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGapDeviceName(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GapDeviceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDstOffset(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DstOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExactTime256(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ExactTime256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirmwareRevisionString(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_FirmwareRevisionString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareRevisionString(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HardwareRevisionString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHidControlPoint(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HidControlPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHidInformation(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HidInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIeee1107320601RegulatoryCertificationDataList(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Ieee1107320601RegulatoryCertificationDataList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLnControlPoint(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LnControlPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLnFeature(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LnFeature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalTimeInformation(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LocalTimeInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationAndSpeed(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LocationAndSpeed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManufacturerNameString(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ManufacturerNameString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelNumberString(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ModelNumberString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNavigation(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Navigation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewAlert(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_NewAlert(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGapPeripheralPreferredConnectionParameters(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GapPeripheralPreferredConnectionParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGapPeripheralPrivacyFlag(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GapPeripheralPrivacyFlag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPnpId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_PnpId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPositionQuality(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_PositionQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocolMode(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ProtocolMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGapReconnectionAddress(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GapReconnectionAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReferenceTimeInformation(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ReferenceTimeInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReport(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Report(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReportMap(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ReportMap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRingerControlPoint(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_RingerControlPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRingerSetting(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_RingerSetting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScanIntervalWindow(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ScanIntervalWindow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScanRefresh(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ScanRefresh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSerialNumberString(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SerialNumberString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGattServiceChanged(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GattServiceChanged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSoftwareRevisionString(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SoftwareRevisionString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedNewAlertCategory(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SupportedNewAlertCategory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportUnreadAlertCategory(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SupportUnreadAlertCategory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SystemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeAccuracy(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TimeAccuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeSource(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TimeSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeUpdateControlPoint(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TimeUpdateControlPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeUpdateState(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TimeUpdateState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeWithDst(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TimeWithDst(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeZone(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TimeZone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTxPowerLevel(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TxPowerLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnreadAlertStatus(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_UnreadAlertStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicUuidsStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1855b425-d46e-4a2c-9c3f-ed6dea29e7be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlertCategoryId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_AlertCategoryIdBitMask: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_AlertLevel: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_AlertNotificationControlPoint: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_AlertStatus: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GapAppearance: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_BootKeyboardInputReport: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_BootKeyboardOutputReport: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_BootMouseInputReport: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CurrentTime: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CyclingPowerControlPoint: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CyclingPowerFeature: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CyclingPowerMeasurement: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CyclingPowerVector: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_DateTime: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_DayDateTime: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_DayOfWeek: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GapDeviceName: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_DstOffset: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ExactTime256: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_FirmwareRevisionString: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_HardwareRevisionString: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_HidControlPoint: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_HidInformation: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Ieee1107320601RegulatoryCertificationDataList: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_LnControlPoint: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_LnFeature: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_LocalTimeInformation: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_LocationAndSpeed: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ManufacturerNameString: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ModelNumberString: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Navigation: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_NewAlert: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GapPeripheralPreferredConnectionParameters: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GapPeripheralPrivacyFlag: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_PnpId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_PositionQuality: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ProtocolMode: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GapReconnectionAddress: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ReferenceTimeInformation: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Report: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ReportMap: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_RingerControlPoint: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_RingerSetting: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ScanIntervalWindow: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ScanRefresh: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SerialNumberString: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GattServiceChanged: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SoftwareRevisionString: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SupportedNewAlertCategory: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SupportUnreadAlertCategory: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SystemId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TimeAccuracy: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TimeSource: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TimeUpdateControlPoint: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TimeUpdateState: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TimeWithDst: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TimeZone: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TxPowerLevel: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_UnreadAlertStatus: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicsResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        var _r: GattCommunicationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_ProtocolError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(GattCharacteristic) {
        var _r: *IVectorView(GattCharacteristic) = undefined;
        const _c = self.vtable.get_Characteristics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1194945c-b257-4f3e-9db7-f68bc9a9aef2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GattCommunicationStatus) callconv(.winapi) HRESULT,
        get_ProtocolError: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
        get_Characteristics: *const fn(self: *anyopaque, _r: **IVectorView(GattCharacteristic)) callconv(.winapi) HRESULT,
    };
};
pub const IGattClientNotificationResult = extern struct {
    vtable: *const VTable,
    pub fn getSubscribedClient(self: *@This()) core.HResult!*GattSubscribedClient {
        var _r: *GattSubscribedClient = undefined;
        const _c = self.vtable.get_SubscribedClient(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        var _r: GattCommunicationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_ProtocolError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattClientNotificationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "506d5599-0112-419a-8e3b-ae21afabd2c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SubscribedClient: *const fn(self: *anyopaque, _r: **GattSubscribedClient) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GattCommunicationStatus) callconv(.winapi) HRESULT,
        get_ProtocolError: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
    };
};
pub const IGattClientNotificationResult2 = extern struct {
    vtable: *const VTable,
    pub fn getBytesSent(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_BytesSent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattClientNotificationResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8faec497-45e0-497e-9582-29a1fe281ad5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BytesSent: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IGattDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_ProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_ProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Uuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributeHandle(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_AttributeHandle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadValueAsync(self: *@This()) core.HResult!*IAsyncOperation(GattReadResult) {
        var _r: *IAsyncOperation(GattReadResult) = undefined;
        const _c = self.vtable.ReadValueAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadValueAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattReadResult) {
        var _r: *IAsyncOperation(GattReadResult) = undefined;
        const _c = self.vtable.ReadValueAsyncWithCacheMode(@ptrCast(self), cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteValueAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        var _r: *IAsyncOperation(GattCommunicationStatus) = undefined;
        const _c = self.vtable.WriteValueAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92055f2b-8084-4344-b4c2-284de19a8506";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
        put_ProtectionLevel: *const fn(self: *anyopaque, value: GattProtectionLevel) callconv(.winapi) HRESULT,
        get_Uuid: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_AttributeHandle: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        ReadValueAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattReadResult)) callconv(.winapi) HRESULT,
        ReadValueAsyncWithCacheMode: *const fn(self: *anyopaque, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattReadResult)) callconv(.winapi) HRESULT,
        WriteValueAsync: *const fn(self: *anyopaque, value: *IBuffer, _r: **IAsyncOperation(GattCommunicationStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IGattDescriptor2 = extern struct {
    vtable: *const VTable,
    pub fn WriteValueWithResultAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(GattWriteResult) {
        var _r: *IAsyncOperation(GattWriteResult) = undefined;
        const _c = self.vtable.WriteValueWithResultAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f563d39-d630-406c-ba11-10cdd16b0e5e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        WriteValueWithResultAsync: *const fn(self: *anyopaque, value: *IBuffer, _r: **IAsyncOperation(GattWriteResult)) callconv(.winapi) HRESULT,
    };
};
pub const IGattDescriptorStatics = extern struct {
    vtable: *const VTable,
    pub fn ConvertShortIdToUuid(self: *@This(), shortId: u16) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.ConvertShortIdToUuid(@ptrCast(self), shortId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92055f2d-8084-4344-b4c2-284de19a8506";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConvertShortIdToUuid: *const fn(self: *anyopaque, shortId: u16, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IGattDescriptorUuidsStatics = extern struct {
    vtable: *const VTable,
    pub fn getCharacteristicAggregateFormat(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CharacteristicAggregateFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristicExtendedProperties(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CharacteristicExtendedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristicPresentationFormat(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CharacteristicPresentationFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristicUserDescription(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CharacteristicUserDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClientCharacteristicConfiguration(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ClientCharacteristicConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCharacteristicConfiguration(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ServerCharacteristicConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorUuidsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6f862ce-9cfc-42f1-9185-ff37b75181d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CharacteristicAggregateFormat: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CharacteristicExtendedProperties: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CharacteristicPresentationFormat: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CharacteristicUserDescription: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ClientCharacteristicConfiguration: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ServerCharacteristicConfiguration: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IGattDescriptorsResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        var _r: GattCommunicationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_ProtocolError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(GattDescriptor) {
        var _r: *IVectorView(GattDescriptor) = undefined;
        const _c = self.vtable.get_Descriptors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9bc091f3-95e7-4489-8d25-ff81955a57b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GattCommunicationStatus) callconv(.winapi) HRESULT,
        get_ProtocolError: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
        get_Descriptors: *const fn(self: *anyopaque, _r: **IVectorView(GattDescriptor)) callconv(.winapi) HRESULT,
    };
};
pub const IGattDeviceService = extern struct {
    vtable: *const VTable,
    pub fn GetCharacteristics(self: *@This(), characteristicUuid: *Guid) core.HResult!*IVectorView(GattCharacteristic) {
        var _r: *IVectorView(GattCharacteristic) = undefined;
        const _c = self.vtable.GetCharacteristics(@ptrCast(self), characteristicUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIncludedServices(self: *@This(), serviceUuid: *Guid) core.HResult!*IVectorView(GattDeviceService) {
        var _r: *IVectorView(GattDeviceService) = undefined;
        const _c = self.vtable.GetIncludedServices(@ptrCast(self), serviceUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Uuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributeHandle(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_AttributeHandle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac7b7c05-b33c-47cf-990f-6b8f5577df71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCharacteristics: *const fn(self: *anyopaque, characteristicUuid: *Guid, _r: **IVectorView(GattCharacteristic)) callconv(.winapi) HRESULT,
        GetIncludedServices: *const fn(self: *anyopaque, serviceUuid: *Guid, _r: **IVectorView(GattDeviceService)) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Uuid: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_AttributeHandle: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IGattDeviceService2 = extern struct {
    vtable: *const VTable,
    pub fn getDevice(self: *@This()) core.HResult!*BluetoothLEDevice {
        var _r: *BluetoothLEDevice = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParentServices(self: *@This()) core.HResult!*IVectorView(GattDeviceService) {
        var _r: *IVectorView(GattDeviceService) = undefined;
        const _c = self.vtable.get_ParentServices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllCharacteristics(self: *@This()) core.HResult!*IVectorView(GattCharacteristic) {
        var _r: *IVectorView(GattCharacteristic) = undefined;
        const _c = self.vtable.GetAllCharacteristics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllIncludedServices(self: *@This()) core.HResult!*IVectorView(GattDeviceService) {
        var _r: *IVectorView(GattDeviceService) = undefined;
        const _c = self.vtable.GetAllIncludedServices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc54520b-0b0d-4708-bae0-9ffd9489bc59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **BluetoothLEDevice) callconv(.winapi) HRESULT,
        get_ParentServices: *const fn(self: *anyopaque, _r: **IVectorView(GattDeviceService)) callconv(.winapi) HRESULT,
        GetAllCharacteristics: *const fn(self: *anyopaque, _r: **IVectorView(GattCharacteristic)) callconv(.winapi) HRESULT,
        GetAllIncludedServices: *const fn(self: *anyopaque, _r: **IVectorView(GattDeviceService)) callconv(.winapi) HRESULT,
    };
};
pub const IGattDeviceService3 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceAccessInformation(self: *@This()) core.HResult!*DeviceAccessInformation {
        var _r: *DeviceAccessInformation = undefined;
        const _c = self.vtable.get_DeviceAccessInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSession(self: *@This()) core.HResult!*GattSession {
        var _r: *GattSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSharingMode(self: *@This()) core.HResult!GattSharingMode {
        var _r: GattSharingMode = undefined;
        const _c = self.vtable.get_SharingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceAccessStatus) {
        var _r: *IAsyncOperation(DeviceAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenAsync(self: *@This(), sharingMode: GattSharingMode) core.HResult!*IAsyncOperation(GattOpenStatus) {
        var _r: *IAsyncOperation(GattOpenStatus) = undefined;
        const _c = self.vtable.OpenAsync(@ptrCast(self), sharingMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCharacteristicsAsync(self: *@This()) core.HResult!*IAsyncOperation(GattCharacteristicsResult) {
        var _r: *IAsyncOperation(GattCharacteristicsResult) = undefined;
        const _c = self.vtable.GetCharacteristicsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCharacteristicsAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattCharacteristicsResult) {
        var _r: *IAsyncOperation(GattCharacteristicsResult) = undefined;
        const _c = self.vtable.GetCharacteristicsAsyncWithCacheMode(@ptrCast(self), cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCharacteristicsForUuidAsync(self: *@This(), characteristicUuid: *Guid) core.HResult!*IAsyncOperation(GattCharacteristicsResult) {
        var _r: *IAsyncOperation(GattCharacteristicsResult) = undefined;
        const _c = self.vtable.GetCharacteristicsForUuidAsync(@ptrCast(self), characteristicUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCharacteristicsForUuidAsyncWithCacheMode(self: *@This(), characteristicUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattCharacteristicsResult) {
        var _r: *IAsyncOperation(GattCharacteristicsResult) = undefined;
        const _c = self.vtable.GetCharacteristicsForUuidAsyncWithCacheMode(@ptrCast(self), characteristicUuid, cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIncludedServicesAsync(self: *@This()) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var _r: *IAsyncOperation(GattDeviceServicesResult) = undefined;
        const _c = self.vtable.GetIncludedServicesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIncludedServicesAsyncWithCacheMode(self: *@This(), cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var _r: *IAsyncOperation(GattDeviceServicesResult) = undefined;
        const _c = self.vtable.GetIncludedServicesAsyncWithCacheMode(@ptrCast(self), cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIncludedServicesForUuidAsync(self: *@This(), serviceUuid: *Guid) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var _r: *IAsyncOperation(GattDeviceServicesResult) = undefined;
        const _c = self.vtable.GetIncludedServicesForUuidAsync(@ptrCast(self), serviceUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIncludedServicesForUuidAsyncWithCacheMode(self: *@This(), serviceUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!*IAsyncOperation(GattDeviceServicesResult) {
        var _r: *IAsyncOperation(GattDeviceServicesResult) = undefined;
        const _c = self.vtable.GetIncludedServicesForUuidAsyncWithCacheMode(@ptrCast(self), serviceUuid, cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b293a950-0c53-437c-a9b3-5c3210c6e569";
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
        get_Session: *const fn(self: *anyopaque, _r: **GattSession) callconv(.winapi) HRESULT,
        get_SharingMode: *const fn(self: *anyopaque, _r: *GattSharingMode) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DeviceAccessStatus)) callconv(.winapi) HRESULT,
        OpenAsync: *const fn(self: *anyopaque, sharingMode: GattSharingMode, _r: **IAsyncOperation(GattOpenStatus)) callconv(.winapi) HRESULT,
        GetCharacteristicsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattCharacteristicsResult)) callconv(.winapi) HRESULT,
        GetCharacteristicsAsyncWithCacheMode: *const fn(self: *anyopaque, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattCharacteristicsResult)) callconv(.winapi) HRESULT,
        GetCharacteristicsForUuidAsync: *const fn(self: *anyopaque, characteristicUuid: *Guid, _r: **IAsyncOperation(GattCharacteristicsResult)) callconv(.winapi) HRESULT,
        GetCharacteristicsForUuidAsyncWithCacheMode: *const fn(self: *anyopaque, characteristicUuid: *Guid, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattCharacteristicsResult)) callconv(.winapi) HRESULT,
        GetIncludedServicesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattDeviceServicesResult)) callconv(.winapi) HRESULT,
        GetIncludedServicesAsyncWithCacheMode: *const fn(self: *anyopaque, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattDeviceServicesResult)) callconv(.winapi) HRESULT,
        GetIncludedServicesForUuidAsync: *const fn(self: *anyopaque, serviceUuid: *Guid, _r: **IAsyncOperation(GattDeviceServicesResult)) callconv(.winapi) HRESULT,
        GetIncludedServicesForUuidAsyncWithCacheMode: *const fn(self: *anyopaque, serviceUuid: *Guid, cacheMode: BluetoothCacheMode, _r: **IAsyncOperation(GattDeviceServicesResult)) callconv(.winapi) HRESULT,
    };
};
pub const IGattDeviceServiceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(GattDeviceService) {
        var _r: *IAsyncOperation(GattDeviceService) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromUuid(self: *@This(), serviceUuid: *Guid) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromUuid(@ptrCast(self), serviceUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromShortId(self: *@This(), serviceShortId: u16) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromShortId(@ptrCast(self), serviceShortId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertShortIdToUuid(self: *@This(), shortId: u16) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.ConvertShortIdToUuid(@ptrCast(self), shortId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServiceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "196d0022-faad-45dc-ae5b-2ac3184e84db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(GattDeviceService)) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromUuid: *const fn(self: *anyopaque, serviceUuid: *Guid, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromShortId: *const fn(self: *anyopaque, serviceShortId: u16, _r: *HSTRING) callconv(.winapi) HRESULT,
        ConvertShortIdToUuid: *const fn(self: *anyopaque, shortId: u16, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IGattDeviceServiceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING, sharingMode: GattSharingMode) core.HResult!*IAsyncOperation(GattDeviceService) {
        var _r: *IAsyncOperation(GattDeviceService) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, sharingMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorForBluetoothDeviceId(self: *@This(), bluetoothDeviceId: *BluetoothDeviceId) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorForBluetoothDeviceId(@ptrCast(self), bluetoothDeviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorForBluetoothDeviceIdWithCacheMode(self: *@This(), bluetoothDeviceId: *BluetoothDeviceId, cacheMode: BluetoothCacheMode) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorForBluetoothDeviceIdWithCacheMode(@ptrCast(self), bluetoothDeviceId, cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorForBluetoothDeviceIdAndUuid(self: *@This(), bluetoothDeviceId: *BluetoothDeviceId, serviceUuid: *Guid) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorForBluetoothDeviceIdAndUuid(@ptrCast(self), bluetoothDeviceId, serviceUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorForBluetoothDeviceIdAndUuidWithCacheMode(self: *@This(), bluetoothDeviceId: *BluetoothDeviceId, serviceUuid: *Guid, cacheMode: BluetoothCacheMode) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorForBluetoothDeviceIdAndUuidWithCacheMode(@ptrCast(self), bluetoothDeviceId, serviceUuid, cacheMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServiceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0604186e-24a6-4b0d-a2f2-30cc01545d25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, sharingMode: GattSharingMode, _r: **IAsyncOperation(GattDeviceService)) callconv(.winapi) HRESULT,
        GetDeviceSelectorForBluetoothDeviceId: *const fn(self: *anyopaque, bluetoothDeviceId: *BluetoothDeviceId, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorForBluetoothDeviceIdWithCacheMode: *const fn(self: *anyopaque, bluetoothDeviceId: *BluetoothDeviceId, cacheMode: BluetoothCacheMode, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorForBluetoothDeviceIdAndUuid: *const fn(self: *anyopaque, bluetoothDeviceId: *BluetoothDeviceId, serviceUuid: *Guid, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorForBluetoothDeviceIdAndUuidWithCacheMode: *const fn(self: *anyopaque, bluetoothDeviceId: *BluetoothDeviceId, serviceUuid: *Guid, cacheMode: BluetoothCacheMode, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IGattDeviceServicesResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        var _r: GattCommunicationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_ProtocolError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServices(self: *@This()) core.HResult!*IVectorView(GattDeviceService) {
        var _r: *IVectorView(GattDeviceService) = undefined;
        const _c = self.vtable.get_Services(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServicesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "171dd3ee-016d-419d-838a-576cf475a3d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GattCommunicationStatus) callconv(.winapi) HRESULT,
        get_ProtocolError: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
        get_Services: *const fn(self: *anyopaque, _r: **IVectorView(GattDeviceService)) callconv(.winapi) HRESULT,
    };
};
pub const IGattLocalCharacteristic = extern struct {
    vtable: *const VTable,
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Uuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStaticValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_StaticValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristicProperties(self: *@This()) core.HResult!GattCharacteristicProperties {
        var _r: GattCharacteristicProperties = undefined;
        const _c = self.vtable.get_CharacteristicProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_ReadProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWriteProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_WriteProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDescriptorAsync(self: *@This(), descriptorUuid: *Guid, parameters: *GattLocalDescriptorParameters) core.HResult!*IAsyncOperation(GattLocalDescriptorResult) {
        var _r: *IAsyncOperation(GattLocalDescriptorResult) = undefined;
        const _c = self.vtable.CreateDescriptorAsync(@ptrCast(self), descriptorUuid, parameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescriptors(self: *@This()) core.HResult!*IVectorView(GattLocalDescriptor) {
        var _r: *IVectorView(GattLocalDescriptor) = undefined;
        const _c = self.vtable.get_Descriptors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresentationFormats(self: *@This()) core.HResult!*IVectorView(GattPresentationFormat) {
        var _r: *IVectorView(GattPresentationFormat) = undefined;
        const _c = self.vtable.get_PresentationFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubscribedClients(self: *@This()) core.HResult!*IVectorView(GattSubscribedClient) {
        var _r: *IVectorView(GattSubscribedClient) = undefined;
        const _c = self.vtable.get_SubscribedClients(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSubscribedClientsChanged(self: *@This(), handler: *TypedEventHandler(GattLocalCharacteristic,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SubscribedClientsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSubscribedClientsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SubscribedClientsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addReadRequested(self: *@This(), handler: *TypedEventHandler(GattLocalCharacteristic,GattReadRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addWriteRequested(self: *@This(), handler: *TypedEventHandler(GattLocalCharacteristic,GattWriteRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_WriteRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeWriteRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_WriteRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyValueAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncOperation(IVectorView(GattClientNotificationResult)) {
        var _r: *IAsyncOperation(IVectorView(GattClientNotificationResult)) = undefined;
        const _c = self.vtable.NotifyValueAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn NotifyValueAsyncWithSubscribedClient(self: *@This(), value: *IBuffer, subscribedClient: *GattSubscribedClient) core.HResult!*IAsyncOperation(GattClientNotificationResult) {
        var _r: *IAsyncOperation(GattClientNotificationResult) = undefined;
        const _c = self.vtable.NotifyValueAsyncWithSubscribedClient(@ptrCast(self), value, subscribedClient, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aede376d-5412-4d74-92a8-8deb8526829c";
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
        get_StaticValue: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_CharacteristicProperties: *const fn(self: *anyopaque, _r: *GattCharacteristicProperties) callconv(.winapi) HRESULT,
        get_ReadProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
        get_WriteProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
        CreateDescriptorAsync: *const fn(self: *anyopaque, descriptorUuid: *Guid, parameters: *GattLocalDescriptorParameters, _r: **IAsyncOperation(GattLocalDescriptorResult)) callconv(.winapi) HRESULT,
        get_Descriptors: *const fn(self: *anyopaque, _r: **IVectorView(GattLocalDescriptor)) callconv(.winapi) HRESULT,
        get_UserDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PresentationFormats: *const fn(self: *anyopaque, _r: **IVectorView(GattPresentationFormat)) callconv(.winapi) HRESULT,
        get_SubscribedClients: *const fn(self: *anyopaque, _r: **IVectorView(GattSubscribedClient)) callconv(.winapi) HRESULT,
        add_SubscribedClientsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattLocalCharacteristic,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SubscribedClientsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ReadRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattLocalCharacteristic,GattReadRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_WriteRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattLocalCharacteristic,GattWriteRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_WriteRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        NotifyValueAsync: *const fn(self: *anyopaque, value: *IBuffer, _r: **IAsyncOperation(IVectorView(GattClientNotificationResult))) callconv(.winapi) HRESULT,
        NotifyValueAsyncWithSubscribedClient: *const fn(self: *anyopaque, value: *IBuffer, subscribedClient: *GattSubscribedClient, _r: **IAsyncOperation(GattClientNotificationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IGattLocalCharacteristicParameters = extern struct {
    vtable: *const VTable,
    pub fn putStaticValue(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_StaticValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStaticValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_StaticValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharacteristicProperties(self: *@This(), value: GattCharacteristicProperties) core.HResult!void {
        const _c = self.vtable.put_CharacteristicProperties(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCharacteristicProperties(self: *@This()) core.HResult!GattCharacteristicProperties {
        var _r: GattCharacteristicProperties = undefined;
        const _c = self.vtable.get_CharacteristicProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReadProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_ReadProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_ReadProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWriteProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_WriteProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWriteProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_WriteProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UserDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresentationFormats(self: *@This()) core.HResult!*IVector(GattPresentationFormat) {
        var _r: *IVector(GattPresentationFormat) = undefined;
        const _c = self.vtable.get_PresentationFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "faf73db4-4cff-44c7-8445-040e6ead0063";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_StaticValue: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_StaticValue: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_CharacteristicProperties: *const fn(self: *anyopaque, value: GattCharacteristicProperties) callconv(.winapi) HRESULT,
        get_CharacteristicProperties: *const fn(self: *anyopaque, _r: *GattCharacteristicProperties) callconv(.winapi) HRESULT,
        put_ReadProtectionLevel: *const fn(self: *anyopaque, value: GattProtectionLevel) callconv(.winapi) HRESULT,
        get_ReadProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
        put_WriteProtectionLevel: *const fn(self: *anyopaque, value: GattProtectionLevel) callconv(.winapi) HRESULT,
        get_WriteProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
        put_UserDescription: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_UserDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PresentationFormats: *const fn(self: *anyopaque, _r: **IVector(GattPresentationFormat)) callconv(.winapi) HRESULT,
    };
};
pub const IGattLocalCharacteristicResult = extern struct {
    vtable: *const VTable,
    pub fn getCharacteristic(self: *@This()) core.HResult!*GattLocalCharacteristic {
        var _r: *GattLocalCharacteristic = undefined;
        const _c = self.vtable.get_Characteristic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7975de9b-0170-4397-9666-92f863f12ee6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Characteristic: *const fn(self: *anyopaque, _r: **GattLocalCharacteristic) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *BluetoothError) callconv(.winapi) HRESULT,
    };
};
pub const IGattLocalDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Uuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStaticValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_StaticValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_ReadProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWriteProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_WriteProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadRequested(self: *@This(), handler: *TypedEventHandler(GattLocalDescriptor,GattReadRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addWriteRequested(self: *@This(), handler: *TypedEventHandler(GattLocalDescriptor,GattWriteRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_WriteRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeWriteRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_WriteRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f48ebe06-789d-4a4b-8652-bd017b5d2fc6";
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
        get_StaticValue: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_ReadProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
        get_WriteProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
        add_ReadRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattLocalDescriptor,GattReadRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_WriteRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattLocalDescriptor,GattWriteRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_WriteRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGattLocalDescriptorParameters = extern struct {
    vtable: *const VTable,
    pub fn putStaticValue(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_StaticValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStaticValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_StaticValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReadProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_ReadProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_ReadProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWriteProtectionLevel(self: *@This(), value: GattProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_WriteProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWriteProtectionLevel(self: *@This()) core.HResult!GattProtectionLevel {
        var _r: GattProtectionLevel = undefined;
        const _c = self.vtable.get_WriteProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5fdede6a-f3c1-4b66-8c4b-e3d2293b40e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_StaticValue: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_StaticValue: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_ReadProtectionLevel: *const fn(self: *anyopaque, value: GattProtectionLevel) callconv(.winapi) HRESULT,
        get_ReadProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
        put_WriteProtectionLevel: *const fn(self: *anyopaque, value: GattProtectionLevel) callconv(.winapi) HRESULT,
        get_WriteProtectionLevel: *const fn(self: *anyopaque, _r: *GattProtectionLevel) callconv(.winapi) HRESULT,
    };
};
pub const IGattLocalDescriptorResult = extern struct {
    vtable: *const VTable,
    pub fn getDescriptor(self: *@This()) core.HResult!*GattLocalDescriptor {
        var _r: *GattLocalDescriptor = undefined;
        const _c = self.vtable.get_Descriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "375791be-321f-4366-bfc1-3bc6b82c79f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Descriptor: *const fn(self: *anyopaque, _r: **GattLocalDescriptor) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *BluetoothError) callconv(.winapi) HRESULT,
    };
};
pub const IGattLocalService = extern struct {
    vtable: *const VTable,
    pub fn getUuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Uuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCharacteristicAsync(self: *@This(), characteristicUuid: *Guid, parameters: *GattLocalCharacteristicParameters) core.HResult!*IAsyncOperation(GattLocalCharacteristicResult) {
        var _r: *IAsyncOperation(GattLocalCharacteristicResult) = undefined;
        const _c = self.vtable.CreateCharacteristicAsync(@ptrCast(self), characteristicUuid, parameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacteristics(self: *@This()) core.HResult!*IVectorView(GattLocalCharacteristic) {
        var _r: *IVectorView(GattLocalCharacteristic) = undefined;
        const _c = self.vtable.get_Characteristics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f513e258-f7f7-4902-b803-57fcc7d6fe83";
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
        CreateCharacteristicAsync: *const fn(self: *anyopaque, characteristicUuid: *Guid, parameters: *GattLocalCharacteristicParameters, _r: **IAsyncOperation(GattLocalCharacteristicResult)) callconv(.winapi) HRESULT,
        get_Characteristics: *const fn(self: *anyopaque, _r: **IVectorView(GattLocalCharacteristic)) callconv(.winapi) HRESULT,
    };
};
pub const IGattPresentationFormat = extern struct {
    vtable: *const VTable,
    pub fn getFormatType(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_FormatType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExponent(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Exponent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnit(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Unit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNamespace(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Namespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "196d0021-faad-45dc-ae5b-2ac3184e84db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FormatType: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Exponent: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Unit: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Namespace: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IGattPresentationFormatStatics = extern struct {
    vtable: *const VTable,
    pub fn getBluetoothSigAssignedNumbers(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_BluetoothSigAssignedNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "196d0020-faad-45dc-ae5b-2ac3184e84db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BluetoothSigAssignedNumbers: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IGattPresentationFormatStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromParts(self: *@This(), formatType: u8, exponent: i32, unit: u16, namespaceId: u8, description: u16) core.HResult!*GattPresentationFormat {
        var _r: *GattPresentationFormat = undefined;
        const _c = self.vtable.FromParts(@ptrCast(self), formatType, exponent, unit, namespaceId, description, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9c21713-b82f-435e-b634-21fd85a43c07";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromParts: *const fn(self: *anyopaque, formatType: u8, exponent: i32, unit: u16, namespaceId: u8, description: u16, _r: **GattPresentationFormat) callconv(.winapi) HRESULT,
    };
};
pub const IGattPresentationFormatTypesStatics = extern struct {
    vtable: *const VTable,
    pub fn getBoolean(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Boolean(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBit2(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Bit2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNibble(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Nibble(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUInt8(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UInt8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUInt12(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UInt12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUInt16(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UInt16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUInt24(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UInt24(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUInt32(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UInt32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUInt48(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UInt48(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUInt64(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UInt64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUInt128(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UInt128(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSInt8(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SInt8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSInt12(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SInt12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSInt16(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SInt16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSInt24(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SInt24(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSInt32(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SInt32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSInt48(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SInt48(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSInt64(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SInt64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSInt128(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SInt128(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFloat32(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Float32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFloat64(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Float64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSFloat(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_SFloat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFloat(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Float(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDUInt16(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_DUInt16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUtf8(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Utf8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUtf16(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Utf16(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStruct(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Struct(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatTypesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "faf1ba0a-30ba-409c-bef7-cffb6d03b8fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Boolean: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Bit2: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Nibble: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UInt8: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UInt12: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UInt16: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UInt24: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UInt32: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UInt48: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UInt64: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UInt128: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SInt8: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SInt12: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SInt16: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SInt24: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SInt32: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SInt48: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SInt64: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SInt128: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Float32: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Float64: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_SFloat: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Float: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_DUInt16: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Utf8: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Utf16: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Struct: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IGattProtocolErrorStatics = extern struct {
    vtable: *const VTable,
    pub fn getInvalidHandle(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InvalidHandle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadNotPermitted(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ReadNotPermitted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWriteNotPermitted(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_WriteNotPermitted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInvalidPdu(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InvalidPdu(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInsufficientAuthentication(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InsufficientAuthentication(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestNotSupported(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_RequestNotSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInvalidOffset(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InvalidOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInsufficientAuthorization(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InsufficientAuthorization(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrepareQueueFull(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_PrepareQueueFull(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributeNotFound(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_AttributeNotFound(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributeNotLong(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_AttributeNotLong(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInsufficientEncryptionKeySize(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InsufficientEncryptionKeySize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInvalidAttributeValueLength(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InvalidAttributeValueLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnlikelyError(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UnlikelyError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInsufficientEncryption(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InsufficientEncryption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnsupportedGroupType(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_UnsupportedGroupType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInsufficientResources(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_InsufficientResources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattProtocolErrorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca46c5c5-0ecc-4809-bea3-cf79bc991e37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InvalidHandle: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ReadNotPermitted: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_WriteNotPermitted: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_InvalidPdu: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_InsufficientAuthentication: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_RequestNotSupported: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_InvalidOffset: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_InsufficientAuthorization: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_PrepareQueueFull: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_AttributeNotFound: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_AttributeNotLong: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_InsufficientEncryptionKeySize: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_InvalidAttributeValueLength: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UnlikelyError: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_InsufficientEncryption: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_UnsupportedGroupType: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_InsufficientResources: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IGattReadClientCharacteristicConfigurationDescriptorResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        var _r: GattCommunicationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClientCharacteristicConfigurationDescriptor(self: *@This()) core.HResult!GattClientCharacteristicConfigurationDescriptorValue {
        var _r: GattClientCharacteristicConfigurationDescriptorValue = undefined;
        const _c = self.vtable.get_ClientCharacteristicConfigurationDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadClientCharacteristicConfigurationDescriptorResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63a66f09-1aea-4c4c-a50f-97bae474b348";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GattCommunicationStatus) callconv(.winapi) HRESULT,
        get_ClientCharacteristicConfigurationDescriptor: *const fn(self: *anyopaque, _r: *GattClientCharacteristicConfigurationDescriptorValue) callconv(.winapi) HRESULT,
    };
};
pub const IGattReadClientCharacteristicConfigurationDescriptorResult2 = extern struct {
    vtable: *const VTable,
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_ProtocolError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadClientCharacteristicConfigurationDescriptorResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1bf1a59d-ba4d-4622-8651-f4ee150d0a5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProtocolError: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
    };
};
pub const IGattReadRequest = extern struct {
    vtable: *const VTable,
    pub fn getOffset(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!GattRequestState {
        var _r: GattRequestState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(GattReadRequest,GattRequestStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RespondWithValue(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.RespondWithValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RespondWithProtocolError(self: *@This(), protocolError: u8) core.HResult!void {
        const _c = self.vtable.RespondWithProtocolError(@ptrCast(self), protocolError);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f1dd6535-6acd-42a6-a4bb-d789dae0043e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *GattRequestState) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattReadRequest,GattRequestStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        RespondWithValue: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        RespondWithProtocolError: *const fn(self: *anyopaque, protocolError: u8) callconv(.winapi) HRESULT,
    };
};
pub const IGattReadRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*GattSession {
        var _r: *GattSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRequestAsync(self: *@This()) core.HResult!*IAsyncOperation(GattReadRequest) {
        var _r: *IAsyncOperation(GattReadRequest) = undefined;
        const _c = self.vtable.GetRequestAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93497243-f39c-484b-8ab6-996ba486cfa3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **GattSession) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
        GetRequestAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattReadRequest)) callconv(.winapi) HRESULT,
    };
};
pub const IGattReadResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        var _r: GattCommunicationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63a66f08-1aea-4c4c-a50f-97bae474b348";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GattCommunicationStatus) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IGattReadResult2 = extern struct {
    vtable: *const VTable,
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_ProtocolError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a10f50a0-fb43-48af-baaa-638a5c6329fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProtocolError: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
    };
};
pub const IGattReliableWriteTransaction = extern struct {
    vtable: *const VTable,
    pub fn WriteValue(self: *@This(), characteristic: *GattCharacteristic, value: *IBuffer) core.HResult!void {
        const _c = self.vtable.WriteValue(@ptrCast(self), characteristic, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CommitAsync(self: *@This()) core.HResult!*IAsyncOperation(GattCommunicationStatus) {
        var _r: *IAsyncOperation(GattCommunicationStatus) = undefined;
        const _c = self.vtable.CommitAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReliableWriteTransaction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63a66f07-1aea-4c4c-a50f-97bae474b348";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        WriteValue: *const fn(self: *anyopaque, characteristic: *GattCharacteristic, value: *IBuffer) callconv(.winapi) HRESULT,
        CommitAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattCommunicationStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IGattReliableWriteTransaction2 = extern struct {
    vtable: *const VTable,
    pub fn CommitWithResultAsync(self: *@This()) core.HResult!*IAsyncOperation(GattWriteResult) {
        var _r: *IAsyncOperation(GattWriteResult) = undefined;
        const _c = self.vtable.CommitWithResultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReliableWriteTransaction2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51113987-ef12-462f-9fb2-a1a43a679416";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CommitWithResultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattWriteResult)) callconv(.winapi) HRESULT,
    };
};
pub const IGattRequestStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!GattRequestState {
        var _r: GattRequestState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattRequestStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e834d92c-27be-44b3-9d0d-4fc6e808dd3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *GattRequestState) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *BluetoothError) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProvider = extern struct {
    vtable: *const VTable,
    pub fn getService(self: *@This()) core.HResult!*GattLocalService {
        var _r: *GattLocalService = undefined;
        const _c = self.vtable.get_Service(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdvertisementStatus(self: *@This()) core.HResult!GattServiceProviderAdvertisementStatus {
        var _r: GattServiceProviderAdvertisementStatus = undefined;
        const _c = self.vtable.get_AdvertisementStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAdvertisementStatusChanged(self: *@This(), handler: *TypedEventHandler(GattServiceProvider,GattServiceProviderAdvertisementStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AdvertisementStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdvertisementStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AdvertisementStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAdvertising(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartAdvertising(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAdvertisingWithParameters(self: *@This(), parameters: *GattServiceProviderAdvertisingParameters) core.HResult!void {
        const _c = self.vtable.StartAdvertisingWithParameters(@ptrCast(self), parameters);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopAdvertising(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopAdvertising(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7822b3cd-2889-4f86-a051-3f0aed1c2760";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Service: *const fn(self: *anyopaque, _r: **GattLocalService) callconv(.winapi) HRESULT,
        get_AdvertisementStatus: *const fn(self: *anyopaque, _r: *GattServiceProviderAdvertisementStatus) callconv(.winapi) HRESULT,
        add_AdvertisementStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattServiceProvider,GattServiceProviderAdvertisementStatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AdvertisementStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        StartAdvertising: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartAdvertisingWithParameters: *const fn(self: *anyopaque, parameters: *GattServiceProviderAdvertisingParameters) callconv(.winapi) HRESULT,
        StopAdvertising: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProvider2 = extern struct {
    vtable: *const VTable,
    pub fn UpdateAdvertisingParameters(self: *@This(), parameters: *GattServiceProviderAdvertisingParameters) core.HResult!void {
        const _c = self.vtable.UpdateAdvertisingParameters(@ptrCast(self), parameters);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ef531a9-cf12-59a3-a81c-362f4aabaacf";
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
pub const IGattServiceProviderAdvertisementStatusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!GattServiceProviderAdvertisementStatus {
        var _r: GattServiceProviderAdvertisementStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisementStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59a5aa65-fa21-4ffc-b155-04d928012686";
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
        get_Status: *const fn(self: *anyopaque, _r: *GattServiceProviderAdvertisementStatus) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderAdvertisingParameters = extern struct {
    vtable: *const VTable,
    pub fn putIsConnectable(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsConnectable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsConnectable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConnectable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDiscoverable(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDiscoverable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDiscoverable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDiscoverable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisingParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2ce31ab-6315-4c22-9bd7-781dbc3d8d82";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsConnectable: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsConnectable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDiscoverable: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsDiscoverable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderAdvertisingParameters2 = extern struct {
    vtable: *const VTable,
    pub fn putServiceData(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_ServiceData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ServiceData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisingParameters2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff68468d-ca92-4434-9743-0e90988ad879";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ServiceData: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_ServiceData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderAdvertisingParameters3 = extern struct {
    vtable: *const VTable,
    pub fn getUseLowEnergyUncoded1MPhyAsSecondaryPhy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseLowEnergyUncoded1MPhyAsSecondaryPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseLowEnergyUncoded1MPhyAsSecondaryPhy(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseLowEnergyUncoded1MPhyAsSecondaryPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUseLowEnergyUncoded2MPhyAsSecondaryPhy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseLowEnergyUncoded2MPhyAsSecondaryPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseLowEnergyUncoded2MPhyAsSecondaryPhy(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseLowEnergyUncoded2MPhyAsSecondaryPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisingParameters3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a23546b2-b216-5929-9055-f1313dd53e2a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UseLowEnergyUncoded1MPhyAsSecondaryPhy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseLowEnergyUncoded1MPhyAsSecondaryPhy: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_UseLowEnergyUncoded2MPhyAsSecondaryPhy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseLowEnergyUncoded2MPhyAsSecondaryPhy: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderResult = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceProvider(self: *@This()) core.HResult!*GattServiceProvider {
        var _r: *GattServiceProvider = undefined;
        const _c = self.vtable.get_ServiceProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "764696d8-c53e-428c-8a48-67afe02c3ae6";
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
        get_ServiceProvider: *const fn(self: *anyopaque, _r: **GattServiceProvider) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAsync(self: *@This(), serviceUuid: *Guid) core.HResult!*IAsyncOperation(GattServiceProviderResult) {
        var _r: *IAsyncOperation(GattServiceProviderResult) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), serviceUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31794063-5256-4054-a4f4-7bbe7755a57e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, serviceUuid: *Guid, _r: **IAsyncOperation(GattServiceProviderResult)) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceUuidsStatics = extern struct {
    vtable: *const VTable,
    pub fn getBattery(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Battery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBloodPressure(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BloodPressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingSpeedAndCadence(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CyclingSpeedAndCadence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGenericAccess(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GenericAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGenericAttribute(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GenericAttribute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGlucose(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Glucose(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHealthThermometer(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HealthThermometer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeartRate(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HeartRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRunningSpeedAndCadence(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_RunningSpeedAndCadence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceUuidsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6dc57058-9aba-4417-b8f2-dce016d34ee2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Battery: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_BloodPressure: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CyclingSpeedAndCadence: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GenericAccess: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GenericAttribute: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Glucose: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_HealthThermometer: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_HeartRate: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_RunningSpeedAndCadence: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceUuidsStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getAlertNotification(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_AlertNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentTime(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CurrentTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyclingPower(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CyclingPower(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceInformation(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHumanInterfaceDevice(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HumanInterfaceDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImmediateAlert(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ImmediateAlert(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLinkLoss(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LinkLoss(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationAndNavigation(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LocationAndNavigation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNextDstChange(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_NextDstChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneAlertStatus(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_PhoneAlertStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReferenceTimeUpdate(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ReferenceTimeUpdate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScanParameters(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ScanParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTxPower(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TxPower(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceUuidsStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2ae94f5-3d15-4f79-9c0c-eaafa675155c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlertNotification: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CurrentTime: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CyclingPower: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_DeviceInformation: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_HumanInterfaceDevice: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ImmediateAlert: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_LinkLoss: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_LocationAndNavigation: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_NextDstChange: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_PhoneAlertStatus: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ReferenceTimeUpdate: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ScanParameters: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TxPower: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IGattSession = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!*BluetoothDeviceId {
        var _r: *BluetoothDeviceId = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanMaintainConnection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanMaintainConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaintainConnection(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_MaintainConnection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaintainConnection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_MaintainConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPduSize(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_MaxPduSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionStatus(self: *@This()) core.HResult!GattSessionStatus {
        var _r: GattSessionStatus = undefined;
        const _c = self.vtable.get_SessionStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMaxPduSizeChanged(self: *@This(), handler: *TypedEventHandler(GattSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MaxPduSizeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMaxPduSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MaxPduSizeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSessionStatusChanged(self: *@This(), handler: *TypedEventHandler(GattSession,GattSessionStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SessionStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSessionStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SessionStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d23b5143-e04e-4c24-999c-9c256f9856b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: **BluetoothDeviceId) callconv(.winapi) HRESULT,
        get_CanMaintainConnection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_MaintainConnection: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MaintainConnection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxPduSize: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_SessionStatus: *const fn(self: *anyopaque, _r: *GattSessionStatus) callconv(.winapi) HRESULT,
        add_MaxPduSizeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MaxPduSizeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SessionStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattSession,GattSessionStatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SessionStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGattSessionStatics = extern struct {
    vtable: *const VTable,
    pub fn FromDeviceIdAsync(self: *@This(), deviceId: *BluetoothDeviceId) core.HResult!*IAsyncOperation(GattSession) {
        var _r: *IAsyncOperation(GattSession) = undefined;
        const _c = self.vtable.FromDeviceIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSessionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e65b95c-539f-4db7-82a8-73bdbbf73ebf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromDeviceIdAsync: *const fn(self: *anyopaque, deviceId: *BluetoothDeviceId, _r: **IAsyncOperation(GattSession)) callconv(.winapi) HRESULT,
    };
};
pub const IGattSessionStatusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!GattSessionStatus {
        var _r: GattSessionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSessionStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7605b72e-837f-404c-ab34-3163f39ddf32";
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
        get_Status: *const fn(self: *anyopaque, _r: *GattSessionStatus) callconv(.winapi) HRESULT,
    };
};
pub const IGattSubscribedClient = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*GattSession {
        var _r: *GattSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxNotificationSize(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_MaxNotificationSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMaxNotificationSizeChanged(self: *@This(), handler: *TypedEventHandler(GattSubscribedClient,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MaxNotificationSizeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMaxNotificationSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MaxNotificationSizeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSubscribedClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "736e9001-15a4-4ec2-9248-e3f20d463be9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **GattSession) callconv(.winapi) HRESULT,
        get_MaxNotificationSize: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        add_MaxNotificationSizeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattSubscribedClient,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MaxNotificationSizeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGattValueChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCharacteristicValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_CharacteristicValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattValueChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d21bdb54-06e3-4ed8-a263-acfac8ba7313";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CharacteristicValue: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IGattWriteRequest = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOffset(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOption(self: *@This()) core.HResult!GattWriteOption {
        var _r: GattWriteOption = undefined;
        const _c = self.vtable.get_Option(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!GattRequestState {
        var _r: GattRequestState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(GattWriteRequest,GattRequestStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Respond(self: *@This()) core.HResult!void {
        const _c = self.vtable.Respond(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RespondWithProtocolError(self: *@This(), protocolError: u8) core.HResult!void {
        const _c = self.vtable.RespondWithProtocolError(@ptrCast(self), protocolError);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Option: *const fn(self: *anyopaque, _r: *GattWriteOption) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *GattRequestState) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GattWriteRequest,GattRequestStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Respond: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RespondWithProtocolError: *const fn(self: *anyopaque, protocolError: u8) callconv(.winapi) HRESULT,
    };
};
pub const IGattWriteRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*GattSession {
        var _r: *GattSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRequestAsync(self: *@This()) core.HResult!*IAsyncOperation(GattWriteRequest) {
        var _r: *IAsyncOperation(GattWriteRequest) = undefined;
        const _c = self.vtable.GetRequestAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2dec8bbe-a73a-471a-94d5-037deadd0806";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **GattSession) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
        GetRequestAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GattWriteRequest)) callconv(.winapi) HRESULT,
    };
};
pub const IGattWriteResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GattCommunicationStatus {
        var _r: GattCommunicationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocolError(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_ProtocolError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4991ddb1-cb2b-44f7-99fc-d29a2871dc9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GattCommunicationStatus) callconv(.winapi) HRESULT,
        get_ProtocolError: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const DeviceAccessInformation = @import("../Enumeration.zig").DeviceAccessInformation;
const IClosable = @import("../../Foundation.zig").IClosable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const HRESULT = @import("../../root.zig").HRESULT;
const BluetoothError = @import("../Bluetooth.zig").BluetoothError;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const BluetoothLEDevice = @import("../Bluetooth.zig").BluetoothLEDevice;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const IReference = @import("../../Foundation.zig").IReference;
const DateTime = @import("../../Foundation.zig").DateTime;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const BluetoothDeviceId = @import("../Bluetooth.zig").BluetoothDeviceId;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const BluetoothCacheMode = @import("../Bluetooth.zig").BluetoothCacheMode;
const DeviceAccessStatus = @import("../Enumeration.zig").DeviceAccessStatus;
