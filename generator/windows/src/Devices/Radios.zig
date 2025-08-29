pub const IRadio = extern struct {
    vtable: *const VTable,
    pub fn SetStateAsync(self: *@This(), value: RadioState) core.HResult!*IAsyncOperation(RadioAccessStatus) {
        var _r: *IAsyncOperation(RadioAccessStatus) = undefined;
        const _c = self.vtable.SetStateAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(Radio,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!RadioState {
        var _r: RadioState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!RadioKind {
        var _r: RadioKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Radios.IRadio";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "252118df-b33e-416a-875f-1cf38ae2d83e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetStateAsync: *const fn(self: *anyopaque, value: RadioState, _r: **IAsyncOperation(RadioAccessStatus)) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Radio,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *RadioState) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *RadioKind) callconv(.winapi) HRESULT,
    };
};
pub const IRadioStatics = extern struct {
    vtable: *const VTable,
    pub fn GetRadiosAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(Radio)) {
        var _r: *IAsyncOperation(IVectorView(Radio)) = undefined;
        const _c = self.vtable.GetRadiosAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Radio) {
        var _r: *IAsyncOperation(Radio) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(RadioAccessStatus) {
        var _r: *IAsyncOperation(RadioAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Radios.IRadioStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5fb6a12e-67cb-46ae-aae9-65919f86eff4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetRadiosAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(Radio))) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Radio)) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(RadioAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const Radio = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetStateAsync(self: *@This(), value: RadioState) core.HResult!*IAsyncOperation(RadioAccessStatus) {
        const this: *IRadio = @ptrCast(self);
        return try this.SetStateAsync(value);
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(Radio,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IRadio = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IRadio = @ptrCast(self);
        return try this.removeStateChanged(eventCookie);
    }
    pub fn getState(self: *@This()) core.HResult!RadioState {
        const this: *IRadio = @ptrCast(self);
        return try this.getState();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IRadio = @ptrCast(self);
        return try this.getName();
    }
    pub fn getKind(self: *@This()) core.HResult!RadioKind {
        const this: *IRadio = @ptrCast(self);
        return try this.getKind();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetRadiosAsync() core.HResult!*IAsyncOperation(IVectorView(Radio)) {
        const factory = @This().IRadioStaticsCache.get();
        return try factory.GetRadiosAsync();
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IRadioStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Radio) {
        const factory = @This().IRadioStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(RadioAccessStatus) {
        const factory = @This().IRadioStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Radios.Radio";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadio.GUID;
    pub const IID: Guid = IRadio.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadio.SIGNATURE);
    var _IRadioStaticsCache: FactoryCache(IRadioStatics, RUNTIME_NAME) = .{};
};
pub const RadioAccessStatus = enum(i32) {
    Unspecified = 0,
    Allowed = 1,
    DeniedByUser = 2,
    DeniedBySystem = 3,
};
pub const RadioKind = enum(i32) {
    Other = 0,
    WiFi = 1,
    MobileBroadband = 2,
    Bluetooth = 3,
    FM = 4,
};
pub const RadioState = enum(i32) {
    Unknown = 0,
    On = 1,
    Off = 2,
    Disabled = 3,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
