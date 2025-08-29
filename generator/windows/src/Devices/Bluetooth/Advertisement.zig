pub const BluetoothLEAdvertisement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFlags(self: *@This()) core.HResult!*IReference(BluetoothLEAdvertisementFlags) {
        const this: *IBluetoothLEAdvertisement = @ptrCast(self);
        return try this.getFlags();
    }
    pub fn putFlags(self: *@This(), value: *IReference(BluetoothLEAdvertisementFlags)) core.HResult!void {
        const this: *IBluetoothLEAdvertisement = @ptrCast(self);
        return try this.putFlags(value);
    }
    pub fn getLocalName(self: *@This()) core.HResult!HSTRING {
        const this: *IBluetoothLEAdvertisement = @ptrCast(self);
        return try this.getLocalName();
    }
    pub fn putLocalName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IBluetoothLEAdvertisement = @ptrCast(self);
        return try this.putLocalName(value);
    }
    pub fn getServiceUuids(self: *@This()) core.HResult!*IVector(Guid) {
        const this: *IBluetoothLEAdvertisement = @ptrCast(self);
        return try this.getServiceUuids();
    }
    pub fn getManufacturerData(self: *@This()) core.HResult!*IVector(BluetoothLEManufacturerData) {
        const this: *IBluetoothLEAdvertisement = @ptrCast(self);
        return try this.getManufacturerData();
    }
    pub fn getDataSections(self: *@This()) core.HResult!*IVector(BluetoothLEAdvertisementDataSection) {
        const this: *IBluetoothLEAdvertisement = @ptrCast(self);
        return try this.getDataSections();
    }
    pub fn GetManufacturerDataByCompanyId(self: *@This(), companyId: u16) core.HResult!*IVectorView(BluetoothLEManufacturerData) {
        const this: *IBluetoothLEAdvertisement = @ptrCast(self);
        return try this.GetManufacturerDataByCompanyId(companyId);
    }
    pub fn GetSectionsByType(self: *@This(), ty: u8) core.HResult!*IVectorView(BluetoothLEAdvertisementDataSection) {
        const this: *IBluetoothLEAdvertisement = @ptrCast(self);
        return try this.GetSectionsByType(ty);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothLEAdvertisement.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisement.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisement.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAdvertisementBytePattern = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDataType(self: *@This()) core.HResult!u8 {
        const this: *IBluetoothLEAdvertisementBytePattern = @ptrCast(self);
        return try this.getDataType();
    }
    pub fn putDataType(self: *@This(), value: u8) core.HResult!void {
        const this: *IBluetoothLEAdvertisementBytePattern = @ptrCast(self);
        return try this.putDataType(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!i16 {
        const this: *IBluetoothLEAdvertisementBytePattern = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: i16) core.HResult!void {
        const this: *IBluetoothLEAdvertisementBytePattern = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IBluetoothLEAdvertisementBytePattern = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IBluetoothLEAdvertisementBytePattern = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothLEAdvertisementBytePattern.IID)));
    }
    pub fn Create(dataType: u8, offset: i16, data: *IBuffer) core.HResult!*BluetoothLEAdvertisementBytePattern {
        const factory = @This().IBluetoothLEAdvertisementBytePatternFactoryCache.get();
        return try factory.Create(dataType, offset, data);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementBytePattern";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementBytePattern.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementBytePattern.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementBytePattern.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBluetoothLEAdvertisementBytePatternFactoryCache: FactoryCache(IBluetoothLEAdvertisementBytePatternFactory, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAdvertisementDataSection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDataType(self: *@This()) core.HResult!u8 {
        const this: *IBluetoothLEAdvertisementDataSection = @ptrCast(self);
        return try this.getDataType();
    }
    pub fn putDataType(self: *@This(), value: u8) core.HResult!void {
        const this: *IBluetoothLEAdvertisementDataSection = @ptrCast(self);
        return try this.putDataType(value);
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IBluetoothLEAdvertisementDataSection = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IBluetoothLEAdvertisementDataSection = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothLEAdvertisementDataSection.IID)));
    }
    pub fn Create(dataType: u8, data: *IBuffer) core.HResult!*BluetoothLEAdvertisementDataSection {
        const factory = @This().IBluetoothLEAdvertisementDataSectionFactoryCache.get();
        return try factory.Create(dataType, data);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementDataSection.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementDataSection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementDataSection.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBluetoothLEAdvertisementDataSectionFactoryCache: FactoryCache(IBluetoothLEAdvertisementDataSectionFactory, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAdvertisementDataTypes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getFlags() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getFlags();
    }
    pub fn getIncompleteService16BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getIncompleteService16BitUuids();
    }
    pub fn getCompleteService16BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getCompleteService16BitUuids();
    }
    pub fn getIncompleteService32BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getIncompleteService32BitUuids();
    }
    pub fn getCompleteService32BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getCompleteService32BitUuids();
    }
    pub fn getIncompleteService128BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getIncompleteService128BitUuids();
    }
    pub fn getCompleteService128BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getCompleteService128BitUuids();
    }
    pub fn getShortenedLocalName() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getShortenedLocalName();
    }
    pub fn getCompleteLocalName() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getCompleteLocalName();
    }
    pub fn getTxPowerLevel() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getTxPowerLevel();
    }
    pub fn getPeripheralConnectionIntervalRange() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getPeripheralConnectionIntervalRange();
    }
    pub fn getServiceSolicitation16BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getServiceSolicitation16BitUuids();
    }
    pub fn getServiceSolicitation32BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getServiceSolicitation32BitUuids();
    }
    pub fn getServiceSolicitation128BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getServiceSolicitation128BitUuids();
    }
    pub fn getServiceData16BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getServiceData16BitUuids();
    }
    pub fn getServiceData32BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getServiceData32BitUuids();
    }
    pub fn getServiceData128BitUuids() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getServiceData128BitUuids();
    }
    pub fn getPublicTargetAddress() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getPublicTargetAddress();
    }
    pub fn getRandomTargetAddress() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getRandomTargetAddress();
    }
    pub fn getAppearance() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getAppearance();
    }
    pub fn getAdvertisingInterval() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getAdvertisingInterval();
    }
    pub fn getManufacturerSpecificData() core.HResult!u8 {
        const factory = @This().IBluetoothLEAdvertisementDataTypesStaticsCache.get();
        return try factory.getManufacturerSpecificData();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataTypes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBluetoothLEAdvertisementDataTypesStaticsCache: FactoryCache(IBluetoothLEAdvertisementDataTypesStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAdvertisementFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAdvertisement(self: *@This()) core.HResult!*BluetoothLEAdvertisement {
        const this: *IBluetoothLEAdvertisementFilter = @ptrCast(self);
        return try this.getAdvertisement();
    }
    pub fn putAdvertisement(self: *@This(), value: *BluetoothLEAdvertisement) core.HResult!void {
        const this: *IBluetoothLEAdvertisementFilter = @ptrCast(self);
        return try this.putAdvertisement(value);
    }
    pub fn getBytePatterns(self: *@This()) core.HResult!*IVector(BluetoothLEAdvertisementBytePattern) {
        const this: *IBluetoothLEAdvertisementFilter = @ptrCast(self);
        return try this.getBytePatterns();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothLEAdvertisementFilter.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementFilter.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementFilter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAdvertisementFlags = enum(i32) {
    None = 0,
    LimitedDiscoverableMode = 1,
    GeneralDiscoverableMode = 2,
    ClassicNotSupported = 4,
    DualModeControllerCapable = 8,
    DualModeHostCapable = 16,
};
pub const BluetoothLEAdvertisementPhyType = enum(i32) {
    Unspecified = 0,
    Uncoded1MPhy = 1,
    Uncoded2MPhy = 2,
    CodedPhy = 3,
};
pub const BluetoothLEAdvertisementPublisher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!BluetoothLEAdvertisementPublisherStatus {
        const this: *IBluetoothLEAdvertisementPublisher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getAdvertisement(self: *@This()) core.HResult!*BluetoothLEAdvertisement {
        const this: *IBluetoothLEAdvertisementPublisher = @ptrCast(self);
        return try this.getAdvertisement();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IBluetoothLEAdvertisementPublisher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IBluetoothLEAdvertisementPublisher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEAdvertisementPublisher,BluetoothLEAdvertisementPublisherStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBluetoothLEAdvertisementPublisher = @ptrCast(self);
        return try this.addStatusChanged(handler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBluetoothLEAdvertisementPublisher = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn getPreferredTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var this: ?*IBluetoothLEAdvertisementPublisher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreferredTransmitPowerLevelInDBm();
    }
    pub fn putPreferredTransmitPowerLevelInDBm(self: *@This(), value: *IReference(i16)) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPreferredTransmitPowerLevelInDBm(value);
    }
    pub fn getUseExtendedAdvertisement(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementPublisher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseExtendedAdvertisement();
    }
    pub fn putUseExtendedAdvertisement(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseExtendedAdvertisement(value);
    }
    pub fn getIsAnonymous(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementPublisher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAnonymous();
    }
    pub fn putIsAnonymous(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsAnonymous(value);
    }
    pub fn getIncludeTransmitPowerLevel(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementPublisher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIncludeTransmitPowerLevel();
    }
    pub fn putIncludeTransmitPowerLevel(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIncludeTransmitPowerLevel(value);
    }
    pub fn getPrimaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var this: ?*IBluetoothLEAdvertisementPublisher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrimaryPhy();
    }
    pub fn putPrimaryPhy(self: *@This(), value: BluetoothLEAdvertisementPhyType) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrimaryPhy(value);
    }
    pub fn getSecondaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var this: ?*IBluetoothLEAdvertisementPublisher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSecondaryPhy();
    }
    pub fn putSecondaryPhy(self: *@This(), value: BluetoothLEAdvertisementPhyType) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSecondaryPhy(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothLEAdvertisementPublisher.IID)));
    }
    pub fn Create(advertisement: *BluetoothLEAdvertisement) core.HResult!*BluetoothLEAdvertisementPublisher {
        const factory = @This().IBluetoothLEAdvertisementPublisherFactoryCache.get();
        return try factory.Create(advertisement);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementPublisher.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementPublisher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementPublisher.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBluetoothLEAdvertisementPublisherFactoryCache: FactoryCache(IBluetoothLEAdvertisementPublisherFactory, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAdvertisementPublisherStatus = enum(i32) {
    Created = 0,
    Waiting = 1,
    Started = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const BluetoothLEAdvertisementPublisherStatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!BluetoothLEAdvertisementPublisherStatus {
        const this: *IBluetoothLEAdvertisementPublisherStatusChangedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IBluetoothLEAdvertisementPublisherStatusChangedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub fn getSelectedTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var this: ?*IBluetoothLEAdvertisementPublisherStatusChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherStatusChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedTransmitPowerLevelInDBm();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementPublisherStatusChangedEventArgs.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementPublisherStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementPublisherStatusChangedEventArgs.SIGNATURE);
};
pub const BluetoothLEAdvertisementReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRawSignalStrengthInDBm(self: *@This()) core.HResult!i16 {
        const this: *IBluetoothLEAdvertisementReceivedEventArgs = @ptrCast(self);
        return try this.getRawSignalStrengthInDBm();
    }
    pub fn getBluetoothAddress(self: *@This()) core.HResult!u64 {
        const this: *IBluetoothLEAdvertisementReceivedEventArgs = @ptrCast(self);
        return try this.getBluetoothAddress();
    }
    pub fn getAdvertisementType(self: *@This()) core.HResult!BluetoothLEAdvertisementType {
        const this: *IBluetoothLEAdvertisementReceivedEventArgs = @ptrCast(self);
        return try this.getAdvertisementType();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IBluetoothLEAdvertisementReceivedEventArgs = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getAdvertisement(self: *@This()) core.HResult!*BluetoothLEAdvertisement {
        const this: *IBluetoothLEAdvertisementReceivedEventArgs = @ptrCast(self);
        return try this.getAdvertisement();
    }
    pub fn getBluetoothAddressType(self: *@This()) core.HResult!BluetoothAddressType {
        var this: ?*IBluetoothLEAdvertisementReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBluetoothAddressType();
    }
    pub fn getTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var this: ?*IBluetoothLEAdvertisementReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransmitPowerLevelInDBm();
    }
    pub fn getIsAnonymous(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAnonymous();
    }
    pub fn getIsConnectable(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsConnectable();
    }
    pub fn getIsScannable(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsScannable();
    }
    pub fn getIsDirected(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDirected();
    }
    pub fn getIsScanResponse(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsScanResponse();
    }
    pub fn getPrimaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var this: ?*IBluetoothLEAdvertisementReceivedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementReceivedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrimaryPhy();
    }
    pub fn getSecondaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var this: ?*IBluetoothLEAdvertisementReceivedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementReceivedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSecondaryPhy();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementReceivedEventArgs.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementReceivedEventArgs.SIGNATURE);
};
pub const BluetoothLEAdvertisementScanParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getScanWindow(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEAdvertisementScanParameters = @ptrCast(self);
        return try this.getScanWindow();
    }
    pub fn getScanInterval(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEAdvertisementScanParameters = @ptrCast(self);
        return try this.getScanInterval();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CoexistenceOptimized() core.HResult!*BluetoothLEAdvertisementScanParameters {
        const factory = @This().IBluetoothLEAdvertisementScanParametersStaticsCache.get();
        return try factory.CoexistenceOptimized();
    }
    pub fn LowLatency() core.HResult!*BluetoothLEAdvertisementScanParameters {
        const factory = @This().IBluetoothLEAdvertisementScanParametersStaticsCache.get();
        return try factory.LowLatency();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementScanParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementScanParameters.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementScanParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementScanParameters.SIGNATURE);
    var _IBluetoothLEAdvertisementScanParametersStaticsCache: FactoryCache(IBluetoothLEAdvertisementScanParametersStatics, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAdvertisementType = enum(i32) {
    ConnectableUndirected = 0,
    ConnectableDirected = 1,
    ScannableUndirected = 2,
    NonConnectableUndirected = 3,
    ScanResponse = 4,
    Extended = 5,
};
pub const BluetoothLEAdvertisementWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMinSamplingInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.getMinSamplingInterval();
    }
    pub fn getMaxSamplingInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.getMaxSamplingInterval();
    }
    pub fn getMinOutOfRangeTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.getMinOutOfRangeTimeout();
    }
    pub fn getMaxOutOfRangeTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.getMaxOutOfRangeTimeout();
    }
    pub fn getStatus(self: *@This()) core.HResult!BluetoothLEAdvertisementWatcherStatus {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getScanningMode(self: *@This()) core.HResult!BluetoothLEScanningMode {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.getScanningMode();
    }
    pub fn putScanningMode(self: *@This(), value: BluetoothLEScanningMode) core.HResult!void {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.putScanningMode(value);
    }
    pub fn getSignalStrengthFilter(self: *@This()) core.HResult!*BluetoothSignalStrengthFilter {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.getSignalStrengthFilter();
    }
    pub fn putSignalStrengthFilter(self: *@This(), value: *BluetoothSignalStrengthFilter) core.HResult!void {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.putSignalStrengthFilter(value);
    }
    pub fn getAdvertisementFilter(self: *@This()) core.HResult!*BluetoothLEAdvertisementFilter {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.getAdvertisementFilter();
    }
    pub fn putAdvertisementFilter(self: *@This(), value: *BluetoothLEAdvertisementFilter) core.HResult!void {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.putAdvertisementFilter(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn addReceived(self: *@This(), handler: *TypedEventHandler(BluetoothLEAdvertisementWatcher,BluetoothLEAdvertisementReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.addReceived(handler);
    }
    pub fn removeReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.removeReceived(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(BluetoothLEAdvertisementWatcher,BluetoothLEAdvertisementWatcherStoppedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBluetoothLEAdvertisementWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn getAllowExtendedAdvertisements(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementWatcher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowExtendedAdvertisements();
    }
    pub fn putAllowExtendedAdvertisements(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementWatcher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowExtendedAdvertisements(value);
    }
    pub fn getUseUncoded1MPhy(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementWatcher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseUncoded1MPhy();
    }
    pub fn putUseUncoded1MPhy(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementWatcher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseUncoded1MPhy(value);
    }
    pub fn getUseCodedPhy(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementWatcher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseCodedPhy();
    }
    pub fn putUseCodedPhy(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementWatcher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseCodedPhy(value);
    }
    pub fn getScanParameters(self: *@This()) core.HResult!*BluetoothLEAdvertisementScanParameters {
        var this: ?*IBluetoothLEAdvertisementWatcher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScanParameters();
    }
    pub fn putScanParameters(self: *@This(), value: *BluetoothLEAdvertisementScanParameters) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementWatcher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putScanParameters(value);
    }
    pub fn getUseHardwareFilter(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementWatcher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseHardwareFilter();
    }
    pub fn putUseHardwareFilter(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementWatcher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseHardwareFilter(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothLEAdvertisementWatcher.IID)));
    }
    pub fn Create(advertisementFilter: *BluetoothLEAdvertisementFilter) core.HResult!*BluetoothLEAdvertisementWatcher {
        const factory = @This().IBluetoothLEAdvertisementWatcherFactoryCache.get();
        return try factory.Create(advertisementFilter);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementWatcher.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementWatcher.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBluetoothLEAdvertisementWatcherFactoryCache: FactoryCache(IBluetoothLEAdvertisementWatcherFactory, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAdvertisementWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    Stopping = 2,
    Stopped = 3,
    Aborted = 4,
};
pub const BluetoothLEAdvertisementWatcherStoppedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IBluetoothLEAdvertisementWatcherStoppedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcherStoppedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementWatcherStoppedEventArgs.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementWatcherStoppedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementWatcherStoppedEventArgs.SIGNATURE);
};
pub const BluetoothLEManufacturerData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompanyId(self: *@This()) core.HResult!u16 {
        const this: *IBluetoothLEManufacturerData = @ptrCast(self);
        return try this.getCompanyId();
    }
    pub fn putCompanyId(self: *@This(), value: u16) core.HResult!void {
        const this: *IBluetoothLEManufacturerData = @ptrCast(self);
        return try this.putCompanyId(value);
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IBluetoothLEManufacturerData = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IBluetoothLEManufacturerData = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothLEManufacturerData.IID)));
    }
    pub fn Create(companyId: u16, data: *IBuffer) core.HResult!*BluetoothLEManufacturerData {
        const factory = @This().IBluetoothLEManufacturerDataFactoryCache.get();
        return try factory.Create(companyId, data);
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEManufacturerData.GUID;
    pub const IID: Guid = IBluetoothLEManufacturerData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEManufacturerData.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBluetoothLEManufacturerDataFactoryCache: FactoryCache(IBluetoothLEManufacturerDataFactory, RUNTIME_NAME) = .{};
};
pub const BluetoothLEScanningMode = enum(i32) {
    Passive = 0,
    Active = 1,
    None = 2,
};
pub const IBluetoothLEAdvertisement = extern struct {
    vtable: *const VTable,
    pub fn getFlags(self: *@This()) core.HResult!*IReference(BluetoothLEAdvertisementFlags) {
        var _r: *IReference(BluetoothLEAdvertisementFlags) = undefined;
        const _c = self.vtable.get_Flags(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFlags(self: *@This(), value: *IReference(BluetoothLEAdvertisementFlags)) core.HResult!void {
        const _c = self.vtable.put_Flags(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocalName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocalName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LocalName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceUuids(self: *@This()) core.HResult!*IVector(Guid) {
        var _r: *IVector(Guid) = undefined;
        const _c = self.vtable.get_ServiceUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManufacturerData(self: *@This()) core.HResult!*IVector(BluetoothLEManufacturerData) {
        var _r: *IVector(BluetoothLEManufacturerData) = undefined;
        const _c = self.vtable.get_ManufacturerData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataSections(self: *@This()) core.HResult!*IVector(BluetoothLEAdvertisementDataSection) {
        var _r: *IVector(BluetoothLEAdvertisementDataSection) = undefined;
        const _c = self.vtable.get_DataSections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetManufacturerDataByCompanyId(self: *@This(), companyId: u16) core.HResult!*IVectorView(BluetoothLEManufacturerData) {
        var _r: *IVectorView(BluetoothLEManufacturerData) = undefined;
        const _c = self.vtable.GetManufacturerDataByCompanyId(@ptrCast(self), companyId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSectionsByType(self: *@This(), ty: u8) core.HResult!*IVectorView(BluetoothLEAdvertisementDataSection) {
        var _r: *IVectorView(BluetoothLEAdvertisementDataSection) = undefined;
        const _c = self.vtable.GetSectionsByType(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "066fb2b7-33d1-4e7d-8367-cf81d0f79653";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Flags: *const fn(self: *anyopaque, _r: **IReference(BluetoothLEAdvertisementFlags)) callconv(.winapi) HRESULT,
        put_Flags: *const fn(self: *anyopaque, value: *IReference(BluetoothLEAdvertisementFlags)) callconv(.winapi) HRESULT,
        get_LocalName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LocalName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ServiceUuids: *const fn(self: *anyopaque, _r: **IVector(Guid)) callconv(.winapi) HRESULT,
        get_ManufacturerData: *const fn(self: *anyopaque, _r: **IVector(BluetoothLEManufacturerData)) callconv(.winapi) HRESULT,
        get_DataSections: *const fn(self: *anyopaque, _r: **IVector(BluetoothLEAdvertisementDataSection)) callconv(.winapi) HRESULT,
        GetManufacturerDataByCompanyId: *const fn(self: *anyopaque, companyId: u16, _r: **IVectorView(BluetoothLEManufacturerData)) callconv(.winapi) HRESULT,
        GetSectionsByType: *const fn(self: *anyopaque, ty: u8, _r: **IVectorView(BluetoothLEAdvertisementDataSection)) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementBytePattern = extern struct {
    vtable: *const VTable,
    pub fn getDataType(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_DataType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataType(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_DataType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!i16 {
        var _r: i16 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: i16) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePattern";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbfad7f2-b9c5-4a08-bc51-502f8ef68a79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataType: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_DataType: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *i16) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: i16) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementBytePatternFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), dataType: u8, offset: i16, data: *IBuffer) core.HResult!*BluetoothLEAdvertisementBytePattern {
        var _r: *BluetoothLEAdvertisementBytePattern = undefined;
        const _c = self.vtable.Create(@ptrCast(self), dataType, offset, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePatternFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2e24d73-fd5c-4ec3-be2a-9ca6fa11b7bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, dataType: u8, offset: i16, data: *IBuffer, _r: **BluetoothLEAdvertisementBytePattern) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementDataSection = extern struct {
    vtable: *const VTable,
    pub fn getDataType(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_DataType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataType(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_DataType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataSection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7213314-3a43-40f9-b6f0-92bfefc34ae3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataType: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_DataType: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementDataSectionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), dataType: u8, data: *IBuffer) core.HResult!*BluetoothLEAdvertisementDataSection {
        var _r: *BluetoothLEAdvertisementDataSection = undefined;
        const _c = self.vtable.Create(@ptrCast(self), dataType, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataSectionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7a40942-a845-4045-bf7e-3e9971db8a6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, dataType: u8, data: *IBuffer, _r: **BluetoothLEAdvertisementDataSection) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementDataTypesStatics = extern struct {
    vtable: *const VTable,
    pub fn getFlags(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Flags(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncompleteService16BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_IncompleteService16BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompleteService16BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_CompleteService16BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncompleteService32BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_IncompleteService32BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompleteService32BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_CompleteService32BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncompleteService128BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_IncompleteService128BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompleteService128BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_CompleteService128BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShortenedLocalName(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ShortenedLocalName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompleteLocalName(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_CompleteLocalName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTxPowerLevel(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_TxPowerLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeripheralConnectionIntervalRange(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_PeripheralConnectionIntervalRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceSolicitation16BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ServiceSolicitation16BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceSolicitation32BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ServiceSolicitation32BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceSolicitation128BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ServiceSolicitation128BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceData16BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ServiceData16BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceData32BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ServiceData32BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceData128BitUuids(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ServiceData128BitUuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicTargetAddress(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_PublicTargetAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRandomTargetAddress(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_RandomTargetAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppearance(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Appearance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdvertisingInterval(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_AdvertisingInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManufacturerSpecificData(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ManufacturerSpecificData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataTypesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3bb6472f-0606-434b-a76e-74159f0684d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Flags: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_IncompleteService16BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_CompleteService16BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_IncompleteService32BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_CompleteService32BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_IncompleteService128BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_CompleteService128BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ShortenedLocalName: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_CompleteLocalName: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_TxPowerLevel: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_PeripheralConnectionIntervalRange: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ServiceSolicitation16BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ServiceSolicitation32BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ServiceSolicitation128BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ServiceData16BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ServiceData32BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ServiceData128BitUuids: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_PublicTargetAddress: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_RandomTargetAddress: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Appearance: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_AdvertisingInterval: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ManufacturerSpecificData: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementFilter = extern struct {
    vtable: *const VTable,
    pub fn getAdvertisement(self: *@This()) core.HResult!*BluetoothLEAdvertisement {
        var _r: *BluetoothLEAdvertisement = undefined;
        const _c = self.vtable.get_Advertisement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAdvertisement(self: *@This(), value: *BluetoothLEAdvertisement) core.HResult!void {
        const _c = self.vtable.put_Advertisement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBytePatterns(self: *@This()) core.HResult!*IVector(BluetoothLEAdvertisementBytePattern) {
        var _r: *IVector(BluetoothLEAdvertisementBytePattern) = undefined;
        const _c = self.vtable.get_BytePatterns(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "131eb0d3-d04e-47b1-837e-49405bf6f80f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Advertisement: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisement) callconv(.winapi) HRESULT,
        put_Advertisement: *const fn(self: *anyopaque, value: *BluetoothLEAdvertisement) callconv(.winapi) HRESULT,
        get_BytePatterns: *const fn(self: *anyopaque, _r: **IVector(BluetoothLEAdvertisementBytePattern)) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementPublisher = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!BluetoothLEAdvertisementPublisherStatus {
        var _r: BluetoothLEAdvertisementPublisherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdvertisement(self: *@This()) core.HResult!*BluetoothLEAdvertisement {
        var _r: *BluetoothLEAdvertisement = undefined;
        const _c = self.vtable.get_Advertisement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(BluetoothLEAdvertisementPublisher,BluetoothLEAdvertisementPublisherStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cde820f9-d9fa-43d6-a264-ddd8b7da8b78";
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
        get_Advertisement: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisement) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothLEAdvertisementPublisher,BluetoothLEAdvertisementPublisherStatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementPublisher2 = extern struct {
    vtable: *const VTable,
    pub fn getPreferredTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var _r: *IReference(i16) = undefined;
        const _c = self.vtable.get_PreferredTransmitPowerLevelInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredTransmitPowerLevelInDBm(self: *@This(), value: *IReference(i16)) core.HResult!void {
        const _c = self.vtable.put_PreferredTransmitPowerLevelInDBm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUseExtendedAdvertisement(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseExtendedAdvertisement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseExtendedAdvertisement(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseExtendedAdvertisement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAnonymous(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAnonymous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAnonymous(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAnonymous(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncludeTransmitPowerLevel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeTransmitPowerLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeTransmitPowerLevel(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeTransmitPowerLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbdb545e-56f1-510f-a434-217fbd9e7bd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreferredTransmitPowerLevelInDBm: *const fn(self: *anyopaque, _r: **IReference(i16)) callconv(.winapi) HRESULT,
        put_PreferredTransmitPowerLevelInDBm: *const fn(self: *anyopaque, value: *IReference(i16)) callconv(.winapi) HRESULT,
        get_UseExtendedAdvertisement: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseExtendedAdvertisement: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAnonymous: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAnonymous: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncludeTransmitPowerLevel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeTransmitPowerLevel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementPublisher3 = extern struct {
    vtable: *const VTable,
    pub fn getPrimaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var _r: BluetoothLEAdvertisementPhyType = undefined;
        const _c = self.vtable.get_PrimaryPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrimaryPhy(self: *@This(), value: BluetoothLEAdvertisementPhyType) core.HResult!void {
        const _c = self.vtable.put_PrimaryPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSecondaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var _r: BluetoothLEAdvertisementPhyType = undefined;
        const _c = self.vtable.get_SecondaryPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSecondaryPhy(self: *@This(), value: BluetoothLEAdvertisementPhyType) core.HResult!void {
        const _c = self.vtable.put_SecondaryPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1cff3902-61ec-5776-ab86-9b41f94b1e66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrimaryPhy: *const fn(self: *anyopaque, _r: *BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
        put_PrimaryPhy: *const fn(self: *anyopaque, value: BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
        get_SecondaryPhy: *const fn(self: *anyopaque, _r: *BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
        put_SecondaryPhy: *const fn(self: *anyopaque, value: BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementPublisherFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), advertisement: *BluetoothLEAdvertisement) core.HResult!*BluetoothLEAdvertisementPublisher {
        var _r: *BluetoothLEAdvertisementPublisher = undefined;
        const _c = self.vtable.Create(@ptrCast(self), advertisement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisherFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c5f065e-b863-4981-a1af-1c544d8b0c0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, advertisement: *BluetoothLEAdvertisement, _r: **BluetoothLEAdvertisementPublisher) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementPublisherStatusChangedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisherStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09c2bd9f-2dff-4b23-86ee-0d14fb94aeae";
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
pub const IBluetoothLEAdvertisementPublisherStatusChangedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getSelectedTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var _r: *IReference(i16) = undefined;
        const _c = self.vtable.get_SelectedTransmitPowerLevelInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisherStatusChangedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f62790e-dc88-5c8b-b34e-10b321850f88";
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
pub const IBluetoothLEAdvertisementReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRawSignalStrengthInDBm(self: *@This()) core.HResult!i16 {
        var _r: i16 = undefined;
        const _c = self.vtable.get_RawSignalStrengthInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBluetoothAddress(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BluetoothAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdvertisementType(self: *@This()) core.HResult!BluetoothLEAdvertisementType {
        var _r: BluetoothLEAdvertisementType = undefined;
        const _c = self.vtable.get_AdvertisementType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdvertisement(self: *@This()) core.HResult!*BluetoothLEAdvertisement {
        var _r: *BluetoothLEAdvertisement = undefined;
        const _c = self.vtable.get_Advertisement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27987ddf-e596-41be-8d43-9e6731d4a913";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RawSignalStrengthInDBm: *const fn(self: *anyopaque, _r: *i16) callconv(.winapi) HRESULT,
        get_BluetoothAddress: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_AdvertisementType: *const fn(self: *anyopaque, _r: *BluetoothLEAdvertisementType) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Advertisement: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisement) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementReceivedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getBluetoothAddressType(self: *@This()) core.HResult!BluetoothAddressType {
        var _r: BluetoothAddressType = undefined;
        const _c = self.vtable.get_BluetoothAddressType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var _r: *IReference(i16) = undefined;
        const _c = self.vtable.get_TransmitPowerLevelInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAnonymous(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAnonymous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsConnectable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConnectable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsScannable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScannable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDirected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDirected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsScanResponse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScanResponse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementReceivedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12d9c87b-0399-5f0e-a348-53b02b6b162e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BluetoothAddressType: *const fn(self: *anyopaque, _r: *BluetoothAddressType) callconv(.winapi) HRESULT,
        get_TransmitPowerLevelInDBm: *const fn(self: *anyopaque, _r: **IReference(i16)) callconv(.winapi) HRESULT,
        get_IsAnonymous: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsConnectable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsScannable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDirected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsScanResponse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementReceivedEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getPrimaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var _r: BluetoothLEAdvertisementPhyType = undefined;
        const _c = self.vtable.get_PrimaryPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecondaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var _r: BluetoothLEAdvertisementPhyType = undefined;
        const _c = self.vtable.get_SecondaryPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementReceivedEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d204b54-ff86-5d84-a25a-137dccd96f7a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrimaryPhy: *const fn(self: *anyopaque, _r: *BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
        get_SecondaryPhy: *const fn(self: *anyopaque, _r: *BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementScanParameters = extern struct {
    vtable: *const VTable,
    pub fn getScanWindow(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ScanWindow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScanInterval(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ScanInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementScanParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94f91413-63d9-53bd-af4c-e6b1a6514595";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ScanWindow: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ScanInterval: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementScanParametersStatics = extern struct {
    vtable: *const VTable,
    pub fn CoexistenceOptimized(self: *@This()) core.HResult!*BluetoothLEAdvertisementScanParameters {
        var _r: *BluetoothLEAdvertisementScanParameters = undefined;
        const _c = self.vtable.CoexistenceOptimized(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LowLatency(self: *@This()) core.HResult!*BluetoothLEAdvertisementScanParameters {
        var _r: *BluetoothLEAdvertisementScanParameters = undefined;
        const _c = self.vtable.LowLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementScanParametersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "548e39cd-3c9e-5f8d-b5e1-adebed5c357c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CoexistenceOptimized: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisementScanParameters) callconv(.winapi) HRESULT,
        LowLatency: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisementScanParameters) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementWatcher = extern struct {
    vtable: *const VTable,
    pub fn getMinSamplingInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MinSamplingInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxSamplingInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MaxSamplingInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinOutOfRangeTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MinOutOfRangeTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxOutOfRangeTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MaxOutOfRangeTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!BluetoothLEAdvertisementWatcherStatus {
        var _r: BluetoothLEAdvertisementWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScanningMode(self: *@This()) core.HResult!BluetoothLEScanningMode {
        var _r: BluetoothLEScanningMode = undefined;
        const _c = self.vtable.get_ScanningMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScanningMode(self: *@This(), value: BluetoothLEScanningMode) core.HResult!void {
        const _c = self.vtable.put_ScanningMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSignalStrengthFilter(self: *@This()) core.HResult!*BluetoothSignalStrengthFilter {
        var _r: *BluetoothSignalStrengthFilter = undefined;
        const _c = self.vtable.get_SignalStrengthFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignalStrengthFilter(self: *@This(), value: *BluetoothSignalStrengthFilter) core.HResult!void {
        const _c = self.vtable.put_SignalStrengthFilter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAdvertisementFilter(self: *@This()) core.HResult!*BluetoothLEAdvertisementFilter {
        var _r: *BluetoothLEAdvertisementFilter = undefined;
        const _c = self.vtable.get_AdvertisementFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAdvertisementFilter(self: *@This(), value: *BluetoothLEAdvertisementFilter) core.HResult!void {
        const _c = self.vtable.put_AdvertisementFilter(@ptrCast(self), value);
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
    pub fn addReceived(self: *@This(), handler: *TypedEventHandler(BluetoothLEAdvertisementWatcher,BluetoothLEAdvertisementReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Received(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Received(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(BluetoothLEAdvertisementWatcher,BluetoothLEAdvertisementWatcherStoppedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6ac336f-f3d3-4297-8d6c-c81ea6623f40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinSamplingInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MaxSamplingInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MinOutOfRangeTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MaxOutOfRangeTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *BluetoothLEAdvertisementWatcherStatus) callconv(.winapi) HRESULT,
        get_ScanningMode: *const fn(self: *anyopaque, _r: *BluetoothLEScanningMode) callconv(.winapi) HRESULT,
        put_ScanningMode: *const fn(self: *anyopaque, value: BluetoothLEScanningMode) callconv(.winapi) HRESULT,
        get_SignalStrengthFilter: *const fn(self: *anyopaque, _r: **BluetoothSignalStrengthFilter) callconv(.winapi) HRESULT,
        put_SignalStrengthFilter: *const fn(self: *anyopaque, value: *BluetoothSignalStrengthFilter) callconv(.winapi) HRESULT,
        get_AdvertisementFilter: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisementFilter) callconv(.winapi) HRESULT,
        put_AdvertisementFilter: *const fn(self: *anyopaque, value: *BluetoothLEAdvertisementFilter) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Received: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothLEAdvertisementWatcher,BluetoothLEAdvertisementReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Received: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(BluetoothLEAdvertisementWatcher,BluetoothLEAdvertisementWatcherStoppedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementWatcher2 = extern struct {
    vtable: *const VTable,
    pub fn getAllowExtendedAdvertisements(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowExtendedAdvertisements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowExtendedAdvertisements(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowExtendedAdvertisements(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01bf26bc-b164-5805-90a3-e8a7997ff225";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowExtendedAdvertisements: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowExtendedAdvertisements: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementWatcher3 = extern struct {
    vtable: *const VTable,
    pub fn getUseUncoded1MPhy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseUncoded1MPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseUncoded1MPhy(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseUncoded1MPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUseCodedPhy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseCodedPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseCodedPhy(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseCodedPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScanParameters(self: *@This()) core.HResult!*BluetoothLEAdvertisementScanParameters {
        var _r: *BluetoothLEAdvertisementScanParameters = undefined;
        const _c = self.vtable.get_ScanParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScanParameters(self: *@This(), value: *BluetoothLEAdvertisementScanParameters) core.HResult!void {
        const _c = self.vtable.put_ScanParameters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUseHardwareFilter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseHardwareFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseHardwareFilter(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseHardwareFilter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14d980be-4002-5dbe-8519-ffca6ca389f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UseUncoded1MPhy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseUncoded1MPhy: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_UseCodedPhy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseCodedPhy: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ScanParameters: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisementScanParameters) callconv(.winapi) HRESULT,
        put_ScanParameters: *const fn(self: *anyopaque, value: *BluetoothLEAdvertisementScanParameters) callconv(.winapi) HRESULT,
        get_UseHardwareFilter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseHardwareFilter: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementWatcherFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), advertisementFilter: *BluetoothLEAdvertisementFilter) core.HResult!*BluetoothLEAdvertisementWatcher {
        var _r: *BluetoothLEAdvertisementWatcher = undefined;
        const _c = self.vtable.Create(@ptrCast(self), advertisementFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcherFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9aaf2d56-39ac-453e-b32a-85c657e017f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, advertisementFilter: *BluetoothLEAdvertisementFilter, _r: **BluetoothLEAdvertisementWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementWatcherStoppedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcherStoppedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd40f84d-e7b9-43e3-9c04-0685d085fd8c";
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
    };
};
pub const IBluetoothLEManufacturerData = extern struct {
    vtable: *const VTable,
    pub fn getCompanyId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_CompanyId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompanyId(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.put_CompanyId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEManufacturerData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "912dba18-6963-4533-b061-4694dafb34e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompanyId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        put_CompanyId: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEManufacturerDataFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), companyId: u16, data: *IBuffer) core.HResult!*BluetoothLEManufacturerData {
        var _r: *BluetoothLEManufacturerData = undefined;
        const _c = self.vtable.Create(@ptrCast(self), companyId, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Bluetooth.Advertisement.IBluetoothLEManufacturerDataFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c09b39f8-319a-441e-8de5-66a81e877a6c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, companyId: u16, data: *IBuffer, _r: **BluetoothLEManufacturerData) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IReference = @import("../../Foundation.zig").IReference;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const DateTime = @import("../../Foundation.zig").DateTime;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const BluetoothAddressType = @import("../Bluetooth.zig").BluetoothAddressType;
const HSTRING = @import("../../root.zig").HSTRING;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const BluetoothSignalStrengthFilter = @import("../Bluetooth.zig").BluetoothSignalStrengthFilter;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const BluetoothError = @import("../Bluetooth.zig").BluetoothError;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
