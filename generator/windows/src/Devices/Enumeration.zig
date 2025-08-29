pub const DeviceAccessChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!DeviceAccessStatus {
        const this: *IDeviceAccessChangedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDeviceAccessChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccessChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getUserPromptRequired(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccessChangedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccessChangedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserPromptRequired();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceAccessChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceAccessChangedEventArgs.GUID;
    pub const IID: Guid = IDeviceAccessChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceAccessChangedEventArgs.SIGNATURE);
};
pub const DeviceAccessInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAccessChanged(self: *@This(), handler: *TypedEventHandler(DeviceAccessInformation,DeviceAccessChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDeviceAccessInformation = @ptrCast(self);
        return try this.addAccessChanged(handler);
    }
    pub fn removeAccessChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IDeviceAccessInformation = @ptrCast(self);
        return try this.removeAccessChanged(cookie);
    }
    pub fn getCurrentStatus(self: *@This()) core.HResult!DeviceAccessStatus {
        const this: *IDeviceAccessInformation = @ptrCast(self);
        return try this.getCurrentStatus();
    }
    pub fn getUserPromptRequired(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccessInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccessInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserPromptRequired();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromId(deviceId: HSTRING) core.HResult!*DeviceAccessInformation {
        const factory = @This().IDeviceAccessInformationStaticsCache.get();
        return try factory.CreateFromId(deviceId);
    }
    pub fn CreateFromDeviceClassId(deviceClassId: *Guid) core.HResult!*DeviceAccessInformation {
        const factory = @This().IDeviceAccessInformationStaticsCache.get();
        return try factory.CreateFromDeviceClassId(deviceClassId);
    }
    pub fn CreateFromDeviceClass(deviceClass: DeviceClass) core.HResult!*DeviceAccessInformation {
        const factory = @This().IDeviceAccessInformationStaticsCache.get();
        return try factory.CreateFromDeviceClass(deviceClass);
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceAccessInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceAccessInformation.GUID;
    pub const IID: Guid = IDeviceAccessInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceAccessInformation.SIGNATURE);
    var _IDeviceAccessInformationStaticsCache: FactoryCache(IDeviceAccessInformationStatics, RUNTIME_NAME) = .{};
};
pub const DeviceAccessStatus = enum(i32) {
    Unspecified = 0,
    Allowed = 1,
    DeniedByUser = 2,
    DeniedBySystem = 3,
};
pub const DeviceClass = enum(i32) {
    All = 0,
    AudioCapture = 1,
    AudioRender = 2,
    PortableStorageDevice = 3,
    VideoCapture = 4,
    ImageScanner = 5,
    Location = 6,
};
pub const DeviceConnectionChangeTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceConnectionChangeTriggerDetails = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceConnectionChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceConnectionChangeTriggerDetails.GUID;
    pub const IID: Guid = IDeviceConnectionChangeTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceConnectionChangeTriggerDetails.SIGNATURE);
};
pub const DeviceDisconnectButtonClickedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDevice(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IDeviceDisconnectButtonClickedEventArgs = @ptrCast(self);
        return try this.getDevice();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceDisconnectButtonClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceDisconnectButtonClickedEventArgs.GUID;
    pub const IID: Guid = IDeviceDisconnectButtonClickedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceDisconnectButtonClickedEventArgs.SIGNATURE);
};
pub const DeviceInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceInformation = @ptrCast(self);
        return try this.getId();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceInformation = @ptrCast(self);
        return try this.getName();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IDeviceInformation = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn getIsDefault(self: *@This()) core.HResult!bool {
        const this: *IDeviceInformation = @ptrCast(self);
        return try this.getIsDefault();
    }
    pub fn getEnclosureLocation(self: *@This()) core.HResult!*EnclosureLocation {
        const this: *IDeviceInformation = @ptrCast(self);
        return try this.getEnclosureLocation();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IDeviceInformation = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn Update(self: *@This(), updateInfo: *DeviceInformationUpdate) core.HResult!void {
        const this: *IDeviceInformation = @ptrCast(self);
        return try this.Update(updateInfo);
    }
    pub fn GetThumbnailAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceThumbnail) {
        const this: *IDeviceInformation = @ptrCast(self);
        return try this.GetThumbnailAsync();
    }
    pub fn GetGlyphThumbnailAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceThumbnail) {
        const this: *IDeviceInformation = @ptrCast(self);
        return try this.GetGlyphThumbnailAsync();
    }
    pub fn getKind(self: *@This()) core.HResult!DeviceInformationKind {
        var this: ?*IDeviceInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPairing(self: *@This()) core.HResult!*DeviceInformationPairing {
        var this: ?*IDeviceInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPairing();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(DeviceInformation) {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.CreateFromIdAsync(deviceId);
    }
    pub fn CreateFromIdAsyncWithAdditionalProperties(deviceId: HSTRING, additionalProperties: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(DeviceInformation) {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.CreateFromIdAsyncWithAdditionalProperties(deviceId, additionalProperties);
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub fn FindAllAsyncWithDeviceClass(deviceClass: DeviceClass) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.FindAllAsyncWithDeviceClass(deviceClass);
    }
    pub fn FindAllAsyncWithAqsFilter(aqsFilter: HSTRING) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.FindAllAsyncWithAqsFilter(aqsFilter);
    }
    pub fn FindAllAsyncWithAqsFilterWithAdditionalProperties(aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.FindAllAsyncWithAqsFilterWithAdditionalProperties(aqsFilter, additionalProperties);
    }
    pub fn CreateWatcher() core.HResult!*DeviceWatcher {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.CreateWatcher();
    }
    pub fn CreateWatcherWithDeviceClass(deviceClass: DeviceClass) core.HResult!*DeviceWatcher {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.CreateWatcherWithDeviceClass(deviceClass);
    }
    pub fn CreateWatcherWithAqsFilter(aqsFilter: HSTRING) core.HResult!*DeviceWatcher {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.CreateWatcherWithAqsFilter(aqsFilter);
    }
    pub fn CreateWatcherWithAqsFilterWithAdditionalProperties(aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING)) core.HResult!*DeviceWatcher {
        const factory = @This().IDeviceInformationStaticsCache.get();
        return try factory.CreateWatcherWithAqsFilterWithAdditionalProperties(aqsFilter, additionalProperties);
    }
    pub fn GetAqsFilterFromDeviceClass(deviceClass: DeviceClass) core.HResult!HSTRING {
        const factory = @This().IDeviceInformationStatics2Cache.get();
        return try factory.GetAqsFilterFromDeviceClass(deviceClass);
    }
    pub fn CreateFromIdAsyncWithAdditionalPropertiesWithKind(deviceId: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind) core.HResult!*IAsyncOperation(DeviceInformation) {
        const factory = @This().IDeviceInformationStatics2Cache.get();
        return try factory.CreateFromIdAsync(deviceId, additionalProperties, kind);
    }
    pub fn FindAllAsyncWithAqsFilterWithAdditionalPropertiesWithKind(aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        const factory = @This().IDeviceInformationStatics2Cache.get();
        return try factory.FindAllAsync(aqsFilter, additionalProperties, kind);
    }
    pub fn CreateWatcherWithAqsFilterWithAdditionalPropertiesWithKind(aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind) core.HResult!*DeviceWatcher {
        const factory = @This().IDeviceInformationStatics2Cache.get();
        return try factory.CreateWatcher(aqsFilter, additionalProperties, kind);
    }
    pub fn CreateFromIdAsyncWithAdditionalPropertiesWithKindWithSettings(deviceId: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, settings: *IDeviceEnumerationSettings) core.HResult!*IAsyncOperation(DeviceInformation) {
        const factory = @This().IDeviceInformationStatics3Cache.get();
        return try factory.CreateFromIdAsync(deviceId, additionalProperties, kind, settings);
    }
    pub fn FindAllAsyncWithAqsFilterWithAdditionalPropertiesWithKindWithSettings(aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, settings: *IDeviceEnumerationSettings) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        const factory = @This().IDeviceInformationStatics3Cache.get();
        return try factory.FindAllAsync(aqsFilter, additionalProperties, kind, settings);
    }
    pub fn CreateWatcherWithAqsFilterWithAdditionalPropertiesWithKindWithSettings(aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, settings: *IDeviceEnumerationSettings) core.HResult!*DeviceWatcher {
        const factory = @This().IDeviceInformationStatics3Cache.get();
        return try factory.CreateWatcher(aqsFilter, additionalProperties, kind, settings);
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceInformation.GUID;
    pub const IID: Guid = IDeviceInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceInformation.SIGNATURE);
    var _IDeviceInformationStaticsCache: FactoryCache(IDeviceInformationStatics, RUNTIME_NAME) = .{};
    var _IDeviceInformationStatics2Cache: FactoryCache(IDeviceInformationStatics2, RUNTIME_NAME) = .{};
    var _IDeviceInformationStatics3Cache: FactoryCache(IDeviceInformationStatics3, RUNTIME_NAME) = .{};
};
pub const DeviceInformationCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*DeviceInformation {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: *DeviceInformation, index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]DeviceInformation) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(DeviceInformation) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceInformationCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const DeviceInformationCustomPairing = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn PairAsync(self: *@This(), pairingKindsSupported: DevicePairingKinds) core.HResult!*IAsyncOperation(DevicePairingResult) {
        const this: *IDeviceInformationCustomPairing = @ptrCast(self);
        return try this.PairAsync(pairingKindsSupported);
    }
    pub fn PairAsyncWithMinProtectionLevel(self: *@This(), pairingKindsSupported: DevicePairingKinds, minProtectionLevel: DevicePairingProtectionLevel) core.HResult!*IAsyncOperation(DevicePairingResult) {
        const this: *IDeviceInformationCustomPairing = @ptrCast(self);
        return try this.PairAsyncWithMinProtectionLevel(pairingKindsSupported, minProtectionLevel);
    }
    pub fn PairAsyncWithDevicePairingSettings(self: *@This(), pairingKindsSupported: DevicePairingKinds, minProtectionLevel: DevicePairingProtectionLevel, devicePairingSettings: *IDevicePairingSettings) core.HResult!*IAsyncOperation(DevicePairingResult) {
        const this: *IDeviceInformationCustomPairing = @ptrCast(self);
        return try this.PairAsyncWithDevicePairingSettings(pairingKindsSupported, minProtectionLevel, devicePairingSettings);
    }
    pub fn addPairingRequested(self: *@This(), handler: *TypedEventHandler(DeviceInformationCustomPairing,DevicePairingRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDeviceInformationCustomPairing = @ptrCast(self);
        return try this.addPairingRequested(handler);
    }
    pub fn removePairingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDeviceInformationCustomPairing = @ptrCast(self);
        return try this.removePairingRequested(token);
    }
    pub fn AddPairingSetMember(self: *@This(), device: *DeviceInformation) core.HResult!void {
        var this: ?*IDeviceInformationCustomPairing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationCustomPairing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddPairingSetMember(device);
    }
    pub fn addPairingSetMembersRequested(self: *@This(), handler: *TypedEventHandler(DeviceInformationCustomPairing,DevicePairingSetMembersRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IDeviceInformationCustomPairing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationCustomPairing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPairingSetMembersRequested(handler);
    }
    pub fn removePairingSetMembersRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IDeviceInformationCustomPairing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationCustomPairing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePairingSetMembersRequested(token);
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceInformationCustomPairing";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceInformationCustomPairing.GUID;
    pub const IID: Guid = IDeviceInformationCustomPairing.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceInformationCustomPairing.SIGNATURE);
};
pub const DeviceInformationKind = enum(i32) {
    Unknown = 0,
    DeviceInterface = 1,
    DeviceContainer = 2,
    Device = 3,
    DeviceInterfaceClass = 4,
    AssociationEndpoint = 5,
    AssociationEndpointContainer = 6,
    AssociationEndpointService = 7,
    DevicePanel = 8,
    AssociationEndpointProtocol = 9,
};
pub const DeviceInformationPairing = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsPaired(self: *@This()) core.HResult!bool {
        const this: *IDeviceInformationPairing = @ptrCast(self);
        return try this.getIsPaired();
    }
    pub fn getCanPair(self: *@This()) core.HResult!bool {
        const this: *IDeviceInformationPairing = @ptrCast(self);
        return try this.getCanPair();
    }
    pub fn PairAsync(self: *@This()) core.HResult!*IAsyncOperation(DevicePairingResult) {
        var this: ?*IDeviceInformationPairing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationPairing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PairAsync();
    }
    pub fn PairAsync(self: *@This(), minProtectionLevel: DevicePairingProtectionLevel) core.HResult!*IAsyncOperation(DevicePairingResult) {
        var this: ?*IDeviceInformationPairing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationPairing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PairAsync(minProtectionLevel);
    }
    pub fn getProtectionLevel(self: *@This()) core.HResult!DevicePairingProtectionLevel {
        var this: ?*IDeviceInformationPairing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationPairing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtectionLevel();
    }
    pub fn getCustom(self: *@This()) core.HResult!*DeviceInformationCustomPairing {
        var this: ?*IDeviceInformationPairing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationPairing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCustom();
    }
    pub fn PairAsync(self: *@This(), minProtectionLevel: DevicePairingProtectionLevel, devicePairingSettings: *IDevicePairingSettings) core.HResult!*IAsyncOperation(DevicePairingResult) {
        var this: ?*IDeviceInformationPairing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationPairing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PairAsync(minProtectionLevel, devicePairingSettings);
    }
    pub fn UnpairAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceUnpairingResult) {
        var this: ?*IDeviceInformationPairing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationPairing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UnpairAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryRegisterForAllInboundPairingRequests(pairingKindsSupported: DevicePairingKinds) core.HResult!bool {
        const factory = @This().IDeviceInformationPairingStaticsCache.get();
        return try factory.TryRegisterForAllInboundPairingRequests(pairingKindsSupported);
    }
    pub fn TryRegisterForAllInboundPairingRequestsWithProtectionLevel(pairingKindsSupported: DevicePairingKinds, minProtectionLevel: DevicePairingProtectionLevel) core.HResult!bool {
        const factory = @This().IDeviceInformationPairingStatics2Cache.get();
        return try factory.TryRegisterForAllInboundPairingRequestsWithProtectionLevel(pairingKindsSupported, minProtectionLevel);
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceInformationPairing";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceInformationPairing.GUID;
    pub const IID: Guid = IDeviceInformationPairing.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceInformationPairing.SIGNATURE);
    var _IDeviceInformationPairingStaticsCache: FactoryCache(IDeviceInformationPairingStatics, RUNTIME_NAME) = .{};
    var _IDeviceInformationPairingStatics2Cache: FactoryCache(IDeviceInformationPairingStatics2, RUNTIME_NAME) = .{};
};
pub const DeviceInformationUpdate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceInformationUpdate = @ptrCast(self);
        return try this.getId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IDeviceInformationUpdate = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getKind(self: *@This()) core.HResult!DeviceInformationKind {
        var this: ?*IDeviceInformationUpdate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceInformationUpdate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceInformationUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceInformationUpdate.GUID;
    pub const IID: Guid = IDeviceInformationUpdate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceInformationUpdate.SIGNATURE);
};
pub const DevicePairingAddPairingSetMemberStatus = enum(i32) {
    AddedToSet = 0,
    CouldNotBeAddedToSet = 1,
    SetDiscoveryNotAttemptedByProtocol = 2,
    SetDiscoveryCompletedByProtocol = 3,
    SetDiscoveryPartiallyCompletedByProtocol = 4,
    Failed = 5,
};
pub const DevicePairingKinds = enum(i32) {
    None = 0,
    ConfirmOnly = 1,
    DisplayPin = 2,
    ProvidePin = 4,
    ConfirmPinMatch = 8,
    ProvidePasswordCredential = 16,
    ProvideAddress = 32,
};
pub const DevicePairingProtectionLevel = enum(i32) {
    Default = 0,
    None = 1,
    Encryption = 2,
    EncryptionAndAuthentication = 3,
};
pub const DevicePairingRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IDevicePairingRequestedEventArgs = @ptrCast(self);
        return try this.getDeviceInformation();
    }
    pub fn getPairingKind(self: *@This()) core.HResult!DevicePairingKinds {
        const this: *IDevicePairingRequestedEventArgs = @ptrCast(self);
        return try this.getPairingKind();
    }
    pub fn getPin(self: *@This()) core.HResult!HSTRING {
        const this: *IDevicePairingRequestedEventArgs = @ptrCast(self);
        return try this.getPin();
    }
    pub fn Accept(self: *@This()) core.HResult!void {
        const this: *IDevicePairingRequestedEventArgs = @ptrCast(self);
        return try this.Accept();
    }
    pub fn Accept(self: *@This(), pin: HSTRING) core.HResult!void {
        const this: *IDevicePairingRequestedEventArgs = @ptrCast(self);
        return try this.Accept(pin);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IDevicePairingRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn AcceptWithPasswordCredential(self: *@This(), passwordCredential: *PasswordCredential) core.HResult!void {
        var this: ?*IDevicePairingRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePairingRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AcceptWithPasswordCredential(passwordCredential);
    }
    pub fn AcceptWithAddress(self: *@This(), address: HSTRING) core.HResult!void {
        var this: ?*IDevicePairingRequestedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePairingRequestedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AcceptWithAddress(address);
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DevicePairingRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePairingRequestedEventArgs.GUID;
    pub const IID: Guid = IDevicePairingRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePairingRequestedEventArgs.SIGNATURE);
};
pub const DevicePairingResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!DevicePairingResultStatus {
        const this: *IDevicePairingResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getProtectionLevelUsed(self: *@This()) core.HResult!DevicePairingProtectionLevel {
        const this: *IDevicePairingResult = @ptrCast(self);
        return try this.getProtectionLevelUsed();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DevicePairingResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePairingResult.GUID;
    pub const IID: Guid = IDevicePairingResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePairingResult.SIGNATURE);
};
pub const DevicePairingResultStatus = enum(i32) {
    Paired = 0,
    NotReadyToPair = 1,
    NotPaired = 2,
    AlreadyPaired = 3,
    ConnectionRejected = 4,
    TooManyConnections = 5,
    HardwareFailure = 6,
    AuthenticationTimeout = 7,
    AuthenticationNotAllowed = 8,
    AuthenticationFailure = 9,
    NoSupportedProfiles = 10,
    ProtectionLevelCouldNotBeMet = 11,
    AccessDenied = 12,
    InvalidCeremonyData = 13,
    PairingCanceled = 14,
    OperationAlreadyInProgress = 15,
    RequiredHandlerNotRegistered = 16,
    RejectedByHandler = 17,
    RemoteDeviceHasAssociation = 18,
    Failed = 19,
};
pub const DevicePairingSetMembersRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!DevicePairingAddPairingSetMemberStatus {
        const this: *IDevicePairingSetMembersRequestedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getParentDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IDevicePairingSetMembersRequestedEventArgs = @ptrCast(self);
        return try this.getParentDeviceInformation();
    }
    pub fn getPairingSetMembers(self: *@This()) core.HResult!*IVectorView(DeviceInformation) {
        const this: *IDevicePairingSetMembersRequestedEventArgs = @ptrCast(self);
        return try this.getPairingSetMembers();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DevicePairingSetMembersRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePairingSetMembersRequestedEventArgs.GUID;
    pub const IID: Guid = IDevicePairingSetMembersRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePairingSetMembersRequestedEventArgs.SIGNATURE);
};
pub const DevicePicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFilter(self: *@This()) core.HResult!*DevicePickerFilter {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.getFilter();
    }
    pub fn getAppearance(self: *@This()) core.HResult!*DevicePickerAppearance {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.getAppearance();
    }
    pub fn getRequestedProperties(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.getRequestedProperties();
    }
    pub fn addDeviceSelected(self: *@This(), handler: *TypedEventHandler(DevicePicker,DeviceSelectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.addDeviceSelected(handler);
    }
    pub fn removeDeviceSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.removeDeviceSelected(token);
    }
    pub fn addDisconnectButtonClicked(self: *@This(), handler: *TypedEventHandler(DevicePicker,DeviceDisconnectButtonClickedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.addDisconnectButtonClicked(handler);
    }
    pub fn removeDisconnectButtonClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.removeDisconnectButtonClicked(token);
    }
    pub fn addDevicePickerDismissed(self: *@This(), handler: *TypedEventHandler(DevicePicker,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.addDevicePickerDismissed(handler);
    }
    pub fn removeDevicePickerDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.removeDevicePickerDismissed(token);
    }
    pub fn Show(self: *@This(), selection: Rect) core.HResult!void {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.Show(selection);
    }
    pub fn ShowWithPlacement(self: *@This(), selection: Rect, placement: Placement) core.HResult!void {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.ShowWithPlacement(selection, placement);
    }
    pub fn PickSingleDeviceAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(DeviceInformation) {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.PickSingleDeviceAsync(selection);
    }
    pub fn PickSingleDeviceAsyncWithPlacement(self: *@This(), selection: Rect, placement: Placement) core.HResult!*IAsyncOperation(DeviceInformation) {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.PickSingleDeviceAsyncWithPlacement(selection, placement);
    }
    pub fn Hide(self: *@This()) core.HResult!void {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.Hide();
    }
    pub fn SetDisplayStatus(self: *@This(), device: *DeviceInformation, status: HSTRING, options: DevicePickerDisplayStatusOptions) core.HResult!void {
        const this: *IDevicePicker = @ptrCast(self);
        return try this.SetDisplayStatus(device, status, options);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDevicePicker.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DevicePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePicker.GUID;
    pub const IID: Guid = IDevicePicker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePicker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DevicePickerAppearance = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!Color {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.getForegroundColor();
    }
    pub fn putForegroundColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.putForegroundColor(value);
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.putBackgroundColor(value);
    }
    pub fn getAccentColor(self: *@This()) core.HResult!Color {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.getAccentColor();
    }
    pub fn putAccentColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.putAccentColor(value);
    }
    pub fn getSelectedForegroundColor(self: *@This()) core.HResult!Color {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.getSelectedForegroundColor();
    }
    pub fn putSelectedForegroundColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.putSelectedForegroundColor(value);
    }
    pub fn getSelectedBackgroundColor(self: *@This()) core.HResult!Color {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.getSelectedBackgroundColor();
    }
    pub fn putSelectedBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.putSelectedBackgroundColor(value);
    }
    pub fn getSelectedAccentColor(self: *@This()) core.HResult!Color {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.getSelectedAccentColor();
    }
    pub fn putSelectedAccentColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IDevicePickerAppearance = @ptrCast(self);
        return try this.putSelectedAccentColor(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DevicePickerAppearance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePickerAppearance.GUID;
    pub const IID: Guid = IDevicePickerAppearance.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePickerAppearance.SIGNATURE);
};
pub const DevicePickerDisplayStatusOptions = enum(i32) {
    None = 0,
    ShowProgress = 1,
    ShowDisconnectButton = 2,
    ShowRetryButton = 4,
};
pub const DevicePickerFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupportedDeviceClasses(self: *@This()) core.HResult!*IVector(DeviceClass) {
        const this: *IDevicePickerFilter = @ptrCast(self);
        return try this.getSupportedDeviceClasses();
    }
    pub fn getSupportedDeviceSelectors(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IDevicePickerFilter = @ptrCast(self);
        return try this.getSupportedDeviceSelectors();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DevicePickerFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePickerFilter.GUID;
    pub const IID: Guid = IDevicePickerFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePickerFilter.SIGNATURE);
};
pub const DeviceSelectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelectedDevice(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IDeviceSelectedEventArgs = @ptrCast(self);
        return try this.getSelectedDevice();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceSelectedEventArgs.GUID;
    pub const IID: Guid = IDeviceSelectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceSelectedEventArgs.SIGNATURE);
};
pub const DeviceThumbnail = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u64 {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn putSize(self: *@This(), value: u64) core.HResult!void {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSize(value);
    }
    pub fn GetInputStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetInputStreamAt(position);
    }
    pub fn GetOutputStreamAt(self: *@This(), position: u64) core.HResult!*IOutputStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetOutputStreamAt(position);
    }
    pub fn getPosition(self: *@This()) core.HResult!u64 {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPosition();
    }
    pub fn Seek(self: *@This(), position: u64) core.HResult!void {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Seek(position);
    }
    pub fn CloneStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneStream();
    }
    pub fn getCanRead(self: *@This()) core.HResult!bool {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanRead();
    }
    pub fn getCanWrite(self: *@This()) core.HResult!bool {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanWrite();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        var this: ?*IInputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadAsync(buffer, count, options);
    }
    pub fn WriteAsync(self: *@This(), buffer: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WriteAsync(buffer);
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FlushAsync();
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContentTypeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContentTypeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentType();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceThumbnail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRandomAccessStreamWithContentType.GUID;
    pub const IID: Guid = IRandomAccessStreamWithContentType.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRandomAccessStreamWithContentType.SIGNATURE);
};
pub const DeviceUnpairingResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!DeviceUnpairingResultStatus {
        const this: *IDeviceUnpairingResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceUnpairingResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceUnpairingResult.GUID;
    pub const IID: Guid = IDeviceUnpairingResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceUnpairingResult.SIGNATURE);
};
pub const DeviceUnpairingResultStatus = enum(i32) {
    Unpaired = 0,
    AlreadyUnpaired = 1,
    OperationAlreadyInProgress = 2,
    AccessDenied = 3,
    Failed = 4,
};
pub const DeviceWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,DeviceInformation)) core.HResult!EventRegistrationToken {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,DeviceInformationUpdate)) core.HResult!EventRegistrationToken {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,DeviceInformationUpdate)) core.HResult!EventRegistrationToken {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IDeviceWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn GetBackgroundTrigger(self: *@This(), requestedEventKinds: *IIterable(DeviceWatcherEventKind)) core.HResult!*DeviceWatcherTrigger {
        var this: ?*IDeviceWatcher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceWatcher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetBackgroundTrigger(requestedEventKinds);
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceWatcher.GUID;
    pub const IID: Guid = IDeviceWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceWatcher.SIGNATURE);
};
pub const DeviceWatcherEvent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!DeviceWatcherEventKind {
        const this: *IDeviceWatcherEvent = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IDeviceWatcherEvent = @ptrCast(self);
        return try this.getDeviceInformation();
    }
    pub fn getDeviceInformationUpdate(self: *@This()) core.HResult!*DeviceInformationUpdate {
        const this: *IDeviceWatcherEvent = @ptrCast(self);
        return try this.getDeviceInformationUpdate();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceWatcherEvent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceWatcherEvent.GUID;
    pub const IID: Guid = IDeviceWatcherEvent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceWatcherEvent.SIGNATURE);
};
pub const DeviceWatcherEventKind = enum(i32) {
    Add = 0,
    Update = 1,
    Remove = 2,
};
pub const DeviceWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const DeviceWatcherTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceWatcherEvents(self: *@This()) core.HResult!*IVectorView(DeviceWatcherEvent) {
        const this: *IDeviceWatcherTriggerDetails = @ptrCast(self);
        return try this.getDeviceWatcherEvents();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.DeviceWatcherTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceWatcherTriggerDetails.GUID;
    pub const IID: Guid = IDeviceWatcherTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceWatcherTriggerDetails.SIGNATURE);
};
pub const EnclosureLocation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInDock(self: *@This()) core.HResult!bool {
        const this: *IEnclosureLocation = @ptrCast(self);
        return try this.getInDock();
    }
    pub fn getInLid(self: *@This()) core.HResult!bool {
        const this: *IEnclosureLocation = @ptrCast(self);
        return try this.getInLid();
    }
    pub fn getPanel(self: *@This()) core.HResult!Panel {
        const this: *IEnclosureLocation = @ptrCast(self);
        return try this.getPanel();
    }
    pub fn getRotationAngleInDegreesClockwise(self: *@This()) core.HResult!u32 {
        var this: ?*IEnclosureLocation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEnclosureLocation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotationAngleInDegreesClockwise();
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.EnclosureLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEnclosureLocation.GUID;
    pub const IID: Guid = IEnclosureLocation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEnclosureLocation.SIGNATURE);
};
pub const IDeviceAccessChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!DeviceAccessStatus {
        var _r: DeviceAccessStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceAccessChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "deda0bcc-4f9d-4f58-9dba-a9bc800408d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DeviceAccessStatus) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceAccessChangedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceAccessChangedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82523262-934b-4b30-a178-adc39f2f2be3";
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
    };
};
pub const IDeviceAccessChangedEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getUserPromptRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UserPromptRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceAccessChangedEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7580a878-7fd9-5cd7-8560-3c644b9b10db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserPromptRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceAccessInformation = extern struct {
    vtable: *const VTable,
    pub fn addAccessChanged(self: *@This(), handler: *TypedEventHandler(DeviceAccessInformation,DeviceAccessChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccessChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccessChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccessChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentStatus(self: *@This()) core.HResult!DeviceAccessStatus {
        var _r: DeviceAccessStatus = undefined;
        const _c = self.vtable.get_CurrentStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceAccessInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0baa9a73-6de5-4915-8ddd-9a0554a6f545";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AccessChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DeviceAccessInformation,DeviceAccessChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccessChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_CurrentStatus: *const fn(self: *anyopaque, _r: *DeviceAccessStatus) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceAccessInformation2 = extern struct {
    vtable: *const VTable,
    pub fn getUserPromptRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UserPromptRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceAccessInformation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2b9dff6-e88f-5d0a-9c1e-d788808df47b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserPromptRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceAccessInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromId(self: *@This(), deviceId: HSTRING) core.HResult!*DeviceAccessInformation {
        var _r: *DeviceAccessInformation = undefined;
        const _c = self.vtable.CreateFromId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromDeviceClassId(self: *@This(), deviceClassId: *Guid) core.HResult!*DeviceAccessInformation {
        var _r: *DeviceAccessInformation = undefined;
        const _c = self.vtable.CreateFromDeviceClassId(@ptrCast(self), deviceClassId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromDeviceClass(self: *@This(), deviceClass: DeviceClass) core.HResult!*DeviceAccessInformation {
        var _r: *DeviceAccessInformation = undefined;
        const _c = self.vtable.CreateFromDeviceClass(@ptrCast(self), deviceClass, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceAccessInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "574bd3d3-5f30-45cd-8a94-724fe5973084";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **DeviceAccessInformation) callconv(.winapi) HRESULT,
        CreateFromDeviceClassId: *const fn(self: *anyopaque, deviceClassId: *Guid, _r: **DeviceAccessInformation) callconv(.winapi) HRESULT,
        CreateFromDeviceClass: *const fn(self: *anyopaque, deviceClass: DeviceClass, _r: **DeviceAccessInformation) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceConnectionChangeTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceConnectionChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8578c0c-bbc1-484b-bffa-7b31dcc200b2";
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
pub const IDeviceDisconnectButtonClickedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDevice(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceDisconnectButtonClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e44b56d-f902-4a00-b536-f37992e6a2a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceEnumerationSettings = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceEnumerationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7710f66-9ff3-41c8-85eb-87f81148a30f";
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
pub const IDeviceInformation = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDefault(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnclosureLocation(self: *@This()) core.HResult!*EnclosureLocation {
        var _r: *EnclosureLocation = undefined;
        const _c = self.vtable.get_EnclosureLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Update(self: *@This(), updateInfo: *DeviceInformationUpdate) core.HResult!void {
        const _c = self.vtable.Update(@ptrCast(self), updateInfo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetThumbnailAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceThumbnail) {
        var _r: *IAsyncOperation(DeviceThumbnail) = undefined;
        const _c = self.vtable.GetThumbnailAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGlyphThumbnailAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceThumbnail) {
        var _r: *IAsyncOperation(DeviceThumbnail) = undefined;
        const _c = self.vtable.GetGlyphThumbnailAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aba0fb95-4398-489d-8e44-e6130927011f";
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
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDefault: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_EnclosureLocation: *const fn(self: *anyopaque, _r: **EnclosureLocation) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
        Update: *const fn(self: *anyopaque, updateInfo: *DeviceInformationUpdate) callconv(.winapi) HRESULT,
        GetThumbnailAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DeviceThumbnail)) callconv(.winapi) HRESULT,
        GetGlyphThumbnailAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DeviceThumbnail)) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformation2 = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!DeviceInformationKind {
        var _r: DeviceInformationKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPairing(self: *@This()) core.HResult!*DeviceInformationPairing {
        var _r: *DeviceInformationPairing = undefined;
        const _c = self.vtable.get_Pairing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f156a638-7997-48d9-a10c-269d46533f48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *DeviceInformationKind) callconv(.winapi) HRESULT,
        get_Pairing: *const fn(self: *anyopaque, _r: **DeviceInformationPairing) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationCustomPairing = extern struct {
    vtable: *const VTable,
    pub fn PairAsync(self: *@This(), pairingKindsSupported: DevicePairingKinds) core.HResult!*IAsyncOperation(DevicePairingResult) {
        var _r: *IAsyncOperation(DevicePairingResult) = undefined;
        const _c = self.vtable.PairAsync(@ptrCast(self), pairingKindsSupported, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PairAsyncWithMinProtectionLevel(self: *@This(), pairingKindsSupported: DevicePairingKinds, minProtectionLevel: DevicePairingProtectionLevel) core.HResult!*IAsyncOperation(DevicePairingResult) {
        var _r: *IAsyncOperation(DevicePairingResult) = undefined;
        const _c = self.vtable.PairAsyncWithMinProtectionLevel(@ptrCast(self), pairingKindsSupported, minProtectionLevel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PairAsyncWithDevicePairingSettings(self: *@This(), pairingKindsSupported: DevicePairingKinds, minProtectionLevel: DevicePairingProtectionLevel, devicePairingSettings: *IDevicePairingSettings) core.HResult!*IAsyncOperation(DevicePairingResult) {
        var _r: *IAsyncOperation(DevicePairingResult) = undefined;
        const _c = self.vtable.PairAsyncWithDevicePairingSettings(@ptrCast(self), pairingKindsSupported, minProtectionLevel, devicePairingSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPairingRequested(self: *@This(), handler: *TypedEventHandler(DeviceInformationCustomPairing,DevicePairingRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PairingRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePairingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PairingRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationCustomPairing";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85138c02-4ee6-4914-8370-107a39144c0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PairAsync: *const fn(self: *anyopaque, pairingKindsSupported: DevicePairingKinds, _r: **IAsyncOperation(DevicePairingResult)) callconv(.winapi) HRESULT,
        PairAsyncWithMinProtectionLevel: *const fn(self: *anyopaque, pairingKindsSupported: DevicePairingKinds, minProtectionLevel: DevicePairingProtectionLevel, _r: **IAsyncOperation(DevicePairingResult)) callconv(.winapi) HRESULT,
        PairAsyncWithDevicePairingSettings: *const fn(self: *anyopaque, pairingKindsSupported: DevicePairingKinds, minProtectionLevel: DevicePairingProtectionLevel, devicePairingSettings: *IDevicePairingSettings, _r: **IAsyncOperation(DevicePairingResult)) callconv(.winapi) HRESULT,
        add_PairingRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(DeviceInformationCustomPairing,DevicePairingRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PairingRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationCustomPairing2 = extern struct {
    vtable: *const VTable,
    pub fn AddPairingSetMember(self: *@This(), device: *DeviceInformation) core.HResult!void {
        const _c = self.vtable.AddPairingSetMember(@ptrCast(self), device);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPairingSetMembersRequested(self: *@This(), handler: *TypedEventHandler(DeviceInformationCustomPairing,DevicePairingSetMembersRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PairingSetMembersRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePairingSetMembersRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PairingSetMembersRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationCustomPairing2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ebda662-e696-5fa9-8f72-80cfebcd851d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddPairingSetMember: *const fn(self: *anyopaque, device: *DeviceInformation) callconv(.winapi) HRESULT,
        add_PairingSetMembersRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(DeviceInformationCustomPairing,DevicePairingSetMembersRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PairingSetMembersRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationPairing = extern struct {
    vtable: *const VTable,
    pub fn getIsPaired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPaired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanPair(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanPair(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PairAsync(self: *@This()) core.HResult!*IAsyncOperation(DevicePairingResult) {
        var _r: *IAsyncOperation(DevicePairingResult) = undefined;
        const _c = self.vtable.PairAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PairAsync(self: *@This(), minProtectionLevel: DevicePairingProtectionLevel) core.HResult!*IAsyncOperation(DevicePairingResult) {
        var _r: *IAsyncOperation(DevicePairingResult) = undefined;
        const _c = self.vtable.PairAsync(@ptrCast(self), minProtectionLevel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationPairing";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c4769f5-f684-40d5-8469-e8dbaab70485";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPaired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanPair: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        PairAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DevicePairingResult)) callconv(.winapi) HRESULT,
        PairAsync: *const fn(self: *anyopaque, minProtectionLevel: DevicePairingProtectionLevel, _r: **IAsyncOperation(DevicePairingResult)) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationPairing2 = extern struct {
    vtable: *const VTable,
    pub fn getProtectionLevel(self: *@This()) core.HResult!DevicePairingProtectionLevel {
        var _r: DevicePairingProtectionLevel = undefined;
        const _c = self.vtable.get_ProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustom(self: *@This()) core.HResult!*DeviceInformationCustomPairing {
        var _r: *DeviceInformationCustomPairing = undefined;
        const _c = self.vtable.get_Custom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PairAsync(self: *@This(), minProtectionLevel: DevicePairingProtectionLevel, devicePairingSettings: *IDevicePairingSettings) core.HResult!*IAsyncOperation(DevicePairingResult) {
        var _r: *IAsyncOperation(DevicePairingResult) = undefined;
        const _c = self.vtable.PairAsync(@ptrCast(self), minProtectionLevel, devicePairingSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnpairAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceUnpairingResult) {
        var _r: *IAsyncOperation(DeviceUnpairingResult) = undefined;
        const _c = self.vtable.UnpairAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationPairing2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f68612fd-0aee-4328-85cc-1c742bb1790d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProtectionLevel: *const fn(self: *anyopaque, _r: *DevicePairingProtectionLevel) callconv(.winapi) HRESULT,
        get_Custom: *const fn(self: *anyopaque, _r: **DeviceInformationCustomPairing) callconv(.winapi) HRESULT,
        PairAsync: *const fn(self: *anyopaque, minProtectionLevel: DevicePairingProtectionLevel, devicePairingSettings: *IDevicePairingSettings, _r: **IAsyncOperation(DevicePairingResult)) callconv(.winapi) HRESULT,
        UnpairAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DeviceUnpairingResult)) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationPairingStatics = extern struct {
    vtable: *const VTable,
    pub fn TryRegisterForAllInboundPairingRequests(self: *@This(), pairingKindsSupported: DevicePairingKinds) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryRegisterForAllInboundPairingRequests(@ptrCast(self), pairingKindsSupported, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationPairingStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e915c408-36d4-49a1-bf13-514173799b6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryRegisterForAllInboundPairingRequests: *const fn(self: *anyopaque, pairingKindsSupported: DevicePairingKinds, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationPairingStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TryRegisterForAllInboundPairingRequestsWithProtectionLevel(self: *@This(), pairingKindsSupported: DevicePairingKinds, minProtectionLevel: DevicePairingProtectionLevel) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryRegisterForAllInboundPairingRequestsWithProtectionLevel(@ptrCast(self), pairingKindsSupported, minProtectionLevel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationPairingStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04de5372-b7b7-476b-a74f-c5836a704d98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryRegisterForAllInboundPairingRequestsWithProtectionLevel: *const fn(self: *anyopaque, pairingKindsSupported: DevicePairingKinds, minProtectionLevel: DevicePairingProtectionLevel, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(DeviceInformation) {
        var _r: *IAsyncOperation(DeviceInformation) = undefined;
        const _c = self.vtable.CreateFromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIdAsyncWithAdditionalProperties(self: *@This(), deviceId: HSTRING, additionalProperties: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(DeviceInformation) {
        var _r: *IAsyncOperation(DeviceInformation) = undefined;
        const _c = self.vtable.CreateFromIdAsyncWithAdditionalProperties(@ptrCast(self), deviceId, additionalProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        var _r: *IAsyncOperation(DeviceInformationCollection) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), deviceClass: DeviceClass) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        var _r: *IAsyncOperation(DeviceInformationCollection) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), deviceClass, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), aqsFilter: HSTRING) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        var _r: *IAsyncOperation(DeviceInformationCollection) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), aqsFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        var _r: *IAsyncOperation(DeviceInformationCollection) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), aqsFilter, additionalProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This()) core.HResult!*DeviceWatcher {
        var _r: *DeviceWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This(), deviceClass: DeviceClass) core.HResult!*DeviceWatcher {
        var _r: *DeviceWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), deviceClass, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This(), aqsFilter: HSTRING) core.HResult!*DeviceWatcher {
        var _r: *DeviceWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), aqsFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This(), aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING)) core.HResult!*DeviceWatcher {
        var _r: *DeviceWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), aqsFilter, additionalProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c17f100e-3a46-4a78-8013-769dc9b97390";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(DeviceInformation)) callconv(.winapi) HRESULT,
        CreateFromIdAsyncWithAdditionalProperties: *const fn(self: *anyopaque, deviceId: HSTRING, additionalProperties: *IIterable(HSTRING), _r: **IAsyncOperation(DeviceInformation)) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DeviceInformationCollection)) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, deviceClass: DeviceClass, _r: **IAsyncOperation(DeviceInformationCollection)) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, aqsFilter: HSTRING, _r: **IAsyncOperation(DeviceInformationCollection)) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), _r: **IAsyncOperation(DeviceInformationCollection)) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **DeviceWatcher) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, deviceClass: DeviceClass, _r: **DeviceWatcher) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, aqsFilter: HSTRING, _r: **DeviceWatcher) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), _r: **DeviceWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetAqsFilterFromDeviceClass(self: *@This(), deviceClass: DeviceClass) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAqsFilterFromDeviceClass(@ptrCast(self), deviceClass, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIdAsync(self: *@This(), deviceId: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind) core.HResult!*IAsyncOperation(DeviceInformation) {
        var _r: *IAsyncOperation(DeviceInformation) = undefined;
        const _c = self.vtable.CreateFromIdAsync(@ptrCast(self), deviceId, additionalProperties, kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        var _r: *IAsyncOperation(DeviceInformationCollection) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), aqsFilter, additionalProperties, kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This(), aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind) core.HResult!*DeviceWatcher {
        var _r: *DeviceWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), aqsFilter, additionalProperties, kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "493b4f34-a84f-45fd-9167-15d1cb1bd1f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAqsFilterFromDeviceClass: *const fn(self: *anyopaque, deviceClass: DeviceClass, _r: *HSTRING) callconv(.winapi) HRESULT,
        CreateFromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, _r: **IAsyncOperation(DeviceInformation)) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, _r: **IAsyncOperation(DeviceInformationCollection)) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, _r: **DeviceWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationStatics3 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromIdAsync(self: *@This(), deviceId: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, settings: *IDeviceEnumerationSettings) core.HResult!*IAsyncOperation(DeviceInformation) {
        var _r: *IAsyncOperation(DeviceInformation) = undefined;
        const _c = self.vtable.CreateFromIdAsync(@ptrCast(self), deviceId, additionalProperties, kind, settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, settings: *IDeviceEnumerationSettings) core.HResult!*IAsyncOperation(DeviceInformationCollection) {
        var _r: *IAsyncOperation(DeviceInformationCollection) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), aqsFilter, additionalProperties, kind, settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This(), aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, settings: *IDeviceEnumerationSettings) core.HResult!*DeviceWatcher {
        var _r: *DeviceWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), aqsFilter, additionalProperties, kind, settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25f06279-9364-5a6c-8a54-5d4a6d3d922a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, settings: *IDeviceEnumerationSettings, _r: **IAsyncOperation(DeviceInformation)) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, settings: *IDeviceEnumerationSettings, _r: **IAsyncOperation(DeviceInformationCollection)) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, aqsFilter: HSTRING, additionalProperties: *IIterable(HSTRING), kind: DeviceInformationKind, settings: *IDeviceEnumerationSettings, _r: **DeviceWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationUpdate = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f315305-d972-44b7-a37e-9e822c78213b";
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
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceInformationUpdate2 = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!DeviceInformationKind {
        var _r: DeviceInformationKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceInformationUpdate2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d9d148c-a873-485e-baa6-aa620788e3cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *DeviceInformationKind) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePairingRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPairingKind(self: *@This()) core.HResult!DevicePairingKinds {
        var _r: DevicePairingKinds = undefined;
        const _c = self.vtable.get_PairingKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPin(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Accept(self: *@This()) core.HResult!void {
        const _c = self.vtable.Accept(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Accept(self: *@This(), pin: HSTRING) core.HResult!void {
        const _c = self.vtable.Accept(@ptrCast(self), pin);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f717fc56-de6b-487f-8376-0180aca69963";
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
        get_PairingKind: *const fn(self: *anyopaque, _r: *DevicePairingKinds) callconv(.winapi) HRESULT,
        get_Pin: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        Accept: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Accept: *const fn(self: *anyopaque, pin: HSTRING) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePairingRequestedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn AcceptWithPasswordCredential(self: *@This(), passwordCredential: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.AcceptWithPasswordCredential(@ptrCast(self), passwordCredential);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c83752d9-e4d3-4db0-a360-a105e437dbdc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AcceptWithPasswordCredential: *const fn(self: *anyopaque, passwordCredential: *PasswordCredential) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePairingRequestedEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn AcceptWithAddress(self: *@This(), address: HSTRING) core.HResult!void {
        const _c = self.vtable.AcceptWithAddress(@ptrCast(self), address);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "195e5a38-43dc-562f-babe-efc8b110088b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AcceptWithAddress: *const fn(self: *anyopaque, address: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePairingResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!DevicePairingResultStatus {
        var _r: DevicePairingResultStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtectionLevelUsed(self: *@This()) core.HResult!DevicePairingProtectionLevel {
        var _r: DevicePairingProtectionLevel = undefined;
        const _c = self.vtable.get_ProtectionLevelUsed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDevicePairingResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "072b02bf-dd95-4025-9b37-de51adba37b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DevicePairingResultStatus) callconv(.winapi) HRESULT,
        get_ProtectionLevelUsed: *const fn(self: *anyopaque, _r: *DevicePairingProtectionLevel) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePairingSetMembersRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!DevicePairingAddPairingSetMemberStatus {
        var _r: DevicePairingAddPairingSetMemberStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParentDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_ParentDeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPairingSetMembers(self: *@This()) core.HResult!*IVectorView(DeviceInformation) {
        var _r: *IVectorView(DeviceInformation) = undefined;
        const _c = self.vtable.get_PairingSetMembers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDevicePairingSetMembersRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7fb42cff-ecac-5012-8d7d-a1894680a349";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DevicePairingAddPairingSetMemberStatus) callconv(.winapi) HRESULT,
        get_ParentDeviceInformation: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
        get_PairingSetMembers: *const fn(self: *anyopaque, _r: **IVectorView(DeviceInformation)) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePairingSettings = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDevicePairingSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "482cb27c-83bb-420e-be51-6602b222de54";
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
pub const IDevicePicker = extern struct {
    vtable: *const VTable,
    pub fn getFilter(self: *@This()) core.HResult!*DevicePickerFilter {
        var _r: *DevicePickerFilter = undefined;
        const _c = self.vtable.get_Filter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppearance(self: *@This()) core.HResult!*DevicePickerAppearance {
        var _r: *DevicePickerAppearance = undefined;
        const _c = self.vtable.get_Appearance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestedProperties(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_RequestedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDeviceSelected(self: *@This(), handler: *TypedEventHandler(DevicePicker,DeviceSelectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DeviceSelected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDeviceSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DeviceSelected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDisconnectButtonClicked(self: *@This(), handler: *TypedEventHandler(DevicePicker,DeviceDisconnectButtonClickedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DisconnectButtonClicked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisconnectButtonClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DisconnectButtonClicked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDevicePickerDismissed(self: *@This(), handler: *TypedEventHandler(DevicePicker,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DevicePickerDismissed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDevicePickerDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DevicePickerDismissed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Show(self: *@This(), selection: Rect) core.HResult!void {
        const _c = self.vtable.Show(@ptrCast(self), selection);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowWithPlacement(self: *@This(), selection: Rect, placement: Placement) core.HResult!void {
        const _c = self.vtable.ShowWithPlacement(@ptrCast(self), selection, placement);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PickSingleDeviceAsync(self: *@This(), selection: Rect) core.HResult!*IAsyncOperation(DeviceInformation) {
        var _r: *IAsyncOperation(DeviceInformation) = undefined;
        const _c = self.vtable.PickSingleDeviceAsync(@ptrCast(self), selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickSingleDeviceAsyncWithPlacement(self: *@This(), selection: Rect, placement: Placement) core.HResult!*IAsyncOperation(DeviceInformation) {
        var _r: *IAsyncOperation(DeviceInformation) = undefined;
        const _c = self.vtable.PickSingleDeviceAsyncWithPlacement(@ptrCast(self), selection, placement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Hide(self: *@This()) core.HResult!void {
        const _c = self.vtable.Hide(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetDisplayStatus(self: *@This(), device: *DeviceInformation, status: HSTRING, options: DevicePickerDisplayStatusOptions) core.HResult!void {
        const _c = self.vtable.SetDisplayStatus(@ptrCast(self), device, status, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDevicePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84997aa2-034a-4440-8813-7d0bd479bf5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Filter: *const fn(self: *anyopaque, _r: **DevicePickerFilter) callconv(.winapi) HRESULT,
        get_Appearance: *const fn(self: *anyopaque, _r: **DevicePickerAppearance) callconv(.winapi) HRESULT,
        get_RequestedProperties: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        add_DeviceSelected: *const fn(self: *anyopaque, handler: *TypedEventHandler(DevicePicker,DeviceSelectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DeviceSelected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DisconnectButtonClicked: *const fn(self: *anyopaque, handler: *TypedEventHandler(DevicePicker,DeviceDisconnectButtonClickedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DisconnectButtonClicked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DevicePickerDismissed: *const fn(self: *anyopaque, handler: *TypedEventHandler(DevicePicker,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DevicePickerDismissed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Show: *const fn(self: *anyopaque, selection: Rect) callconv(.winapi) HRESULT,
        ShowWithPlacement: *const fn(self: *anyopaque, selection: Rect, placement: Placement) callconv(.winapi) HRESULT,
        PickSingleDeviceAsync: *const fn(self: *anyopaque, selection: Rect, _r: **IAsyncOperation(DeviceInformation)) callconv(.winapi) HRESULT,
        PickSingleDeviceAsyncWithPlacement: *const fn(self: *anyopaque, selection: Rect, placement: Placement, _r: **IAsyncOperation(DeviceInformation)) callconv(.winapi) HRESULT,
        Hide: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetDisplayStatus: *const fn(self: *anyopaque, device: *DeviceInformation, status: HSTRING, options: DevicePickerDisplayStatusOptions) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePickerAppearance = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_ForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForegroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_ForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_BackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccentColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_AccentColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccentColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_AccentColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedForegroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SelectedForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedForegroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_SelectedForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SelectedBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_SelectedBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedAccentColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SelectedAccentColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedAccentColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_SelectedAccentColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDevicePickerAppearance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e69a12c6-e627-4ed8-9b6c-460af445e56d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ForegroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_ForegroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_BackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_AccentColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_AccentColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_SelectedForegroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_SelectedForegroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_SelectedBackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_SelectedBackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_SelectedAccentColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_SelectedAccentColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePickerFilter = extern struct {
    vtable: *const VTable,
    pub fn getSupportedDeviceClasses(self: *@This()) core.HResult!*IVector(DeviceClass) {
        var _r: *IVector(DeviceClass) = undefined;
        const _c = self.vtable.get_SupportedDeviceClasses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedDeviceSelectors(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedDeviceSelectors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDevicePickerFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91db92a2-57cb-48f1-9b59-a59b7a1f02a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedDeviceClasses: *const fn(self: *anyopaque, _r: **IVector(DeviceClass)) callconv(.winapi) HRESULT,
        get_SupportedDeviceSelectors: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceSelectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSelectedDevice(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_SelectedDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "269edade-1d2f-4940-8402-4156b81d3c77";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedDevice: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceUnpairingResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!DeviceUnpairingResultStatus {
        var _r: DeviceUnpairingResultStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceUnpairingResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66f44ad3-79d9-444b-92cf-a92ef72571c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DeviceUnpairingResultStatus) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceWatcher = extern struct {
    vtable: *const VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,DeviceInformation)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,DeviceInformationUpdate)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,DeviceInformationUpdate)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(DeviceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        var _r: DeviceWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9eab97d-8f6b-4f96-a9f4-abc814e22271";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(DeviceWatcher,DeviceInformation), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(DeviceWatcher,DeviceInformationUpdate), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(DeviceWatcher,DeviceInformationUpdate), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(DeviceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(DeviceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DeviceWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceWatcher2 = extern struct {
    vtable: *const VTable,
    pub fn GetBackgroundTrigger(self: *@This(), requestedEventKinds: *IIterable(DeviceWatcherEventKind)) core.HResult!*DeviceWatcherTrigger {
        var _r: *DeviceWatcherTrigger = undefined;
        const _c = self.vtable.GetBackgroundTrigger(@ptrCast(self), requestedEventKinds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceWatcher2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff08456e-ed14-49e9-9a69-8117c54ae971";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetBackgroundTrigger: *const fn(self: *anyopaque, requestedEventKinds: *IIterable(DeviceWatcherEventKind), _r: **DeviceWatcherTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceWatcherEvent = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!DeviceWatcherEventKind {
        var _r: DeviceWatcherEventKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceInformationUpdate(self: *@This()) core.HResult!*DeviceInformationUpdate {
        var _r: *DeviceInformationUpdate = undefined;
        const _c = self.vtable.get_DeviceInformationUpdate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceWatcherEvent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74aa9c0b-1dbd-47fd-b635-3cc556d0ff8b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *DeviceWatcherEventKind) callconv(.winapi) HRESULT,
        get_DeviceInformation: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
        get_DeviceInformationUpdate: *const fn(self: *anyopaque, _r: **DeviceInformationUpdate) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceWatcherTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getDeviceWatcherEvents(self: *@This()) core.HResult!*IVectorView(DeviceWatcherEvent) {
        var _r: *IVectorView(DeviceWatcherEvent) = undefined;
        const _c = self.vtable.get_DeviceWatcherEvents(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IDeviceWatcherTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38808119-4cb7-4e57-a56d-776d07cbfef9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceWatcherEvents: *const fn(self: *anyopaque, _r: **IVectorView(DeviceWatcherEvent)) callconv(.winapi) HRESULT,
    };
};
pub const IEnclosureLocation = extern struct {
    vtable: *const VTable,
    pub fn getInDock(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InDock(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInLid(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InLid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPanel(self: *@This()) core.HResult!Panel {
        var _r: Panel = undefined;
        const _c = self.vtable.get_Panel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IEnclosureLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42340a27-5810-459c-aabb-c65e1f813ecf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InDock: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_InLid: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Panel: *const fn(self: *anyopaque, _r: *Panel) callconv(.winapi) HRESULT,
    };
};
pub const IEnclosureLocation2 = extern struct {
    vtable: *const VTable,
    pub fn getRotationAngleInDegreesClockwise(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_RotationAngleInDegreesClockwise(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Enumeration.IEnclosureLocation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2885995b-e07d-485d-8a9e-bdf29aef4f66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RotationAngleInDegreesClockwise: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const Panel = enum(i32) {
    Unknown = 0,
    Front = 1,
    Back = 2,
    Top = 3,
    Bottom = 4,
    Left = 5,
    Right = 6,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const InputStreamOptions = @import("../Storage/Streams.zig").InputStreamOptions;
const IClosable = @import("../Foundation.zig").IClosable;
const IContentTypeProvider = @import("../Storage/Streams.zig").IContentTypeProvider;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const Placement = @import("../UI/Popups.zig").Placement;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const DeviceWatcherTrigger = @import("../ApplicationModel/Background.zig").DeviceWatcherTrigger;
const Color = @import("../UI.zig").Color;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
pub const Pnp = @import("./Enumeration/Pnp.zig");
