pub const DeviceCommand = enum(i32) {
    Reset = 0,
};
pub const GameControllerBatteryChargingState = enum(i32) {
    Unknown = 0,
    Inactive = 1,
    Active = 2,
    Error = 3,
};
pub const GameControllerBatteryKind = enum(i32) {
    Unknown = 0,
    None = 1,
    Standard = 2,
    Rechargeable = 3,
};
pub const GameControllerBatteryLevel = enum(i32) {
    Unknown = 0,
    Critical = 1,
    Low = 2,
    Medium = 3,
    Full = 4,
};
pub const GameControllerFirmwareCorruptReason = enum(i32) {
    Unknown = 0,
    NotCorrupt = 1,
    TwoUpCorrupt = 2,
    AppCorrupt = 3,
    RadioCorrupt = 4,
    EepromCorrupt = 5,
    SafeToUpdate = 6,
};
pub const GameControllerProviderInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetParentProviderId(provider: *IGameControllerProvider) core.HResult!HSTRING {
        const factory = @This().IGameControllerProviderInfoStaticsCache.get();
        return try factory.GetParentProviderId(provider);
    }
    pub fn GetProviderId(provider: *IGameControllerProvider) core.HResult!HSTRING {
        const factory = @This().IGameControllerProviderInfoStaticsCache.get();
        return try factory.GetProviderId(provider);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Preview.GameControllerProviderInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGameControllerProviderInfoStaticsCache: FactoryCache(IGameControllerProviderInfoStatics, RUNTIME_NAME) = .{};
};
pub const HeadsetGeqGains = extern struct {
    band1Gain: i32,
    band2Gain: i32,
    band3Gain: i32,
    band4Gain: i32,
    band5Gain: i32,
};
pub const HeadsetLevel = enum(i32) {
    Off = 0,
    Low = 1,
    Medium = 2,
    High = 3,
};
pub const HeadsetOperation = enum(i32) {
    Geq = 0,
    BassBoostGain = 1,
    SmartMute = 2,
    SideTone = 3,
    MuteLedBrightness = 4,
    SwapMixAndVolumeDials = 5,
};
pub const IGameControllerProviderInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn GetParentProviderId(self: *@This(), provider: *IGameControllerProvider) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetParentProviderId(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProviderId(self: *@This(), provider: *IGameControllerProvider) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetProviderId(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Preview.IGameControllerProviderInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0be1e6c5-d9bd-44ee-8362-488b2e464bfb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetParentProviderId: *const fn(self: *anyopaque, provider: *IGameControllerProvider, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetProviderId: *const fn(self: *anyopaque, provider: *IGameControllerProvider, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILegacyGipGameControllerProvider = extern struct {
    vtable: *const VTable,
    pub fn getBatteryChargingState(self: *@This()) core.HResult!GameControllerBatteryChargingState {
        var _r: GameControllerBatteryChargingState = undefined;
        const _c = self.vtable.get_BatteryChargingState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBatteryKind(self: *@This()) core.HResult!GameControllerBatteryKind {
        var _r: GameControllerBatteryKind = undefined;
        const _c = self.vtable.get_BatteryKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBatteryLevel(self: *@This()) core.HResult!GameControllerBatteryLevel {
        var _r: GameControllerBatteryLevel = undefined;
        const _c = self.vtable.get_BatteryLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceFirmwareCorruptionState(self: *@This()) core.HResult!GameControllerFirmwareCorruptReason {
        var _r: GameControllerFirmwareCorruptReason = undefined;
        const _c = self.vtable.GetDeviceFirmwareCorruptionState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFirmwareCorrupted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFirmwareCorrupted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsInterfaceSupported(self: *@This(), interfaceId: *Guid) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsInterfaceSupported(@ptrCast(self), interfaceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSyntheticDevice(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSyntheticDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreferredTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_PreferredTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ExecuteCommand(self: *@This(), command: DeviceCommand) core.HResult!void {
        const _c = self.vtable.ExecuteCommand(@ptrCast(self), command);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetHomeLedIntensity(self: *@This(), intensity: u8) core.HResult!void {
        const _c = self.vtable.SetHomeLedIntensity(@ptrCast(self), intensity);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetExtendedDeviceInfo(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GetExtendedDeviceInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetHeadsetOperation(self: *@This(), operation: HeadsetOperation, buffer: [*]u8) core.HResult!void {
        const _c = self.vtable.SetHeadsetOperation(@ptrCast(self), operation, buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetHeadsetOperation(self: *@This(), operation: HeadsetOperation) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GetHeadsetOperation(@ptrCast(self), operation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppCompatVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AppCompatVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStandardControllerButtonRemapping(self: *@This(), user: *User, previous: bool, remapping: *IMapView(RemappingButtonCategory,IInspectable)) core.HResult!void {
        const _c = self.vtable.SetStandardControllerButtonRemapping(@ptrCast(self), user, previous, remapping);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetStandardControllerButtonRemapping(self: *@This(), user: *User, previous: bool) core.HResult!*IMapView(RemappingButtonCategory,IInspectable) {
        var _r: *IMapView(RemappingButtonCategory,IInspectable) = undefined;
        const _c = self.vtable.GetStandardControllerButtonRemapping(@ptrCast(self), user, previous, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Preview.ILegacyGipGameControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2da3ed52-ffd9-43e2-825c-1d2790e04d14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BatteryChargingState: *const fn(self: *anyopaque, _r: *GameControllerBatteryChargingState) callconv(.winapi) HRESULT,
        get_BatteryKind: *const fn(self: *anyopaque, _r: *GameControllerBatteryKind) callconv(.winapi) HRESULT,
        get_BatteryLevel: *const fn(self: *anyopaque, _r: *GameControllerBatteryLevel) callconv(.winapi) HRESULT,
        GetDeviceFirmwareCorruptionState: *const fn(self: *anyopaque, _r: *GameControllerFirmwareCorruptReason) callconv(.winapi) HRESULT,
        get_IsFirmwareCorrupted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsInterfaceSupported: *const fn(self: *anyopaque, interfaceId: *Guid, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSyntheticDevice: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PreferredTypes: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        ExecuteCommand: *const fn(self: *anyopaque, command: DeviceCommand) callconv(.winapi) HRESULT,
        SetHomeLedIntensity: *const fn(self: *anyopaque, intensity: u8) callconv(.winapi) HRESULT,
        GetExtendedDeviceInfo: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        SetHeadsetOperation: *const fn(self: *anyopaque, operation: HeadsetOperation, buffer: [*]u8) callconv(.winapi) HRESULT,
        GetHeadsetOperation: *const fn(self: *anyopaque, operation: HeadsetOperation, _r: *[*]u8) callconv(.winapi) HRESULT,
        get_AppCompatVersion: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SetStandardControllerButtonRemapping: *const fn(self: *anyopaque, user: *User, previous: bool, remapping: *IMapView(RemappingButtonCategory,IInspectable)) callconv(.winapi) HRESULT,
        GetStandardControllerButtonRemapping: *const fn(self: *anyopaque, user: *User, previous: bool, _r: **IMapView(RemappingButtonCategory,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const ILegacyGipGameControllerProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn FromGameController(self: *@This(), controller: *IGameController) core.HResult!*LegacyGipGameControllerProvider {
        var _r: *LegacyGipGameControllerProvider = undefined;
        const _c = self.vtable.FromGameController(@ptrCast(self), controller, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromGameControllerProvider(self: *@This(), provider: *IGameControllerProvider) core.HResult!*LegacyGipGameControllerProvider {
        var _r: *LegacyGipGameControllerProvider = undefined;
        const _c = self.vtable.FromGameControllerProvider(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PairPilotToCopilot(self: *@This(), user: *User, pilotControllerProviderId: HSTRING, copilotControllerProviderId: HSTRING) core.HResult!void {
        const _c = self.vtable.PairPilotToCopilot(@ptrCast(self), user, pilotControllerProviderId, copilotControllerProviderId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearPairing(self: *@This(), user: *User, controllerProviderId: HSTRING) core.HResult!void {
        const _c = self.vtable.ClearPairing(@ptrCast(self), user, controllerProviderId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsPilot(self: *@This(), user: *User, controllerProviderId: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.IsPilot(@ptrCast(self), user, controllerProviderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCopilot(self: *@This(), user: *User, controllerProviderId: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.IsCopilot(@ptrCast(self), user, controllerProviderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Preview.ILegacyGipGameControllerProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d40dda17-b1f4-499a-874c-7095aac15291";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromGameController: *const fn(self: *anyopaque, controller: *IGameController, _r: **LegacyGipGameControllerProvider) callconv(.winapi) HRESULT,
        FromGameControllerProvider: *const fn(self: *anyopaque, provider: *IGameControllerProvider, _r: **LegacyGipGameControllerProvider) callconv(.winapi) HRESULT,
        PairPilotToCopilot: *const fn(self: *anyopaque, user: *User, pilotControllerProviderId: HSTRING, copilotControllerProviderId: HSTRING) callconv(.winapi) HRESULT,
        ClearPairing: *const fn(self: *anyopaque, user: *User, controllerProviderId: HSTRING) callconv(.winapi) HRESULT,
        IsPilot: *const fn(self: *anyopaque, user: *User, controllerProviderId: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        IsCopilot: *const fn(self: *anyopaque, user: *User, controllerProviderId: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const LegacyGipGameControllerProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBatteryChargingState(self: *@This()) core.HResult!GameControllerBatteryChargingState {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.getBatteryChargingState();
    }
    pub fn getBatteryKind(self: *@This()) core.HResult!GameControllerBatteryKind {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.getBatteryKind();
    }
    pub fn getBatteryLevel(self: *@This()) core.HResult!GameControllerBatteryLevel {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.getBatteryLevel();
    }
    pub fn GetDeviceFirmwareCorruptionState(self: *@This()) core.HResult!GameControllerFirmwareCorruptReason {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.GetDeviceFirmwareCorruptionState();
    }
    pub fn getIsFirmwareCorrupted(self: *@This()) core.HResult!bool {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.getIsFirmwareCorrupted();
    }
    pub fn IsInterfaceSupported(self: *@This(), interfaceId: *Guid) core.HResult!bool {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.IsInterfaceSupported(interfaceId);
    }
    pub fn getIsSyntheticDevice(self: *@This()) core.HResult!bool {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.getIsSyntheticDevice();
    }
    pub fn getPreferredTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.getPreferredTypes();
    }
    pub fn ExecuteCommand(self: *@This(), command: DeviceCommand) core.HResult!void {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.ExecuteCommand(command);
    }
    pub fn SetHomeLedIntensity(self: *@This(), intensity: u8) core.HResult!void {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.SetHomeLedIntensity(intensity);
    }
    pub fn GetExtendedDeviceInfo(self: *@This()) core.HResult![*]u8 {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.GetExtendedDeviceInfo();
    }
    pub fn SetHeadsetOperation(self: *@This(), operation: HeadsetOperation, buffer: [*]u8) core.HResult!void {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.SetHeadsetOperation(operation, buffer);
    }
    pub fn GetHeadsetOperation(self: *@This(), operation: HeadsetOperation) core.HResult![*]u8 {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.GetHeadsetOperation(operation);
    }
    pub fn getAppCompatVersion(self: *@This()) core.HResult!u32 {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.getAppCompatVersion();
    }
    pub fn SetStandardControllerButtonRemapping(self: *@This(), user: *User, previous: bool, remapping: *IMapView(RemappingButtonCategory,IInspectable)) core.HResult!void {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.SetStandardControllerButtonRemapping(user, previous, remapping);
    }
    pub fn GetStandardControllerButtonRemapping(self: *@This(), user: *User, previous: bool) core.HResult!*IMapView(RemappingButtonCategory,IInspectable) {
        const this: *ILegacyGipGameControllerProvider = @ptrCast(self);
        return try this.GetStandardControllerButtonRemapping(user, previous);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromGameController(controller: *IGameController) core.HResult!*LegacyGipGameControllerProvider {
        const factory = @This().ILegacyGipGameControllerProviderStaticsCache.get();
        return try factory.FromGameController(controller);
    }
    pub fn FromGameControllerProvider(provider: *IGameControllerProvider) core.HResult!*LegacyGipGameControllerProvider {
        const factory = @This().ILegacyGipGameControllerProviderStaticsCache.get();
        return try factory.FromGameControllerProvider(provider);
    }
    pub fn PairPilotToCopilot(user: *User, pilotControllerProviderId: HSTRING, copilotControllerProviderId: HSTRING) core.HResult!void {
        const factory = @This().ILegacyGipGameControllerProviderStaticsCache.get();
        return try factory.PairPilotToCopilot(user, pilotControllerProviderId, copilotControllerProviderId);
    }
    pub fn ClearPairing(user: *User, controllerProviderId: HSTRING) core.HResult!void {
        const factory = @This().ILegacyGipGameControllerProviderStaticsCache.get();
        return try factory.ClearPairing(user, controllerProviderId);
    }
    pub fn IsPilot(user: *User, controllerProviderId: HSTRING) core.HResult!HSTRING {
        const factory = @This().ILegacyGipGameControllerProviderStaticsCache.get();
        return try factory.IsPilot(user, controllerProviderId);
    }
    pub fn IsCopilot(user: *User, controllerProviderId: HSTRING) core.HResult!HSTRING {
        const factory = @This().ILegacyGipGameControllerProviderStaticsCache.get();
        return try factory.IsCopilot(user, controllerProviderId);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Preview.LegacyGipGameControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILegacyGipGameControllerProvider.GUID;
    pub const IID: Guid = ILegacyGipGameControllerProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILegacyGipGameControllerProvider.SIGNATURE);
    var _ILegacyGipGameControllerProviderStaticsCache: FactoryCache(ILegacyGipGameControllerProviderStatics, RUNTIME_NAME) = .{};
};
pub const RemappingButtonCategory = enum(i32) {
    ButtonSettings = 0,
    AnalogSettings = 1,
    VibrationSettings = 2,
    ShareShortPress = 3,
    ShareShortPressMetaData = 4,
    ShareShortPressMetaDataDisplay = 5,
    ShareLongPress = 6,
    ShareLongPressMetaData = 7,
    ShareLongPressMetaDataDisplay = 8,
    ShareDoublePress = 9,
    ShareDoublePressMetaData = 10,
    ShareDoublePressMetaDataDisplay = 11,
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IGameControllerProvider = @import("./Custom.zig").IGameControllerProvider;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IGameController = @import("../Input.zig").IGameController;
const User = @import("../../System.zig").User;
