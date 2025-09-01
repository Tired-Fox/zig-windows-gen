pub const GameControllerFactoryManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RegisterCustomFactoryForGipInterface(factory: *ICustomGameControllerFactory, interfaceId: *Guid) core.HResult!void {
        const _f = @This().IGameControllerFactoryManagerStaticsCache.get();
        return try _f.RegisterCustomFactoryForGipInterface(factory, interfaceId);
    }
    pub fn RegisterCustomFactoryForHardwareId(factory: *ICustomGameControllerFactory, hardwareVendorId: u16, hardwareProductId: u16) core.HResult!void {
        const _f = @This().IGameControllerFactoryManagerStaticsCache.get();
        return try _f.RegisterCustomFactoryForHardwareId(factory, hardwareVendorId, hardwareProductId);
    }
    pub fn RegisterCustomFactoryForXusbType(factory: *ICustomGameControllerFactory, xusbType: XusbDeviceType, xusbSubtype: XusbDeviceSubtype) core.HResult!void {
        const _f = @This().IGameControllerFactoryManagerStaticsCache.get();
        return try _f.RegisterCustomFactoryForXusbType(factory, xusbType, xusbSubtype);
    }
    pub fn TryGetFactoryControllerFromGameController(factory: *ICustomGameControllerFactory, gameController: *IGameController) core.HResult!*IGameController {
        const _f = @This().IGameControllerFactoryManagerStatics2Cache.get();
        return try _f.TryGetFactoryControllerFromGameController(factory, gameController);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.GameControllerFactoryManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGameControllerFactoryManagerStaticsCache: FactoryCache(IGameControllerFactoryManagerStatics, RUNTIME_NAME) = .{};
    var _IGameControllerFactoryManagerStatics2Cache: FactoryCache(IGameControllerFactoryManagerStatics2, RUNTIME_NAME) = .{};
};
pub const GameControllerVersionInfo = extern struct {
    Major: u16,
    Minor: u16,
    Build: u16,
    Revision: u16,
};
pub const GipFirmwareUpdateProgress = extern struct {
    PercentCompleted: f64,
    CurrentComponentId: u32,
};
pub const GipFirmwareUpdateResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!u32 {
        const this: *IGipFirmwareUpdateResult = @ptrCast(self);
        return try this.getExtendedErrorCode();
    }
    pub fn getFinalComponentId(self: *@This()) core.HResult!u32 {
        const this: *IGipFirmwareUpdateResult = @ptrCast(self);
        return try this.getFinalComponentId();
    }
    pub fn getStatus(self: *@This()) core.HResult!GipFirmwareUpdateStatus {
        const this: *IGipFirmwareUpdateResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.GipFirmwareUpdateResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGipFirmwareUpdateResult.GUID;
    pub const IID: Guid = IGipFirmwareUpdateResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGipFirmwareUpdateResult.SIGNATURE);
};
pub const GipFirmwareUpdateStatus = enum(i32) {
    Completed = 0,
    UpToDate = 1,
    Failed = 2,
};
pub const GipGameControllerProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SendMessage(self: *@This(), messageClass: GipMessageClass, messageId: u8, messageBuffer: [*]u8) core.HResult!void {
        const this: *IGipGameControllerProvider = @ptrCast(self);
        return try this.SendMessage(messageClass, messageId, messageBuffer);
    }
    pub fn SendReceiveMessage(self: *@This(), messageClass: GipMessageClass, messageId: u8, requestMessageBuffer: [*]u8, responseMessageBuffer: [*]u8) core.HResult!void {
        const this: *IGipGameControllerProvider = @ptrCast(self);
        return try this.SendReceiveMessage(messageClass, messageId, requestMessageBuffer, responseMessageBuffer);
    }
    pub fn UpdateFirmwareAsync(self: *@This(), firmwareImage: *IInputStream) core.HResult!*IAsyncOperationWithProgress(GipFirmwareUpdateResult,GipFirmwareUpdateProgress) {
        const this: *IGipGameControllerProvider = @ptrCast(self);
        return try this.UpdateFirmwareAsync(firmwareImage);
    }
    pub fn getFirmwareVersionInfo(self: *@This()) core.HResult!GameControllerVersionInfo {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirmwareVersionInfo();
    }
    pub fn getHardwareProductId(self: *@This()) core.HResult!u16 {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHardwareProductId();
    }
    pub fn getHardwareVendorId(self: *@This()) core.HResult!u16 {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHardwareVendorId();
    }
    pub fn getHardwareVersionInfo(self: *@This()) core.HResult!GameControllerVersionInfo {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHardwareVersionInfo();
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsConnected();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.GipGameControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGipGameControllerProvider.GUID;
    pub const IID: Guid = IGipGameControllerProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGipGameControllerProvider.SIGNATURE);
};
pub const GipMessageClass = enum(i32) {
    Command = 0,
    LowLatency = 1,
    StandardLatency = 2,
};
pub const HidGameControllerProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        const this: *IHidGameControllerProvider = @ptrCast(self);
        return try this.getUsageId();
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        const this: *IHidGameControllerProvider = @ptrCast(self);
        return try this.getUsagePage();
    }
    pub fn GetFeatureReport(self: *@This(), reportId: u8, reportBuffer: [*]u8) core.HResult!void {
        const this: *IHidGameControllerProvider = @ptrCast(self);
        return try this.GetFeatureReport(reportId, reportBuffer);
    }
    pub fn SendFeatureReport(self: *@This(), reportId: u8, reportBuffer: [*]u8) core.HResult!void {
        const this: *IHidGameControllerProvider = @ptrCast(self);
        return try this.SendFeatureReport(reportId, reportBuffer);
    }
    pub fn SendOutputReport(self: *@This(), reportId: u8, reportBuffer: [*]u8) core.HResult!void {
        const this: *IHidGameControllerProvider = @ptrCast(self);
        return try this.SendOutputReport(reportId, reportBuffer);
    }
    pub fn getFirmwareVersionInfo(self: *@This()) core.HResult!GameControllerVersionInfo {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirmwareVersionInfo();
    }
    pub fn getHardwareProductId(self: *@This()) core.HResult!u16 {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHardwareProductId();
    }
    pub fn getHardwareVendorId(self: *@This()) core.HResult!u16 {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHardwareVendorId();
    }
    pub fn getHardwareVersionInfo(self: *@This()) core.HResult!GameControllerVersionInfo {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHardwareVersionInfo();
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsConnected();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.HidGameControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidGameControllerProvider.GUID;
    pub const IID: Guid = IHidGameControllerProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidGameControllerProvider.SIGNATURE);
};
pub const ICustomGameControllerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateGameController(self: *@This(), provider: *IGameControllerProvider) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateGameController(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OnGameControllerAdded(self: *@This(), value: *IGameController) core.HResult!void {
        const _c = self.vtable.OnGameControllerAdded(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnGameControllerRemoved(self: *@This(), value: *IGameController) core.HResult!void {
        const _c = self.vtable.OnGameControllerRemoved(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.ICustomGameControllerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69a0ae5e-758e-4cbe-ace6-62155fe9126f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateGameController: *const fn(self: *anyopaque, provider: *IGameControllerProvider, _r: **IInspectable) callconv(.winapi) HRESULT,
        OnGameControllerAdded: *const fn(self: *anyopaque, value: *IGameController) callconv(.winapi) HRESULT,
        OnGameControllerRemoved: *const fn(self: *anyopaque, value: *IGameController) callconv(.winapi) HRESULT,
    };
};
pub const IGameControllerFactoryManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn RegisterCustomFactoryForGipInterface(self: *@This(), factory: *ICustomGameControllerFactory, interfaceId: *Guid) core.HResult!void {
        const _c = self.vtable.RegisterCustomFactoryForGipInterface(@ptrCast(self), factory, interfaceId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterCustomFactoryForHardwareId(self: *@This(), factory: *ICustomGameControllerFactory, hardwareVendorId: u16, hardwareProductId: u16) core.HResult!void {
        const _c = self.vtable.RegisterCustomFactoryForHardwareId(@ptrCast(self), factory, hardwareVendorId, hardwareProductId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterCustomFactoryForXusbType(self: *@This(), factory: *ICustomGameControllerFactory, xusbType: XusbDeviceType, xusbSubtype: XusbDeviceSubtype) core.HResult!void {
        const _c = self.vtable.RegisterCustomFactoryForXusbType(@ptrCast(self), factory, xusbType, xusbSubtype);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IGameControllerFactoryManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36cb66e3-d0a1-4986-a24c-40b137deba9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterCustomFactoryForGipInterface: *const fn(self: *anyopaque, factory: *ICustomGameControllerFactory, interfaceId: *Guid) callconv(.winapi) HRESULT,
        RegisterCustomFactoryForHardwareId: *const fn(self: *anyopaque, factory: *ICustomGameControllerFactory, hardwareVendorId: u16, hardwareProductId: u16) callconv(.winapi) HRESULT,
        RegisterCustomFactoryForXusbType: *const fn(self: *anyopaque, factory: *ICustomGameControllerFactory, xusbType: XusbDeviceType, xusbSubtype: XusbDeviceSubtype) callconv(.winapi) HRESULT,
    };
};
pub const IGameControllerFactoryManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TryGetFactoryControllerFromGameController(self: *@This(), factory: *ICustomGameControllerFactory, gameController: *IGameController) core.HResult!*IGameController {
        var _r: *IGameController = undefined;
        const _c = self.vtable.TryGetFactoryControllerFromGameController(@ptrCast(self), factory, gameController, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IGameControllerFactoryManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eace5644-19df-4115-b32a-2793e2aea3bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetFactoryControllerFromGameController: *const fn(self: *anyopaque, factory: *ICustomGameControllerFactory, gameController: *IGameController, _r: **IGameController) callconv(.winapi) HRESULT,
    };
};
pub const IGameControllerInputSink = extern struct {
    vtable: *const VTable,
    pub fn OnInputResumed(self: *@This(), timestamp: u64) core.HResult!void {
        const _c = self.vtable.OnInputResumed(@ptrCast(self), timestamp);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnInputSuspended(self: *@This(), timestamp: u64) core.HResult!void {
        const _c = self.vtable.OnInputSuspended(@ptrCast(self), timestamp);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IGameControllerInputSink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ff6f922-c640-4c78-a820-9a715c558bcb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnInputResumed: *const fn(self: *anyopaque, timestamp: u64) callconv(.winapi) HRESULT,
        OnInputSuspended: *const fn(self: *anyopaque, timestamp: u64) callconv(.winapi) HRESULT,
    };
};
pub const IGameControllerProvider = extern struct {
    vtable: *const VTable,
    pub fn getFirmwareVersionInfo(self: *@This()) core.HResult!GameControllerVersionInfo {
        var _r: GameControllerVersionInfo = undefined;
        const _c = self.vtable.get_FirmwareVersionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareProductId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HardwareProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareVendorId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HardwareVendorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareVersionInfo(self: *@This()) core.HResult!GameControllerVersionInfo {
        var _r: GameControllerVersionInfo = undefined;
        const _c = self.vtable.get_HardwareVersionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConnected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IGameControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6d73982-2996-4559-b16c-3e57d46e58d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FirmwareVersionInfo: *const fn(self: *anyopaque, _r: *GameControllerVersionInfo) callconv(.winapi) HRESULT,
        get_HardwareProductId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_HardwareVendorId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_HardwareVersionInfo: *const fn(self: *anyopaque, _r: *GameControllerVersionInfo) callconv(.winapi) HRESULT,
        get_IsConnected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGipFirmwareUpdateResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFinalComponentId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_FinalComponentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!GipFirmwareUpdateStatus {
        var _r: GipFirmwareUpdateStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IGipFirmwareUpdateResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b794d32-8553-4292-8e03-e16651a2f8bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_FinalComponentId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GipFirmwareUpdateStatus) callconv(.winapi) HRESULT,
    };
};
pub const IGipGameControllerInputSink = extern struct {
    vtable: *const VTable,
    pub fn OnKeyReceived(self: *@This(), timestamp: u64, keyCode: u8, isPressed: bool) core.HResult!void {
        const _c = self.vtable.OnKeyReceived(@ptrCast(self), timestamp, keyCode, isPressed);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnMessageReceived(self: *@This(), timestamp: u64, messageClass: GipMessageClass, messageId: u8, sequenceId: u8, messageBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.OnMessageReceived(@ptrCast(self), timestamp, messageClass, messageId, sequenceId, messageBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IGipGameControllerInputSink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2108abf-09f1-43bc-a140-80f899ec36fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnKeyReceived: *const fn(self: *anyopaque, timestamp: u64, keyCode: u8, isPressed: bool) callconv(.winapi) HRESULT,
        OnMessageReceived: *const fn(self: *anyopaque, timestamp: u64, messageClass: GipMessageClass, messageId: u8, sequenceId: u8, messageBuffer: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IGipGameControllerProvider = extern struct {
    vtable: *const VTable,
    pub fn SendMessage(self: *@This(), messageClass: GipMessageClass, messageId: u8, messageBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.SendMessage(@ptrCast(self), messageClass, messageId, messageBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendReceiveMessage(self: *@This(), messageClass: GipMessageClass, messageId: u8, requestMessageBuffer: [*]u8, responseMessageBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.SendReceiveMessage(@ptrCast(self), messageClass, messageId, requestMessageBuffer, responseMessageBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateFirmwareAsync(self: *@This(), firmwareImage: *IInputStream) core.HResult!*IAsyncOperationWithProgress(GipFirmwareUpdateResult,GipFirmwareUpdateProgress) {
        var _r: *IAsyncOperationWithProgress(GipFirmwareUpdateResult,GipFirmwareUpdateProgress) = undefined;
        const _c = self.vtable.UpdateFirmwareAsync(@ptrCast(self), firmwareImage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IGipGameControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbcf1e19-1af5-45a8-bf02-a0ee50c823fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendMessage: *const fn(self: *anyopaque, messageClass: GipMessageClass, messageId: u8, messageBuffer: [*]u8) callconv(.winapi) HRESULT,
        SendReceiveMessage: *const fn(self: *anyopaque, messageClass: GipMessageClass, messageId: u8, requestMessageBuffer: [*]u8, responseMessageBuffer: [*]u8) callconv(.winapi) HRESULT,
        UpdateFirmwareAsync: *const fn(self: *anyopaque, firmwareImage: *IInputStream, _r: **IAsyncOperationWithProgress(GipFirmwareUpdateResult,GipFirmwareUpdateProgress)) callconv(.winapi) HRESULT,
    };
};
pub const IHidGameControllerInputSink = extern struct {
    vtable: *const VTable,
    pub fn OnInputReportReceived(self: *@This(), timestamp: u64, reportId: u8, reportBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.OnInputReportReceived(@ptrCast(self), timestamp, reportId, reportBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IHidGameControllerInputSink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f754c322-182d-40e4-a126-fcee4ffa1e31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnInputReportReceived: *const fn(self: *anyopaque, timestamp: u64, reportId: u8, reportBuffer: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IHidGameControllerProvider = extern struct {
    vtable: *const VTable,
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsagePage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFeatureReport(self: *@This(), reportId: u8, reportBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.GetFeatureReport(@ptrCast(self), reportId, reportBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendFeatureReport(self: *@This(), reportId: u8, reportBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.SendFeatureReport(@ptrCast(self), reportId, reportBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendOutputReport(self: *@This(), reportId: u8, reportBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.SendOutputReport(@ptrCast(self), reportId, reportBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IHidGameControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95ce3af4-abf0-4b68-a081-3b7de73ff0e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UsageId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_UsagePage: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        GetFeatureReport: *const fn(self: *anyopaque, reportId: u8, reportBuffer: [*]u8) callconv(.winapi) HRESULT,
        SendFeatureReport: *const fn(self: *anyopaque, reportId: u8, reportBuffer: [*]u8) callconv(.winapi) HRESULT,
        SendOutputReport: *const fn(self: *anyopaque, reportId: u8, reportBuffer: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IXusbGameControllerInputSink = extern struct {
    vtable: *const VTable,
    pub fn OnInputReceived(self: *@This(), timestamp: u64, reportId: u8, inputBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.OnInputReceived(@ptrCast(self), timestamp, reportId, inputBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IXusbGameControllerInputSink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2ac1d95-6ecb-42b3-8aab-025401ca4712";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnInputReceived: *const fn(self: *anyopaque, timestamp: u64, reportId: u8, inputBuffer: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IXusbGameControllerProvider = extern struct {
    vtable: *const VTable,
    pub fn SetVibration(self: *@This(), lowFrequencyMotorSpeed: f64, highFrequencyMotorSpeed: f64) core.HResult!void {
        const _c = self.vtable.SetVibration(@ptrCast(self), lowFrequencyMotorSpeed, highFrequencyMotorSpeed);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.IXusbGameControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e2971eb-0efb-48b4-808b-837643b2f216";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetVibration: *const fn(self: *anyopaque, lowFrequencyMotorSpeed: f64, highFrequencyMotorSpeed: f64) callconv(.winapi) HRESULT,
    };
};
pub const XusbDeviceSubtype = enum(i32) {
    Unknown = 0,
    Gamepad = 1,
    ArcadePad = 2,
    ArcadeStick = 3,
    FlightStick = 4,
    Wheel = 5,
    Guitar = 6,
    GuitarAlternate = 7,
    GuitarBass = 8,
    DrumKit = 9,
    DancePad = 10,
};
pub const XusbDeviceType = enum(i32) {
    Unknown = 0,
    Gamepad = 1,
};
pub const XusbGameControllerProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetVibration(self: *@This(), lowFrequencyMotorSpeed: f64, highFrequencyMotorSpeed: f64) core.HResult!void {
        const this: *IXusbGameControllerProvider = @ptrCast(self);
        return try this.SetVibration(lowFrequencyMotorSpeed, highFrequencyMotorSpeed);
    }
    pub fn getFirmwareVersionInfo(self: *@This()) core.HResult!GameControllerVersionInfo {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirmwareVersionInfo();
    }
    pub fn getHardwareProductId(self: *@This()) core.HResult!u16 {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHardwareProductId();
    }
    pub fn getHardwareVendorId(self: *@This()) core.HResult!u16 {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHardwareVendorId();
    }
    pub fn getHardwareVersionInfo(self: *@This()) core.HResult!GameControllerVersionInfo {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHardwareVersionInfo();
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        var this: ?*IGameControllerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameControllerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsConnected();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Input.Custom.XusbGameControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXusbGameControllerProvider.GUID;
    pub const IID: Guid = IXusbGameControllerProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXusbGameControllerProvider.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IInputStream = @import("../../Storage/Streams.zig").IInputStream;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const IAsyncOperationWithProgress = @import("../../Foundation.zig").IAsyncOperationWithProgress;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IGameController = @import("../Input.zig").IGameController;
const HSTRING = @import("../../root.zig").HSTRING;
