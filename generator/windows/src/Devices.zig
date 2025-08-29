pub const ILowLevelDevicesAggregateProvider = extern struct {
    vtable: *const VTable,
    pub fn getAdcControllerProvider(self: *@This()) core.HResult!*IAdcControllerProvider {
        var _r: *IAdcControllerProvider = undefined;
        const _c = self.vtable.get_AdcControllerProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPwmControllerProvider(self: *@This()) core.HResult!*IPwmControllerProvider {
        var _r: *IPwmControllerProvider = undefined;
        const _c = self.vtable.get_PwmControllerProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGpioControllerProvider(self: *@This()) core.HResult!*IGpioControllerProvider {
        var _r: *IGpioControllerProvider = undefined;
        const _c = self.vtable.get_GpioControllerProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getI2cControllerProvider(self: *@This()) core.HResult!*II2cControllerProvider {
        var _r: *II2cControllerProvider = undefined;
        const _c = self.vtable.get_I2cControllerProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpiControllerProvider(self: *@This()) core.HResult!*ISpiControllerProvider {
        var _r: *ISpiControllerProvider = undefined;
        const _c = self.vtable.get_SpiControllerProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.ILowLevelDevicesAggregateProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a73e561c-aac1-4ec7-a852-479f7060d01f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AdcControllerProvider: *const fn(self: *anyopaque, _r: **IAdcControllerProvider) callconv(.winapi) HRESULT,
        get_PwmControllerProvider: *const fn(self: *anyopaque, _r: **IPwmControllerProvider) callconv(.winapi) HRESULT,
        get_GpioControllerProvider: *const fn(self: *anyopaque, _r: **IGpioControllerProvider) callconv(.winapi) HRESULT,
        get_I2cControllerProvider: *const fn(self: *anyopaque, _r: **II2cControllerProvider) callconv(.winapi) HRESULT,
        get_SpiControllerProvider: *const fn(self: *anyopaque, _r: **ISpiControllerProvider) callconv(.winapi) HRESULT,
    };
};
pub const ILowLevelDevicesAggregateProviderFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), adc: *IAdcControllerProvider, pwm: *IPwmControllerProvider, gpio: *IGpioControllerProvider, i2c: *II2cControllerProvider, spi: *ISpiControllerProvider) core.HResult!*LowLevelDevicesAggregateProvider {
        var _r: *LowLevelDevicesAggregateProvider = undefined;
        const _c = self.vtable.Create(@ptrCast(self), adc, pwm, gpio, i2c, spi, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.ILowLevelDevicesAggregateProviderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ac4aaf6-3473-465e-96d5-36281a2c57af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, adc: *IAdcControllerProvider, pwm: *IPwmControllerProvider, gpio: *IGpioControllerProvider, i2c: *II2cControllerProvider, spi: *ISpiControllerProvider, _r: **LowLevelDevicesAggregateProvider) callconv(.winapi) HRESULT,
    };
};
pub const ILowLevelDevicesController = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.ILowLevelDevicesController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ec23dd4-179b-45de-9b39-3ae02527de52";
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
pub const ILowLevelDevicesControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn getDefaultProvider(self: *@This()) core.HResult!*ILowLevelDevicesAggregateProvider {
        var _r: *ILowLevelDevicesAggregateProvider = undefined;
        const _c = self.vtable.get_DefaultProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultProvider(self: *@This(), value: *ILowLevelDevicesAggregateProvider) core.HResult!void {
        const _c = self.vtable.put_DefaultProvider(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.ILowLevelDevicesControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "093e926a-fccb-4394-a697-19de637c2db3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DefaultProvider: *const fn(self: *anyopaque, _r: **ILowLevelDevicesAggregateProvider) callconv(.winapi) HRESULT,
        put_DefaultProvider: *const fn(self: *anyopaque, value: *ILowLevelDevicesAggregateProvider) callconv(.winapi) HRESULT,
    };
};
pub const LowLevelDevicesAggregateProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAdcControllerProvider(self: *@This()) core.HResult!*IAdcControllerProvider {
        const this: *ILowLevelDevicesAggregateProvider = @ptrCast(self);
        return try this.getAdcControllerProvider();
    }
    pub fn getPwmControllerProvider(self: *@This()) core.HResult!*IPwmControllerProvider {
        const this: *ILowLevelDevicesAggregateProvider = @ptrCast(self);
        return try this.getPwmControllerProvider();
    }
    pub fn getGpioControllerProvider(self: *@This()) core.HResult!*IGpioControllerProvider {
        const this: *ILowLevelDevicesAggregateProvider = @ptrCast(self);
        return try this.getGpioControllerProvider();
    }
    pub fn getI2cControllerProvider(self: *@This()) core.HResult!*II2cControllerProvider {
        const this: *ILowLevelDevicesAggregateProvider = @ptrCast(self);
        return try this.getI2cControllerProvider();
    }
    pub fn getSpiControllerProvider(self: *@This()) core.HResult!*ISpiControllerProvider {
        const this: *ILowLevelDevicesAggregateProvider = @ptrCast(self);
        return try this.getSpiControllerProvider();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(adc: *IAdcControllerProvider, pwm: *IPwmControllerProvider, gpio: *IGpioControllerProvider, i2c: *II2cControllerProvider, spi: *ISpiControllerProvider) core.HResult!*LowLevelDevicesAggregateProvider {
        const factory = @This().ILowLevelDevicesAggregateProviderFactoryCache.get();
        return try factory.Create(adc, pwm, gpio, i2c, spi);
    }
    pub const NAME: []const u8 = "Windows.Devices.LowLevelDevicesAggregateProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILowLevelDevicesAggregateProvider.GUID;
    pub const IID: Guid = ILowLevelDevicesAggregateProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILowLevelDevicesAggregateProvider.SIGNATURE);
    var _ILowLevelDevicesAggregateProviderFactoryCache: FactoryCache(ILowLevelDevicesAggregateProviderFactory, RUNTIME_NAME) = .{};
};
pub const LowLevelDevicesController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getDefaultProvider() core.HResult!*ILowLevelDevicesAggregateProvider {
        const factory = @This().ILowLevelDevicesControllerStaticsCache.get();
        return try factory.getDefaultProvider();
    }
    pub fn putDefaultProvider(value: *ILowLevelDevicesAggregateProvider) core.HResult!void {
        const factory = @This().ILowLevelDevicesControllerStaticsCache.get();
        return try factory.putDefaultProvider(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.LowLevelDevicesController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILowLevelDevicesController.GUID;
    pub const IID: Guid = ILowLevelDevicesController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILowLevelDevicesController.SIGNATURE);
    var _ILowLevelDevicesControllerStaticsCache: FactoryCache(ILowLevelDevicesControllerStatics, RUNTIME_NAME) = .{};
};
const IAdcControllerProvider = @import("./Adc/Provider.zig").IAdcControllerProvider;
const HSTRING = @import("./root.zig").HSTRING;
const IUnknown = @import("./root.zig").IUnknown;
const Guid = @import("./root.zig").Guid;
const HRESULT = @import("./root.zig").HRESULT;
const core = @import("./root.zig").core;
const FactoryCache = @import("./core.zig").FactoryCache;
const IInspectable = @import("./Foundation.zig").IInspectable;
const IPwmControllerProvider = @import("./Pwm/Provider.zig").IPwmControllerProvider;
const TrustLevel = @import("./root.zig").TrustLevel;
const IGpioControllerProvider = @import("./Gpio/Provider.zig").IGpioControllerProvider;
const II2cControllerProvider = @import("./I2c/Provider.zig").II2cControllerProvider;
const ISpiControllerProvider = @import("./Spi/Provider.zig").ISpiControllerProvider;
pub const Adc = @import("./Devices/Adc.zig");
pub const Background = @import("./Devices/Background.zig");
pub const Bluetooth = @import("./Devices/Bluetooth.zig");
pub const Custom = @import("./Devices/Custom.zig");
pub const Display = @import("./Devices/Display.zig");
pub const Enumeration = @import("./Devices/Enumeration.zig");
pub const Geolocation = @import("./Devices/Geolocation.zig");
pub const Gpio = @import("./Devices/Gpio.zig");
pub const Haptics = @import("./Devices/Haptics.zig");
pub const HumanInterfaceDevice = @import("./Devices/HumanInterfaceDevice.zig");
pub const I2c = @import("./Devices/I2c.zig");
pub const Input = @import("./Devices/Input.zig");
pub const Lights = @import("./Devices/Lights.zig");
pub const Midi = @import("./Devices/Midi.zig");
pub const Perception = @import("./Devices/Perception.zig");
pub const PointOfService = @import("./Devices/PointOfService.zig");
pub const Portable = @import("./Devices/Portable.zig");
pub const Power = @import("./Devices/Power.zig");
pub const Printers = @import("./Devices/Printers.zig");
pub const Pwm = @import("./Devices/Pwm.zig");
pub const Radios = @import("./Devices/Radios.zig");
pub const Scanners = @import("./Devices/Scanners.zig");
pub const Sensors = @import("./Devices/Sensors.zig");
pub const SerialCommunication = @import("./Devices/SerialCommunication.zig");
pub const SmartCards = @import("./Devices/SmartCards.zig");
pub const Sms = @import("./Devices/Sms.zig");
pub const Spi = @import("./Devices/Spi.zig");
pub const Usb = @import("./Devices/Usb.zig");
pub const WiFi = @import("./Devices/WiFi.zig");
pub const WiFiDirect = @import("./Devices/WiFiDirect.zig");
