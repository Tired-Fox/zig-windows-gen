pub const ISpiBusInfo = extern struct {
    vtable: *const VTable,
    pub fn getChipSelectLineCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ChipSelectLineCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinClockFrequency(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MinClockFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxClockFrequency(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxClockFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedDataBitLengths(self: *@This()) core.HResult!*IVectorView(i32) {
        var _r: *IVectorView(i32) = undefined;
        const _c = self.vtable.get_SupportedDataBitLengths(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.ISpiBusInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9929444a-54f2-48c6-b952-9c32fc02c669";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChipSelectLineCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MinClockFrequency: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxClockFrequency: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_SupportedDataBitLengths: *const fn(self: *anyopaque, _r: **IVectorView(i32)) callconv(.winapi) HRESULT,
    };
};
pub const ISpiConnectionSettings = extern struct {
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
    pub fn getMode(self: *@This()) core.HResult!SpiMode {
        var _r: SpiMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: SpiMode) core.HResult!void {
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
    pub fn getSharingMode(self: *@This()) core.HResult!SpiSharingMode {
        var _r: SpiSharingMode = undefined;
        const _c = self.vtable.get_SharingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSharingMode(self: *@This(), value: SpiSharingMode) core.HResult!void {
        const _c = self.vtable.put_SharingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.ISpiConnectionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5283a37f-f935-4b9f-a7a7-3a7890afa5ce";
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
        get_Mode: *const fn(self: *anyopaque, _r: *SpiMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: SpiMode) callconv(.winapi) HRESULT,
        get_DataBitLength: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_DataBitLength: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ClockFrequency: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ClockFrequency: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_SharingMode: *const fn(self: *anyopaque, _r: *SpiSharingMode) callconv(.winapi) HRESULT,
        put_SharingMode: *const fn(self: *anyopaque, value: SpiSharingMode) callconv(.winapi) HRESULT,
    };
};
pub const ISpiConnectionSettingsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), chipSelectLine: i32) core.HResult!*SpiConnectionSettings {
        var _r: *SpiConnectionSettings = undefined;
        const _c = self.vtable.Create(@ptrCast(self), chipSelectLine, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.ISpiConnectionSettingsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff99081e-10c4-44b7-9fea-a748b5a46f31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, chipSelectLine: i32, _r: **SpiConnectionSettings) callconv(.winapi) HRESULT,
    };
};
pub const ISpiController = extern struct {
    vtable: *const VTable,
    pub fn GetDevice(self: *@This(), settings: *SpiConnectionSettings) core.HResult!*SpiDevice {
        var _r: *SpiDevice = undefined;
        const _c = self.vtable.GetDevice(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.ISpiController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8d3c829-9895-4159-a934-8741f1ee6d27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDevice: *const fn(self: *anyopaque, settings: *SpiConnectionSettings, _r: **SpiDevice) callconv(.winapi) HRESULT,
    };
};
pub const ISpiControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(SpiController) {
        var _r: *IAsyncOperation(SpiController) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetControllersAsync(self: *@This(), provider: *ISpiProvider) core.HResult!*IAsyncOperation(IVectorView(SpiController)) {
        var _r: *IAsyncOperation(IVectorView(SpiController)) = undefined;
        const _c = self.vtable.GetControllersAsync(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.ISpiControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d5229e2-138b-4e48-b964-4f2f79b9c5a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SpiController)) callconv(.winapi) HRESULT,
        GetControllersAsync: *const fn(self: *anyopaque, provider: *ISpiProvider, _r: **IAsyncOperation(IVectorView(SpiController))) callconv(.winapi) HRESULT,
    };
};
pub const ISpiDevice = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionSettings(self: *@This()) core.HResult!*SpiConnectionSettings {
        var _r: *SpiConnectionSettings = undefined;
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
    pub const NAME: []const u8 = "Windows.Devices.Spi.ISpiDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05d5356d-11b6-4d39-84d5-95dfb4c9f2ce";
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
        get_ConnectionSettings: *const fn(self: *anyopaque, _r: **SpiConnectionSettings) callconv(.winapi) HRESULT,
        Write: *const fn(self: *anyopaque, buffer: [*]u8) callconv(.winapi) HRESULT,
        Read: *const fn(self: *anyopaque, buffer: [*]u8) callconv(.winapi) HRESULT,
        TransferSequential: *const fn(self: *anyopaque, writeBuffer: [*]u8, readBuffer: [*]u8) callconv(.winapi) HRESULT,
        TransferFullDuplex: *const fn(self: *anyopaque, writeBuffer: [*]u8, readBuffer: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const ISpiDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This(), friendlyName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), friendlyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBusInfo(self: *@This(), busId: HSTRING) core.HResult!*SpiBusInfo {
        var _r: *SpiBusInfo = undefined;
        const _c = self.vtable.GetBusInfo(@ptrCast(self), busId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), busId: HSTRING, settings: *SpiConnectionSettings) core.HResult!*IAsyncOperation(SpiDevice) {
        var _r: *IAsyncOperation(SpiDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), busId, settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.ISpiDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a278e559-5720-4d3f-bd93-56f5ff5a5879";
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
        GetDeviceSelector: *const fn(self: *anyopaque, friendlyName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetBusInfo: *const fn(self: *anyopaque, busId: HSTRING, _r: **SpiBusInfo) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, busId: HSTRING, settings: *SpiConnectionSettings, _r: **IAsyncOperation(SpiDevice)) callconv(.winapi) HRESULT,
    };
};
pub const SpiBusInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChipSelectLineCount(self: *@This()) core.HResult!i32 {
        const this: *ISpiBusInfo = @ptrCast(self);
        return try this.getChipSelectLineCount();
    }
    pub fn getMinClockFrequency(self: *@This()) core.HResult!i32 {
        const this: *ISpiBusInfo = @ptrCast(self);
        return try this.getMinClockFrequency();
    }
    pub fn getMaxClockFrequency(self: *@This()) core.HResult!i32 {
        const this: *ISpiBusInfo = @ptrCast(self);
        return try this.getMaxClockFrequency();
    }
    pub fn getSupportedDataBitLengths(self: *@This()) core.HResult!*IVectorView(i32) {
        const this: *ISpiBusInfo = @ptrCast(self);
        return try this.getSupportedDataBitLengths();
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.SpiBusInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpiBusInfo.GUID;
    pub const IID: Guid = ISpiBusInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpiBusInfo.SIGNATURE);
};
pub const SpiConnectionSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChipSelectLine(self: *@This()) core.HResult!i32 {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.getChipSelectLine();
    }
    pub fn putChipSelectLine(self: *@This(), value: i32) core.HResult!void {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.putChipSelectLine(value);
    }
    pub fn getMode(self: *@This()) core.HResult!SpiMode {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: SpiMode) core.HResult!void {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn getDataBitLength(self: *@This()) core.HResult!i32 {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.getDataBitLength();
    }
    pub fn putDataBitLength(self: *@This(), value: i32) core.HResult!void {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.putDataBitLength(value);
    }
    pub fn getClockFrequency(self: *@This()) core.HResult!i32 {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.getClockFrequency();
    }
    pub fn putClockFrequency(self: *@This(), value: i32) core.HResult!void {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.putClockFrequency(value);
    }
    pub fn getSharingMode(self: *@This()) core.HResult!SpiSharingMode {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.getSharingMode();
    }
    pub fn putSharingMode(self: *@This(), value: SpiSharingMode) core.HResult!void {
        const this: *ISpiConnectionSettings = @ptrCast(self);
        return try this.putSharingMode(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(chipSelectLine: i32) core.HResult!*SpiConnectionSettings {
        const factory = @This().ISpiConnectionSettingsFactoryCache.get();
        return try factory.Create(chipSelectLine);
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.SpiConnectionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpiConnectionSettings.GUID;
    pub const IID: Guid = ISpiConnectionSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpiConnectionSettings.SIGNATURE);
    var _ISpiConnectionSettingsFactoryCache: FactoryCache(ISpiConnectionSettingsFactory, RUNTIME_NAME) = .{};
};
pub const SpiController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDevice(self: *@This(), settings: *SpiConnectionSettings) core.HResult!*SpiDevice {
        const this: *ISpiController = @ptrCast(self);
        return try this.GetDevice(settings);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(SpiController) {
        const factory = @This().ISpiControllerStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn GetControllersAsync(provider: *ISpiProvider) core.HResult!*IAsyncOperation(IVectorView(SpiController)) {
        const factory = @This().ISpiControllerStaticsCache.get();
        return try factory.GetControllersAsync(provider);
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.SpiController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpiController.GUID;
    pub const IID: Guid = ISpiController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpiController.SIGNATURE);
    var _ISpiControllerStaticsCache: FactoryCache(ISpiControllerStatics, RUNTIME_NAME) = .{};
};
pub const SpiDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ISpiDevice = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getConnectionSettings(self: *@This()) core.HResult!*SpiConnectionSettings {
        const this: *ISpiDevice = @ptrCast(self);
        return try this.getConnectionSettings();
    }
    pub fn Write(self: *@This(), buffer: [*]u8) core.HResult!void {
        const this: *ISpiDevice = @ptrCast(self);
        return try this.Write(buffer);
    }
    pub fn Read(self: *@This(), buffer: [*]u8) core.HResult!void {
        const this: *ISpiDevice = @ptrCast(self);
        return try this.Read(buffer);
    }
    pub fn TransferSequential(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!void {
        const this: *ISpiDevice = @ptrCast(self);
        return try this.TransferSequential(writeBuffer, readBuffer);
    }
    pub fn TransferFullDuplex(self: *@This(), writeBuffer: [*]u8, readBuffer: [*]u8) core.HResult!void {
        const this: *ISpiDevice = @ptrCast(self);
        return try this.TransferFullDuplex(writeBuffer, readBuffer);
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
        const factory = @This().ISpiDeviceStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelector(friendlyName: HSTRING) core.HResult!HSTRING {
        const factory = @This().ISpiDeviceStaticsCache.get();
        return try factory.GetDeviceSelector(friendlyName);
    }
    pub fn GetBusInfo(busId: HSTRING) core.HResult!*SpiBusInfo {
        const factory = @This().ISpiDeviceStaticsCache.get();
        return try factory.GetBusInfo(busId);
    }
    pub fn FromIdAsync(busId: HSTRING, settings: *SpiConnectionSettings) core.HResult!*IAsyncOperation(SpiDevice) {
        const factory = @This().ISpiDeviceStaticsCache.get();
        return try factory.FromIdAsync(busId, settings);
    }
    pub const NAME: []const u8 = "Windows.Devices.Spi.SpiDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpiDevice.GUID;
    pub const IID: Guid = ISpiDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpiDevice.SIGNATURE);
    var _ISpiDeviceStaticsCache: FactoryCache(ISpiDeviceStatics, RUNTIME_NAME) = .{};
};
pub const SpiMode = enum(i32) {
    Mode0 = 0,
    Mode1 = 1,
    Mode2 = 2,
    Mode3 = 3,
};
pub const SpiSharingMode = enum(i32) {
    Exclusive = 0,
    Shared = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const IClosable = @import("../Foundation.zig").IClosable;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../core.zig").FactoryCache;
const ISpiProvider = @import("./Provider.zig").ISpiProvider;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
pub const Provider = @import("./Spi/Provider.zig");
