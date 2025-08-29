pub const AltitudeReferenceSystem = enum(i32) {
    Unspecified = 0,
    Terrain = 1,
    Ellipsoid = 2,
    Geoid = 3,
    Surface = 4,
};
pub const BasicGeoposition = extern struct {
    Latitude: f64,
    Longitude: f64,
    Altitude: f64,
};
pub const CivicAddress = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        const this: *ICivicAddress = @ptrCast(self);
        return try this.getCountry();
    }
    pub fn getState(self: *@This()) core.HResult!HSTRING {
        const this: *ICivicAddress = @ptrCast(self);
        return try this.getState();
    }
    pub fn getCity(self: *@This()) core.HResult!HSTRING {
        const this: *ICivicAddress = @ptrCast(self);
        return try this.getCity();
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        const this: *ICivicAddress = @ptrCast(self);
        return try this.getPostalCode();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ICivicAddress = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.CivicAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICivicAddress.GUID;
    pub const IID: Guid = ICivicAddress.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICivicAddress.SIGNATURE);
};
pub const GeoboundingBox = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNorthwestCorner(self: *@This()) core.HResult!BasicGeoposition {
        const this: *IGeoboundingBox = @ptrCast(self);
        return try this.getNorthwestCorner();
    }
    pub fn getSoutheastCorner(self: *@This()) core.HResult!BasicGeoposition {
        const this: *IGeoboundingBox = @ptrCast(self);
        return try this.getSoutheastCorner();
    }
    pub fn getCenter(self: *@This()) core.HResult!BasicGeoposition {
        const this: *IGeoboundingBox = @ptrCast(self);
        return try this.getCenter();
    }
    pub fn getMinAltitude(self: *@This()) core.HResult!f64 {
        const this: *IGeoboundingBox = @ptrCast(self);
        return try this.getMinAltitude();
    }
    pub fn getMaxAltitude(self: *@This()) core.HResult!f64 {
        const this: *IGeoboundingBox = @ptrCast(self);
        return try this.getMaxAltitude();
    }
    pub fn getGeoshapeType(self: *@This()) core.HResult!GeoshapeType {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGeoshapeType();
    }
    pub fn getSpatialReferenceId(self: *@This()) core.HResult!u32 {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSpatialReferenceId();
    }
    pub fn getAltitudeReferenceSystem(self: *@This()) core.HResult!AltitudeReferenceSystem {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAltitudeReferenceSystem();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(northwestCorner: BasicGeoposition, southeastCorner: BasicGeoposition) core.HResult!*GeoboundingBox {
        const factory = @This().IGeoboundingBoxFactoryCache.get();
        return try factory.Create(northwestCorner, southeastCorner);
    }
    pub fn CreateWithAltitudeReference(northwestCorner: BasicGeoposition, southeastCorner: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem) core.HResult!*GeoboundingBox {
        const factory = @This().IGeoboundingBoxFactoryCache.get();
        return try factory.CreateWithAltitudeReference(northwestCorner, southeastCorner, altitudeReferenceSystem);
    }
    pub fn CreateWithAltitudeReferenceAndSpatialReference(northwestCorner: BasicGeoposition, southeastCorner: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*GeoboundingBox {
        const factory = @This().IGeoboundingBoxFactoryCache.get();
        return try factory.CreateWithAltitudeReferenceAndSpatialReference(northwestCorner, southeastCorner, altitudeReferenceSystem, spatialReferenceId);
    }
    pub fn TryCompute(positions: *IIterable(BasicGeoposition)) core.HResult!*GeoboundingBox {
        const factory = @This().IGeoboundingBoxStaticsCache.get();
        return try factory.TryCompute(positions);
    }
    pub fn TryCompute(positions: *IIterable(BasicGeoposition), altitudeRefSystem: AltitudeReferenceSystem) core.HResult!*GeoboundingBox {
        const factory = @This().IGeoboundingBoxStaticsCache.get();
        return try factory.TryCompute(positions, altitudeRefSystem);
    }
    pub fn TryCompute(positions: *IIterable(BasicGeoposition), altitudeRefSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*GeoboundingBox {
        const factory = @This().IGeoboundingBoxStaticsCache.get();
        return try factory.TryCompute(positions, altitudeRefSystem, spatialReferenceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.GeoboundingBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeoboundingBox.GUID;
    pub const IID: Guid = IGeoboundingBox.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeoboundingBox.SIGNATURE);
    var _IGeoboundingBoxFactoryCache: FactoryCache(IGeoboundingBoxFactory, RUNTIME_NAME) = .{};
    var _IGeoboundingBoxStaticsCache: FactoryCache(IGeoboundingBoxStatics, RUNTIME_NAME) = .{};
};
pub const Geocircle = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenter(self: *@This()) core.HResult!BasicGeoposition {
        const this: *IGeocircle = @ptrCast(self);
        return try this.getCenter();
    }
    pub fn getRadius(self: *@This()) core.HResult!f64 {
        const this: *IGeocircle = @ptrCast(self);
        return try this.getRadius();
    }
    pub fn getGeoshapeType(self: *@This()) core.HResult!GeoshapeType {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGeoshapeType();
    }
    pub fn getSpatialReferenceId(self: *@This()) core.HResult!u32 {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSpatialReferenceId();
    }
    pub fn getAltitudeReferenceSystem(self: *@This()) core.HResult!AltitudeReferenceSystem {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAltitudeReferenceSystem();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(position: BasicGeoposition, radius: f64) core.HResult!*Geocircle {
        const factory = @This().IGeocircleFactoryCache.get();
        return try factory.Create(position, radius);
    }
    pub fn CreateWithAltitudeReferenceSystem(position: BasicGeoposition, radius: f64, altitudeReferenceSystem: AltitudeReferenceSystem) core.HResult!*Geocircle {
        const factory = @This().IGeocircleFactoryCache.get();
        return try factory.CreateWithAltitudeReferenceSystem(position, radius, altitudeReferenceSystem);
    }
    pub fn CreateWithAltitudeReferenceSystemAndSpatialReferenceId(position: BasicGeoposition, radius: f64, altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*Geocircle {
        const factory = @This().IGeocircleFactoryCache.get();
        return try factory.CreateWithAltitudeReferenceSystemAndSpatialReferenceId(position, radius, altitudeReferenceSystem, spatialReferenceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geocircle";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeocircle.GUID;
    pub const IID: Guid = IGeocircle.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeocircle.SIGNATURE);
    var _IGeocircleFactoryCache: FactoryCache(IGeocircleFactory, RUNTIME_NAME) = .{};
};
pub const Geocoordinate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLatitude(self: *@This()) core.HResult!f64 {
        const this: *IGeocoordinate = @ptrCast(self);
        return try this.getLatitude();
    }
    pub fn getLongitude(self: *@This()) core.HResult!f64 {
        const this: *IGeocoordinate = @ptrCast(self);
        return try this.getLongitude();
    }
    pub fn getAltitude(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IGeocoordinate = @ptrCast(self);
        return try this.getAltitude();
    }
    pub fn getAccuracy(self: *@This()) core.HResult!f64 {
        const this: *IGeocoordinate = @ptrCast(self);
        return try this.getAccuracy();
    }
    pub fn getAltitudeAccuracy(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IGeocoordinate = @ptrCast(self);
        return try this.getAltitudeAccuracy();
    }
    pub fn getHeading(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IGeocoordinate = @ptrCast(self);
        return try this.getHeading();
    }
    pub fn getSpeed(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IGeocoordinate = @ptrCast(self);
        return try this.getSpeed();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IGeocoordinate = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getPositionSource(self: *@This()) core.HResult!PositionSource {
        var this: ?*IGeocoordinateWithPositionData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeocoordinateWithPositionData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPositionSource();
    }
    pub fn getSatelliteData(self: *@This()) core.HResult!*GeocoordinateSatelliteData {
        var this: ?*IGeocoordinateWithPositionData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeocoordinateWithPositionData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSatelliteData();
    }
    pub fn getPoint(self: *@This()) core.HResult!*Geopoint {
        var this: ?*IGeocoordinateWithPoint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeocoordinateWithPoint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPoint();
    }
    pub fn getPositionSourceTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var this: ?*IGeocoordinateWithPositionSourceTimestamp = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeocoordinateWithPositionSourceTimestamp.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPositionSourceTimestamp();
    }
    pub fn getIsRemoteSource(self: *@This()) core.HResult!bool {
        var this: ?*IGeocoordinateWithRemoteSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeocoordinateWithRemoteSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRemoteSource();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geocoordinate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeocoordinate.GUID;
    pub const IID: Guid = IGeocoordinate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeocoordinate.SIGNATURE);
};
pub const GeocoordinateSatelliteData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPositionDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IGeocoordinateSatelliteData = @ptrCast(self);
        return try this.getPositionDilutionOfPrecision();
    }
    pub fn getHorizontalDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IGeocoordinateSatelliteData = @ptrCast(self);
        return try this.getHorizontalDilutionOfPrecision();
    }
    pub fn getVerticalDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IGeocoordinateSatelliteData = @ptrCast(self);
        return try this.getVerticalDilutionOfPrecision();
    }
    pub fn getGeometricDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*IGeocoordinateSatelliteData2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeocoordinateSatelliteData2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGeometricDilutionOfPrecision();
    }
    pub fn getTimeDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*IGeocoordinateSatelliteData2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeocoordinateSatelliteData2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimeDilutionOfPrecision();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.GeocoordinateSatelliteData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeocoordinateSatelliteData.GUID;
    pub const IID: Guid = IGeocoordinateSatelliteData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeocoordinateSatelliteData.SIGNATURE);
};
pub const GeolocationAccessStatus = enum(i32) {
    Unspecified = 0,
    Allowed = 1,
    Denied = 2,
};
pub const Geolocator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredAccuracy(self: *@This()) core.HResult!PositionAccuracy {
        const this: *IGeolocator = @ptrCast(self);
        return try this.getDesiredAccuracy();
    }
    pub fn putDesiredAccuracy(self: *@This(), value: PositionAccuracy) core.HResult!void {
        const this: *IGeolocator = @ptrCast(self);
        return try this.putDesiredAccuracy(value);
    }
    pub fn getMovementThreshold(self: *@This()) core.HResult!f64 {
        const this: *IGeolocator = @ptrCast(self);
        return try this.getMovementThreshold();
    }
    pub fn putMovementThreshold(self: *@This(), value: f64) core.HResult!void {
        const this: *IGeolocator = @ptrCast(self);
        return try this.putMovementThreshold(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IGeolocator = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *IGeolocator = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getLocationStatus(self: *@This()) core.HResult!PositionStatus {
        const this: *IGeolocator = @ptrCast(self);
        return try this.getLocationStatus();
    }
    pub fn GetGeopositionAsync(self: *@This()) core.HResult!*IAsyncOperation(Geoposition) {
        const this: *IGeolocator = @ptrCast(self);
        return try this.GetGeopositionAsync();
    }
    pub fn GetGeopositionAsync(self: *@This(), maximumAge: TimeSpan, timeout: TimeSpan) core.HResult!*IAsyncOperation(Geoposition) {
        const this: *IGeolocator = @ptrCast(self);
        return try this.GetGeopositionAsync(maximumAge, timeout);
    }
    pub fn addPositionChanged(self: *@This(), handler: *TypedEventHandler(Geolocator,PositionChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGeolocator = @ptrCast(self);
        return try this.addPositionChanged(handler);
    }
    pub fn removePositionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGeolocator = @ptrCast(self);
        return try this.removePositionChanged(token);
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(Geolocator,StatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGeolocator = @ptrCast(self);
        return try this.addStatusChanged(handler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGeolocator = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn getDesiredAccuracyInMeters(self: *@This()) core.HResult!*IReference(u32) {
        var this: ?*IGeolocatorWithScalarAccuracy = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeolocatorWithScalarAccuracy.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredAccuracyInMeters();
    }
    pub fn putDesiredAccuracyInMeters(self: *@This(), value: *IReference(u32)) core.HResult!void {
        var this: ?*IGeolocatorWithScalarAccuracy = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeolocatorWithScalarAccuracy.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredAccuracyInMeters(value);
    }
    pub fn AllowFallbackToConsentlessPositions(self: *@This()) core.HResult!void {
        var this: ?*IGeolocator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeolocator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AllowFallbackToConsentlessPositions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGeolocator.IID)));
    }
    pub fn getIsDefaultGeopositionRecommended() core.HResult!bool {
        const factory = @This().IGeolocatorStatics2Cache.get();
        return try factory.getIsDefaultGeopositionRecommended();
    }
    pub fn putDefaultGeoposition(value: *IReference(BasicGeoposition)) core.HResult!void {
        const factory = @This().IGeolocatorStatics2Cache.get();
        return try factory.putDefaultGeoposition(value);
    }
    pub fn getDefaultGeoposition() core.HResult!*IReference(BasicGeoposition) {
        const factory = @This().IGeolocatorStatics2Cache.get();
        return try factory.getDefaultGeoposition();
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(GeolocationAccessStatus) {
        const factory = @This().IGeolocatorStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub fn GetGeopositionHistoryAsync(startTime: DateTime) core.HResult!*IAsyncOperation(IVectorView(Geoposition)) {
        const factory = @This().IGeolocatorStaticsCache.get();
        return try factory.GetGeopositionHistoryAsync(startTime);
    }
    pub fn GetGeopositionHistoryAsync(startTime: DateTime, duration: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(Geoposition)) {
        const factory = @This().IGeolocatorStaticsCache.get();
        return try factory.GetGeopositionHistoryAsync(startTime, duration);
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geolocator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeolocator.GUID;
    pub const IID: Guid = IGeolocator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeolocator.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IGeolocatorStatics2Cache: FactoryCache(IGeolocatorStatics2, RUNTIME_NAME) = .{};
    var _IGeolocatorStaticsCache: FactoryCache(IGeolocatorStatics, RUNTIME_NAME) = .{};
};
pub const Geopath = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPositions(self: *@This()) core.HResult!*IVectorView(BasicGeoposition) {
        const this: *IGeopath = @ptrCast(self);
        return try this.getPositions();
    }
    pub fn getGeoshapeType(self: *@This()) core.HResult!GeoshapeType {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGeoshapeType();
    }
    pub fn getSpatialReferenceId(self: *@This()) core.HResult!u32 {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSpatialReferenceId();
    }
    pub fn getAltitudeReferenceSystem(self: *@This()) core.HResult!AltitudeReferenceSystem {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAltitudeReferenceSystem();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(positions: *IIterable(BasicGeoposition)) core.HResult!*Geopath {
        const factory = @This().IGeopathFactoryCache.get();
        return try factory.Create(positions);
    }
    pub fn CreateWithAltitudeReference(positions: *IIterable(BasicGeoposition), altitudeReferenceSystem: AltitudeReferenceSystem) core.HResult!*Geopath {
        const factory = @This().IGeopathFactoryCache.get();
        return try factory.CreateWithAltitudeReference(positions, altitudeReferenceSystem);
    }
    pub fn CreateWithAltitudeReferenceAndSpatialReference(positions: *IIterable(BasicGeoposition), altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*Geopath {
        const factory = @This().IGeopathFactoryCache.get();
        return try factory.CreateWithAltitudeReferenceAndSpatialReference(positions, altitudeReferenceSystem, spatialReferenceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geopath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeopath.GUID;
    pub const IID: Guid = IGeopath.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeopath.SIGNATURE);
    var _IGeopathFactoryCache: FactoryCache(IGeopathFactory, RUNTIME_NAME) = .{};
};
pub const Geopoint = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!BasicGeoposition {
        const this: *IGeopoint = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getGeoshapeType(self: *@This()) core.HResult!GeoshapeType {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGeoshapeType();
    }
    pub fn getSpatialReferenceId(self: *@This()) core.HResult!u32 {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSpatialReferenceId();
    }
    pub fn getAltitudeReferenceSystem(self: *@This()) core.HResult!AltitudeReferenceSystem {
        var this: ?*IGeoshape = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoshape.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAltitudeReferenceSystem();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(position: BasicGeoposition) core.HResult!*Geopoint {
        const factory = @This().IGeopointFactoryCache.get();
        return try factory.Create(position);
    }
    pub fn CreateWithAltitudeReferenceSystem(position: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem) core.HResult!*Geopoint {
        const factory = @This().IGeopointFactoryCache.get();
        return try factory.CreateWithAltitudeReferenceSystem(position, altitudeReferenceSystem);
    }
    pub fn CreateWithAltitudeReferenceSystemAndSpatialReferenceId(position: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*Geopoint {
        const factory = @This().IGeopointFactoryCache.get();
        return try factory.CreateWithAltitudeReferenceSystemAndSpatialReferenceId(position, altitudeReferenceSystem, spatialReferenceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geopoint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeopoint.GUID;
    pub const IID: Guid = IGeopoint.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeopoint.SIGNATURE);
    var _IGeopointFactoryCache: FactoryCache(IGeopointFactory, RUNTIME_NAME) = .{};
};
pub const Geoposition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCoordinate(self: *@This()) core.HResult!*Geocoordinate {
        const this: *IGeoposition = @ptrCast(self);
        return try this.getCoordinate();
    }
    pub fn getCivicAddress(self: *@This()) core.HResult!*CivicAddress {
        const this: *IGeoposition = @ptrCast(self);
        return try this.getCivicAddress();
    }
    pub fn getVenueData(self: *@This()) core.HResult!*VenueData {
        var this: ?*IGeoposition2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeoposition2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVenueData();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geoposition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeoposition.GUID;
    pub const IID: Guid = IGeoposition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeoposition.SIGNATURE);
};
pub const GeoshapeType = enum(i32) {
    Geopoint = 0,
    Geocircle = 1,
    Geopath = 2,
    GeoboundingBox = 3,
};
pub const Geovisit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!*Geoposition {
        const this: *IGeovisit = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getStateChange(self: *@This()) core.HResult!VisitStateChange {
        const this: *IGeovisit = @ptrCast(self);
        return try this.getStateChange();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IGeovisit = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geovisit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeovisit.GUID;
    pub const IID: Guid = IGeovisit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeovisit.SIGNATURE);
};
pub const GeovisitMonitor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMonitoringScope(self: *@This()) core.HResult!VisitMonitoringScope {
        const this: *IGeovisitMonitor = @ptrCast(self);
        return try this.getMonitoringScope();
    }
    pub fn Start(self: *@This(), value: VisitMonitoringScope) core.HResult!void {
        const this: *IGeovisitMonitor = @ptrCast(self);
        return try this.Start(value);
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IGeovisitMonitor = @ptrCast(self);
        return try this.Stop();
    }
    pub fn addVisitStateChanged(self: *@This(), handler: *TypedEventHandler(GeovisitMonitor,GeovisitStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGeovisitMonitor = @ptrCast(self);
        return try this.addVisitStateChanged(handler);
    }
    pub fn removeVisitStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGeovisitMonitor = @ptrCast(self);
        return try this.removeVisitStateChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGeovisitMonitor.IID)));
    }
    pub fn GetLastReportAsync() core.HResult!*IAsyncOperation(Geovisit) {
        const factory = @This().IGeovisitMonitorStaticsCache.get();
        return try factory.GetLastReportAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.GeovisitMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeovisitMonitor.GUID;
    pub const IID: Guid = IGeovisitMonitor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeovisitMonitor.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IGeovisitMonitorStaticsCache: FactoryCache(IGeovisitMonitorStatics, RUNTIME_NAME) = .{};
};
pub const GeovisitStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVisit(self: *@This()) core.HResult!*Geovisit {
        const this: *IGeovisitStateChangedEventArgs = @ptrCast(self);
        return try this.getVisit();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.GeovisitStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeovisitStateChangedEventArgs.GUID;
    pub const IID: Guid = IGeovisitStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeovisitStateChangedEventArgs.SIGNATURE);
};
pub const GeovisitTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadReports(self: *@This()) core.HResult!*IVectorView(Geovisit) {
        const this: *IGeovisitTriggerDetails = @ptrCast(self);
        return try this.ReadReports();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.GeovisitTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeovisitTriggerDetails.GUID;
    pub const IID: Guid = IGeovisitTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeovisitTriggerDetails.SIGNATURE);
};
pub const ICivicAddress = extern struct {
    vtable: *const VTable,
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Country(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_City(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PostalCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.ICivicAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8567a1a-64f4-4d48-bcea-f6b008eca34c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Country: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_City: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PostalCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IGeoboundingBox = extern struct {
    vtable: *const VTable,
    pub fn getNorthwestCorner(self: *@This()) core.HResult!BasicGeoposition {
        var _r: BasicGeoposition = undefined;
        const _c = self.vtable.get_NorthwestCorner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSoutheastCorner(self: *@This()) core.HResult!BasicGeoposition {
        var _r: BasicGeoposition = undefined;
        const _c = self.vtable.get_SoutheastCorner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenter(self: *@This()) core.HResult!BasicGeoposition {
        var _r: BasicGeoposition = undefined;
        const _c = self.vtable.get_Center(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinAltitude(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinAltitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxAltitude(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxAltitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeoboundingBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0896c80b-274f-43da-9a06-cbfcdaeb4ec2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NorthwestCorner: *const fn(self: *anyopaque, _r: *BasicGeoposition) callconv(.winapi) HRESULT,
        get_SoutheastCorner: *const fn(self: *anyopaque, _r: *BasicGeoposition) callconv(.winapi) HRESULT,
        get_Center: *const fn(self: *anyopaque, _r: *BasicGeoposition) callconv(.winapi) HRESULT,
        get_MinAltitude: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MaxAltitude: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IGeoboundingBoxFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), northwestCorner: BasicGeoposition, southeastCorner: BasicGeoposition) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.Create(@ptrCast(self), northwestCorner, southeastCorner, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAltitudeReference(self: *@This(), northwestCorner: BasicGeoposition, southeastCorner: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.CreateWithAltitudeReference(@ptrCast(self), northwestCorner, southeastCorner, altitudeReferenceSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAltitudeReferenceAndSpatialReference(self: *@This(), northwestCorner: BasicGeoposition, southeastCorner: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.CreateWithAltitudeReferenceAndSpatialReference(@ptrCast(self), northwestCorner, southeastCorner, altitudeReferenceSystem, spatialReferenceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeoboundingBoxFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4dfba589-0411-4abc-b3b5-5bbccb57d98c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, northwestCorner: BasicGeoposition, southeastCorner: BasicGeoposition, _r: **GeoboundingBox) callconv(.winapi) HRESULT,
        CreateWithAltitudeReference: *const fn(self: *anyopaque, northwestCorner: BasicGeoposition, southeastCorner: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem, _r: **GeoboundingBox) callconv(.winapi) HRESULT,
        CreateWithAltitudeReferenceAndSpatialReference: *const fn(self: *anyopaque, northwestCorner: BasicGeoposition, southeastCorner: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32, _r: **GeoboundingBox) callconv(.winapi) HRESULT,
    };
};
pub const IGeoboundingBoxStatics = extern struct {
    vtable: *const VTable,
    pub fn TryCompute(self: *@This(), positions: *IIterable(BasicGeoposition)) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.TryCompute(@ptrCast(self), positions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCompute(self: *@This(), positions: *IIterable(BasicGeoposition), altitudeRefSystem: AltitudeReferenceSystem) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.TryCompute(@ptrCast(self), positions, altitudeRefSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCompute(self: *@This(), positions: *IIterable(BasicGeoposition), altitudeRefSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.TryCompute(@ptrCast(self), positions, altitudeRefSystem, spatialReferenceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeoboundingBoxStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67b80708-e61a-4cd0-841b-93233792b5ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCompute: *const fn(self: *anyopaque, positions: *IIterable(BasicGeoposition), _r: **GeoboundingBox) callconv(.winapi) HRESULT,
        TryCompute: *const fn(self: *anyopaque, positions: *IIterable(BasicGeoposition), altitudeRefSystem: AltitudeReferenceSystem, _r: **GeoboundingBox) callconv(.winapi) HRESULT,
        TryCompute: *const fn(self: *anyopaque, positions: *IIterable(BasicGeoposition), altitudeRefSystem: AltitudeReferenceSystem, spatialReferenceId: u32, _r: **GeoboundingBox) callconv(.winapi) HRESULT,
    };
};
pub const IGeocircle = extern struct {
    vtable: *const VTable,
    pub fn getCenter(self: *@This()) core.HResult!BasicGeoposition {
        var _r: BasicGeoposition = undefined;
        const _c = self.vtable.get_Center(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRadius(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Radius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeocircle";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "39e45843-a7f9-4e63-92a7-ba0c28d124b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Center: *const fn(self: *anyopaque, _r: *BasicGeoposition) callconv(.winapi) HRESULT,
        get_Radius: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IGeocircleFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), position: BasicGeoposition, radius: f64) core.HResult!*Geocircle {
        var _r: *Geocircle = undefined;
        const _c = self.vtable.Create(@ptrCast(self), position, radius, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAltitudeReferenceSystem(self: *@This(), position: BasicGeoposition, radius: f64, altitudeReferenceSystem: AltitudeReferenceSystem) core.HResult!*Geocircle {
        var _r: *Geocircle = undefined;
        const _c = self.vtable.CreateWithAltitudeReferenceSystem(@ptrCast(self), position, radius, altitudeReferenceSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAltitudeReferenceSystemAndSpatialReferenceId(self: *@This(), position: BasicGeoposition, radius: f64, altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*Geocircle {
        var _r: *Geocircle = undefined;
        const _c = self.vtable.CreateWithAltitudeReferenceSystemAndSpatialReferenceId(@ptrCast(self), position, radius, altitudeReferenceSystem, spatialReferenceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeocircleFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "afd6531f-72b1-4f7d-87cc-4ed4c9849c05";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, position: BasicGeoposition, radius: f64, _r: **Geocircle) callconv(.winapi) HRESULT,
        CreateWithAltitudeReferenceSystem: *const fn(self: *anyopaque, position: BasicGeoposition, radius: f64, altitudeReferenceSystem: AltitudeReferenceSystem, _r: **Geocircle) callconv(.winapi) HRESULT,
        CreateWithAltitudeReferenceSystemAndSpatialReferenceId: *const fn(self: *anyopaque, position: BasicGeoposition, radius: f64, altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32, _r: **Geocircle) callconv(.winapi) HRESULT,
    };
};
pub const IGeocoordinate = extern struct {
    vtable: *const VTable,
    pub fn getLatitude(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Latitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLongitude(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Longitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAltitude(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Altitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccuracy(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Accuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAltitudeAccuracy(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_AltitudeAccuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeading(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Heading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpeed(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Speed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeocoordinate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee21a3aa-976a-4c70-803d-083ea55bcbc4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Latitude: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Longitude: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Altitude: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_Accuracy: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_AltitudeAccuracy: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_Heading: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_Speed: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IGeocoordinateSatelliteData = extern struct {
    vtable: *const VTable,
    pub fn getPositionDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_PositionDilutionOfPrecision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_HorizontalDilutionOfPrecision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_VerticalDilutionOfPrecision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeocoordinateSatelliteData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c32a74d9-2608-474c-912c-06dd490f4af7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PositionDilutionOfPrecision: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_HorizontalDilutionOfPrecision: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_VerticalDilutionOfPrecision: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IGeocoordinateSatelliteData2 = extern struct {
    vtable: *const VTable,
    pub fn getGeometricDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_GeometricDilutionOfPrecision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeDilutionOfPrecision(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_TimeDilutionOfPrecision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeocoordinateSatelliteData2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "761c8cfd-a19d-5a51-80f5-71676115483e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GeometricDilutionOfPrecision: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_TimeDilutionOfPrecision: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IGeocoordinateWithPoint = extern struct {
    vtable: *const VTable,
    pub fn getPoint(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Point(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeocoordinateWithPoint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "feea0525-d22c-4d46-b527-0b96066fc7db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Point: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
    };
};
pub const IGeocoordinateWithPositionData = extern struct {
    vtable: *const VTable,
    pub fn getPositionSource(self: *@This()) core.HResult!PositionSource {
        var _r: PositionSource = undefined;
        const _c = self.vtable.get_PositionSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSatelliteData(self: *@This()) core.HResult!*GeocoordinateSatelliteData {
        var _r: *GeocoordinateSatelliteData = undefined;
        const _c = self.vtable.get_SatelliteData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeocoordinateWithPositionData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95e634be-dbd6-40ac-b8f2-a65c0340d9a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PositionSource: *const fn(self: *anyopaque, _r: *PositionSource) callconv(.winapi) HRESULT,
        get_SatelliteData: *const fn(self: *anyopaque, _r: **GeocoordinateSatelliteData) callconv(.winapi) HRESULT,
    };
};
pub const IGeocoordinateWithPositionSourceTimestamp = extern struct {
    vtable: *const VTable,
    pub fn getPositionSourceTimestamp(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_PositionSourceTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeocoordinateWithPositionSourceTimestamp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8543fc02-c9f1-4610-afe0-8bc3a6a87036";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PositionSourceTimestamp: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IGeocoordinateWithRemoteSource = extern struct {
    vtable: *const VTable,
    pub fn getIsRemoteSource(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRemoteSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeocoordinateWithRemoteSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "397cebd7-ee38-5f3b-8900-c4a7bc9cf953";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRemoteSource: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGeolocator = extern struct {
    vtable: *const VTable,
    pub fn getDesiredAccuracy(self: *@This()) core.HResult!PositionAccuracy {
        var _r: PositionAccuracy = undefined;
        const _c = self.vtable.get_DesiredAccuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredAccuracy(self: *@This(), value: PositionAccuracy) core.HResult!void {
        const _c = self.vtable.put_DesiredAccuracy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMovementThreshold(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MovementThreshold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMovementThreshold(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MovementThreshold(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocationStatus(self: *@This()) core.HResult!PositionStatus {
        var _r: PositionStatus = undefined;
        const _c = self.vtable.get_LocationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGeopositionAsync(self: *@This()) core.HResult!*IAsyncOperation(Geoposition) {
        var _r: *IAsyncOperation(Geoposition) = undefined;
        const _c = self.vtable.GetGeopositionAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGeopositionAsync(self: *@This(), maximumAge: TimeSpan, timeout: TimeSpan) core.HResult!*IAsyncOperation(Geoposition) {
        var _r: *IAsyncOperation(Geoposition) = undefined;
        const _c = self.vtable.GetGeopositionAsync(@ptrCast(self), maximumAge, timeout, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPositionChanged(self: *@This(), handler: *TypedEventHandler(Geolocator,PositionChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PositionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePositionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PositionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(Geolocator,StatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeolocator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9c3bf62-4524-4989-8aa9-de019d2e551f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredAccuracy: *const fn(self: *anyopaque, _r: *PositionAccuracy) callconv(.winapi) HRESULT,
        put_DesiredAccuracy: *const fn(self: *anyopaque, value: PositionAccuracy) callconv(.winapi) HRESULT,
        get_MovementThreshold: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MovementThreshold: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_LocationStatus: *const fn(self: *anyopaque, _r: *PositionStatus) callconv(.winapi) HRESULT,
        GetGeopositionAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Geoposition)) callconv(.winapi) HRESULT,
        GetGeopositionAsync: *const fn(self: *anyopaque, maximumAge: TimeSpan, timeout: TimeSpan, _r: **IAsyncOperation(Geoposition)) callconv(.winapi) HRESULT,
        add_PositionChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Geolocator,PositionChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PositionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Geolocator,StatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGeolocator2 = extern struct {
    vtable: *const VTable,
    pub fn AllowFallbackToConsentlessPositions(self: *@This()) core.HResult!void {
        const _c = self.vtable.AllowFallbackToConsentlessPositions(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeolocator2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1b42e6d-8891-43b4-ad36-27c6fe9a97b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AllowFallbackToConsentlessPositions: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IGeolocatorStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(GeolocationAccessStatus) {
        var _r: *IAsyncOperation(GeolocationAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGeopositionHistoryAsync(self: *@This(), startTime: DateTime) core.HResult!*IAsyncOperation(IVectorView(Geoposition)) {
        var _r: *IAsyncOperation(IVectorView(Geoposition)) = undefined;
        const _c = self.vtable.GetGeopositionHistoryAsync(@ptrCast(self), startTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGeopositionHistoryAsync(self: *@This(), startTime: DateTime, duration: TimeSpan) core.HResult!*IAsyncOperation(IVectorView(Geoposition)) {
        var _r: *IAsyncOperation(IVectorView(Geoposition)) = undefined;
        const _c = self.vtable.GetGeopositionHistoryAsync(@ptrCast(self), startTime, duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeolocatorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a8e7571-2df5-4591-9f87-eb5fd894e9b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GeolocationAccessStatus)) callconv(.winapi) HRESULT,
        GetGeopositionHistoryAsync: *const fn(self: *anyopaque, startTime: DateTime, _r: **IAsyncOperation(IVectorView(Geoposition))) callconv(.winapi) HRESULT,
        GetGeopositionHistoryAsync: *const fn(self: *anyopaque, startTime: DateTime, duration: TimeSpan, _r: **IAsyncOperation(IVectorView(Geoposition))) callconv(.winapi) HRESULT,
    };
};
pub const IGeolocatorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getIsDefaultGeopositionRecommended(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDefaultGeopositionRecommended(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultGeoposition(self: *@This(), value: *IReference(BasicGeoposition)) core.HResult!void {
        const _c = self.vtable.put_DefaultGeoposition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDefaultGeoposition(self: *@This()) core.HResult!*IReference(BasicGeoposition) {
        var _r: *IReference(BasicGeoposition) = undefined;
        const _c = self.vtable.get_DefaultGeoposition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeolocatorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "993011a2-fa1c-4631-a71d-0dbeb1250d9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDefaultGeopositionRecommended: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DefaultGeoposition: *const fn(self: *anyopaque, value: *IReference(BasicGeoposition)) callconv(.winapi) HRESULT,
        get_DefaultGeoposition: *const fn(self: *anyopaque, _r: **IReference(BasicGeoposition)) callconv(.winapi) HRESULT,
    };
};
pub const IGeolocatorWithScalarAccuracy = extern struct {
    vtable: *const VTable,
    pub fn getDesiredAccuracyInMeters(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_DesiredAccuracyInMeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredAccuracyInMeters(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_DesiredAccuracyInMeters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeolocatorWithScalarAccuracy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96f5d3c1-b80f-460a-994d-a96c47a51aa4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredAccuracyInMeters: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_DesiredAccuracyInMeters: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IGeopath = extern struct {
    vtable: *const VTable,
    pub fn getPositions(self: *@This()) core.HResult!*IVectorView(BasicGeoposition) {
        var _r: *IVectorView(BasicGeoposition) = undefined;
        const _c = self.vtable.get_Positions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeopath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e53fd7b9-2da4-4714-a652-de8593289898";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Positions: *const fn(self: *anyopaque, _r: **IVectorView(BasicGeoposition)) callconv(.winapi) HRESULT,
    };
};
pub const IGeopathFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), positions: *IIterable(BasicGeoposition)) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.Create(@ptrCast(self), positions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAltitudeReference(self: *@This(), positions: *IIterable(BasicGeoposition), altitudeReferenceSystem: AltitudeReferenceSystem) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.CreateWithAltitudeReference(@ptrCast(self), positions, altitudeReferenceSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAltitudeReferenceAndSpatialReference(self: *@This(), positions: *IIterable(BasicGeoposition), altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.CreateWithAltitudeReferenceAndSpatialReference(@ptrCast(self), positions, altitudeReferenceSystem, spatialReferenceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeopathFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27bea9c8-c7e7-4359-9b9b-fca3e05ef593";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, positions: *IIterable(BasicGeoposition), _r: **Geopath) callconv(.winapi) HRESULT,
        CreateWithAltitudeReference: *const fn(self: *anyopaque, positions: *IIterable(BasicGeoposition), altitudeReferenceSystem: AltitudeReferenceSystem, _r: **Geopath) callconv(.winapi) HRESULT,
        CreateWithAltitudeReferenceAndSpatialReference: *const fn(self: *anyopaque, positions: *IIterable(BasicGeoposition), altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32, _r: **Geopath) callconv(.winapi) HRESULT,
    };
};
pub const IGeopoint = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!BasicGeoposition {
        var _r: BasicGeoposition = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeopoint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6bfa00eb-e56e-49bb-9caf-cbaa78a8bcef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *BasicGeoposition) callconv(.winapi) HRESULT,
    };
};
pub const IGeopointFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), position: BasicGeoposition) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.Create(@ptrCast(self), position, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAltitudeReferenceSystem(self: *@This(), position: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.CreateWithAltitudeReferenceSystem(@ptrCast(self), position, altitudeReferenceSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAltitudeReferenceSystemAndSpatialReferenceId(self: *@This(), position: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.CreateWithAltitudeReferenceSystemAndSpatialReferenceId(@ptrCast(self), position, altitudeReferenceSystem, spatialReferenceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeopointFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db6b8d33-76bd-4e30-8af7-a844dc37b7a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, position: BasicGeoposition, _r: **Geopoint) callconv(.winapi) HRESULT,
        CreateWithAltitudeReferenceSystem: *const fn(self: *anyopaque, position: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem, _r: **Geopoint) callconv(.winapi) HRESULT,
        CreateWithAltitudeReferenceSystemAndSpatialReferenceId: *const fn(self: *anyopaque, position: BasicGeoposition, altitudeReferenceSystem: AltitudeReferenceSystem, spatialReferenceId: u32, _r: **Geopoint) callconv(.winapi) HRESULT,
    };
};
pub const IGeoposition = extern struct {
    vtable: *const VTable,
    pub fn getCoordinate(self: *@This()) core.HResult!*Geocoordinate {
        var _r: *Geocoordinate = undefined;
        const _c = self.vtable.get_Coordinate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCivicAddress(self: *@This()) core.HResult!*CivicAddress {
        var _r: *CivicAddress = undefined;
        const _c = self.vtable.get_CivicAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeoposition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c18d0454-7d41-4ff7-a957-9dffb4ef7f5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Coordinate: *const fn(self: *anyopaque, _r: **Geocoordinate) callconv(.winapi) HRESULT,
        get_CivicAddress: *const fn(self: *anyopaque, _r: **CivicAddress) callconv(.winapi) HRESULT,
    };
};
pub const IGeoposition2 = extern struct {
    vtable: *const VTable,
    pub fn getVenueData(self: *@This()) core.HResult!*VenueData {
        var _r: *VenueData = undefined;
        const _c = self.vtable.get_VenueData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeoposition2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f62f697-8671-4b0d-86f8-474a8496187c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VenueData: *const fn(self: *anyopaque, _r: **VenueData) callconv(.winapi) HRESULT,
    };
};
pub const IGeoshape = extern struct {
    vtable: *const VTable,
    pub fn getGeoshapeType(self: *@This()) core.HResult!GeoshapeType {
        var _r: GeoshapeType = undefined;
        const _c = self.vtable.get_GeoshapeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpatialReferenceId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SpatialReferenceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAltitudeReferenceSystem(self: *@This()) core.HResult!AltitudeReferenceSystem {
        var _r: AltitudeReferenceSystem = undefined;
        const _c = self.vtable.get_AltitudeReferenceSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeoshape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c99ca2af-c729-43c1-8fab-d6dec914df7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GeoshapeType: *const fn(self: *anyopaque, _r: *GeoshapeType) callconv(.winapi) HRESULT,
        get_SpatialReferenceId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AltitudeReferenceSystem: *const fn(self: *anyopaque, _r: *AltitudeReferenceSystem) callconv(.winapi) HRESULT,
    };
};
pub const IGeovisit = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!*Geoposition {
        var _r: *Geoposition = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStateChange(self: *@This()) core.HResult!VisitStateChange {
        var _r: VisitStateChange = undefined;
        const _c = self.vtable.get_StateChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeovisit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1877a76-9ef6-41ab-a0dd-793ece76e2de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: **Geoposition) callconv(.winapi) HRESULT,
        get_StateChange: *const fn(self: *anyopaque, _r: *VisitStateChange) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IGeovisitMonitor = extern struct {
    vtable: *const VTable,
    pub fn getMonitoringScope(self: *@This()) core.HResult!VisitMonitoringScope {
        var _r: VisitMonitoringScope = undefined;
        const _c = self.vtable.get_MonitoringScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This(), value: VisitMonitoringScope) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVisitStateChanged(self: *@This(), handler: *TypedEventHandler(GeovisitMonitor,GeovisitStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VisitStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVisitStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VisitStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeovisitMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80118aaf-5944-4591-83c1-396647f54f2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MonitoringScope: *const fn(self: *anyopaque, _r: *VisitMonitoringScope) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque, value: VisitMonitoringScope) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_VisitStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GeovisitMonitor,GeovisitStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VisitStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGeovisitMonitorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetLastReportAsync(self: *@This()) core.HResult!*IAsyncOperation(Geovisit) {
        var _r: *IAsyncOperation(Geovisit) = undefined;
        const _c = self.vtable.GetLastReportAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeovisitMonitorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bcf976a7-bbf2-4cdd-95cf-554c82edfb87";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetLastReportAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Geovisit)) callconv(.winapi) HRESULT,
    };
};
pub const IGeovisitStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVisit(self: *@This()) core.HResult!*Geovisit {
        var _r: *Geovisit = undefined;
        const _c = self.vtable.get_Visit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeovisitStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ceb4d1ff-8b53-4968-beed-4cecd029ce15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Visit: *const fn(self: *anyopaque, _r: **Geovisit) callconv(.winapi) HRESULT,
    };
};
pub const IGeovisitTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn ReadReports(self: *@This()) core.HResult!*IVectorView(Geovisit) {
        var _r: *IVectorView(Geovisit) = undefined;
        const _c = self.vtable.ReadReports(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IGeovisitTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea770d9e-d1c9-454b-99b7-b2f8cdd2482f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadReports: *const fn(self: *anyopaque, _r: **IVectorView(Geovisit)) callconv(.winapi) HRESULT,
    };
};
pub const IPositionChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!*Geoposition {
        var _r: *Geoposition = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IPositionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "37859ce5-9d1e-46c5-bf3b-6ad8cac1a093";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: **Geoposition) callconv(.winapi) HRESULT,
    };
};
pub const IStatusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!PositionStatus {
        var _r: PositionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3453d2da-8c93-4111-a205-9aecfc9be5c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PositionStatus) callconv(.winapi) HRESULT,
    };
};
pub const IVenueData = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLevel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Level(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.IVenueData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66f39187-60e3-4b2f-b527-4f53f1c3c677";
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
        get_Level: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const PositionAccuracy = enum(i32) {
    Default = 0,
    High = 1,
};
pub const PositionChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!*Geoposition {
        const this: *IPositionChangedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.PositionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPositionChangedEventArgs.GUID;
    pub const IID: Guid = IPositionChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPositionChangedEventArgs.SIGNATURE);
};
pub const PositionSource = enum(i32) {
    Cellular = 0,
    Satellite = 1,
    WiFi = 2,
    IPAddress = 3,
    Unknown = 4,
    Default = 5,
    Obfuscated = 6,
};
pub const PositionStatus = enum(i32) {
    Ready = 0,
    Initializing = 1,
    NoData = 2,
    Disabled = 3,
    NotInitialized = 4,
    NotAvailable = 5,
};
pub const StatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!PositionStatus {
        const this: *IStatusChangedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.StatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStatusChangedEventArgs.GUID;
    pub const IID: Guid = IStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStatusChangedEventArgs.SIGNATURE);
};
pub const VenueData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IVenueData = @ptrCast(self);
        return try this.getId();
    }
    pub fn getLevel(self: *@This()) core.HResult!HSTRING {
        const this: *IVenueData = @ptrCast(self);
        return try this.getLevel();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.VenueData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVenueData.GUID;
    pub const IID: Guid = IVenueData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVenueData.SIGNATURE);
};
pub const VisitMonitoringScope = enum(i32) {
    Venue = 0,
    City = 1,
};
pub const VisitStateChange = enum(i32) {
    TrackingLost = 0,
    Arrived = 1,
    Departed = 2,
    OtherMovement = 3,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
pub const Geofencing = @import("./Geolocation/Geofencing.zig");
pub const Provider = @import("./Geolocation/Provider.zig");
