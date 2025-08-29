pub const II2cControllerProvider = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceProvider(self: *@This(), settings: *ProviderI2cConnectionSettings) core.HResult!*II2cDeviceProvider {
        var _r: *II2cDeviceProvider = undefined;
        const _c = self.vtable.GetDeviceProvider(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.Provider.II2cControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61c2bb82-4510-4163-a87c-4e15a9558980";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceProvider: *const fn(self: *anyopaque, settings: *ProviderI2cConnectionSettings, _r: **II2cDeviceProvider) callconv(.winapi) HRESULT,
    };
};
pub const II2cDeviceProvider = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Write(self: *@This(), buffer: [*]u8) core.HResult!void {
        const _c = self.vtable.Write(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WritePartial(self: *@This(), buffer: [*]u8) core.HResult!ProviderI2cTransferResult {
        var _r: ProviderI2cTransferResult = undefined;
        const _c = self.vtable.WritePartial(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Read(self: *@This(), buffer: [*]u8) core.HResult!void {
        const _c = self.vtable.Read(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadPartial(self: *@This(), buffer: [*]u8) core.HResult!ProviderI2cTransferResult {
        var _r: ProviderI2cTransferResult = undefined;
        const _c = self.vtable.ReadPartial(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteRead(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.WriteRead(@ptrCast(self), writeBuffer, readBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteReadPartial(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!ProviderI2cTransferResult {
        var _r: ProviderI2cTransferResult = undefined;
        const _c = self.vtable.WriteReadPartial(@ptrCast(self), writeBuffer, readBuffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.Provider.II2cDeviceProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad342654-57e8-453e-8329-d1e447d103a9";
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
        Write: *const fn(self: *anyopaque, buffer: [*]u8) callconv(.winapi) HRESULT,
        WritePartial: *const fn(self: *anyopaque, buffer: [*]u8, _r: *ProviderI2cTransferResult) callconv(.winapi) HRESULT,
        Read: *const fn(self: *anyopaque, buffer: [*]u8) callconv(.winapi) HRESULT,
        ReadPartial: *const fn(self: *anyopaque, buffer: [*]u8, _r: *ProviderI2cTransferResult) callconv(.winapi) HRESULT,
        WriteRead: *const fn(self: *anyopaque, writeBuffer: [*]u8, readBuffer: [*]u8) callconv(.winapi) HRESULT,
        WriteReadPartial: *const fn(self: *anyopaque, writeBuffer: [*]u8, readBuffer: [*]u8, _r: *ProviderI2cTransferResult) callconv(.winapi) HRESULT,
    };
};
pub const II2cProvider = extern struct {
    vtable: *const VTable,
    pub fn GetControllersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(II2cControllerProvider)) {
        var _r: *IAsyncOperation(IVectorView(II2cControllerProvider)) = undefined;
        const _c = self.vtable.GetControllersAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.Provider.II2cProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f13083e-bf62-4fe2-a95a-f08999669818";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetControllersAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(II2cControllerProvider))) callconv(.winapi) HRESULT,
    };
};
pub const IProviderI2cConnectionSettings = extern struct {
    vtable: *const VTable,
    pub fn getSlaveAddress(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SlaveAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSlaveAddress(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_SlaveAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBusSpeed(self: *@This()) core.HResult!ProviderI2cBusSpeed {
        var _r: ProviderI2cBusSpeed = undefined;
        const _c = self.vtable.get_BusSpeed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBusSpeed(self: *@This(), value: ProviderI2cBusSpeed) core.HResult!void {
        const _c = self.vtable.put_BusSpeed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSharingMode(self: *@This()) core.HResult!ProviderI2cSharingMode {
        var _r: ProviderI2cSharingMode = undefined;
        const _c = self.vtable.get_SharingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSharingMode(self: *@This(), value: ProviderI2cSharingMode) core.HResult!void {
        const _c = self.vtable.put_SharingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.Provider.IProviderI2cConnectionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9db4e34-e510-44b7-809d-f2f85b555339";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SlaveAddress: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_SlaveAddress: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_BusSpeed: *const fn(self: *anyopaque, _r: *ProviderI2cBusSpeed) callconv(.winapi) HRESULT,
        put_BusSpeed: *const fn(self: *anyopaque, value: ProviderI2cBusSpeed) callconv(.winapi) HRESULT,
        get_SharingMode: *const fn(self: *anyopaque, _r: *ProviderI2cSharingMode) callconv(.winapi) HRESULT,
        put_SharingMode: *const fn(self: *anyopaque, value: ProviderI2cSharingMode) callconv(.winapi) HRESULT,
    };
};
pub const ProviderI2cBusSpeed = enum(i32) {
    StandardMode = 0,
    FastMode = 1,
};
pub const ProviderI2cConnectionSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSlaveAddress(self: *@This()) core.HResult!i32 {
        const this: *IProviderI2cConnectionSettings = @ptrCast(self);
        return try this.getSlaveAddress();
    }
    pub fn putSlaveAddress(self: *@This(), value: i32) core.HResult!void {
        const this: *IProviderI2cConnectionSettings = @ptrCast(self);
        return try this.putSlaveAddress(value);
    }
    pub fn getBusSpeed(self: *@This()) core.HResult!ProviderI2cBusSpeed {
        const this: *IProviderI2cConnectionSettings = @ptrCast(self);
        return try this.getBusSpeed();
    }
    pub fn putBusSpeed(self: *@This(), value: ProviderI2cBusSpeed) core.HResult!void {
        const this: *IProviderI2cConnectionSettings = @ptrCast(self);
        return try this.putBusSpeed(value);
    }
    pub fn getSharingMode(self: *@This()) core.HResult!ProviderI2cSharingMode {
        const this: *IProviderI2cConnectionSettings = @ptrCast(self);
        return try this.getSharingMode();
    }
    pub fn putSharingMode(self: *@This(), value: ProviderI2cSharingMode) core.HResult!void {
        const this: *IProviderI2cConnectionSettings = @ptrCast(self);
        return try this.putSharingMode(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.Provider.ProviderI2cConnectionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProviderI2cConnectionSettings.GUID;
    pub const IID: Guid = IProviderI2cConnectionSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProviderI2cConnectionSettings.SIGNATURE);
};
pub const ProviderI2cSharingMode = enum(i32) {
    Exclusive = 0,
    Shared = 1,
};
pub const ProviderI2cTransferResult = extern struct {
    Status: ProviderI2cTransferStatus,
    BytesTransferred: u32,
};
pub const ProviderI2cTransferStatus = enum(i32) {
    FullTransfer = 0,
    PartialTransfer = 1,
    SlaveAddressNotAcknowledged = 2,
};
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
