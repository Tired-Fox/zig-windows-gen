pub const IProviderSpiConnectionSettings = extern struct {
    vtable: *const VTable,
    pub fn getChipSelectLine(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ChipSelectLine(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChipSelectLine(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ChipSelectLine(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMode(self: *@This()) core.HResult!ProviderSpiMode {
        var _r: ProviderSpiMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: ProviderSpiMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDataBitLength(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DataBitLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataBitLength(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_DataBitLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClockFrequency(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ClockFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClockFrequency(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ClockFrequency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSharingMode(self: *@This()) core.HResult!ProviderSpiSharingMode {
        var _r: ProviderSpiSharingMode = undefined;
        const _c = self.vtable.get_SharingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSharingMode(self: *@This(), value: ProviderSpiSharingMode) core.HResult!void {
        const _c = self.vtable.put_SharingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6034550-a542-4ec0-9601-a4dd68f8697b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChipSelectLine: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ChipSelectLine: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *ProviderSpiMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: ProviderSpiMode) callconv(.winapi) HRESULT,
        get_DataBitLength: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_DataBitLength: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ClockFrequency: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ClockFrequency: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_SharingMode: *const fn(self: *anyopaque, _r: *ProviderSpiSharingMode) callconv(.winapi) HRESULT,
        put_SharingMode: *const fn(self: *anyopaque, value: ProviderSpiSharingMode) callconv(.winapi) HRESULT,
    };
};
pub const IProviderSpiConnectionSettingsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), chipSelectLine: i32) core.HResult!*ProviderSpiConnectionSettings {
        var _r: *ProviderSpiConnectionSettings = undefined;
        const _c = self.vtable.Create(@ptrCast(self), chipSelectLine, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.Provider.IProviderSpiConnectionSettingsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66456b5a-0c79-43e3-9f3c-e59780ac18fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, chipSelectLine: i32, _r: **ProviderSpiConnectionSettings) callconv(.winapi) HRESULT,
    };
};
pub const ISpiControllerProvider = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceProvider(self: *@This(), settings: *ProviderSpiConnectionSettings) core.HResult!*ISpiDeviceProvider {
        var _r: *ISpiDeviceProvider = undefined;
        const _c = self.vtable.GetDeviceProvider(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.Provider.ISpiControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1686504-02ce-4226-a385-4f11fb04b41b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceProvider: *const fn(self: *anyopaque, settings: *ProviderSpiConnectionSettings, _r: **ISpiDeviceProvider) callconv(.winapi) HRESULT,
    };
};
pub const ISpiDeviceProvider = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionSettings(self: *@This()) core.HResult!*ProviderSpiConnectionSettings {
        var _r: *ProviderSpiConnectionSettings = undefined;
        const _c = self.vtable.get_ConnectionSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Write(self: *@This(), buffer: [*]u8) core.HResult!void {
        const _c = self.vtable.Write(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Read(self: *@This(), buffer: [*]u8) core.HResult!void {
        const _c = self.vtable.Read(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferSequential(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.TransferSequential(@ptrCast(self), writeBuffer, readBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferFullDuplex(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!void {
        const _c = self.vtable.TransferFullDuplex(@ptrCast(self), writeBuffer, readBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.Provider.ISpiDeviceProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d1c3443-304b-405c-b4f7-f5ab1074461e";
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
        get_ConnectionSettings: *const fn(self: *anyopaque, _r: **ProviderSpiConnectionSettings) callconv(.winapi) HRESULT,
        Write: *const fn(self: *anyopaque, buffer: [*]u8) callconv(.winapi) HRESULT,
        Read: *const fn(self: *anyopaque, buffer: [*]u8) callconv(.winapi) HRESULT,
        TransferSequential: *const fn(self: *anyopaque, writeBuffer: [*]u8, readBuffer: [*]u8) callconv(.winapi) HRESULT,
        TransferFullDuplex: *const fn(self: *anyopaque, writeBuffer: [*]u8, readBuffer: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const ISpiProvider = extern struct {
    vtable: *const VTable,
    pub fn GetControllersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ISpiControllerProvider)) {
        var _r: *IAsyncOperation(IVectorView(ISpiControllerProvider)) = undefined;
        const _c = self.vtable.GetControllersAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.Provider.ISpiProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96b461e2-77d4-48ce-aaa0-75715a8362cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetControllersAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ISpiControllerProvider))) callconv(.winapi) HRESULT,
    };
};
pub const ProviderSpiConnectionSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChipSelectLine(self: *@This()) core.HResult!i32 {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.getChipSelectLine();
    }
    pub fn putChipSelectLine(self: *@This(), value: i32) core.HResult!void {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.putChipSelectLine(value);
    }
    pub fn getMode(self: *@This()) core.HResult!ProviderSpiMode {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: ProviderSpiMode) core.HResult!void {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn getDataBitLength(self: *@This()) core.HResult!i32 {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.getDataBitLength();
    }
    pub fn putDataBitLength(self: *@This(), value: i32) core.HResult!void {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.putDataBitLength(value);
    }
    pub fn getClockFrequency(self: *@This()) core.HResult!i32 {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.getClockFrequency();
    }
    pub fn putClockFrequency(self: *@This(), value: i32) core.HResult!void {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.putClockFrequency(value);
    }
    pub fn getSharingMode(self: *@This()) core.HResult!ProviderSpiSharingMode {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.getSharingMode();
    }
    pub fn putSharingMode(self: *@This(), value: ProviderSpiSharingMode) core.HResult!void {
        const this: *IProviderSpiConnectionSettings = @ptrCast(self);
        return try this.putSharingMode(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(chipSelectLine: i32) core.HResult!*ProviderSpiConnectionSettings {
        const factory = @This().IProviderSpiConnectionSettingsFactoryCache.get();
        return try factory.Create(chipSelectLine);
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProviderSpiConnectionSettings.GUID;
    pub const IID: Guid = IProviderSpiConnectionSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProviderSpiConnectionSettings.SIGNATURE);
    var _IProviderSpiConnectionSettingsFactoryCache: FactoryCache(IProviderSpiConnectionSettingsFactory, RUNTIME_NAME) = .{};
};
pub const ProviderSpiMode = enum(i32) {
    Mode0 = 0,
    Mode1 = 1,
    Mode2 = 2,
    Mode3 = 3,
};
pub const ProviderSpiSharingMode = enum(i32) {
    Exclusive = 0,
    Shared = 1,
};
const HSTRING = @import("../../root.zig").HSTRING;
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
