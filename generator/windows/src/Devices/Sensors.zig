pub const Accelerometer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*AccelerometerReading {
        const this: *IAccelerometer = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IAccelerometer = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IAccelerometer = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IAccelerometer = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Accelerometer,AccelerometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAccelerometer = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAccelerometer = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn addShaken(self: *@This(), handler: *TypedEventHandler(Accelerometer,AccelerometerShakenEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAccelerometer = @ptrCast(self);
        return try this.addShaken(handler);
    }
    pub fn removeShaken(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAccelerometer = @ptrCast(self);
        return try this.removeShaken(token);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAccelerometerDeviceId = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometerDeviceId.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        var this: ?*IAccelerometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReadingTransform(value);
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var this: ?*IAccelerometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingTransform();
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IAccelerometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*IAccelerometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*IAccelerometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn getReadingType(self: *@This()) core.HResult!AccelerometerReadingType {
        var this: ?*IAccelerometer4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometer4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingType();
    }
    pub fn getReportThreshold(self: *@This()) core.HResult!*AccelerometerDataThreshold {
        var this: ?*IAccelerometer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportThreshold();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Accelerometer) {
        const factory = @This().IAccelerometerStatics3Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector(readingType: AccelerometerReadingType) core.HResult!HSTRING {
        const factory = @This().IAccelerometerStatics3Cache.get();
        return try factory.GetDeviceSelector(readingType);
    }
    pub fn GetDefault() core.HResult!*Accelerometer {
        const factory = @This().IAccelerometerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetDefault(readingType: AccelerometerReadingType) core.HResult!*Accelerometer {
        const factory = @This().IAccelerometerStatics2Cache.get();
        return try factory.GetDefault(readingType);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Accelerometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccelerometer.GUID;
    pub const IID: Guid = IAccelerometer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccelerometer.SIGNATURE);
    var _IAccelerometerStatics3Cache: FactoryCache(IAccelerometerStatics3, RUNTIME_NAME) = .{};
    var _IAccelerometerStaticsCache: FactoryCache(IAccelerometerStatics, RUNTIME_NAME) = .{};
    var _IAccelerometerStatics2Cache: FactoryCache(IAccelerometerStatics2, RUNTIME_NAME) = .{};
};
pub const AccelerometerDataThreshold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getXAxisInGForce(self: *@This()) core.HResult!f64 {
        const this: *IAccelerometerDataThreshold = @ptrCast(self);
        return try this.getXAxisInGForce();
    }
    pub fn putXAxisInGForce(self: *@This(), value: f64) core.HResult!void {
        const this: *IAccelerometerDataThreshold = @ptrCast(self);
        return try this.putXAxisInGForce(value);
    }
    pub fn getYAxisInGForce(self: *@This()) core.HResult!f64 {
        const this: *IAccelerometerDataThreshold = @ptrCast(self);
        return try this.getYAxisInGForce();
    }
    pub fn putYAxisInGForce(self: *@This(), value: f64) core.HResult!void {
        const this: *IAccelerometerDataThreshold = @ptrCast(self);
        return try this.putYAxisInGForce(value);
    }
    pub fn getZAxisInGForce(self: *@This()) core.HResult!f64 {
        const this: *IAccelerometerDataThreshold = @ptrCast(self);
        return try this.getZAxisInGForce();
    }
    pub fn putZAxisInGForce(self: *@This(), value: f64) core.HResult!void {
        const this: *IAccelerometerDataThreshold = @ptrCast(self);
        return try this.putZAxisInGForce(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.AccelerometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccelerometerDataThreshold.GUID;
    pub const IID: Guid = IAccelerometerDataThreshold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccelerometerDataThreshold.SIGNATURE);
};
pub const AccelerometerReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IAccelerometerReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getAccelerationX(self: *@This()) core.HResult!f64 {
        const this: *IAccelerometerReading = @ptrCast(self);
        return try this.getAccelerationX();
    }
    pub fn getAccelerationY(self: *@This()) core.HResult!f64 {
        const this: *IAccelerometerReading = @ptrCast(self);
        return try this.getAccelerationY();
    }
    pub fn getAccelerationZ(self: *@This()) core.HResult!f64 {
        const this: *IAccelerometerReading = @ptrCast(self);
        return try this.getAccelerationZ();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAccelerometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IAccelerometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccelerometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.AccelerometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccelerometerReading.GUID;
    pub const IID: Guid = IAccelerometerReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccelerometerReading.SIGNATURE);
};
pub const AccelerometerReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*AccelerometerReading {
        const this: *IAccelerometerReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.AccelerometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccelerometerReadingChangedEventArgs.GUID;
    pub const IID: Guid = IAccelerometerReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccelerometerReadingChangedEventArgs.SIGNATURE);
};
pub const AccelerometerReadingType = enum(i32) {
    Standard = 0,
    Linear = 1,
    Gravity = 2,
};
pub const AccelerometerShakenEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IAccelerometerShakenEventArgs = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.AccelerometerShakenEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccelerometerShakenEventArgs.GUID;
    pub const IID: Guid = IAccelerometerShakenEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccelerometerShakenEventArgs.SIGNATURE);
};
pub const ActivitySensor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReadingAsync(self: *@This()) core.HResult!*IAsyncOperation(ActivitySensorReading) {
        const this: *IActivitySensor = @ptrCast(self);
        return try this.GetCurrentReadingAsync();
    }
    pub fn getSubscribedActivities(self: *@This()) core.HResult!*IVector(ActivityType) {
        const this: *IActivitySensor = @ptrCast(self);
        return try this.getSubscribedActivities();
    }
    pub fn getPowerInMilliwatts(self: *@This()) core.HResult!f64 {
        const this: *IActivitySensor = @ptrCast(self);
        return try this.getPowerInMilliwatts();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IActivitySensor = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getSupportedActivities(self: *@This()) core.HResult!*IVectorView(ActivityType) {
        const this: *IActivitySensor = @ptrCast(self);
        return try this.getSupportedActivities();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IActivitySensor = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(ActivitySensor,ActivitySensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IActivitySensor = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IActivitySensor = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(ActivitySensor) {
        const factory = @This().IActivitySensorStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IActivitySensorStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(ActivitySensor) {
        const factory = @This().IActivitySensorStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetSystemHistoryAsync(fromTime: DateTime) core.HResult!*IAsyncOperation(IVectorView(ActivitySensorReading)) {
        const factory = @This().IActivitySensorStaticsCache.get();
        return try factory.GetSystemHistoryAsync(fromTime);
    }
    pub fn GetSystemHistoryAsync(fromTime: DateTime, duration: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(ActivitySensorReading)) {
        const factory = @This().IActivitySensorStaticsCache.get();
        return try factory.GetSystemHistoryAsync(fromTime, duration);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ActivitySensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivitySensor.GUID;
    pub const IID: Guid = IActivitySensor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivitySensor.SIGNATURE);
    var _IActivitySensorStaticsCache: FactoryCache(IActivitySensorStatics, RUNTIME_NAME) = .{};
};
pub const ActivitySensorReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IActivitySensorReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getActivity(self: *@This()) core.HResult!ActivityType {
        const this: *IActivitySensorReading = @ptrCast(self);
        return try this.getActivity();
    }
    pub fn getConfidence(self: *@This()) core.HResult!ActivitySensorReadingConfidence {
        const this: *IActivitySensorReading = @ptrCast(self);
        return try this.getConfidence();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ActivitySensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivitySensorReading.GUID;
    pub const IID: Guid = IActivitySensorReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivitySensorReading.SIGNATURE);
};
pub const ActivitySensorReadingChangeReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*ActivitySensorReading {
        const this: *IActivitySensorReadingChangeReport = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ActivitySensorReadingChangeReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivitySensorReadingChangeReport.GUID;
    pub const IID: Guid = IActivitySensorReadingChangeReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivitySensorReadingChangeReport.SIGNATURE);
};
pub const ActivitySensorReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*ActivitySensorReading {
        const this: *IActivitySensorReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ActivitySensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivitySensorReadingChangedEventArgs.GUID;
    pub const IID: Guid = IActivitySensorReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivitySensorReadingChangedEventArgs.SIGNATURE);
};
pub const ActivitySensorReadingConfidence = enum(i32) {
    High = 0,
    Low = 1,
};
pub const ActivitySensorTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadReports(self: *@This()) core.HResult!*IVectorView(ActivitySensorReadingChangeReport) {
        const this: *IActivitySensorTriggerDetails = @ptrCast(self);
        return try this.ReadReports();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ActivitySensorTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivitySensorTriggerDetails.GUID;
    pub const IID: Guid = IActivitySensorTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivitySensorTriggerDetails.SIGNATURE);
};
pub const ActivityType = enum(i32) {
    Unknown = 0,
    Idle = 1,
    Stationary = 2,
    Fidgeting = 3,
    Walking = 4,
    Running = 5,
    InVehicle = 6,
    Biking = 7,
};
pub const AdaptiveDimmingOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowWhenExternalDisplayConnected(self: *@This()) core.HResult!bool {
        const this: *IAdaptiveDimmingOptions = @ptrCast(self);
        return try this.getAllowWhenExternalDisplayConnected();
    }
    pub fn putAllowWhenExternalDisplayConnected(self: *@This(), value: bool) core.HResult!void {
        const this: *IAdaptiveDimmingOptions = @ptrCast(self);
        return try this.putAllowWhenExternalDisplayConnected(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.AdaptiveDimmingOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveDimmingOptions.GUID;
    pub const IID: Guid = IAdaptiveDimmingOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveDimmingOptions.SIGNATURE);
};
pub const Altimeter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*AltimeterReading {
        const this: *IAltimeter = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IAltimeter = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IAltimeter = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IAltimeter = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IAltimeter = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Altimeter,AltimeterReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAltimeter = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAltimeter = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IAltimeter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAltimeter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*IAltimeter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAltimeter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*IAltimeter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAltimeter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*Altimeter {
        const factory = @This().IAltimeterStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Altimeter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAltimeter.GUID;
    pub const IID: Guid = IAltimeter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAltimeter.SIGNATURE);
    var _IAltimeterStaticsCache: FactoryCache(IAltimeterStatics, RUNTIME_NAME) = .{};
};
pub const AltimeterReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IAltimeterReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getAltitudeChangeInMeters(self: *@This()) core.HResult!f64 {
        const this: *IAltimeterReading = @ptrCast(self);
        return try this.getAltitudeChangeInMeters();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAltimeterReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAltimeterReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IAltimeterReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAltimeterReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.AltimeterReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAltimeterReading.GUID;
    pub const IID: Guid = IAltimeterReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAltimeterReading.SIGNATURE);
};
pub const AltimeterReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*AltimeterReading {
        const this: *IAltimeterReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.AltimeterReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAltimeterReadingChangedEventArgs.GUID;
    pub const IID: Guid = IAltimeterReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAltimeterReadingChangedEventArgs.SIGNATURE);
};
pub const Barometer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*BarometerReading {
        const this: *IBarometer = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IBarometer = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IBarometer = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IBarometer = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IBarometer = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Barometer,BarometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarometer = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarometer = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IBarometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*IBarometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*IBarometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn getReportThreshold(self: *@This()) core.HResult!*BarometerDataThreshold {
        var this: ?*IBarometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportThreshold();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Barometer) {
        const factory = @This().IBarometerStatics2Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IBarometerStatics2Cache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDefault() core.HResult!*Barometer {
        const factory = @This().IBarometerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Barometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarometer.GUID;
    pub const IID: Guid = IBarometer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarometer.SIGNATURE);
    var _IBarometerStatics2Cache: FactoryCache(IBarometerStatics2, RUNTIME_NAME) = .{};
    var _IBarometerStaticsCache: FactoryCache(IBarometerStatics, RUNTIME_NAME) = .{};
};
pub const BarometerDataThreshold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHectopascals(self: *@This()) core.HResult!f64 {
        const this: *IBarometerDataThreshold = @ptrCast(self);
        return try this.getHectopascals();
    }
    pub fn putHectopascals(self: *@This(), value: f64) core.HResult!void {
        const this: *IBarometerDataThreshold = @ptrCast(self);
        return try this.putHectopascals(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.BarometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarometerDataThreshold.GUID;
    pub const IID: Guid = IBarometerDataThreshold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarometerDataThreshold.SIGNATURE);
};
pub const BarometerReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IBarometerReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getStationPressureInHectopascals(self: *@This()) core.HResult!f64 {
        const this: *IBarometerReading = @ptrCast(self);
        return try this.getStationPressureInHectopascals();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IBarometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IBarometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.BarometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarometerReading.GUID;
    pub const IID: Guid = IBarometerReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarometerReading.SIGNATURE);
};
pub const BarometerReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*BarometerReading {
        const this: *IBarometerReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.BarometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarometerReadingChangedEventArgs.GUID;
    pub const IID: Guid = IBarometerReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarometerReadingChangedEventArgs.SIGNATURE);
};
pub const Compass = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*CompassReading {
        const this: *ICompass = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *ICompass = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *ICompass = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *ICompass = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Compass,CompassReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICompass = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICompass = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICompassDeviceId = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompassDeviceId.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        var this: ?*ICompass2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompass2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReadingTransform(value);
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var this: ?*ICompass2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompass2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingTransform();
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICompass3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompass3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*ICompass3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompass3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*ICompass3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompass3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn getReportThreshold(self: *@This()) core.HResult!*CompassDataThreshold {
        var this: ?*ICompass4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompass4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportThreshold();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().ICompassStatics2Cache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Compass) {
        const factory = @This().ICompassStatics2Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefault() core.HResult!*Compass {
        const factory = @This().ICompassStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Compass";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompass.GUID;
    pub const IID: Guid = ICompass.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompass.SIGNATURE);
    var _ICompassStatics2Cache: FactoryCache(ICompassStatics2, RUNTIME_NAME) = .{};
    var _ICompassStaticsCache: FactoryCache(ICompassStatics, RUNTIME_NAME) = .{};
};
pub const CompassDataThreshold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDegrees(self: *@This()) core.HResult!f64 {
        const this: *ICompassDataThreshold = @ptrCast(self);
        return try this.getDegrees();
    }
    pub fn putDegrees(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompassDataThreshold = @ptrCast(self);
        return try this.putDegrees(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.CompassDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompassDataThreshold.GUID;
    pub const IID: Guid = ICompassDataThreshold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompassDataThreshold.SIGNATURE);
};
pub const CompassReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ICompassReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getHeadingMagneticNorth(self: *@This()) core.HResult!f64 {
        const this: *ICompassReading = @ptrCast(self);
        return try this.getHeadingMagneticNorth();
    }
    pub fn getHeadingTrueNorth(self: *@This()) core.HResult!*IReference(f64) {
        const this: *ICompassReading = @ptrCast(self);
        return try this.getHeadingTrueNorth();
    }
    pub fn getHeadingAccuracy(self: *@This()) core.HResult!MagnetometerAccuracy {
        var this: ?*ICompassReadingHeadingAccuracy = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompassReadingHeadingAccuracy.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHeadingAccuracy();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*ICompassReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompassReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*ICompassReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompassReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.CompassReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompassReading.GUID;
    pub const IID: Guid = ICompassReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompassReading.SIGNATURE);
};
pub const CompassReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*CompassReading {
        const this: *ICompassReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.CompassReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompassReadingChangedEventArgs.GUID;
    pub const IID: Guid = ICompassReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompassReadingChangedEventArgs.SIGNATURE);
};
pub const DetectedPerson = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEngagement(self: *@This()) core.HResult!HumanEngagement {
        const this: *IDetectedPerson = @ptrCast(self);
        return try this.getEngagement();
    }
    pub fn getDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IDetectedPerson = @ptrCast(self);
        return try this.getDistanceInMillimeters();
    }
    pub fn getHeadOrientation(self: *@This()) core.HResult!*HeadOrientation {
        const this: *IDetectedPerson = @ptrCast(self);
        return try this.getHeadOrientation();
    }
    pub fn getHeadPosition(self: *@This()) core.HResult!*HeadPosition {
        const this: *IDetectedPerson = @ptrCast(self);
        return try this.getHeadPosition();
    }
    pub fn getPersonId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IDetectedPerson = @ptrCast(self);
        return try this.getPersonId();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.DetectedPerson";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDetectedPerson.GUID;
    pub const IID: Guid = IDetectedPerson.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDetectedPerson.SIGNATURE);
};
pub const Gyrometer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*GyrometerReading {
        const this: *IGyrometer = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IGyrometer = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IGyrometer = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IGyrometer = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Gyrometer,GyrometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGyrometer = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGyrometer = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IGyrometerDeviceId = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGyrometerDeviceId.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        var this: ?*IGyrometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGyrometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReadingTransform(value);
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var this: ?*IGyrometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGyrometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingTransform();
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IGyrometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGyrometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*IGyrometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGyrometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*IGyrometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGyrometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn getReportThreshold(self: *@This()) core.HResult!*GyrometerDataThreshold {
        var this: ?*IGyrometer4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGyrometer4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportThreshold();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*Gyrometer {
        const factory = @This().IGyrometerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IGyrometerStatics2Cache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Gyrometer) {
        const factory = @This().IGyrometerStatics2Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Gyrometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGyrometer.GUID;
    pub const IID: Guid = IGyrometer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGyrometer.SIGNATURE);
    var _IGyrometerStaticsCache: FactoryCache(IGyrometerStatics, RUNTIME_NAME) = .{};
    var _IGyrometerStatics2Cache: FactoryCache(IGyrometerStatics2, RUNTIME_NAME) = .{};
};
pub const GyrometerDataThreshold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getXAxisInDegreesPerSecond(self: *@This()) core.HResult!f64 {
        const this: *IGyrometerDataThreshold = @ptrCast(self);
        return try this.getXAxisInDegreesPerSecond();
    }
    pub fn putXAxisInDegreesPerSecond(self: *@This(), value: f64) core.HResult!void {
        const this: *IGyrometerDataThreshold = @ptrCast(self);
        return try this.putXAxisInDegreesPerSecond(value);
    }
    pub fn getYAxisInDegreesPerSecond(self: *@This()) core.HResult!f64 {
        const this: *IGyrometerDataThreshold = @ptrCast(self);
        return try this.getYAxisInDegreesPerSecond();
    }
    pub fn putYAxisInDegreesPerSecond(self: *@This(), value: f64) core.HResult!void {
        const this: *IGyrometerDataThreshold = @ptrCast(self);
        return try this.putYAxisInDegreesPerSecond(value);
    }
    pub fn getZAxisInDegreesPerSecond(self: *@This()) core.HResult!f64 {
        const this: *IGyrometerDataThreshold = @ptrCast(self);
        return try this.getZAxisInDegreesPerSecond();
    }
    pub fn putZAxisInDegreesPerSecond(self: *@This(), value: f64) core.HResult!void {
        const this: *IGyrometerDataThreshold = @ptrCast(self);
        return try this.putZAxisInDegreesPerSecond(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.GyrometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGyrometerDataThreshold.GUID;
    pub const IID: Guid = IGyrometerDataThreshold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGyrometerDataThreshold.SIGNATURE);
};
pub const GyrometerReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IGyrometerReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getAngularVelocityX(self: *@This()) core.HResult!f64 {
        const this: *IGyrometerReading = @ptrCast(self);
        return try this.getAngularVelocityX();
    }
    pub fn getAngularVelocityY(self: *@This()) core.HResult!f64 {
        const this: *IGyrometerReading = @ptrCast(self);
        return try this.getAngularVelocityY();
    }
    pub fn getAngularVelocityZ(self: *@This()) core.HResult!f64 {
        const this: *IGyrometerReading = @ptrCast(self);
        return try this.getAngularVelocityZ();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IGyrometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGyrometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IGyrometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGyrometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.GyrometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGyrometerReading.GUID;
    pub const IID: Guid = IGyrometerReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGyrometerReading.SIGNATURE);
};
pub const GyrometerReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*GyrometerReading {
        const this: *IGyrometerReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.GyrometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGyrometerReadingChangedEventArgs.GUID;
    pub const IID: Guid = IGyrometerReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGyrometerReadingChangedEventArgs.SIGNATURE);
};
pub const HeadOrientation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRollInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IHeadOrientation = @ptrCast(self);
        return try this.getRollInDegrees();
    }
    pub fn getPitchInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IHeadOrientation = @ptrCast(self);
        return try this.getPitchInDegrees();
    }
    pub fn getYawInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IHeadOrientation = @ptrCast(self);
        return try this.getYawInDegrees();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HeadOrientation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHeadOrientation.GUID;
    pub const IID: Guid = IHeadOrientation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHeadOrientation.SIGNATURE);
};
pub const HeadPosition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAzimuthInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IHeadPosition = @ptrCast(self);
        return try this.getAzimuthInDegrees();
    }
    pub fn getAltitudeInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IHeadPosition = @ptrCast(self);
        return try this.getAltitudeInDegrees();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HeadPosition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHeadPosition.GUID;
    pub const IID: Guid = IHeadPosition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHeadPosition.SIGNATURE);
};
pub const HingeAngleReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IHingeAngleReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getAngleInDegrees(self: *@This()) core.HResult!f64 {
        const this: *IHingeAngleReading = @ptrCast(self);
        return try this.getAngleInDegrees();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IHingeAngleReading = @ptrCast(self);
        return try this.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HingeAngleReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHingeAngleReading.GUID;
    pub const IID: Guid = IHingeAngleReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHingeAngleReading.SIGNATURE);
};
pub const HingeAngleSensor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReadingAsync(self: *@This()) core.HResult!*IAsyncOperation(HingeAngleReading) {
        const this: *IHingeAngleSensor = @ptrCast(self);
        return try this.GetCurrentReadingAsync();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IHingeAngleSensor = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getMinReportThresholdInDegrees(self: *@This()) core.HResult!f64 {
        const this: *IHingeAngleSensor = @ptrCast(self);
        return try this.getMinReportThresholdInDegrees();
    }
    pub fn getReportThresholdInDegrees(self: *@This()) core.HResult!f64 {
        const this: *IHingeAngleSensor = @ptrCast(self);
        return try this.getReportThresholdInDegrees();
    }
    pub fn putReportThresholdInDegrees(self: *@This(), value: f64) core.HResult!void {
        const this: *IHingeAngleSensor = @ptrCast(self);
        return try this.putReportThresholdInDegrees(value);
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(HingeAngleSensor,HingeAngleSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHingeAngleSensor = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHingeAngleSensor = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IHingeAngleSensorStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(HingeAngleSensor) {
        const factory = @This().IHingeAngleSensorStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn GetRelatedToAdjacentPanelsAsync(firstPanelId: HSTRING, secondPanelId: HSTRING) core.HResult!*IAsyncOperation(HingeAngleSensor) {
        const factory = @This().IHingeAngleSensorStaticsCache.get();
        return try factory.GetRelatedToAdjacentPanelsAsync(firstPanelId, secondPanelId);
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(HingeAngleSensor) {
        const factory = @This().IHingeAngleSensorStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HingeAngleSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHingeAngleSensor.GUID;
    pub const IID: Guid = IHingeAngleSensor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHingeAngleSensor.SIGNATURE);
    var _IHingeAngleSensorStaticsCache: FactoryCache(IHingeAngleSensorStatics, RUNTIME_NAME) = .{};
};
pub const HingeAngleSensorReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*HingeAngleReading {
        const this: *IHingeAngleSensorReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HingeAngleSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHingeAngleSensorReadingChangedEventArgs.GUID;
    pub const IID: Guid = IHingeAngleSensorReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHingeAngleSensorReadingChangedEventArgs.SIGNATURE);
};
pub const HumanEngagement = enum(i32) {
    Unknown = 0,
    Engaged = 1,
    Unengaged = 2,
};
pub const HumanPresence = enum(i32) {
    Unknown = 0,
    Present = 1,
    NotPresent = 2,
};
pub const HumanPresenceFeatures = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSensorId(self: *@This()) core.HResult!HSTRING {
        const this: *IHumanPresenceFeatures = @ptrCast(self);
        return try this.getSensorId();
    }
    pub fn getSupportedWakeOrLockDistancesInMillimeters(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *IHumanPresenceFeatures = @ptrCast(self);
        return try this.getSupportedWakeOrLockDistancesInMillimeters();
    }
    pub fn getIsWakeOnApproachSupported(self: *@This()) core.HResult!bool {
        const this: *IHumanPresenceFeatures = @ptrCast(self);
        return try this.getIsWakeOnApproachSupported();
    }
    pub fn getIsLockOnLeaveSupported(self: *@This()) core.HResult!bool {
        const this: *IHumanPresenceFeatures = @ptrCast(self);
        return try this.getIsLockOnLeaveSupported();
    }
    pub fn getIsAttentionAwareDimmingSupported(self: *@This()) core.HResult!bool {
        const this: *IHumanPresenceFeatures = @ptrCast(self);
        return try this.getIsAttentionAwareDimmingSupported();
    }
    pub fn getIsAdaptiveDimmingSupported(self: *@This()) core.HResult!bool {
        var this: ?*IHumanPresenceFeatures2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceFeatures2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAdaptiveDimmingSupported();
    }
    pub fn getIsOnlookerDetectionSupported(self: *@This()) core.HResult!bool {
        var this: ?*IHumanPresenceFeatures3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceFeatures3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOnlookerDetectionSupported();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HumanPresenceFeatures";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHumanPresenceFeatures.GUID;
    pub const IID: Guid = IHumanPresenceFeatures.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHumanPresenceFeatures.SIGNATURE);
};
pub const HumanPresenceSensor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IHumanPresenceSensor = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getMaxDetectableDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IHumanPresenceSensor = @ptrCast(self);
        return try this.getMaxDetectableDistanceInMillimeters();
    }
    pub fn getMinDetectableDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IHumanPresenceSensor = @ptrCast(self);
        return try this.getMinDetectableDistanceInMillimeters();
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!*HumanPresenceSensorReading {
        const this: *IHumanPresenceSensor = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(HumanPresenceSensor,HumanPresenceSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHumanPresenceSensor = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHumanPresenceSensor = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn getIsPresenceSupported(self: *@This()) core.HResult!bool {
        var this: ?*IHumanPresenceSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPresenceSupported();
    }
    pub fn getIsEngagementSupported(self: *@This()) core.HResult!bool {
        var this: ?*IHumanPresenceSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsEngagementSupported();
    }
    pub fn getMaxDetectablePersons(self: *@This()) core.HResult!i32 {
        var this: ?*IHumanPresenceSensor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxDetectablePersons();
    }
    pub fn getMinDetectableAzimuthInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*IHumanPresenceSensor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinDetectableAzimuthInDegrees();
    }
    pub fn getMaxDetectableAzimuthInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*IHumanPresenceSensor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxDetectableAzimuthInDegrees();
    }
    pub fn getMinDetectableAltitudeInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*IHumanPresenceSensor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinDetectableAltitudeInDegrees();
    }
    pub fn getMaxDetectableAltitudeInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*IHumanPresenceSensor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxDetectableAltitudeInDegrees();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromId(sensorId: HSTRING) core.HResult!*HumanPresenceSensor {
        const factory = @This().IHumanPresenceSensorStatics2Cache.get();
        return try factory.FromId(sensorId);
    }
    pub fn GetDefault() core.HResult!*HumanPresenceSensor {
        const factory = @This().IHumanPresenceSensorStatics2Cache.get();
        return try factory.GetDefault();
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IHumanPresenceSensorStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(sensorId: HSTRING) core.HResult!*IAsyncOperation(HumanPresenceSensor) {
        const factory = @This().IHumanPresenceSensorStaticsCache.get();
        return try factory.FromIdAsync(sensorId);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(HumanPresenceSensor) {
        const factory = @This().IHumanPresenceSensorStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HumanPresenceSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHumanPresenceSensor.GUID;
    pub const IID: Guid = IHumanPresenceSensor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHumanPresenceSensor.SIGNATURE);
    var _IHumanPresenceSensorStatics2Cache: FactoryCache(IHumanPresenceSensorStatics2, RUNTIME_NAME) = .{};
    var _IHumanPresenceSensorStaticsCache: FactoryCache(IHumanPresenceSensorStatics, RUNTIME_NAME) = .{};
};
pub const HumanPresenceSensorReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IHumanPresenceSensorReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getPresence(self: *@This()) core.HResult!HumanPresence {
        const this: *IHumanPresenceSensorReading = @ptrCast(self);
        return try this.getPresence();
    }
    pub fn getEngagement(self: *@This()) core.HResult!HumanEngagement {
        const this: *IHumanPresenceSensorReading = @ptrCast(self);
        return try this.getEngagement();
    }
    pub fn getDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IHumanPresenceSensorReading = @ptrCast(self);
        return try this.getDistanceInMillimeters();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IHumanPresenceSensorReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensorReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn getOnlookerPresence(self: *@This()) core.HResult!HumanPresence {
        var this: ?*IHumanPresenceSensorReading3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensorReading3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOnlookerPresence();
    }
    pub fn getDetectedPersons(self: *@This()) core.HResult!*IVectorView(DetectedPerson) {
        var this: ?*IHumanPresenceSensorReading3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensorReading3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDetectedPersons();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HumanPresenceSensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHumanPresenceSensorReading.GUID;
    pub const IID: Guid = IHumanPresenceSensorReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHumanPresenceSensorReading.SIGNATURE);
};
pub const HumanPresenceSensorReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*HumanPresenceSensorReading {
        const this: *IHumanPresenceSensorReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HumanPresenceSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHumanPresenceSensorReadingChangedEventArgs.GUID;
    pub const IID: Guid = IHumanPresenceSensorReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHumanPresenceSensorReadingChangedEventArgs.SIGNATURE);
};
pub const HumanPresenceSensorReadingUpdate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHumanPresenceSensorReadingUpdate = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn putTimestamp(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IHumanPresenceSensorReadingUpdate = @ptrCast(self);
        return try this.putTimestamp(value);
    }
    pub fn getPresence(self: *@This()) core.HResult!*IReference(HumanPresence) {
        const this: *IHumanPresenceSensorReadingUpdate = @ptrCast(self);
        return try this.getPresence();
    }
    pub fn putPresence(self: *@This(), value: *IReference(HumanPresence)) core.HResult!void {
        const this: *IHumanPresenceSensorReadingUpdate = @ptrCast(self);
        return try this.putPresence(value);
    }
    pub fn getEngagement(self: *@This()) core.HResult!*IReference(HumanEngagement) {
        const this: *IHumanPresenceSensorReadingUpdate = @ptrCast(self);
        return try this.getEngagement();
    }
    pub fn putEngagement(self: *@This(), value: *IReference(HumanEngagement)) core.HResult!void {
        const this: *IHumanPresenceSensorReadingUpdate = @ptrCast(self);
        return try this.putEngagement(value);
    }
    pub fn getDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IHumanPresenceSensorReadingUpdate = @ptrCast(self);
        return try this.getDistanceInMillimeters();
    }
    pub fn putDistanceInMillimeters(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IHumanPresenceSensorReadingUpdate = @ptrCast(self);
        return try this.putDistanceInMillimeters(value);
    }
    pub fn getOnlookerPresence(self: *@This()) core.HResult!*IReference(HumanPresence) {
        var this: ?*IHumanPresenceSensorReadingUpdate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensorReadingUpdate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOnlookerPresence();
    }
    pub fn putOnlookerPresence(self: *@This(), value: *IReference(HumanPresence)) core.HResult!void {
        var this: ?*IHumanPresenceSensorReadingUpdate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSensorReadingUpdate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOnlookerPresence(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHumanPresenceSensorReadingUpdate.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HumanPresenceSensorReadingUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHumanPresenceSensorReadingUpdate.GUID;
    pub const IID: Guid = IHumanPresenceSensorReadingUpdate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHumanPresenceSensorReadingUpdate.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const HumanPresenceSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSensorId(self: *@This()) core.HResult!HSTRING {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.getSensorId();
    }
    pub fn putSensorId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.putSensorId(value);
    }
    pub fn getIsWakeOnApproachEnabled(self: *@This()) core.HResult!bool {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.getIsWakeOnApproachEnabled();
    }
    pub fn putIsWakeOnApproachEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.putIsWakeOnApproachEnabled(value);
    }
    pub fn getWakeOnApproachDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.getWakeOnApproachDistanceInMillimeters();
    }
    pub fn putWakeOnApproachDistanceInMillimeters(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.putWakeOnApproachDistanceInMillimeters(value);
    }
    pub fn getIsLockOnLeaveEnabled(self: *@This()) core.HResult!bool {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.getIsLockOnLeaveEnabled();
    }
    pub fn putIsLockOnLeaveEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.putIsLockOnLeaveEnabled(value);
    }
    pub fn getLockOnLeaveDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.getLockOnLeaveDistanceInMillimeters();
    }
    pub fn putLockOnLeaveDistanceInMillimeters(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.putLockOnLeaveDistanceInMillimeters(value);
    }
    pub fn getLockOnLeaveTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.getLockOnLeaveTimeout();
    }
    pub fn putLockOnLeaveTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.putLockOnLeaveTimeout(value);
    }
    pub fn getIsAttentionAwareDimmingEnabled(self: *@This()) core.HResult!bool {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.getIsAttentionAwareDimmingEnabled();
    }
    pub fn putIsAttentionAwareDimmingEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IHumanPresenceSettings = @ptrCast(self);
        return try this.putIsAttentionAwareDimmingEnabled(value);
    }
    pub fn getIsAdaptiveDimmingEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IHumanPresenceSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAdaptiveDimmingEnabled();
    }
    pub fn putIsAdaptiveDimmingEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IHumanPresenceSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsAdaptiveDimmingEnabled(value);
    }
    pub fn getWakeOptions(self: *@This()) core.HResult!*WakeOnApproachOptions {
        var this: ?*IHumanPresenceSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWakeOptions();
    }
    pub fn getDimmingOptions(self: *@This()) core.HResult!*AdaptiveDimmingOptions {
        var this: ?*IHumanPresenceSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDimmingOptions();
    }
    pub fn getLockOptions(self: *@This()) core.HResult!*LockOnLeaveOptions {
        var this: ?*IHumanPresenceSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLockOptions();
    }
    pub fn getIsOnlookerDetectionEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IHumanPresenceSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOnlookerDetectionEnabled();
    }
    pub fn putIsOnlookerDetectionEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IHumanPresenceSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsOnlookerDetectionEnabled(value);
    }
    pub fn getOnlookerDetectionOptions(self: *@This()) core.HResult!*OnlookerDetectionOptions {
        var this: ?*IHumanPresenceSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHumanPresenceSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOnlookerDetectionOptions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetCurrentSettingsAsync() core.HResult!*IAsyncOperation(HumanPresenceSettings) {
        const factory = @This().IHumanPresenceSettingsStaticsCache.get();
        return try factory.GetCurrentSettingsAsync();
    }
    pub fn GetCurrentSettings() core.HResult!*HumanPresenceSettings {
        const factory = @This().IHumanPresenceSettingsStaticsCache.get();
        return try factory.GetCurrentSettings();
    }
    pub fn UpdateSettingsAsync(settings: *HumanPresenceSettings) core.HResult!*IAsyncAction {
        const factory = @This().IHumanPresenceSettingsStaticsCache.get();
        return try factory.UpdateSettingsAsync(settings);
    }
    pub fn UpdateSettings(settings: *HumanPresenceSettings) core.HResult!void {
        const factory = @This().IHumanPresenceSettingsStaticsCache.get();
        return try factory.UpdateSettings(settings);
    }
    pub fn GetSupportedFeaturesForSensorIdAsync(sensorId: HSTRING) core.HResult!*IAsyncOperation(HumanPresenceFeatures) {
        const factory = @This().IHumanPresenceSettingsStaticsCache.get();
        return try factory.GetSupportedFeaturesForSensorIdAsync(sensorId);
    }
    pub fn GetSupportedFeaturesForSensorId(sensorId: HSTRING) core.HResult!*HumanPresenceFeatures {
        const factory = @This().IHumanPresenceSettingsStaticsCache.get();
        return try factory.GetSupportedFeaturesForSensorId(sensorId);
    }
    pub fn GetSupportedLockOnLeaveTimeouts() core.HResult!*IVectorView(TimeSpan) {
        const factory = @This().IHumanPresenceSettingsStaticsCache.get();
        return try factory.GetSupportedLockOnLeaveTimeouts();
    }
    pub fn addSettingsChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IHumanPresenceSettingsStaticsCache.get();
        return try factory.addSettingsChanged(handler);
    }
    pub fn removeSettingsChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IHumanPresenceSettingsStaticsCache.get();
        return try factory.removeSettingsChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.HumanPresenceSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHumanPresenceSettings.GUID;
    pub const IID: Guid = IHumanPresenceSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHumanPresenceSettings.SIGNATURE);
    var _IHumanPresenceSettingsStaticsCache: FactoryCache(IHumanPresenceSettingsStatics, RUNTIME_NAME) = .{};
};
pub const IAccelerometer = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*AccelerometerReading {
        var _r: *AccelerometerReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Accelerometer,AccelerometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addShaken(self: *@This(), handler: *TypedEventHandler(Accelerometer,AccelerometerShakenEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Shaken(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShaken(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Shaken(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df184548-2711-4da7-8098-4b82205d3c7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **AccelerometerReading) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Accelerometer,AccelerometerReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Shaken: *const fn(self: *anyopaque, handler: *TypedEventHandler(Accelerometer,AccelerometerShakenEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Shaken: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometer2 = extern struct {
    vtable: *const VTable,
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        const _c = self.vtable.put_ReadingTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_ReadingTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8f092ee-4964-401a-b602-220d7153c60a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReadingTransform: *const fn(self: *anyopaque, value: DisplayOrientations) callconv(.winapi) HRESULT,
        get_ReadingTransform: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometer3 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometer3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87e0022a-ed80-49eb-bf8a-a4ea31e5cd84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometer4 = extern struct {
    vtable: *const VTable,
    pub fn getReadingType(self: *@This()) core.HResult!AccelerometerReadingType {
        var _r: AccelerometerReadingType = undefined;
        const _c = self.vtable.get_ReadingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometer4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d373c4f-42d3-45b2-8144-ab7fb665eb59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReadingType: *const fn(self: *anyopaque, _r: *AccelerometerReadingType) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometer5 = extern struct {
    vtable: *const VTable,
    pub fn getReportThreshold(self: *@This()) core.HResult!*AccelerometerDataThreshold {
        var _r: *AccelerometerDataThreshold = undefined;
        const _c = self.vtable.get_ReportThreshold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometer5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e7e7021-def4-53a6-af43-806fd538edf6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReportThreshold: *const fn(self: *anyopaque, _r: **AccelerometerDataThreshold) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometerDataThreshold = extern struct {
    vtable: *const VTable,
    pub fn getXAxisInGForce(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_XAxisInGForce(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXAxisInGForce(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_XAxisInGForce(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getYAxisInGForce(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_YAxisInGForce(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYAxisInGForce(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_YAxisInGForce(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZAxisInGForce(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ZAxisInGForce(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZAxisInGForce(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ZAxisInGForce(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f92c1b68-6320-5577-879e-9942621c3dd9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_XAxisInGForce: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_XAxisInGForce: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_YAxisInGForce: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_YAxisInGForce: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ZAxisInGForce: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ZAxisInGForce: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometerDeviceId = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometerDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7eac64a9-97d5-446d-ab5a-917df9b96a2c";
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
    };
};
pub const IAccelerometerReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccelerationX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AccelerationX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccelerationY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AccelerationY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccelerationZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AccelerationZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9fe7acb-d351-40af-8bb6-7aa9ae641fb7";
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
        get_AccelerationX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_AccelerationY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_AccelerationZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometerReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometerReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a864aa2-15ae-4a40-be55-db58d7de7389";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometerReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*AccelerometerReading {
        var _r: *AccelerometerReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0095c65b-b6ac-475a-9f44-8b32d35a3f25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **AccelerometerReading) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometerShakenEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometerShakenEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95ff01d1-4a28-4f35-98e8-8178aae4084a";
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
    };
};
pub const IAccelerometerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*Accelerometer {
        var _r: *Accelerometer = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5e28b74-5a87-4a2d-becc-0f906ea061dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **Accelerometer) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This(), readingType: AccelerometerReadingType) core.HResult!*Accelerometer {
        var _r: *Accelerometer = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), readingType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4c4842f-d86b-4685-b2d7-3396f798d57b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, readingType: AccelerometerReadingType, _r: **Accelerometer) callconv(.winapi) HRESULT,
    };
};
pub const IAccelerometerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Accelerometer) {
        var _r: *IAsyncOperation(Accelerometer) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This(), readingType: AccelerometerReadingType) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), readingType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAccelerometerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9de218cf-455d-4cf3-8200-70e1410340f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Accelerometer)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, readingType: AccelerometerReadingType, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IActivitySensor = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReadingAsync(self: *@This()) core.HResult!*IAsyncOperation(ActivitySensorReading) {
        var _r: *IAsyncOperation(ActivitySensorReading) = undefined;
        const _c = self.vtable.GetCurrentReadingAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubscribedActivities(self: *@This()) core.HResult!*IVector(ActivityType) {
        var _r: *IVector(ActivityType) = undefined;
        const _c = self.vtable.get_SubscribedActivities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerInMilliwatts(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_PowerInMilliwatts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedActivities(self: *@This()) core.HResult!*IVectorView(ActivityType) {
        var _r: *IVectorView(ActivityType) = undefined;
        const _c = self.vtable.get_SupportedActivities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(ActivitySensor,ActivitySensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IActivitySensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd7a630c-fb5f-48eb-b09b-a2708d1c61ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReadingAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ActivitySensorReading)) callconv(.winapi) HRESULT,
        get_SubscribedActivities: *const fn(self: *anyopaque, _r: **IVector(ActivityType)) callconv(.winapi) HRESULT,
        get_PowerInMilliwatts: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportedActivities: *const fn(self: *anyopaque, _r: **IVectorView(ActivityType)) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ActivitySensor,ActivitySensorReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IActivitySensorReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivity(self: *@This()) core.HResult!ActivityType {
        var _r: ActivityType = undefined;
        const _c = self.vtable.get_Activity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfidence(self: *@This()) core.HResult!ActivitySensorReadingConfidence {
        var _r: ActivitySensorReadingConfidence = undefined;
        const _c = self.vtable.get_Confidence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IActivitySensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85125a96-1472-40a2-b2ae-e1ef29226c78";
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
        get_Activity: *const fn(self: *anyopaque, _r: *ActivityType) callconv(.winapi) HRESULT,
        get_Confidence: *const fn(self: *anyopaque, _r: *ActivitySensorReadingConfidence) callconv(.winapi) HRESULT,
    };
};
pub const IActivitySensorReadingChangeReport = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*ActivitySensorReading {
        var _r: *ActivitySensorReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IActivitySensorReadingChangeReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f3c2915-d93b-47bd-960a-f20fb2f322b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **ActivitySensorReading) callconv(.winapi) HRESULT,
    };
};
pub const IActivitySensorReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*ActivitySensorReading {
        var _r: *ActivitySensorReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IActivitySensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de386717-aeb6-4ec7-946a-d9cc19b951ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **ActivitySensorReading) callconv(.winapi) HRESULT,
    };
};
pub const IActivitySensorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(ActivitySensor) {
        var _r: *IAsyncOperation(ActivitySensor) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(ActivitySensor) {
        var _r: *IAsyncOperation(ActivitySensor) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSystemHistoryAsync(self: *@This(), fromTime: DateTime) core.HResult!*IAsyncOperation(IVectorView(ActivitySensorReading)) {
        var _r: *IAsyncOperation(IVectorView(ActivitySensorReading)) = undefined;
        const _c = self.vtable.GetSystemHistoryAsync(@ptrCast(self), fromTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSystemHistoryAsync(self: *@This(), fromTime: DateTime, duration: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(ActivitySensorReading)) {
        var _r: *IAsyncOperation(IVectorView(ActivitySensorReading)) = undefined;
        const _c = self.vtable.GetSystemHistoryAsync(@ptrCast(self), fromTime, duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IActivitySensorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a71e0e9d-ee8b-45d1-b25b-08cc0df92ab6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ActivitySensor)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(ActivitySensor)) callconv(.winapi) HRESULT,
        GetSystemHistoryAsync: *const fn(self: *anyopaque, fromTime: DateTime, _r: **IAsyncOperation(IVectorView(ActivitySensorReading))) callconv(.winapi) HRESULT,
        GetSystemHistoryAsync: *const fn(self: *anyopaque, fromTime: DateTime, duration: TimeSpan, _r: **IAsyncOperation(IVectorView(ActivitySensorReading))) callconv(.winapi) HRESULT,
    };
};
pub const IActivitySensorTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn ReadReports(self: *@This()) core.HResult!*IVectorView(ActivitySensorReadingChangeReport) {
        var _r: *IVectorView(ActivitySensorReadingChangeReport) = undefined;
        const _c = self.vtable.ReadReports(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IActivitySensorTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c9e6612-b9ca-4677-b263-243297f79d3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadReports: *const fn(self: *anyopaque, _r: **IVectorView(ActivitySensorReadingChangeReport)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveDimmingOptions = extern struct {
    vtable: *const VTable,
    pub fn getAllowWhenExternalDisplayConnected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowWhenExternalDisplayConnected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowWhenExternalDisplayConnected(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowWhenExternalDisplayConnected(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAdaptiveDimmingOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3213cf7-89b5-5732-b2a0-aefe324f54e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowWhenExternalDisplayConnected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowWhenExternalDisplayConnected: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAltimeter = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*AltimeterReading {
        var _r: *AltimeterReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Altimeter,AltimeterReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAltimeter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72f057fd-8f04-49f1-b4a7-f4e363b701a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **AltimeterReading) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Altimeter,AltimeterReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAltimeter2 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAltimeter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9471bf9-2add-48f5-9f08-3d0c7660d938";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IAltimeterReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAltitudeChangeInMeters(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AltitudeChangeInMeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAltimeterReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbe8ef73-7f5e-48c8-aa1a-f1f3befc1144";
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
        get_AltitudeChangeInMeters: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IAltimeterReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAltimeterReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "543a1bd9-6d0b-42b2-bd69-bc8fae0f782c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IAltimeterReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*AltimeterReading {
        var _r: *AltimeterReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAltimeterReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7069d077-446d-47f7-998c-ebc23b45e4a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **AltimeterReading) callconv(.winapi) HRESULT,
    };
};
pub const IAltimeterStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*Altimeter {
        var _r: *Altimeter = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IAltimeterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9eb4d7c3-e5ac-47ce-8eef-d3718168c01f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **Altimeter) callconv(.winapi) HRESULT,
    };
};
pub const IBarometer = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*BarometerReading {
        var _r: *BarometerReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Barometer,BarometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IBarometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "934475a8-78bf-452f-b017-f0209ce6dab4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **BarometerReading) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Barometer,BarometerReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBarometer2 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IBarometer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32bcc418-3eeb-4d04-9574-7633a8781f9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IBarometer3 = extern struct {
    vtable: *const VTable,
    pub fn getReportThreshold(self: *@This()) core.HResult!*BarometerDataThreshold {
        var _r: *BarometerDataThreshold = undefined;
        const _c = self.vtable.get_ReportThreshold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IBarometer3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e35f0ea-02b5-5a04-b03d-822084863a54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReportThreshold: *const fn(self: *anyopaque, _r: **BarometerDataThreshold) callconv(.winapi) HRESULT,
    };
};
pub const IBarometerDataThreshold = extern struct {
    vtable: *const VTable,
    pub fn getHectopascals(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Hectopascals(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHectopascals(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Hectopascals(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IBarometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "076b952c-cb62-5a90-a0d1-f85e4a936394";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Hectopascals: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Hectopascals: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IBarometerReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStationPressureInHectopascals(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_StationPressureInHectopascals(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IBarometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5b9d2e6-1df6-4a1a-a7ad-321d4f5db247";
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
        get_StationPressureInHectopascals: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IBarometerReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IBarometerReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85a244eb-90c5-4875-891c-3865b4c357e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IBarometerReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*BarometerReading {
        var _r: *BarometerReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IBarometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d84945f-037b-404f-9bbb-6232d69543c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **BarometerReading) callconv(.winapi) HRESULT,
    };
};
pub const IBarometerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*Barometer {
        var _r: *Barometer = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IBarometerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "286b270a-02e3-4f86-84fc-fdd892b5940f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **Barometer) callconv(.winapi) HRESULT,
    };
};
pub const IBarometerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Barometer) {
        var _r: *IAsyncOperation(Barometer) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IBarometerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8fc6b1e7-95ff-44ac-878e-d65c8308c34c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Barometer)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICompass = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*CompassReading {
        var _r: *CompassReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Compass,CompassReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompass";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "292ffa94-1b45-403c-ba06-b106dba69a64";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **CompassReading) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Compass,CompassReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICompass2 = extern struct {
    vtable: *const VTable,
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        const _c = self.vtable.put_ReadingTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_ReadingTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompass2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36f26d09-c7d7-434f-b461-979ddfc2322f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReadingTransform: *const fn(self: *anyopaque, value: DisplayOrientations) callconv(.winapi) HRESULT,
        get_ReadingTransform: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
    };
};
pub const ICompass3 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompass3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a424801b-c5ea-4d45-a0ec-4b791f041a89";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ICompass4 = extern struct {
    vtable: *const VTable,
    pub fn getReportThreshold(self: *@This()) core.HResult!*CompassDataThreshold {
        var _r: *CompassDataThreshold = undefined;
        const _c = self.vtable.get_ReportThreshold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompass4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "291e7f11-ec32-5dcc-bfcb-0bb39eba5774";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReportThreshold: *const fn(self: *anyopaque, _r: **CompassDataThreshold) callconv(.winapi) HRESULT,
    };
};
pub const ICompassDataThreshold = extern struct {
    vtable: *const VTable,
    pub fn getDegrees(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Degrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDegrees(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Degrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompassDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d15b52b3-d39d-5ec8-b2e4-f193e6ab34ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Degrees: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Degrees: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ICompassDeviceId = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompassDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d181ca29-b085-4b1d-870a-4ff57ba74fd4";
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
    };
};
pub const ICompassReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeadingMagneticNorth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HeadingMagneticNorth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeadingTrueNorth(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_HeadingTrueNorth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompassReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82911128-513d-4dc9-b781-5eedfbf02d0c";
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
        get_HeadingMagneticNorth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_HeadingTrueNorth: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const ICompassReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompassReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b13a661e-51bb-4a12-bedd-ad47ff87d2e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const ICompassReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*CompassReading {
        var _r: *CompassReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompassReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f1549b0-e8bc-4c7e-b009-4e41df137072";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **CompassReading) callconv(.winapi) HRESULT,
    };
};
pub const ICompassReadingHeadingAccuracy = extern struct {
    vtable: *const VTable,
    pub fn getHeadingAccuracy(self: *@This()) core.HResult!MagnetometerAccuracy {
        var _r: MagnetometerAccuracy = undefined;
        const _c = self.vtable.get_HeadingAccuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompassReadingHeadingAccuracy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e761354e-8911-40f7-9e16-6ecc7daec5de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HeadingAccuracy: *const fn(self: *anyopaque, _r: *MagnetometerAccuracy) callconv(.winapi) HRESULT,
    };
};
pub const ICompassStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*Compass {
        var _r: *Compass = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompassStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9abc97df-56ec-4c25-b54d-40a68bb5b269";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **Compass) callconv(.winapi) HRESULT,
    };
};
pub const ICompassStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Compass) {
        var _r: *IAsyncOperation(Compass) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ICompassStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ace0ead-3baa-4990-9ce4-be0913754ed2";
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
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Compass)) callconv(.winapi) HRESULT,
    };
};
pub const IDetectedPerson = extern struct {
    vtable: *const VTable,
    pub fn getEngagement(self: *@This()) core.HResult!HumanEngagement {
        var _r: HumanEngagement = undefined;
        const _c = self.vtable.get_Engagement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_DistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeadOrientation(self: *@This()) core.HResult!*HeadOrientation {
        var _r: *HeadOrientation = undefined;
        const _c = self.vtable.get_HeadOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeadPosition(self: *@This()) core.HResult!*HeadPosition {
        var _r: *HeadPosition = undefined;
        const _c = self.vtable.get_HeadPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPersonId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_PersonId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IDetectedPerson";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "168cc0d9-3f05-5029-a0bf-cdcab4be3f9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Engagement: *const fn(self: *anyopaque, _r: *HumanEngagement) callconv(.winapi) HRESULT,
        get_DistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_HeadOrientation: *const fn(self: *anyopaque, _r: **HeadOrientation) callconv(.winapi) HRESULT,
        get_HeadPosition: *const fn(self: *anyopaque, _r: **HeadPosition) callconv(.winapi) HRESULT,
        get_PersonId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometer = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*GyrometerReading {
        var _r: *GyrometerReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Gyrometer,GyrometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdb9a9c4-84b1-4ca2-9763-9b589506c70c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **GyrometerReading) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Gyrometer,GyrometerReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometer2 = extern struct {
    vtable: *const VTable,
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        const _c = self.vtable.put_ReadingTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_ReadingTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63df2443-8ce8-41c3-ac44-8698810b557f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReadingTransform: *const fn(self: *anyopaque, value: DisplayOrientations) callconv(.winapi) HRESULT,
        get_ReadingTransform: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometer3 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometer3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d6f88d5-8fbc-4484-914b-528adfd947b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometer4 = extern struct {
    vtable: *const VTable,
    pub fn getReportThreshold(self: *@This()) core.HResult!*GyrometerDataThreshold {
        var _r: *GyrometerDataThreshold = undefined;
        const _c = self.vtable.get_ReportThreshold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometer4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0628a60c-4c4b-5096-94e6-c356df68bef7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReportThreshold: *const fn(self: *anyopaque, _r: **GyrometerDataThreshold) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometerDataThreshold = extern struct {
    vtable: *const VTable,
    pub fn getXAxisInDegreesPerSecond(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_XAxisInDegreesPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXAxisInDegreesPerSecond(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_XAxisInDegreesPerSecond(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getYAxisInDegreesPerSecond(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_YAxisInDegreesPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYAxisInDegreesPerSecond(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_YAxisInDegreesPerSecond(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZAxisInDegreesPerSecond(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ZAxisInDegreesPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZAxisInDegreesPerSecond(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ZAxisInDegreesPerSecond(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8648b31e-6e52-5259-bbad-242a69dc38c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_XAxisInDegreesPerSecond: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_XAxisInDegreesPerSecond: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_YAxisInDegreesPerSecond: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_YAxisInDegreesPerSecond: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ZAxisInDegreesPerSecond: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ZAxisInDegreesPerSecond: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometerDeviceId = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometerDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ee5e978-89a2-4275-9e95-7126f4708760";
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
    };
};
pub const IGyrometerReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAngularVelocityX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AngularVelocityX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAngularVelocityY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AngularVelocityY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAngularVelocityZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AngularVelocityZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3d6de5c-1ee4-456f-9de7-e2493b5c8e03";
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
        get_AngularVelocityX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_AngularVelocityY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_AngularVelocityZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometerReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometerReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16afe13c-2b89-44bb-822b-d1e1556ff09b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometerReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*GyrometerReading {
        var _r: *GyrometerReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0fdf1895-6f9e-42ce-8d58-388c0ab8356d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **GyrometerReading) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*Gyrometer {
        var _r: *Gyrometer = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83b6e7c9-e49d-4b39-86e6-cd554be4c5c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **Gyrometer) callconv(.winapi) HRESULT,
    };
};
pub const IGyrometerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Gyrometer) {
        var _r: *IAsyncOperation(Gyrometer) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IGyrometerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef83f7a1-d700-4204-9613-79c6b161df4e";
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
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Gyrometer)) callconv(.winapi) HRESULT,
    };
};
pub const IHeadOrientation = extern struct {
    vtable: *const VTable,
    pub fn getRollInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_RollInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPitchInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_PitchInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYawInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_YawInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHeadOrientation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "519f54a9-513e-55e8-9c35-3e8da21dee69";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RollInDegrees: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_PitchInDegrees: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_YawInDegrees: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IHeadPosition = extern struct {
    vtable: *const VTable,
    pub fn getAzimuthInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_AzimuthInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAltitudeInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_AltitudeInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHeadPosition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "585aeb65-cf35-5e6d-a76a-37db131e17de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AzimuthInDegrees: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_AltitudeInDegrees: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IHingeAngleReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAngleInDegrees(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHingeAngleReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3cd45b9-1bf1-4f65-a704-e2da04f182c0";
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
        get_AngleInDegrees: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IHingeAngleSensor = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReadingAsync(self: *@This()) core.HResult!*IAsyncOperation(HingeAngleReading) {
        var _r: *IAsyncOperation(HingeAngleReading) = undefined;
        const _c = self.vtable.GetCurrentReadingAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinReportThresholdInDegrees(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinReportThresholdInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReportThresholdInDegrees(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ReportThresholdInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportThresholdInDegrees(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ReportThresholdInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(HingeAngleSensor,HingeAngleSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHingeAngleSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9d3be02-bfdf-437f-8c29-88c77393d309";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReadingAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HingeAngleReading)) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MinReportThresholdInDegrees: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ReportThresholdInDegrees: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ReportThresholdInDegrees: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(HingeAngleSensor,HingeAngleSensorReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IHingeAngleSensorReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*HingeAngleReading {
        var _r: *HingeAngleReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHingeAngleSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24d9558b-fad0-42b8-a854-78923049a1ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **HingeAngleReading) callconv(.winapi) HRESULT,
    };
};
pub const IHingeAngleSensorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(HingeAngleSensor) {
        var _r: *IAsyncOperation(HingeAngleSensor) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRelatedToAdjacentPanelsAsync(self: *@This(), firstPanelId: HSTRING, secondPanelId: HSTRING) core.HResult!*IAsyncOperation(HingeAngleSensor) {
        var _r: *IAsyncOperation(HingeAngleSensor) = undefined;
        const _c = self.vtable.GetRelatedToAdjacentPanelsAsync(@ptrCast(self), firstPanelId, secondPanelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(HingeAngleSensor) {
        var _r: *IAsyncOperation(HingeAngleSensor) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHingeAngleSensorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7b63910-fbb1-4123-89ce-4ea34eb0dfca";
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
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HingeAngleSensor)) callconv(.winapi) HRESULT,
        GetRelatedToAdjacentPanelsAsync: *const fn(self: *anyopaque, firstPanelId: HSTRING, secondPanelId: HSTRING, _r: **IAsyncOperation(HingeAngleSensor)) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(HingeAngleSensor)) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceFeatures = extern struct {
    vtable: *const VTable,
    pub fn getSensorId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SensorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedWakeOrLockDistancesInMillimeters(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_SupportedWakeOrLockDistancesInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsWakeOnApproachSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWakeOnApproachSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLockOnLeaveSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLockOnLeaveSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAttentionAwareDimmingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAttentionAwareDimmingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceFeatures";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bdb09fda-3244-557a-bd29-8b004f59f2cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SensorId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportedWakeOrLockDistancesInMillimeters: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_IsWakeOnApproachSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsLockOnLeaveSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsAttentionAwareDimmingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceFeatures2 = extern struct {
    vtable: *const VTable,
    pub fn getIsAdaptiveDimmingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAdaptiveDimmingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceFeatures2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08a9cdda-d929-5ec2-81e2-940bafa089cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAdaptiveDimmingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceFeatures3 = extern struct {
    vtable: *const VTable,
    pub fn getIsOnlookerDetectionSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOnlookerDetectionSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceFeatures3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed4e03aa-5ca2-5c02-b783-262e91295619";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsOnlookerDetectionSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensor = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxDetectableDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_MaxDetectableDistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinDetectableDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_MinDetectableDistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!*HumanPresenceSensorReading {
        var _r: *HumanPresenceSensorReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(HumanPresenceSensor,HumanPresenceSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2116788b-e389-5cc3-9a97-cb17be1008bd";
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
        get_MaxDetectableDistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_MinDetectableDistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **HumanPresenceSensorReading) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(HumanPresenceSensor,HumanPresenceSensorReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensor2 = extern struct {
    vtable: *const VTable,
    pub fn getIsPresenceSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPresenceSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEngagementSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEngagementSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8833779-65fe-541a-b9d6-1e474a485e7a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPresenceSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsEngagementSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensor3 = extern struct {
    vtable: *const VTable,
    pub fn getMaxDetectablePersons(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxDetectablePersons(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinDetectableAzimuthInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_MinDetectableAzimuthInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxDetectableAzimuthInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_MaxDetectableAzimuthInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinDetectableAltitudeInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_MinDetectableAltitudeInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxDetectableAltitudeInDegrees(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_MaxDetectableAltitudeInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensor3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "963f006d-090d-532c-9eaf-803a9f69285b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxDetectablePersons: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MinDetectableAzimuthInDegrees: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_MaxDetectableAzimuthInDegrees: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_MinDetectableAltitudeInDegrees: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_MaxDetectableAltitudeInDegrees: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensorExtension = extern struct {
    vtable: *const VTable,
    pub fn Initialize(self: *@This(), deviceInterface: HSTRING) core.HResult!void {
        const _c = self.vtable.Initialize(@ptrCast(self), deviceInterface);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessReading(self: *@This(), reading: *HumanPresenceSensorReading) core.HResult!*HumanPresenceSensorReadingUpdate {
        var _r: *HumanPresenceSensorReadingUpdate = undefined;
        const _c = self.vtable.ProcessReading(@ptrCast(self), reading, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProcessReadingTimeoutExpired(self: *@This(), reading: *HumanPresenceSensorReading) core.HResult!void {
        const _c = self.vtable.ProcessReadingTimeoutExpired(@ptrCast(self), reading);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Uninitialize(self: *@This()) core.HResult!void {
        const _c = self.vtable.Uninitialize(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensorExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e526a71-2d1d-5d43-8a8e-a434a8242ef0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Initialize: *const fn(self: *anyopaque, deviceInterface: HSTRING) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ProcessReading: *const fn(self: *anyopaque, reading: *HumanPresenceSensorReading, _r: **HumanPresenceSensorReadingUpdate) callconv(.winapi) HRESULT,
        ProcessReadingTimeoutExpired: *const fn(self: *anyopaque, reading: *HumanPresenceSensorReading) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Uninitialize: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensorReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresence(self: *@This()) core.HResult!HumanPresence {
        var _r: HumanPresence = undefined;
        const _c = self.vtable.get_Presence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEngagement(self: *@This()) core.HResult!HumanEngagement {
        var _r: HumanEngagement = undefined;
        const _c = self.vtable.get_Engagement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_DistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83533bf5-a85a-5d50-8be4-6072d745a3bb";
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
        get_Presence: *const fn(self: *anyopaque, _r: *HumanPresence) callconv(.winapi) HRESULT,
        get_Engagement: *const fn(self: *anyopaque, _r: *HumanEngagement) callconv(.winapi) HRESULT,
        get_DistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensorReading2 = extern struct {
    vtable: *const VTable,
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensorReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4f0e950-3bff-53d6-a0f8-514ea3705c66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensorReading3 = extern struct {
    vtable: *const VTable,
    pub fn getOnlookerPresence(self: *@This()) core.HResult!HumanPresence {
        var _r: HumanPresence = undefined;
        const _c = self.vtable.get_OnlookerPresence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDetectedPersons(self: *@This()) core.HResult!*IVectorView(DetectedPerson) {
        var _r: *IVectorView(DetectedPerson) = undefined;
        const _c = self.vtable.get_DetectedPersons(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensorReading3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b876d918-f069-586f-90e3-7c6fa5c5d33a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OnlookerPresence: *const fn(self: *anyopaque, _r: *HumanPresence) callconv(.winapi) HRESULT,
        get_DetectedPersons: *const fn(self: *anyopaque, _r: **IVectorView(DetectedPerson)) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensorReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*HumanPresenceSensorReading {
        var _r: *HumanPresenceSensorReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9dc4583-fd69-5c5e-ab1f-942204eae2db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **HumanPresenceSensorReading) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensorReadingUpdate = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimestamp(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_Timestamp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPresence(self: *@This()) core.HResult!*IReference(HumanPresence) {
        var _r: *IReference(HumanPresence) = undefined;
        const _c = self.vtable.get_Presence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPresence(self: *@This(), value: *IReference(HumanPresence)) core.HResult!void {
        const _c = self.vtable.put_Presence(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEngagement(self: *@This()) core.HResult!*IReference(HumanEngagement) {
        var _r: *IReference(HumanEngagement) = undefined;
        const _c = self.vtable.get_Engagement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEngagement(self: *@This(), value: *IReference(HumanEngagement)) core.HResult!void {
        const _c = self.vtable.put_Engagement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_DistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDistanceInMillimeters(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_DistanceInMillimeters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensorReadingUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42419c77-6d2f-55a0-9e01-c9cbe7b2d6df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Timestamp: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Presence: *const fn(self: *anyopaque, _r: **IReference(HumanPresence)) callconv(.winapi) HRESULT,
        put_Presence: *const fn(self: *anyopaque, value: *IReference(HumanPresence)) callconv(.winapi) HRESULT,
        get_Engagement: *const fn(self: *anyopaque, _r: **IReference(HumanEngagement)) callconv(.winapi) HRESULT,
        put_Engagement: *const fn(self: *anyopaque, value: *IReference(HumanEngagement)) callconv(.winapi) HRESULT,
        get_DistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_DistanceInMillimeters: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensorReadingUpdate2 = extern struct {
    vtable: *const VTable,
    pub fn getOnlookerPresence(self: *@This()) core.HResult!*IReference(HumanPresence) {
        var _r: *IReference(HumanPresence) = undefined;
        const _c = self.vtable.get_OnlookerPresence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOnlookerPresence(self: *@This(), value: *IReference(HumanPresence)) core.HResult!void {
        const _c = self.vtable.put_OnlookerPresence(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensorReadingUpdate2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb95a033-c688-546a-8e2d-b12642e7efeb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OnlookerPresence: *const fn(self: *anyopaque, _r: **IReference(HumanPresence)) callconv(.winapi) HRESULT,
        put_OnlookerPresence: *const fn(self: *anyopaque, value: *IReference(HumanPresence)) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), sensorId: HSTRING) core.HResult!*IAsyncOperation(HumanPresenceSensor) {
        var _r: *IAsyncOperation(HumanPresenceSensor) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), sensorId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(HumanPresenceSensor) {
        var _r: *IAsyncOperation(HumanPresenceSensor) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ae89842-dba9-56b2-9f27-eac69d621004";
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
        FromIdAsync: *const fn(self: *anyopaque, sensorId: HSTRING, _r: **IAsyncOperation(HumanPresenceSensor)) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HumanPresenceSensor)) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSensorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FromId(self: *@This(), sensorId: HSTRING) core.HResult!*HumanPresenceSensor {
        var _r: *HumanPresenceSensor = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), sensorId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefault(self: *@This()) core.HResult!*HumanPresenceSensor {
        var _r: *HumanPresenceSensor = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSensorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5de35843-d260-5a87-995e-ace91326e1c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromId: *const fn(self: *anyopaque, sensorId: HSTRING, _r: **HumanPresenceSensor) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **HumanPresenceSensor) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSettings = extern struct {
    vtable: *const VTable,
    pub fn getSensorId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SensorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSensorId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SensorId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsWakeOnApproachEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWakeOnApproachEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsWakeOnApproachEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsWakeOnApproachEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWakeOnApproachDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_WakeOnApproachDistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWakeOnApproachDistanceInMillimeters(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_WakeOnApproachDistanceInMillimeters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsLockOnLeaveEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLockOnLeaveEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsLockOnLeaveEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsLockOnLeaveEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLockOnLeaveDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_LockOnLeaveDistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLockOnLeaveDistanceInMillimeters(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_LockOnLeaveDistanceInMillimeters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLockOnLeaveTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_LockOnLeaveTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLockOnLeaveTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_LockOnLeaveTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAttentionAwareDimmingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAttentionAwareDimmingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAttentionAwareDimmingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAttentionAwareDimmingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef4daf5b-07b7-5eb6-86bb-b7ff49ce44fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SensorId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SensorId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsWakeOnApproachEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsWakeOnApproachEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_WakeOnApproachDistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_WakeOnApproachDistanceInMillimeters: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_IsLockOnLeaveEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsLockOnLeaveEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_LockOnLeaveDistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_LockOnLeaveDistanceInMillimeters: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_LockOnLeaveTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_LockOnLeaveTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_IsAttentionAwareDimmingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAttentionAwareDimmingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSettings2 = extern struct {
    vtable: *const VTable,
    pub fn getIsAdaptiveDimmingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAdaptiveDimmingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAdaptiveDimmingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAdaptiveDimmingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWakeOptions(self: *@This()) core.HResult!*WakeOnApproachOptions {
        var _r: *WakeOnApproachOptions = undefined;
        const _c = self.vtable.get_WakeOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDimmingOptions(self: *@This()) core.HResult!*AdaptiveDimmingOptions {
        var _r: *AdaptiveDimmingOptions = undefined;
        const _c = self.vtable.get_DimmingOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLockOptions(self: *@This()) core.HResult!*LockOnLeaveOptions {
        var _r: *LockOnLeaveOptions = undefined;
        const _c = self.vtable.get_LockOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a26f705e-8696-5eb4-b9e1-26a508de1cd4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAdaptiveDimmingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAdaptiveDimmingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_WakeOptions: *const fn(self: *anyopaque, _r: **WakeOnApproachOptions) callconv(.winapi) HRESULT,
        get_DimmingOptions: *const fn(self: *anyopaque, _r: **AdaptiveDimmingOptions) callconv(.winapi) HRESULT,
        get_LockOptions: *const fn(self: *anyopaque, _r: **LockOnLeaveOptions) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSettings3 = extern struct {
    vtable: *const VTable,
    pub fn getIsOnlookerDetectionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOnlookerDetectionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsOnlookerDetectionEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsOnlookerDetectionEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOnlookerDetectionOptions(self: *@This()) core.HResult!*OnlookerDetectionOptions {
        var _r: *OnlookerDetectionOptions = undefined;
        const _c = self.vtable.get_OnlookerDetectionOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSettings3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89757226-acc1-4f58-81df-47f1d69537f2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsOnlookerDetectionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsOnlookerDetectionEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_OnlookerDetectionOptions: *const fn(self: *anyopaque, _r: **OnlookerDetectionOptions) callconv(.winapi) HRESULT,
    };
};
pub const IHumanPresenceSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentSettingsAsync(self: *@This()) core.HResult!*IAsyncOperation(HumanPresenceSettings) {
        var _r: *IAsyncOperation(HumanPresenceSettings) = undefined;
        const _c = self.vtable.GetCurrentSettingsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentSettings(self: *@This()) core.HResult!*HumanPresenceSettings {
        var _r: *HumanPresenceSettings = undefined;
        const _c = self.vtable.GetCurrentSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateSettingsAsync(self: *@This(), settings: *HumanPresenceSettings) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateSettingsAsync(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateSettings(self: *@This(), settings: *HumanPresenceSettings) core.HResult!void {
        const _c = self.vtable.UpdateSettings(@ptrCast(self), settings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSupportedFeaturesForSensorIdAsync(self: *@This(), sensorId: HSTRING) core.HResult!*IAsyncOperation(HumanPresenceFeatures) {
        var _r: *IAsyncOperation(HumanPresenceFeatures) = undefined;
        const _c = self.vtable.GetSupportedFeaturesForSensorIdAsync(@ptrCast(self), sensorId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedFeaturesForSensorId(self: *@This(), sensorId: HSTRING) core.HResult!*HumanPresenceFeatures {
        var _r: *HumanPresenceFeatures = undefined;
        const _c = self.vtable.GetSupportedFeaturesForSensorId(@ptrCast(self), sensorId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedLockOnLeaveTimeouts(self: *@This()) core.HResult!*IVectorView(TimeSpan) {
        var _r: *IVectorView(TimeSpan) = undefined;
        const _c = self.vtable.GetSupportedLockOnLeaveTimeouts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSettingsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SettingsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSettingsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SettingsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IHumanPresenceSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f343202-e010-52c4-af0c-04a8f1e033da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentSettingsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HumanPresenceSettings)) callconv(.winapi) HRESULT,
        GetCurrentSettings: *const fn(self: *anyopaque, _r: **HumanPresenceSettings) callconv(.winapi) HRESULT,
        UpdateSettingsAsync: *const fn(self: *anyopaque, settings: *HumanPresenceSettings, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UpdateSettings: *const fn(self: *anyopaque, settings: *HumanPresenceSettings) callconv(.winapi) HRESULT,
        GetSupportedFeaturesForSensorIdAsync: *const fn(self: *anyopaque, sensorId: HSTRING, _r: **IAsyncOperation(HumanPresenceFeatures)) callconv(.winapi) HRESULT,
        GetSupportedFeaturesForSensorId: *const fn(self: *anyopaque, sensorId: HSTRING, _r: **HumanPresenceFeatures) callconv(.winapi) HRESULT,
        GetSupportedLockOnLeaveTimeouts: *const fn(self: *anyopaque, _r: **IVectorView(TimeSpan)) callconv(.winapi) HRESULT,
        add_SettingsChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SettingsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometer = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*InclinometerReading {
        var _r: *InclinometerReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Inclinometer,InclinometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2648ca6f-2286-406f-9161-f0c4bd806ebf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **InclinometerReading) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Inclinometer,InclinometerReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometer2 = extern struct {
    vtable: *const VTable,
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        const _c = self.vtable.put_ReadingTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_ReadingTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadingType(self: *@This()) core.HResult!SensorReadingType {
        var _r: SensorReadingType = undefined;
        const _c = self.vtable.get_ReadingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "029f3393-28b2-45f8-bb16-61e86a7fae6e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReadingTransform: *const fn(self: *anyopaque, value: DisplayOrientations) callconv(.winapi) HRESULT,
        get_ReadingTransform: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
        get_ReadingType: *const fn(self: *anyopaque, _r: *SensorReadingType) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometer3 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometer3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a095004-d765-4384-a3d7-0283f3abe6ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometer4 = extern struct {
    vtable: *const VTable,
    pub fn getReportThreshold(self: *@This()) core.HResult!*InclinometerDataThreshold {
        var _r: *InclinometerDataThreshold = undefined;
        const _c = self.vtable.get_ReportThreshold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometer4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43852618-8fca-548e-bbf5-5c50412b6aa4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReportThreshold: *const fn(self: *anyopaque, _r: **InclinometerDataThreshold) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometerDataThreshold = extern struct {
    vtable: *const VTable,
    pub fn getPitchInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PitchInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPitchInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_PitchInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRollInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RollInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRollInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RollInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getYawInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_YawInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYawInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_YawInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f80a4783-7bfe-545e-bb60-a0ebc47bd2fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PitchInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_PitchInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RollInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RollInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_YawInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_YawInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometerDeviceId = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01e91982-41ff-4406-ae83-62210ff16fe3";
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
    };
};
pub const IInclinometerReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPitchDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PitchDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRollDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RollDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYawDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_YawDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f44f055-b6f6-497f-b127-1a775e501458";
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
        get_PitchDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_RollDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_YawDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometerReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f164781-e90b-4658-8915-0103e08a805a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometerReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*InclinometerReading {
        var _r: *InclinometerReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ae91dc1-e7eb-4938-8511-ae0d6b440438";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **InclinometerReading) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometerReadingYawAccuracy = extern struct {
    vtable: *const VTable,
    pub fn getYawAccuracy(self: *@This()) core.HResult!MagnetometerAccuracy {
        var _r: MagnetometerAccuracy = undefined;
        const _c = self.vtable.get_YawAccuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerReadingYawAccuracy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b453e880-1fe3-4986-a257-e6ece2723949";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_YawAccuracy: *const fn(self: *anyopaque, _r: *MagnetometerAccuracy) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*Inclinometer {
        var _r: *Inclinometer = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f22ec551-9c30-453a-8b49-3c3eeb33cb61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **Inclinometer) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultForRelativeReadings(self: *@This()) core.HResult!*Inclinometer {
        var _r: *Inclinometer = undefined;
        const _c = self.vtable.GetDefaultForRelativeReadings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "043f9775-6a1e-499c-86e0-638c1a864b00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultForRelativeReadings: *const fn(self: *anyopaque, _r: **Inclinometer) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This(), sensorReadingtype: SensorReadingType) core.HResult!*Inclinometer {
        var _r: *Inclinometer = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), sensorReadingtype, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd9a4280-b91a-4829-9392-abc0b6bdf2b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, sensorReadingtype: SensorReadingType, _r: **Inclinometer) callconv(.winapi) HRESULT,
    };
};
pub const IInclinometerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), readingType: SensorReadingType) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), readingType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Inclinometer) {
        var _r: *IAsyncOperation(Inclinometer) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IInclinometerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8ba96f9-6e85-4a83-aed0-d7cdcc9856c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, readingType: SensorReadingType, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Inclinometer)) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensor = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*LightSensorReading {
        var _r: *LightSensorReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(LightSensor,LightSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f84c0718-0c54-47ae-922e-789f57fb03a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **LightSensorReading) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(LightSensor,LightSensorReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensor2 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "486b24e8-a94c-4090-8f48-09f782a9f7d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensor3 = extern struct {
    vtable: *const VTable,
    pub fn getReportThreshold(self: *@This()) core.HResult!*LightSensorDataThreshold {
        var _r: *LightSensorDataThreshold = undefined;
        const _c = self.vtable.get_ReportThreshold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensor3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4876d0ff-9f4c-5f72-adbd-a3471b063c00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReportThreshold: *const fn(self: *anyopaque, _r: **LightSensorDataThreshold) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensor4 = extern struct {
    vtable: *const VTable,
    pub fn IsChromaticitySupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsChromaticitySupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensor4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6167be97-6390-404c-9c19-445311c6a1d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsChromaticitySupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensorDataThreshold = extern struct {
    vtable: *const VTable,
    pub fn getLuxPercentage(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LuxPercentage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLuxPercentage(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_LuxPercentage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAbsoluteLux(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_AbsoluteLux(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAbsoluteLux(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_AbsoluteLux(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensorDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b160afd1-878f-5492-9f2c-33dc3ae584a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LuxPercentage: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_LuxPercentage: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_AbsoluteLux: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_AbsoluteLux: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensorDataThreshold2 = extern struct {
    vtable: *const VTable,
    pub fn getChromaticity(self: *@This()) core.HResult!LightSensorChromaticity {
        var _r: LightSensorChromaticity = undefined;
        const _c = self.vtable.get_Chromaticity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChromaticity(self: *@This(), value: LightSensorChromaticity) core.HResult!void {
        const _c = self.vtable.put_Chromaticity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensorDataThreshold2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f040fbd-e08b-5b97-8f61-dd4ee66b1733";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Chromaticity: *const fn(self: *anyopaque, _r: *LightSensorChromaticity) callconv(.winapi) HRESULT,
        put_Chromaticity: *const fn(self: *anyopaque, value: LightSensorChromaticity) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensorDeviceId = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensorDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7fee49f8-0afb-4f51-87f0-6c26375ce94f";
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
    };
};
pub const ILightSensorReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIlluminanceInLux(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_IlluminanceInLux(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ffdf6300-227c-4d2b-b302-fc0142485c68";
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
        get_IlluminanceInLux: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensorReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensorReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7512185-44a3-44c9-8190-9ef6de0a8a74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensorReading3 = extern struct {
    vtable: *const VTable,
    pub fn getChromaticity(self: *@This()) core.HResult!LightSensorChromaticity {
        var _r: LightSensorChromaticity = undefined;
        const _c = self.vtable.get_Chromaticity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensorReading3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f338ee06-96af-4029-b530-61acc05b7cfe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Chromaticity: *const fn(self: *anyopaque, _r: *LightSensorChromaticity) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensorReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*LightSensorReading {
        var _r: *LightSensorReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3a2f4cf-258b-420c-b8ab-8edd601ecf50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **LightSensorReading) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*LightSensor {
        var _r: *LightSensor = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45db8c84-c3a8-471e-9a53-6457fad87c0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **LightSensor) callconv(.winapi) HRESULT,
    };
};
pub const ILightSensorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(LightSensor) {
        var _r: *IAsyncOperation(LightSensor) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILightSensorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ec0a650-ddc6-40ab-ace3-ec3359d42c51";
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
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(LightSensor)) callconv(.winapi) HRESULT,
    };
};
pub const ILockOnLeaveOptions = extern struct {
    vtable: *const VTable,
    pub fn getAllowWhenExternalDisplayConnected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowWhenExternalDisplayConnected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowWhenExternalDisplayConnected(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowWhenExternalDisplayConnected(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ILockOnLeaveOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c6bf8bd-04c1-5829-8d4e-70521755b8be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowWhenExternalDisplayConnected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowWhenExternalDisplayConnected: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometer = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*MagnetometerReading {
        var _r: *MagnetometerReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Magnetometer,MagnetometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "484f626e-d3c9-4111-b3f6-2cf1faa418d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **MagnetometerReading) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Magnetometer,MagnetometerReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometer2 = extern struct {
    vtable: *const VTable,
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        const _c = self.vtable.put_ReadingTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_ReadingTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4656c85-26f6-444b-a9e2-a23f966cd368";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReadingTransform: *const fn(self: *anyopaque, value: DisplayOrientations) callconv(.winapi) HRESULT,
        get_ReadingTransform: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometer3 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometer3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be93db7c-a625-48ef-acf7-fac104832671";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometer4 = extern struct {
    vtable: *const VTable,
    pub fn getReportThreshold(self: *@This()) core.HResult!*MagnetometerDataThreshold {
        var _r: *MagnetometerDataThreshold = undefined;
        const _c = self.vtable.get_ReportThreshold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometer4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dfb17901-3e0f-508f-b24b-f2bb75015f40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReportThreshold: *const fn(self: *anyopaque, _r: **MagnetometerDataThreshold) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometerDataThreshold = extern struct {
    vtable: *const VTable,
    pub fn getXAxisMicroteslas(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_XAxisMicroteslas(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXAxisMicroteslas(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_XAxisMicroteslas(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getYAxisMicroteslas(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_YAxisMicroteslas(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYAxisMicroteslas(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_YAxisMicroteslas(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZAxisMicroteslas(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_ZAxisMicroteslas(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZAxisMicroteslas(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_ZAxisMicroteslas(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d177cb01-9063-5fa5-b596-b445e9dc3401";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_XAxisMicroteslas: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_XAxisMicroteslas: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_YAxisMicroteslas: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_YAxisMicroteslas: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_ZAxisMicroteslas: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_ZAxisMicroteslas: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometerDeviceId = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometerDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58b498c2-7e4b-404c-9fc5-5de8b40ebae3";
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
    };
};
pub const IMagnetometerReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMagneticFieldX(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MagneticFieldX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMagneticFieldY(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MagneticFieldY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMagneticFieldZ(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MagneticFieldZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirectionalAccuracy(self: *@This()) core.HResult!MagnetometerAccuracy {
        var _r: MagnetometerAccuracy = undefined;
        const _c = self.vtable.get_DirectionalAccuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c2cc40d-ebfd-4e5c-bb11-afc29b3cae61";
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
        get_MagneticFieldX: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_MagneticFieldY: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_MagneticFieldZ: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_DirectionalAccuracy: *const fn(self: *anyopaque, _r: *MagnetometerAccuracy) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometerReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometerReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4c95c61-61d9-404b-a328-066f177a1409";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometerReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*MagnetometerReading {
        var _r: *MagnetometerReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17eae872-2eb9-4ee7-8ad0-3127537d949b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **MagnetometerReading) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*Magnetometer {
        var _r: *Magnetometer = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "853c64cc-0698-4dda-a6df-9cb9cc4ab40a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **Magnetometer) callconv(.winapi) HRESULT,
    };
};
pub const IMagnetometerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Magnetometer) {
        var _r: *IAsyncOperation(Magnetometer) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IMagnetometerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c0819f0-ffc6-4f89-a06f-18fa10792933";
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
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Magnetometer)) callconv(.winapi) HRESULT,
    };
};
pub const IOnlookerDetectionOptions = extern struct {
    vtable: *const VTable,
    pub fn getAction(self: *@This()) core.HResult!OnlookerDetectionAction {
        var _r: OnlookerDetectionAction = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAction(self: *@This(), value: OnlookerDetectionAction) core.HResult!void {
        const _c = self.vtable.put_Action(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackOnMode(self: *@This()) core.HResult!OnlookerDetectionBackOnMode {
        var _r: OnlookerDetectionBackOnMode = undefined;
        const _c = self.vtable.get_BackOnMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackOnMode(self: *@This(), value: OnlookerDetectionBackOnMode) core.HResult!void {
        const _c = self.vtable.put_BackOnMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOnlookerDetectionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0412b36f-36e6-51e2-876e-65197cc53c12";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *OnlookerDetectionAction) callconv(.winapi) HRESULT,
        put_Action: *const fn(self: *anyopaque, value: OnlookerDetectionAction) callconv(.winapi) HRESULT,
        get_BackOnMode: *const fn(self: *anyopaque, _r: *OnlookerDetectionBackOnMode) callconv(.winapi) HRESULT,
        put_BackOnMode: *const fn(self: *anyopaque, value: OnlookerDetectionBackOnMode) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensor = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*OrientationSensorReading {
        var _r: *OrientationSensorReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(OrientationSensor,OrientationSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e354635-cf6b-4c63-abd8-10252b0bf6ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **OrientationSensorReading) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(OrientationSensor,OrientationSensorReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensor2 = extern struct {
    vtable: *const VTable,
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        const _c = self.vtable.put_ReadingTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_ReadingTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadingType(self: *@This()) core.HResult!SensorReadingType {
        var _r: SensorReadingType = undefined;
        const _c = self.vtable.get_ReadingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d924cf9-2f1f-49c9-8042-4a1813d67760";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReadingTransform: *const fn(self: *anyopaque, value: DisplayOrientations) callconv(.winapi) HRESULT,
        get_ReadingTransform: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
        get_ReadingType: *const fn(self: *anyopaque, _r: *SensorReadingType) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensor3 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensor3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2cce578d-646b-48c5-b7ee-44fdc4c6aafd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensorDeviceId = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensorDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a69b648-4c29-49ec-b28f-ea1d117b66f0";
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
    };
};
pub const IOrientationSensorReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationMatrix(self: *@This()) core.HResult!*SensorRotationMatrix {
        var _r: *SensorRotationMatrix = undefined;
        const _c = self.vtable.get_RotationMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQuaternion(self: *@This()) core.HResult!*SensorQuaternion {
        var _r: *SensorQuaternion = undefined;
        const _c = self.vtable.get_Quaternion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4756c993-6595-4897-bcc6-d537ee757564";
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
        get_RotationMatrix: *const fn(self: *anyopaque, _r: **SensorRotationMatrix) callconv(.winapi) HRESULT,
        get_Quaternion: *const fn(self: *anyopaque, _r: **SensorQuaternion) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensorReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensorReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00576e5f-49f8-4c05-9e07-24fac79408c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensorReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*OrientationSensorReading {
        var _r: *OrientationSensorReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "012c1186-c3ba-46bc-ae65-7a98996cbfb8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **OrientationSensorReading) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensorReadingYawAccuracy = extern struct {
    vtable: *const VTable,
    pub fn getYawAccuracy(self: *@This()) core.HResult!MagnetometerAccuracy {
        var _r: MagnetometerAccuracy = undefined;
        const _c = self.vtable.get_YawAccuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensorReadingYawAccuracy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1ac9824-3f5a-49a2-bc7b-1180bc38cd2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_YawAccuracy: *const fn(self: *anyopaque, _r: *MagnetometerAccuracy) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*OrientationSensor {
        var _r: *OrientationSensor = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10ef8712-fb4c-428a-898b-2765e409e669";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **OrientationSensor) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultForRelativeReadings(self: *@This()) core.HResult!*OrientationSensor {
        var _r: *OrientationSensor = undefined;
        const _c = self.vtable.GetDefaultForRelativeReadings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59da0d0b-d40a-4c71-9276-8a272a0a6619";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultForRelativeReadings: *const fn(self: *anyopaque, _r: **OrientationSensor) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensorStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This(), sensorReadingtype: SensorReadingType) core.HResult!*OrientationSensor {
        var _r: *OrientationSensor = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), sensorReadingtype, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefault(self: *@This(), sensorReadingType: SensorReadingType, optimizationGoal: SensorOptimizationGoal) core.HResult!*OrientationSensor {
        var _r: *OrientationSensor = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), sensorReadingType, optimizationGoal, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensorStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d82ce920-2777-40ff-9f59-d654b085f12f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, sensorReadingtype: SensorReadingType, _r: **OrientationSensor) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, sensorReadingType: SensorReadingType, optimizationGoal: SensorOptimizationGoal, _r: **OrientationSensor) callconv(.winapi) HRESULT,
    };
};
pub const IOrientationSensorStatics4 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), readingType: SensorReadingType) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), readingType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This(), readingType: SensorReadingType, optimizationGoal: SensorOptimizationGoal) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), readingType, optimizationGoal, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(OrientationSensor) {
        var _r: *IAsyncOperation(OrientationSensor) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IOrientationSensorStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a67feb55-2c85-4b28-a0fe-58c4b20495f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, readingType: SensorReadingType, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, readingType: SensorReadingType, optimizationGoal: SensorOptimizationGoal, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(OrientationSensor)) callconv(.winapi) HRESULT,
    };
};
pub const IPedometer = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerInMilliwatts(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_PowerInMilliwatts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Pedometer,PedometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IPedometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a1e013d-3d98-45f8-8920-8e4ecaca5f97";
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
        get_PowerInMilliwatts: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Pedometer,PedometerReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPedometer2 = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReadings(self: *@This()) core.HResult!*IMapView(PedometerStepKind,PedometerReading) {
        var _r: *IMapView(PedometerStepKind,PedometerReading) = undefined;
        const _c = self.vtable.GetCurrentReadings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IPedometer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5a406df-2b81-4add-b2ff-77ab6c98ba19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReadings: *const fn(self: *anyopaque, _r: **IMapView(PedometerStepKind,PedometerReading)) callconv(.winapi) HRESULT,
    };
};
pub const IPedometerDataThresholdFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), sensor: *Pedometer, stepGoal: i32) core.HResult!*PedometerDataThreshold {
        var _r: *PedometerDataThreshold = undefined;
        const _c = self.vtable.Create(@ptrCast(self), sensor, stepGoal, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IPedometerDataThresholdFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cbad8f50-7a54-466b-9010-77a162fca5d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, sensor: *Pedometer, stepGoal: i32, _r: **PedometerDataThreshold) callconv(.winapi) HRESULT,
    };
};
pub const IPedometerReading = extern struct {
    vtable: *const VTable,
    pub fn getStepKind(self: *@This()) core.HResult!PedometerStepKind {
        var _r: PedometerStepKind = undefined;
        const _c = self.vtable.get_StepKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulativeSteps(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CumulativeSteps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulativeStepsDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_CumulativeStepsDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IPedometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2245dcf4-a8e1-432f-896a-be0dd9b02d24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StepKind: *const fn(self: *anyopaque, _r: *PedometerStepKind) callconv(.winapi) HRESULT,
        get_CumulativeSteps: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_CumulativeStepsDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IPedometerReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*PedometerReading {
        var _r: *PedometerReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IPedometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f855e47e-abbc-4456-86a8-25cf2b333742";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **PedometerReading) callconv(.winapi) HRESULT,
    };
};
pub const IPedometerStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Pedometer) {
        var _r: *IAsyncOperation(Pedometer) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(Pedometer) {
        var _r: *IAsyncOperation(Pedometer) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSystemHistoryAsync(self: *@This(), fromTime: DateTime) core.HResult!*IAsyncOperation(IVectorView(PedometerReading)) {
        var _r: *IAsyncOperation(IVectorView(PedometerReading)) = undefined;
        const _c = self.vtable.GetSystemHistoryAsync(@ptrCast(self), fromTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSystemHistoryAsync(self: *@This(), fromTime: DateTime, duration: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(PedometerReading)) {
        var _r: *IAsyncOperation(IVectorView(PedometerReading)) = undefined;
        const _c = self.vtable.GetSystemHistoryAsync(@ptrCast(self), fromTime, duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IPedometerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82980a2f-4083-4dfb-b411-938ea0f4b946";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Pedometer)) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Pedometer)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetSystemHistoryAsync: *const fn(self: *anyopaque, fromTime: DateTime, _r: **IAsyncOperation(IVectorView(PedometerReading))) callconv(.winapi) HRESULT,
        GetSystemHistoryAsync: *const fn(self: *anyopaque, fromTime: DateTime, duration: TimeSpan, _r: **IAsyncOperation(IVectorView(PedometerReading))) callconv(.winapi) HRESULT,
    };
};
pub const IPedometerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetReadingsFromTriggerDetails(self: *@This(), triggerDetails: *SensorDataThresholdTriggerDetails) core.HResult!*IVectorView(PedometerReading) {
        var _r: *IVectorView(PedometerReading) = undefined;
        const _c = self.vtable.GetReadingsFromTriggerDetails(@ptrCast(self), triggerDetails, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IPedometerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79f5c6bb-ce0e-4133-b47e-8627ea72f677";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetReadingsFromTriggerDetails: *const fn(self: *anyopaque, triggerDetails: *SensorDataThresholdTriggerDetails, _r: **IVectorView(PedometerReading)) callconv(.winapi) HRESULT,
    };
};
pub const IProximitySensor = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_MaxDistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_MinDistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!*ProximitySensorReading {
        var _r: *ProximitySensorReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(ProximitySensor,ProximitySensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateDisplayOnOffController(self: *@This()) core.HResult!*ProximitySensorDisplayOnOffController {
        var _r: *ProximitySensorDisplayOnOffController = undefined;
        const _c = self.vtable.CreateDisplayOnOffController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IProximitySensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "54c076b8-ecfb-4944-b928-74fc504d47ee";
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
        get_MaxDistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_MinDistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **ProximitySensorReading) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ProximitySensor,ProximitySensorReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateDisplayOnOffController: *const fn(self: *anyopaque, _r: **ProximitySensorDisplayOnOffController) callconv(.winapi) HRESULT,
    };
};
pub const IProximitySensorDataThresholdFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), sensor: *ProximitySensor) core.HResult!*ProximitySensorDataThreshold {
        var _r: *ProximitySensorDataThreshold = undefined;
        const _c = self.vtable.Create(@ptrCast(self), sensor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IProximitySensorDataThresholdFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "905ac121-6d27-4ad3-9db5-6467f2a5ad9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, sensor: *ProximitySensor, _r: **ProximitySensorDataThreshold) callconv(.winapi) HRESULT,
    };
};
pub const IProximitySensorReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDetected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDetected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_DistanceInMillimeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IProximitySensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71228d59-132d-4d5f-8ff9-2f0db8751ced";
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
        get_IsDetected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DistanceInMillimeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IProximitySensorReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*ProximitySensorReading {
        var _r: *ProximitySensorReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IProximitySensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfc2f366-c3e8-40fd-8cc3-67e289004938";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **ProximitySensorReading) callconv(.winapi) HRESULT,
    };
};
pub const IProximitySensorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromId(self: *@This(), sensorId: HSTRING) core.HResult!*ProximitySensor {
        var _r: *ProximitySensor = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), sensorId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IProximitySensorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29186649-6269-4e57-a5ad-82be80813392";
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
        FromId: *const fn(self: *anyopaque, sensorId: HSTRING, _r: **ProximitySensor) callconv(.winapi) HRESULT,
    };
};
pub const IProximitySensorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetReadingsFromTriggerDetails(self: *@This(), triggerDetails: *SensorDataThresholdTriggerDetails) core.HResult!*IVectorView(ProximitySensorReading) {
        var _r: *IVectorView(ProximitySensorReading) = undefined;
        const _c = self.vtable.GetReadingsFromTriggerDetails(@ptrCast(self), triggerDetails, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IProximitySensorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cbf473ae-e9ca-422f-ad67-4c3d25df350c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetReadingsFromTriggerDetails: *const fn(self: *anyopaque, triggerDetails: *SensorDataThresholdTriggerDetails, _r: **IVectorView(ProximitySensorReading)) callconv(.winapi) HRESULT,
    };
};
pub const ISensorDataThreshold = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISensorDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "54daec61-fe4b-4e07-b260-3a4cdfbe396e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const ISensorDataThresholdTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSensorType(self: *@This()) core.HResult!SensorType {
        var _r: SensorType = undefined;
        const _c = self.vtable.get_SensorType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISensorDataThresholdTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9106f1b7-e88d-48b1-bc90-619c7b349391";
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
        get_SensorType: *const fn(self: *anyopaque, _r: *SensorType) callconv(.winapi) HRESULT,
    };
};
pub const ISensorQuaternion = extern struct {
    vtable: *const VTable,
    pub fn getW(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_W(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getX(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_X(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getY(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Y(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZ(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Z(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISensorQuaternion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9c5c827-c71c-46e7-9da3-36a193b232bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_W: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_X: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Y: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Z: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const ISensorRotationMatrix = extern struct {
    vtable: *const VTable,
    pub fn getM11(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_M11(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getM12(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_M12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getM13(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_M13(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getM21(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_M21(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getM22(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_M22(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getM23(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_M23(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getM31(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_M31(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getM32(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_M32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getM33(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_M33(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISensorRotationMatrix";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a3d5a67-22f4-4392-9538-65d0bd064aa6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_M11: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_M12: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_M13: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_M21: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_M22: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_M23: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_M31: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_M32: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_M33: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const ISimpleOrientationSensor = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentOrientation(self: *@This()) core.HResult!SimpleOrientation {
        var _r: SimpleOrientation = undefined;
        const _c = self.vtable.GetCurrentOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addOrientationChanged(self: *@This(), handler: *TypedEventHandler(SimpleOrientationSensor,SimpleOrientationSensorOrientationChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OrientationChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOrientationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OrientationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISimpleOrientationSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ff53856-214a-4dee-a3f9-616f1ab06ffd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentOrientation: *const fn(self: *anyopaque, _r: *SimpleOrientation) callconv(.winapi) HRESULT,
        add_OrientationChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(SimpleOrientationSensor,SimpleOrientationSensorOrientationChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OrientationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISimpleOrientationSensor2 = extern struct {
    vtable: *const VTable,
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        const _c = self.vtable.put_ReadingTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var _r: DisplayOrientations = undefined;
        const _c = self.vtable.get_ReadingTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISimpleOrientationSensor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a277a798-8870-453e-8bd6-b8f5d8d7941b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReadingTransform: *const fn(self: *anyopaque, value: DisplayOrientations) callconv(.winapi) HRESULT,
        get_ReadingTransform: *const fn(self: *anyopaque, _r: *DisplayOrientations) callconv(.winapi) HRESULT,
    };
};
pub const ISimpleOrientationSensorDeviceId = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISimpleOrientationSensorDeviceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbc00acb-3b76-41f6-8091-30efe646d3cf";
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
    };
};
pub const ISimpleOrientationSensorOrientationChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientation(self: *@This()) core.HResult!SimpleOrientation {
        var _r: SimpleOrientation = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISimpleOrientationSensorOrientationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bcd5c660-23d4-4b4c-a22e-ba81ade0c601";
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
        get_Orientation: *const fn(self: *anyopaque, _r: *SimpleOrientation) callconv(.winapi) HRESULT,
    };
};
pub const ISimpleOrientationSensorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*SimpleOrientationSensor {
        var _r: *SimpleOrientationSensor = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISimpleOrientationSensorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72ed066f-70aa-40c6-9b1b-3433f7459b4e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **SimpleOrientationSensor) callconv(.winapi) HRESULT,
    };
};
pub const ISimpleOrientationSensorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(SimpleOrientationSensor) {
        var _r: *IAsyncOperation(SimpleOrientationSensor) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ISimpleOrientationSensorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "848f9c7f-b138-4e11-8910-a2a2a3b56d83";
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
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(SimpleOrientationSensor)) callconv(.winapi) HRESULT,
    };
};
pub const IWakeOnApproachOptions = extern struct {
    vtable: *const VTable,
    pub fn getAllowWhenExternalDisplayConnected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowWhenExternalDisplayConnected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowWhenExternalDisplayConnected(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowWhenExternalDisplayConnected(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisableWhenBatterySaverOn(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DisableWhenBatterySaverOn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisableWhenBatterySaverOn(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DisableWhenBatterySaverOn(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.IWakeOnApproachOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0b87ae7-7e1f-5ea5-814d-6b7e07defc2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowWhenExternalDisplayConnected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowWhenExternalDisplayConnected: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DisableWhenBatterySaverOn: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DisableWhenBatterySaverOn: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const Inclinometer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*InclinometerReading {
        const this: *IInclinometer = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IInclinometer = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IInclinometer = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IInclinometer = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Inclinometer,InclinometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInclinometer = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IInclinometer = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IInclinometerDeviceId = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometerDeviceId.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        var this: ?*IInclinometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReadingTransform(value);
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var this: ?*IInclinometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingTransform();
    }
    pub fn getReadingType(self: *@This()) core.HResult!SensorReadingType {
        var this: ?*IInclinometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingType();
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IInclinometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*IInclinometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*IInclinometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn getReportThreshold(self: *@This()) core.HResult!*InclinometerDataThreshold {
        var this: ?*IInclinometer4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometer4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportThreshold();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*Inclinometer {
        const factory = @This().IInclinometerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetDefaultForRelativeReadings() core.HResult!*Inclinometer {
        const factory = @This().IInclinometerStatics2Cache.get();
        return try factory.GetDefaultForRelativeReadings();
    }
    pub fn GetDeviceSelector(readingType: SensorReadingType) core.HResult!HSTRING {
        const factory = @This().IInclinometerStatics4Cache.get();
        return try factory.GetDeviceSelector(readingType);
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Inclinometer) {
        const factory = @This().IInclinometerStatics4Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefault(sensorReadingtype: SensorReadingType) core.HResult!*Inclinometer {
        const factory = @This().IInclinometerStatics3Cache.get();
        return try factory.GetDefault(sensorReadingtype);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Inclinometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInclinometer.GUID;
    pub const IID: Guid = IInclinometer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInclinometer.SIGNATURE);
    var _IInclinometerStaticsCache: FactoryCache(IInclinometerStatics, RUNTIME_NAME) = .{};
    var _IInclinometerStatics2Cache: FactoryCache(IInclinometerStatics2, RUNTIME_NAME) = .{};
    var _IInclinometerStatics4Cache: FactoryCache(IInclinometerStatics4, RUNTIME_NAME) = .{};
    var _IInclinometerStatics3Cache: FactoryCache(IInclinometerStatics3, RUNTIME_NAME) = .{};
};
pub const InclinometerDataThreshold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPitchInDegrees(self: *@This()) core.HResult!f32 {
        const this: *IInclinometerDataThreshold = @ptrCast(self);
        return try this.getPitchInDegrees();
    }
    pub fn putPitchInDegrees(self: *@This(), value: f32) core.HResult!void {
        const this: *IInclinometerDataThreshold = @ptrCast(self);
        return try this.putPitchInDegrees(value);
    }
    pub fn getRollInDegrees(self: *@This()) core.HResult!f32 {
        const this: *IInclinometerDataThreshold = @ptrCast(self);
        return try this.getRollInDegrees();
    }
    pub fn putRollInDegrees(self: *@This(), value: f32) core.HResult!void {
        const this: *IInclinometerDataThreshold = @ptrCast(self);
        return try this.putRollInDegrees(value);
    }
    pub fn getYawInDegrees(self: *@This()) core.HResult!f32 {
        const this: *IInclinometerDataThreshold = @ptrCast(self);
        return try this.getYawInDegrees();
    }
    pub fn putYawInDegrees(self: *@This(), value: f32) core.HResult!void {
        const this: *IInclinometerDataThreshold = @ptrCast(self);
        return try this.putYawInDegrees(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.InclinometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInclinometerDataThreshold.GUID;
    pub const IID: Guid = IInclinometerDataThreshold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInclinometerDataThreshold.SIGNATURE);
};
pub const InclinometerReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IInclinometerReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getPitchDegrees(self: *@This()) core.HResult!f32 {
        const this: *IInclinometerReading = @ptrCast(self);
        return try this.getPitchDegrees();
    }
    pub fn getRollDegrees(self: *@This()) core.HResult!f32 {
        const this: *IInclinometerReading = @ptrCast(self);
        return try this.getRollDegrees();
    }
    pub fn getYawDegrees(self: *@This()) core.HResult!f32 {
        const this: *IInclinometerReading = @ptrCast(self);
        return try this.getYawDegrees();
    }
    pub fn getYawAccuracy(self: *@This()) core.HResult!MagnetometerAccuracy {
        var this: ?*IInclinometerReadingYawAccuracy = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometerReadingYawAccuracy.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getYawAccuracy();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IInclinometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IInclinometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInclinometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.InclinometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInclinometerReading.GUID;
    pub const IID: Guid = IInclinometerReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInclinometerReading.SIGNATURE);
};
pub const InclinometerReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*InclinometerReading {
        const this: *IInclinometerReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.InclinometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInclinometerReadingChangedEventArgs.GUID;
    pub const IID: Guid = IInclinometerReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInclinometerReadingChangedEventArgs.SIGNATURE);
};
pub const LightSensor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*LightSensorReading {
        const this: *ILightSensor = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *ILightSensor = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *ILightSensor = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *ILightSensor = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(LightSensor,LightSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ILightSensor = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILightSensor = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILightSensorDeviceId = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensorDeviceId.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ILightSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*ILightSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*ILightSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn getReportThreshold(self: *@This()) core.HResult!*LightSensorDataThreshold {
        var this: ?*ILightSensor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportThreshold();
    }
    pub fn IsChromaticitySupported(self: *@This()) core.HResult!bool {
        var this: ?*ILightSensor4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensor4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsChromaticitySupported();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().ILightSensorStatics2Cache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(LightSensor) {
        const factory = @This().ILightSensorStatics2Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefault() core.HResult!*LightSensor {
        const factory = @This().ILightSensorStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.LightSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILightSensor.GUID;
    pub const IID: Guid = ILightSensor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILightSensor.SIGNATURE);
    var _ILightSensorStatics2Cache: FactoryCache(ILightSensorStatics2, RUNTIME_NAME) = .{};
    var _ILightSensorStaticsCache: FactoryCache(ILightSensorStatics, RUNTIME_NAME) = .{};
};
pub const LightSensorChromaticity = extern struct {
    X: f64,
    Y: f64,
};
pub const LightSensorDataThreshold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLuxPercentage(self: *@This()) core.HResult!f32 {
        const this: *ILightSensorDataThreshold = @ptrCast(self);
        return try this.getLuxPercentage();
    }
    pub fn putLuxPercentage(self: *@This(), value: f32) core.HResult!void {
        const this: *ILightSensorDataThreshold = @ptrCast(self);
        return try this.putLuxPercentage(value);
    }
    pub fn getAbsoluteLux(self: *@This()) core.HResult!f32 {
        const this: *ILightSensorDataThreshold = @ptrCast(self);
        return try this.getAbsoluteLux();
    }
    pub fn putAbsoluteLux(self: *@This(), value: f32) core.HResult!void {
        const this: *ILightSensorDataThreshold = @ptrCast(self);
        return try this.putAbsoluteLux(value);
    }
    pub fn getChromaticity(self: *@This()) core.HResult!LightSensorChromaticity {
        var this: ?*ILightSensorDataThreshold2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensorDataThreshold2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChromaticity();
    }
    pub fn putChromaticity(self: *@This(), value: LightSensorChromaticity) core.HResult!void {
        var this: ?*ILightSensorDataThreshold2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensorDataThreshold2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putChromaticity(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.LightSensorDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILightSensorDataThreshold.GUID;
    pub const IID: Guid = ILightSensorDataThreshold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILightSensorDataThreshold.SIGNATURE);
};
pub const LightSensorReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ILightSensorReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getIlluminanceInLux(self: *@This()) core.HResult!f32 {
        const this: *ILightSensorReading = @ptrCast(self);
        return try this.getIlluminanceInLux();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*ILightSensorReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensorReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*ILightSensorReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensorReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn getChromaticity(self: *@This()) core.HResult!LightSensorChromaticity {
        var this: ?*ILightSensorReading3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILightSensorReading3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChromaticity();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.LightSensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILightSensorReading.GUID;
    pub const IID: Guid = ILightSensorReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILightSensorReading.SIGNATURE);
};
pub const LightSensorReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*LightSensorReading {
        const this: *ILightSensorReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.LightSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILightSensorReadingChangedEventArgs.GUID;
    pub const IID: Guid = ILightSensorReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILightSensorReadingChangedEventArgs.SIGNATURE);
};
pub const LockOnLeaveOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowWhenExternalDisplayConnected(self: *@This()) core.HResult!bool {
        const this: *ILockOnLeaveOptions = @ptrCast(self);
        return try this.getAllowWhenExternalDisplayConnected();
    }
    pub fn putAllowWhenExternalDisplayConnected(self: *@This(), value: bool) core.HResult!void {
        const this: *ILockOnLeaveOptions = @ptrCast(self);
        return try this.putAllowWhenExternalDisplayConnected(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.LockOnLeaveOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockOnLeaveOptions.GUID;
    pub const IID: Guid = ILockOnLeaveOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockOnLeaveOptions.SIGNATURE);
};
pub const Magnetometer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*MagnetometerReading {
        const this: *IMagnetometer = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IMagnetometer = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IMagnetometer = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IMagnetometer = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Magnetometer,MagnetometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMagnetometer = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMagnetometer = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMagnetometerDeviceId = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMagnetometerDeviceId.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        var this: ?*IMagnetometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMagnetometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReadingTransform(value);
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var this: ?*IMagnetometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMagnetometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingTransform();
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IMagnetometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMagnetometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*IMagnetometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMagnetometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMagnetometer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMagnetometer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn getReportThreshold(self: *@This()) core.HResult!*MagnetometerDataThreshold {
        var this: ?*IMagnetometer4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMagnetometer4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportThreshold();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IMagnetometerStatics2Cache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Magnetometer) {
        const factory = @This().IMagnetometerStatics2Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefault() core.HResult!*Magnetometer {
        const factory = @This().IMagnetometerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Magnetometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagnetometer.GUID;
    pub const IID: Guid = IMagnetometer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagnetometer.SIGNATURE);
    var _IMagnetometerStatics2Cache: FactoryCache(IMagnetometerStatics2, RUNTIME_NAME) = .{};
    var _IMagnetometerStaticsCache: FactoryCache(IMagnetometerStatics, RUNTIME_NAME) = .{};
};
pub const MagnetometerAccuracy = enum(i32) {
    Unknown = 0,
    Unreliable = 1,
    Approximate = 2,
    High = 3,
};
pub const MagnetometerDataThreshold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getXAxisMicroteslas(self: *@This()) core.HResult!f32 {
        const this: *IMagnetometerDataThreshold = @ptrCast(self);
        return try this.getXAxisMicroteslas();
    }
    pub fn putXAxisMicroteslas(self: *@This(), value: f32) core.HResult!void {
        const this: *IMagnetometerDataThreshold = @ptrCast(self);
        return try this.putXAxisMicroteslas(value);
    }
    pub fn getYAxisMicroteslas(self: *@This()) core.HResult!f32 {
        const this: *IMagnetometerDataThreshold = @ptrCast(self);
        return try this.getYAxisMicroteslas();
    }
    pub fn putYAxisMicroteslas(self: *@This(), value: f32) core.HResult!void {
        const this: *IMagnetometerDataThreshold = @ptrCast(self);
        return try this.putYAxisMicroteslas(value);
    }
    pub fn getZAxisMicroteslas(self: *@This()) core.HResult!f32 {
        const this: *IMagnetometerDataThreshold = @ptrCast(self);
        return try this.getZAxisMicroteslas();
    }
    pub fn putZAxisMicroteslas(self: *@This(), value: f32) core.HResult!void {
        const this: *IMagnetometerDataThreshold = @ptrCast(self);
        return try this.putZAxisMicroteslas(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.MagnetometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagnetometerDataThreshold.GUID;
    pub const IID: Guid = IMagnetometerDataThreshold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagnetometerDataThreshold.SIGNATURE);
};
pub const MagnetometerReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IMagnetometerReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getMagneticFieldX(self: *@This()) core.HResult!f32 {
        const this: *IMagnetometerReading = @ptrCast(self);
        return try this.getMagneticFieldX();
    }
    pub fn getMagneticFieldY(self: *@This()) core.HResult!f32 {
        const this: *IMagnetometerReading = @ptrCast(self);
        return try this.getMagneticFieldY();
    }
    pub fn getMagneticFieldZ(self: *@This()) core.HResult!f32 {
        const this: *IMagnetometerReading = @ptrCast(self);
        return try this.getMagneticFieldZ();
    }
    pub fn getDirectionalAccuracy(self: *@This()) core.HResult!MagnetometerAccuracy {
        const this: *IMagnetometerReading = @ptrCast(self);
        return try this.getDirectionalAccuracy();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMagnetometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMagnetometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IMagnetometerReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMagnetometerReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.MagnetometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagnetometerReading.GUID;
    pub const IID: Guid = IMagnetometerReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagnetometerReading.SIGNATURE);
};
pub const MagnetometerReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*MagnetometerReading {
        const this: *IMagnetometerReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.MagnetometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagnetometerReadingChangedEventArgs.GUID;
    pub const IID: Guid = IMagnetometerReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagnetometerReadingChangedEventArgs.SIGNATURE);
};
pub const OnlookerDetectionAction = enum(i32) {
    Dim = 0,
    Notify = 1,
    DimAndNotify = 2,
};
pub const OnlookerDetectionBackOnMode = enum(i32) {
    Manually = 0,
    OneHour = 1,
    FourHours = 2,
    OneDay = 3,
};
pub const OnlookerDetectionOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAction(self: *@This()) core.HResult!OnlookerDetectionAction {
        const this: *IOnlookerDetectionOptions = @ptrCast(self);
        return try this.getAction();
    }
    pub fn putAction(self: *@This(), value: OnlookerDetectionAction) core.HResult!void {
        const this: *IOnlookerDetectionOptions = @ptrCast(self);
        return try this.putAction(value);
    }
    pub fn getBackOnMode(self: *@This()) core.HResult!OnlookerDetectionBackOnMode {
        const this: *IOnlookerDetectionOptions = @ptrCast(self);
        return try this.getBackOnMode();
    }
    pub fn putBackOnMode(self: *@This(), value: OnlookerDetectionBackOnMode) core.HResult!void {
        const this: *IOnlookerDetectionOptions = @ptrCast(self);
        return try this.putBackOnMode(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.OnlookerDetectionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOnlookerDetectionOptions.GUID;
    pub const IID: Guid = IOnlookerDetectionOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOnlookerDetectionOptions.SIGNATURE);
};
pub const OrientationSensor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*OrientationSensorReading {
        const this: *IOrientationSensor = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IOrientationSensor = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IOrientationSensor = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IOrientationSensor = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(OrientationSensor,OrientationSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IOrientationSensor = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IOrientationSensor = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IOrientationSensorDeviceId = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensorDeviceId.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        var this: ?*IOrientationSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReadingTransform(value);
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var this: ?*IOrientationSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingTransform();
    }
    pub fn getReadingType(self: *@This()) core.HResult!SensorReadingType {
        var this: ?*IOrientationSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingType();
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IOrientationSensor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*IOrientationSensor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*IOrientationSensor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefaultForRelativeReadings() core.HResult!*OrientationSensor {
        const factory = @This().IOrientationSensorStatics2Cache.get();
        return try factory.GetDefaultForRelativeReadings();
    }
    pub fn GetDefault(sensorReadingtype: SensorReadingType) core.HResult!*OrientationSensor {
        const factory = @This().IOrientationSensorStatics3Cache.get();
        return try factory.GetDefault(sensorReadingtype);
    }
    pub fn GetDefault(sensorReadingType: SensorReadingType, optimizationGoal: SensorOptimizationGoal) core.HResult!*OrientationSensor {
        const factory = @This().IOrientationSensorStatics3Cache.get();
        return try factory.GetDefault(sensorReadingType, optimizationGoal);
    }
    pub fn GetDefault() core.HResult!*OrientationSensor {
        const factory = @This().IOrientationSensorStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetDeviceSelector(readingType: SensorReadingType) core.HResult!HSTRING {
        const factory = @This().IOrientationSensorStatics4Cache.get();
        return try factory.GetDeviceSelector(readingType);
    }
    pub fn GetDeviceSelector(readingType: SensorReadingType, optimizationGoal: SensorOptimizationGoal) core.HResult!HSTRING {
        const factory = @This().IOrientationSensorStatics4Cache.get();
        return try factory.GetDeviceSelector(readingType, optimizationGoal);
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(OrientationSensor) {
        const factory = @This().IOrientationSensorStatics4Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.OrientationSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOrientationSensor.GUID;
    pub const IID: Guid = IOrientationSensor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOrientationSensor.SIGNATURE);
    var _IOrientationSensorStatics2Cache: FactoryCache(IOrientationSensorStatics2, RUNTIME_NAME) = .{};
    var _IOrientationSensorStatics3Cache: FactoryCache(IOrientationSensorStatics3, RUNTIME_NAME) = .{};
    var _IOrientationSensorStaticsCache: FactoryCache(IOrientationSensorStatics, RUNTIME_NAME) = .{};
    var _IOrientationSensorStatics4Cache: FactoryCache(IOrientationSensorStatics4, RUNTIME_NAME) = .{};
};
pub const OrientationSensorReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IOrientationSensorReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getRotationMatrix(self: *@This()) core.HResult!*SensorRotationMatrix {
        const this: *IOrientationSensorReading = @ptrCast(self);
        return try this.getRotationMatrix();
    }
    pub fn getQuaternion(self: *@This()) core.HResult!*SensorQuaternion {
        const this: *IOrientationSensorReading = @ptrCast(self);
        return try this.getQuaternion();
    }
    pub fn getYawAccuracy(self: *@This()) core.HResult!MagnetometerAccuracy {
        var this: ?*IOrientationSensorReadingYawAccuracy = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensorReadingYawAccuracy.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getYawAccuracy();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IOrientationSensorReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensorReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IOrientationSensorReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOrientationSensorReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.OrientationSensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOrientationSensorReading.GUID;
    pub const IID: Guid = IOrientationSensorReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOrientationSensorReading.SIGNATURE);
};
pub const OrientationSensorReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*OrientationSensorReading {
        const this: *IOrientationSensorReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.OrientationSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOrientationSensorReadingChangedEventArgs.GUID;
    pub const IID: Guid = IOrientationSensorReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOrientationSensorReadingChangedEventArgs.SIGNATURE);
};
pub const Pedometer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IPedometer = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getPowerInMilliwatts(self: *@This()) core.HResult!f64 {
        const this: *IPedometer = @ptrCast(self);
        return try this.getPowerInMilliwatts();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IPedometer = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IPedometer = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IPedometer = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(Pedometer,PedometerReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPedometer = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPedometer = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn GetCurrentReadings(self: *@This()) core.HResult!*IMapView(PedometerStepKind,PedometerReading) {
        var this: ?*IPedometer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPedometer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCurrentReadings();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Pedometer) {
        const factory = @This().IPedometerStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(Pedometer) {
        const factory = @This().IPedometerStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IPedometerStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetSystemHistoryAsync(fromTime: DateTime) core.HResult!*IAsyncOperation(IVectorView(PedometerReading)) {
        const factory = @This().IPedometerStaticsCache.get();
        return try factory.GetSystemHistoryAsync(fromTime);
    }
    pub fn GetSystemHistoryAsync(fromTime: DateTime, duration: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(PedometerReading)) {
        const factory = @This().IPedometerStaticsCache.get();
        return try factory.GetSystemHistoryAsync(fromTime, duration);
    }
    pub fn GetReadingsFromTriggerDetails(triggerDetails: *SensorDataThresholdTriggerDetails) core.HResult!*IVectorView(PedometerReading) {
        const factory = @This().IPedometerStatics2Cache.get();
        return try factory.GetReadingsFromTriggerDetails(triggerDetails);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Pedometer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPedometer.GUID;
    pub const IID: Guid = IPedometer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPedometer.SIGNATURE);
    var _IPedometerStaticsCache: FactoryCache(IPedometerStatics, RUNTIME_NAME) = .{};
    var _IPedometerStatics2Cache: FactoryCache(IPedometerStatics2, RUNTIME_NAME) = .{};
};
pub const PedometerDataThreshold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(sensor: *Pedometer, stepGoal: i32) core.HResult!*PedometerDataThreshold {
        const factory = @This().IPedometerDataThresholdFactoryCache.get();
        return try factory.Create(sensor, stepGoal);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.PedometerDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISensorDataThreshold.GUID;
    pub const IID: Guid = ISensorDataThreshold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISensorDataThreshold.SIGNATURE);
    var _IPedometerDataThresholdFactoryCache: FactoryCache(IPedometerDataThresholdFactory, RUNTIME_NAME) = .{};
};
pub const PedometerReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStepKind(self: *@This()) core.HResult!PedometerStepKind {
        const this: *IPedometerReading = @ptrCast(self);
        return try this.getStepKind();
    }
    pub fn getCumulativeSteps(self: *@This()) core.HResult!i32 {
        const this: *IPedometerReading = @ptrCast(self);
        return try this.getCumulativeSteps();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IPedometerReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getCumulativeStepsDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IPedometerReading = @ptrCast(self);
        return try this.getCumulativeStepsDuration();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.PedometerReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPedometerReading.GUID;
    pub const IID: Guid = IPedometerReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPedometerReading.SIGNATURE);
};
pub const PedometerReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*PedometerReading {
        const this: *IPedometerReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.PedometerReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPedometerReadingChangedEventArgs.GUID;
    pub const IID: Guid = IPedometerReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPedometerReadingChangedEventArgs.SIGNATURE);
};
pub const PedometerStepKind = enum(i32) {
    Unknown = 0,
    Walking = 1,
    Running = 2,
};
pub const ProximitySensor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IProximitySensor = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getMaxDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IProximitySensor = @ptrCast(self);
        return try this.getMaxDistanceInMillimeters();
    }
    pub fn getMinDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IProximitySensor = @ptrCast(self);
        return try this.getMinDistanceInMillimeters();
    }
    pub fn GetCurrentReading(self: *@This()) core.HResult!*ProximitySensorReading {
        const this: *IProximitySensor = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(ProximitySensor,ProximitySensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IProximitySensor = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IProximitySensor = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn CreateDisplayOnOffController(self: *@This()) core.HResult!*ProximitySensorDisplayOnOffController {
        const this: *IProximitySensor = @ptrCast(self);
        return try this.CreateDisplayOnOffController();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetReadingsFromTriggerDetails(triggerDetails: *SensorDataThresholdTriggerDetails) core.HResult!*IVectorView(ProximitySensorReading) {
        const factory = @This().IProximitySensorStatics2Cache.get();
        return try factory.GetReadingsFromTriggerDetails(triggerDetails);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IProximitySensorStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromId(sensorId: HSTRING) core.HResult!*ProximitySensor {
        const factory = @This().IProximitySensorStaticsCache.get();
        return try factory.FromId(sensorId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ProximitySensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProximitySensor.GUID;
    pub const IID: Guid = IProximitySensor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProximitySensor.SIGNATURE);
    var _IProximitySensorStatics2Cache: FactoryCache(IProximitySensorStatics2, RUNTIME_NAME) = .{};
    var _IProximitySensorStaticsCache: FactoryCache(IProximitySensorStatics, RUNTIME_NAME) = .{};
};
pub const ProximitySensorDataThreshold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(sensor: *ProximitySensor) core.HResult!*ProximitySensorDataThreshold {
        const factory = @This().IProximitySensorDataThresholdFactoryCache.get();
        return try factory.Create(sensor);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ProximitySensorDataThreshold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISensorDataThreshold.GUID;
    pub const IID: Guid = ISensorDataThreshold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISensorDataThreshold.SIGNATURE);
    var _IProximitySensorDataThresholdFactoryCache: FactoryCache(IProximitySensorDataThresholdFactory, RUNTIME_NAME) = .{};
};
pub const ProximitySensorDisplayOnOffController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Close(self: *@This()) core.HResult!void {
        const this: *IClosable = @ptrCast(self);
        return try this.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ProximitySensorDisplayOnOffController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClosable.GUID;
    pub const IID: Guid = IClosable.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClosable.SIGNATURE);
};
pub const ProximitySensorReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IProximitySensorReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getIsDetected(self: *@This()) core.HResult!bool {
        const this: *IProximitySensorReading = @ptrCast(self);
        return try this.getIsDetected();
    }
    pub fn getDistanceInMillimeters(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IProximitySensorReading = @ptrCast(self);
        return try this.getDistanceInMillimeters();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ProximitySensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProximitySensorReading.GUID;
    pub const IID: Guid = IProximitySensorReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProximitySensorReading.SIGNATURE);
};
pub const ProximitySensorReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*ProximitySensorReading {
        const this: *IProximitySensorReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.ProximitySensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProximitySensorReadingChangedEventArgs.GUID;
    pub const IID: Guid = IProximitySensorReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProximitySensorReadingChangedEventArgs.SIGNATURE);
};
pub const SensorDataThresholdTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ISensorDataThresholdTriggerDetails = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getSensorType(self: *@This()) core.HResult!SensorType {
        const this: *ISensorDataThresholdTriggerDetails = @ptrCast(self);
        return try this.getSensorType();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.SensorDataThresholdTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISensorDataThresholdTriggerDetails.GUID;
    pub const IID: Guid = ISensorDataThresholdTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISensorDataThresholdTriggerDetails.SIGNATURE);
};
pub const SensorOptimizationGoal = enum(i32) {
    Precision = 0,
    PowerEfficiency = 1,
};
pub const SensorQuaternion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getW(self: *@This()) core.HResult!f32 {
        const this: *ISensorQuaternion = @ptrCast(self);
        return try this.getW();
    }
    pub fn getX(self: *@This()) core.HResult!f32 {
        const this: *ISensorQuaternion = @ptrCast(self);
        return try this.getX();
    }
    pub fn getY(self: *@This()) core.HResult!f32 {
        const this: *ISensorQuaternion = @ptrCast(self);
        return try this.getY();
    }
    pub fn getZ(self: *@This()) core.HResult!f32 {
        const this: *ISensorQuaternion = @ptrCast(self);
        return try this.getZ();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.SensorQuaternion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISensorQuaternion.GUID;
    pub const IID: Guid = ISensorQuaternion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISensorQuaternion.SIGNATURE);
};
pub const SensorReadingType = enum(i32) {
    Absolute = 0,
    Relative = 1,
};
pub const SensorRotationMatrix = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getM11(self: *@This()) core.HResult!f32 {
        const this: *ISensorRotationMatrix = @ptrCast(self);
        return try this.getM11();
    }
    pub fn getM12(self: *@This()) core.HResult!f32 {
        const this: *ISensorRotationMatrix = @ptrCast(self);
        return try this.getM12();
    }
    pub fn getM13(self: *@This()) core.HResult!f32 {
        const this: *ISensorRotationMatrix = @ptrCast(self);
        return try this.getM13();
    }
    pub fn getM21(self: *@This()) core.HResult!f32 {
        const this: *ISensorRotationMatrix = @ptrCast(self);
        return try this.getM21();
    }
    pub fn getM22(self: *@This()) core.HResult!f32 {
        const this: *ISensorRotationMatrix = @ptrCast(self);
        return try this.getM22();
    }
    pub fn getM23(self: *@This()) core.HResult!f32 {
        const this: *ISensorRotationMatrix = @ptrCast(self);
        return try this.getM23();
    }
    pub fn getM31(self: *@This()) core.HResult!f32 {
        const this: *ISensorRotationMatrix = @ptrCast(self);
        return try this.getM31();
    }
    pub fn getM32(self: *@This()) core.HResult!f32 {
        const this: *ISensorRotationMatrix = @ptrCast(self);
        return try this.getM32();
    }
    pub fn getM33(self: *@This()) core.HResult!f32 {
        const this: *ISensorRotationMatrix = @ptrCast(self);
        return try this.getM33();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.SensorRotationMatrix";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISensorRotationMatrix.GUID;
    pub const IID: Guid = ISensorRotationMatrix.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISensorRotationMatrix.SIGNATURE);
};
pub const SensorType = enum(i32) {
    Accelerometer = 0,
    ActivitySensor = 1,
    Barometer = 2,
    Compass = 3,
    CustomSensor = 4,
    Gyroscope = 5,
    ProximitySensor = 6,
    Inclinometer = 7,
    LightSensor = 8,
    OrientationSensor = 9,
    Pedometer = 10,
    RelativeInclinometer = 11,
    RelativeOrientationSensor = 12,
    SimpleOrientationSensor = 13,
};
pub const SimpleOrientation = enum(i32) {
    NotRotated = 0,
    Rotated90DegreesCounterclockwise = 1,
    Rotated180DegreesCounterclockwise = 2,
    Rotated270DegreesCounterclockwise = 3,
    Faceup = 4,
    Facedown = 5,
};
pub const SimpleOrientationSensor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentOrientation(self: *@This()) core.HResult!SimpleOrientation {
        const this: *ISimpleOrientationSensor = @ptrCast(self);
        return try this.GetCurrentOrientation();
    }
    pub fn addOrientationChanged(self: *@This(), handler: *TypedEventHandler(SimpleOrientationSensor,SimpleOrientationSensorOrientationChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISimpleOrientationSensor = @ptrCast(self);
        return try this.addOrientationChanged(handler);
    }
    pub fn removeOrientationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISimpleOrientationSensor = @ptrCast(self);
        return try this.removeOrientationChanged(token);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISimpleOrientationSensorDeviceId = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISimpleOrientationSensorDeviceId.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn putReadingTransform(self: *@This(), value: DisplayOrientations) core.HResult!void {
        var this: ?*ISimpleOrientationSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISimpleOrientationSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReadingTransform(value);
    }
    pub fn getReadingTransform(self: *@This()) core.HResult!DisplayOrientations {
        var this: ?*ISimpleOrientationSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISimpleOrientationSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadingTransform();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*SimpleOrientationSensor {
        const factory = @This().ISimpleOrientationSensorStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().ISimpleOrientationSensorStatics2Cache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(SimpleOrientationSensor) {
        const factory = @This().ISimpleOrientationSensorStatics2Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.SimpleOrientationSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISimpleOrientationSensor.GUID;
    pub const IID: Guid = ISimpleOrientationSensor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISimpleOrientationSensor.SIGNATURE);
    var _ISimpleOrientationSensorStaticsCache: FactoryCache(ISimpleOrientationSensorStatics, RUNTIME_NAME) = .{};
    var _ISimpleOrientationSensorStatics2Cache: FactoryCache(ISimpleOrientationSensorStatics2, RUNTIME_NAME) = .{};
};
pub const SimpleOrientationSensorOrientationChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ISimpleOrientationSensorOrientationChangedEventArgs = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getOrientation(self: *@This()) core.HResult!SimpleOrientation {
        const this: *ISimpleOrientationSensorOrientationChangedEventArgs = @ptrCast(self);
        return try this.getOrientation();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.SimpleOrientationSensorOrientationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISimpleOrientationSensorOrientationChangedEventArgs.GUID;
    pub const IID: Guid = ISimpleOrientationSensorOrientationChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISimpleOrientationSensorOrientationChangedEventArgs.SIGNATURE);
};
pub const WakeOnApproachOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowWhenExternalDisplayConnected(self: *@This()) core.HResult!bool {
        const this: *IWakeOnApproachOptions = @ptrCast(self);
        return try this.getAllowWhenExternalDisplayConnected();
    }
    pub fn putAllowWhenExternalDisplayConnected(self: *@This(), value: bool) core.HResult!void {
        const this: *IWakeOnApproachOptions = @ptrCast(self);
        return try this.putAllowWhenExternalDisplayConnected(value);
    }
    pub fn getDisableWhenBatterySaverOn(self: *@This()) core.HResult!bool {
        const this: *IWakeOnApproachOptions = @ptrCast(self);
        return try this.getDisableWhenBatterySaverOn();
    }
    pub fn putDisableWhenBatterySaverOn(self: *@This(), value: bool) core.HResult!void {
        const this: *IWakeOnApproachOptions = @ptrCast(self);
        return try this.putDisableWhenBatterySaverOn(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.WakeOnApproachOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWakeOnApproachOptions.GUID;
    pub const IID: Guid = IWakeOnApproachOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWakeOnApproachOptions.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Guid = @import("../root.zig").Guid;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IClosable = @import("../Foundation.zig").IClosable;
const HRESULT = @import("../root.zig").HRESULT;
const DateTime = @import("../Foundation.zig").DateTime;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const DisplayOrientations = @import("../Graphics/Display.zig").DisplayOrientations;
const EventHandler = @import("../Foundation.zig").EventHandler;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
pub const Custom = @import("./Sensors/Custom.zig");
