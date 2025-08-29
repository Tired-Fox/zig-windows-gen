pub const IAdcControllerProvider = extern struct {
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
    pub fn getChannelMode(self: *@This()) core.HResult!ProviderAdcChannelMode {
        var _r: ProviderAdcChannelMode = undefined;
        const _c = self.vtable.get_ChannelMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChannelMode(self: *@This(), value: ProviderAdcChannelMode) core.HResult!void {
        const _c = self.vtable.put_ChannelMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsChannelModeSupported(self: *@This(), channelMode: ProviderAdcChannelMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsChannelModeSupported(@ptrCast(self), channelMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcquireChannel(self: *@This(), channel: i32) core.HResult!void {
        const _c = self.vtable.AcquireChannel(@ptrCast(self), channel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReleaseChannel(self: *@This(), channel: i32) core.HResult!void {
        const _c = self.vtable.ReleaseChannel(@ptrCast(self), channel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadValue(self: *@This(), channelNumber: i32) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.ReadValue(@ptrCast(self), channelNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Adc.Provider.IAdcControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be545828-816d-4de5-a048-aba06958aaa8";
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
        get_ChannelMode: *const fn(self: *anyopaque, _r: *ProviderAdcChannelMode) callconv(.winapi) HRESULT,
        put_ChannelMode: *const fn(self: *anyopaque, value: ProviderAdcChannelMode) callconv(.winapi) HRESULT,
        IsChannelModeSupported: *const fn(self: *anyopaque, channelMode: ProviderAdcChannelMode, _r: *bool) callconv(.winapi) HRESULT,
        AcquireChannel: *const fn(self: *anyopaque, channel: i32) callconv(.winapi) HRESULT,
        ReleaseChannel: *const fn(self: *anyopaque, channel: i32) callconv(.winapi) HRESULT,
        ReadValue: *const fn(self: *anyopaque, channelNumber: i32, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IAdcProvider = extern struct {
    vtable: *const VTable,
    pub fn GetControllers(self: *@This()) core.HResult!*IVectorView(IAdcControllerProvider) {
        var _r: *IVectorView(IAdcControllerProvider) = undefined;
        const _c = self.vtable.GetControllers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Adc.Provider.IAdcProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28953668-9359-4c57-bc88-e275e81638c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetControllers: *const fn(self: *anyopaque, _r: **IVectorView(IAdcControllerProvider)) callconv(.winapi) HRESULT,
    };
};
pub const ProviderAdcChannelMode = enum(i32) {
    SingleEnded = 0,
    Differential = 1,
};
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
