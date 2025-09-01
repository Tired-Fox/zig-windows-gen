pub const I2cBusSpeed = enum(i32) {
    StandardMode = 0,
    FastMode = 1,
};
pub const I2cConnectionSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSlaveAddress(self: *@This()) core.HResult!i32 {
        const this: *II2cConnectionSettings = @ptrCast(self);
        return try this.getSlaveAddress();
    }
    pub fn putSlaveAddress(self: *@This(), value: i32) core.HResult!void {
        const this: *II2cConnectionSettings = @ptrCast(self);
        return try this.putSlaveAddress(value);
    }
    pub fn getBusSpeed(self: *@This()) core.HResult!I2cBusSpeed {
        const this: *II2cConnectionSettings = @ptrCast(self);
        return try this.getBusSpeed();
    }
    pub fn putBusSpeed(self: *@This(), value: I2cBusSpeed) core.HResult!void {
        const this: *II2cConnectionSettings = @ptrCast(self);
        return try this.putBusSpeed(value);
    }
    pub fn getSharingMode(self: *@This()) core.HResult!I2cSharingMode {
        const this: *II2cConnectionSettings = @ptrCast(self);
        return try this.getSharingMode();
    }
    pub fn putSharingMode(self: *@This(), value: I2cSharingMode) core.HResult!void {
        const this: *II2cConnectionSettings = @ptrCast(self);
        return try this.putSharingMode(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(slaveAddress: i32) core.HResult!*I2cConnectionSettings {
        const _f = @This().II2cConnectionSettingsFactoryCache.get();
        return try _f.Create(slaveAddress);
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.I2cConnectionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = II2cConnectionSettings.GUID;
    pub const IID: Guid = II2cConnectionSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, II2cConnectionSettings.SIGNATURE);
    var _II2cConnectionSettingsFactoryCache: FactoryCache(II2cConnectionSettingsFactory, RUNTIME_NAME) = .{};
};
pub const I2cController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDevice(self: *@This(), settings: *I2cConnectionSettings) core.HResult!*I2cDevice {
        const this: *II2cController = @ptrCast(self);
        return try this.GetDevice(settings);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetControllersAsync(provider: *II2cProvider) core.HResult!*IAsyncOperation(IVectorView(I2cController)) {
        const _f = @This().II2cControllerStaticsCache.get();
        return try _f.GetControllersAsync(provider);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(I2cController) {
        const _f = @This().II2cControllerStaticsCache.get();
        return try _f.GetDefaultAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.I2cController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = II2cController.GUID;
    pub const IID: Guid = II2cController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, II2cController.SIGNATURE);
    var _II2cControllerStaticsCache: FactoryCache(II2cControllerStatics, RUNTIME_NAME) = .{};
};
pub const I2cDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *II2cDevice = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getConnectionSettings(self: *@This()) core.HResult!*I2cConnectionSettings {
        const this: *II2cDevice = @ptrCast(self);
        return try this.getConnectionSettings();
    }
    pub fn Write(self: *@This(), buffer: [*]u8) core.HResult!void {
        const this: *II2cDevice = @ptrCast(self);
        return try this.Write(buffer);
    }
    pub fn WritePartial(self: *@This(), buffer: [*]u8) core.HResult!I2cTransferResult {
        const this: *II2cDevice = @ptrCast(self);
        return try this.WritePartial(buffer);
    }
    pub fn Read(self: *@This(), buffer: [*]u8) core.HResult!void {
        const this: *II2cDevice = @ptrCast(self);
        return try this.Read(buffer);
    }
    pub fn ReadPartial(self: *@This(), buffer: [*]u8) core.HResult!I2cTransferResult {
        const this: *II2cDevice = @ptrCast(self);
        return try this.ReadPartial(buffer);
    }
    pub fn WriteRead(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!void {
        const this: *II2cDevice = @ptrCast(self);
        return try this.WriteRead(writeBuffer, readBuffer);
    }
    pub fn WriteReadPartial(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!I2cTransferResult {
        const this: *II2cDevice = @ptrCast(self);
        return try this.WriteReadPartial(writeBuffer, readBuffer);
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
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().II2cDeviceStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorWithFriendlyName(friendlyName: HSTRING) core.HResult!HSTRING {
        const _f = @This().II2cDeviceStaticsCache.get();
        return try _f.GetDeviceSelectorWithFriendlyName(friendlyName);
    }
    pub fn FromIdAsync(deviceId: HSTRING, settings: *I2cConnectionSettings) core.HResult!*IAsyncOperation(I2cDevice) {
        const _f = @This().II2cDeviceStaticsCache.get();
        return try _f.FromIdAsync(deviceId, settings);
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.I2cDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = II2cDevice.GUID;
    pub const IID: Guid = II2cDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, II2cDevice.SIGNATURE);
    var _II2cDeviceStaticsCache: FactoryCache(II2cDeviceStatics, RUNTIME_NAME) = .{};
};
pub const I2cSharingMode = enum(i32) {
    Exclusive = 0,
    Shared = 1,
};
pub const I2cTransferResult = extern struct {
    Status: I2cTransferStatus,
    BytesTransferred: u32,
};
pub const I2cTransferStatus = enum(i32) {
    FullTransfer = 0,
    PartialTransfer = 1,
    SlaveAddressNotAcknowledged = 2,
    ClockStretchTimeout = 3,
    UnknownError = 4,
};
pub const II2cConnectionSettings = extern struct {
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
    pub fn getBusSpeed(self: *@This()) core.HResult!I2cBusSpeed {
        var _r: I2cBusSpeed = undefined;
        const _c = self.vtable.get_BusSpeed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBusSpeed(self: *@This(), value: I2cBusSpeed) core.HResult!void {
        const _c = self.vtable.put_BusSpeed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSharingMode(self: *@This()) core.HResult!I2cSharingMode {
        var _r: I2cSharingMode = undefined;
        const _c = self.vtable.get_SharingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSharingMode(self: *@This(), value: I2cSharingMode) core.HResult!void {
        const _c = self.vtable.put_SharingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.II2cConnectionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2db1307-ab6f-4639-a767-54536dc3460f";
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
        get_BusSpeed: *const fn(self: *anyopaque, _r: *I2cBusSpeed) callconv(.winapi) HRESULT,
        put_BusSpeed: *const fn(self: *anyopaque, value: I2cBusSpeed) callconv(.winapi) HRESULT,
        get_SharingMode: *const fn(self: *anyopaque, _r: *I2cSharingMode) callconv(.winapi) HRESULT,
        put_SharingMode: *const fn(self: *anyopaque, value: I2cSharingMode) callconv(.winapi) HRESULT,
    };
};
pub const II2cConnectionSettingsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), slaveAddress: i32) core.HResult!*I2cConnectionSettings {
        var _r: *I2cConnectionSettings = undefined;
        const _c = self.vtable.Create(@ptrCast(self), slaveAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.II2cConnectionSettingsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81b586b3-9693-41b1-a243-ded4f6e66926";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, slaveAddress: i32, _r: **I2cConnectionSettings) callconv(.winapi) HRESULT,
    };
};
pub const II2cController = extern struct {
    vtable: *const VTable,
    pub fn GetDevice(self: *@This(), settings: *I2cConnectionSettings) core.HResult!*I2cDevice {
        var _r: *I2cDevice = undefined;
        const _c = self.vtable.GetDevice(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.II2cController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c48ab1b2-87a0-4166-8e3e-b4b8f97cd729";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDevice: *const fn(self: *anyopaque, settings: *I2cConnectionSettings, _r: **I2cDevice) callconv(.winapi) HRESULT,
    };
};
pub const II2cControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetControllersAsync(self: *@This(), provider: *II2cProvider) core.HResult!*IAsyncOperation(IVectorView(I2cController)) {
        var _r: *IAsyncOperation(IVectorView(I2cController)) = undefined;
        const _c = self.vtable.GetControllersAsync(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(I2cController) {
        var _r: *IAsyncOperation(I2cController) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.II2cControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40fc0365-5f05-4e7e-84bd-100db8e0aec5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetControllersAsync: *const fn(self: *anyopaque, provider: *II2cProvider, _r: **IAsyncOperation(IVectorView(I2cController))) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(I2cController)) callconv(.winapi) HRESULT,
    };
};
pub const II2cDevice = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionSettings(self: *@This()) core.HResult!*I2cConnectionSettings {
        var _r: *I2cConnectionSettings = undefined;
        const _c = self.vtable.get_ConnectionSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Write(self: *@This(), buffer: [*]u8) core.HResult!void {
        const _c = self.vtable.Write(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WritePartial(self: *@This(), buffer: [*]u8) core.HResult!I2cTransferResult {
        var _r: I2cTransferResult = undefined;
        const _c = self.vtable.WritePartial(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Read(self: *@This(), buffer: [*]u8) core.HResult!void {
        const _c = self.vtable.Read(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadPartial(self: *@This(), buffer: [*]u8) core.HResult!I2cTransferResult {
        var _r: I2cTransferResult = undefined;
        const _c = self.vtable.ReadPartial(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteRead(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.WriteRead(@ptrCast(self), writeBuffer, readBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WriteReadPartial(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!I2cTransferResult {
        var _r: I2cTransferResult = undefined;
        const _c = self.vtable.WriteReadPartial(@ptrCast(self), writeBuffer, readBuffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.II2cDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8636c136-b9c5-4f70-9449-cc46dc6f57eb";
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
        get_ConnectionSettings: *const fn(self: *anyopaque, _r: **I2cConnectionSettings) callconv(.winapi) HRESULT,
        Write: *const fn(self: *anyopaque, buffer: [*]u8) callconv(.winapi) HRESULT,
        WritePartial: *const fn(self: *anyopaque, buffer: [*]u8, _r: *I2cTransferResult) callconv(.winapi) HRESULT,
        Read: *const fn(self: *anyopaque, buffer: [*]u8) callconv(.winapi) HRESULT,
        ReadPartial: *const fn(self: *anyopaque, buffer: [*]u8, _r: *I2cTransferResult) callconv(.winapi) HRESULT,
        WriteRead: *const fn(self: *anyopaque, writeBuffer: [*]u8, readBuffer: [*]u8) callconv(.winapi) HRESULT,
        WriteReadPartial: *const fn(self: *anyopaque, writeBuffer: [*]u8, readBuffer: [*]u8, _r: *I2cTransferResult) callconv(.winapi) HRESULT,
    };
};
pub const II2cDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorWithFriendlyName(self: *@This(), friendlyName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorWithFriendlyName(@ptrCast(self), friendlyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING, settings: *I2cConnectionSettings) core.HResult!*IAsyncOperation(I2cDevice) {
        var _r: *IAsyncOperation(I2cDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.I2c.II2cDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91a33be3-7334-4512-96bc-fbae9459f5f6";
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
        GetDeviceSelectorWithFriendlyName: *const fn(self: *anyopaque, friendlyName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, settings: *I2cConnectionSettings, _r: **IAsyncOperation(I2cDevice)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const HSTRING = @import("../root.zig").HSTRING;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const II2cProvider = @import("./I2c/Provider.zig").II2cProvider;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
pub const Provider = @import("./I2c/Provider.zig");
