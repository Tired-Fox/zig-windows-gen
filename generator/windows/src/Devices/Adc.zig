pub const AdcChannel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getController(self: *@This()) core.HResult!*AdcController {
        const this: *IAdcChannel = @ptrCast(self);
        return try this.getController();
    }
    pub fn ReadValue(self: *@This()) core.HResult!i32 {
        const this: *IAdcChannel = @ptrCast(self);
        return try this.ReadValue();
    }
    pub fn ReadRatio(self: *@This()) core.HResult!f64 {
        const this: *IAdcChannel = @ptrCast(self);
        return try this.ReadRatio();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Adc.AdcChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdcChannel.GUID;
    pub const IID: Guid = IAdcChannel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdcChannel.SIGNATURE);
};
pub const AdcChannelMode = enum(i32) {
    SingleEnded = 0,
    Differential = 1,
};
pub const AdcController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChannelCount(self: *@This()) core.HResult!i32 {
        const this: *IAdcController = @ptrCast(self);
        return try this.getChannelCount();
    }
    pub fn getResolutionInBits(self: *@This()) core.HResult!i32 {
        const this: *IAdcController = @ptrCast(self);
        return try this.getResolutionInBits();
    }
    pub fn getMinValue(self: *@This()) core.HResult!i32 {
        const this: *IAdcController = @ptrCast(self);
        return try this.getMinValue();
    }
    pub fn getMaxValue(self: *@This()) core.HResult!i32 {
        const this: *IAdcController = @ptrCast(self);
        return try this.getMaxValue();
    }
    pub fn getChannelMode(self: *@This()) core.HResult!AdcChannelMode {
        const this: *IAdcController = @ptrCast(self);
        return try this.getChannelMode();
    }
    pub fn putChannelMode(self: *@This(), value: AdcChannelMode) core.HResult!void {
        const this: *IAdcController = @ptrCast(self);
        return try this.putChannelMode(value);
    }
    pub fn IsChannelModeSupported(self: *@This(), channelMode: AdcChannelMode) core.HResult!bool {
        const this: *IAdcController = @ptrCast(self);
        return try this.IsChannelModeSupported(channelMode);
    }
    pub fn OpenChannel(self: *@This(), channelNumber: i32) core.HResult!*AdcChannel {
        const this: *IAdcController = @ptrCast(self);
        return try this.OpenChannel(channelNumber);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(AdcController) {
        const factory = @This().IAdcControllerStatics2Cache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn GetControllersAsync(provider: *IAdcProvider) core.HResult!*IAsyncOperation(IVectorView(AdcController)) {
        const factory = @This().IAdcControllerStaticsCache.get();
        return try factory.GetControllersAsync(provider);
    }
    pub const NAME: []const u8 = "Windows.Devices.Adc.AdcController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdcController.GUID;
    pub const IID: Guid = IAdcController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdcController.SIGNATURE);
    var _IAdcControllerStatics2Cache: FactoryCache(IAdcControllerStatics2, RUNTIME_NAME) = .{};
    var _IAdcControllerStaticsCache: FactoryCache(IAdcControllerStatics, RUNTIME_NAME) = .{};
};
pub const IAdcChannel = extern struct {
    vtable: *const VTable,
    pub fn getController(self: *@This()) core.HResult!*AdcController {
        var _r: *AdcController = undefined;
        const _c = self.vtable.get_Controller(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadValue(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.ReadValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadRatio(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.ReadRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Adc.IAdcChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "040bf414-2588-4a56-abef-73a260acc60a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Controller: *const fn(self: *anyopaque, _r: **AdcController) callconv(.winapi) HRESULT,
        ReadValue: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        ReadRatio: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IAdcController = extern struct {
    vtable: *const VTable,
    pub fn getChannelCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ChannelCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResolutionInBits(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ResolutionInBits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinValue(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MinValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxValue(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChannelMode(self: *@This()) core.HResult!AdcChannelMode {
        var _r: AdcChannelMode = undefined;
        const _c = self.vtable.get_ChannelMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChannelMode(self: *@This(), value: AdcChannelMode) core.HResult!void {
        const _c = self.vtable.put_ChannelMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsChannelModeSupported(self: *@This(), channelMode: AdcChannelMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsChannelModeSupported(@ptrCast(self), channelMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenChannel(self: *@This(), channelNumber: i32) core.HResult!*AdcChannel {
        var _r: *AdcChannel = undefined;
        const _c = self.vtable.OpenChannel(@ptrCast(self), channelNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Adc.IAdcController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a76e4b0-a896-4219-86b6-ea8cdce98f56";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChannelCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ResolutionInBits: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MinValue: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxValue: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ChannelMode: *const fn(self: *anyopaque, _r: *AdcChannelMode) callconv(.winapi) HRESULT,
        put_ChannelMode: *const fn(self: *anyopaque, value: AdcChannelMode) callconv(.winapi) HRESULT,
        IsChannelModeSupported: *const fn(self: *anyopaque, channelMode: AdcChannelMode, _r: *bool) callconv(.winapi) HRESULT,
        OpenChannel: *const fn(self: *anyopaque, channelNumber: i32, _r: **AdcChannel) callconv(.winapi) HRESULT,
    };
};
pub const IAdcControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetControllersAsync(self: *@This(), provider: *IAdcProvider) core.HResult!*IAsyncOperation(IVectorView(AdcController)) {
        var _r: *IAsyncOperation(IVectorView(AdcController)) = undefined;
        const _c = self.vtable.GetControllersAsync(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Adc.IAdcControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cce98e0c-01f8-4891-bc3b-be53ef279ca4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetControllersAsync: *const fn(self: *anyopaque, provider: *IAdcProvider, _r: **IAsyncOperation(IVectorView(AdcController))) callconv(.winapi) HRESULT,
    };
};
pub const IAdcControllerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(AdcController) {
        var _r: *IAsyncOperation(AdcController) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Adc.IAdcControllerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2b93b1d-977b-4f5a-a5fe-a6abaffe6484";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AdcController)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAdcProvider = @import("./Provider.zig").IAdcProvider;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
pub const Provider = @import("./Adc/Provider.zig");
