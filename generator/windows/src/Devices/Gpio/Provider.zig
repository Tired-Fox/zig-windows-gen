pub const GpioPinProviderValueChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEdge(self: *@This()) core.HResult!ProviderGpioPinEdge {
        const this: *IGpioPinProviderValueChangedEventArgs = @ptrCast(self);
        return try this.getEdge();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(edge: ProviderGpioPinEdge) core.HResult!*GpioPinProviderValueChangedEventArgs {
        const _f = @This().IGpioPinProviderValueChangedEventArgsFactoryCache.get();
        return try _f.Create(edge);
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.Provider.GpioPinProviderValueChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGpioPinProviderValueChangedEventArgs.GUID;
    pub const IID: Guid = IGpioPinProviderValueChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGpioPinProviderValueChangedEventArgs.SIGNATURE);
    var _IGpioPinProviderValueChangedEventArgsFactoryCache: FactoryCache(IGpioPinProviderValueChangedEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const IGpioControllerProvider = extern struct {
    vtable: *const VTable,
    pub fn getPinCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PinCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenPinProvider(self: *@This(), pin: i32, sharingMode: ProviderGpioSharingMode) core.HResult!*IGpioPinProvider {
        var _r: *IGpioPinProvider = undefined;
        const _c = self.vtable.OpenPinProvider(@ptrCast(self), pin, sharingMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.Provider.IGpioControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad11cec7-19ea-4b21-874f-b91aed4a25db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PinCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        OpenPinProvider: *const fn(self: *anyopaque, pin: i32, sharingMode: ProviderGpioSharingMode, _r: **IGpioPinProvider) callconv(.winapi) HRESULT,
    };
};
pub const IGpioPinProvider = extern struct {
    vtable: *const VTable,
    pub fn addValueChanged(self: *@This(), handler: *TypedEventHandler(IGpioPinProvider,GpioPinProviderValueChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ValueChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeValueChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ValueChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDebounceTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DebounceTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDebounceTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DebounceTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPinNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PinNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSharingMode(self: *@This()) core.HResult!ProviderGpioSharingMode {
        var _r: ProviderGpioSharingMode = undefined;
        const _c = self.vtable.get_SharingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsDriveModeSupported(self: *@This(), driveMode: ProviderGpioPinDriveMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsDriveModeSupported(@ptrCast(self), driveMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDriveMode(self: *@This()) core.HResult!ProviderGpioPinDriveMode {
        var _r: ProviderGpioPinDriveMode = undefined;
        const _c = self.vtable.GetDriveMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDriveMode(self: *@This(), value: ProviderGpioPinDriveMode) core.HResult!void {
        const _c = self.vtable.SetDriveMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Write(self: *@This(), value: ProviderGpioPinValue) core.HResult!void {
        const _c = self.vtable.Write(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Read(self: *@This()) core.HResult!ProviderGpioPinValue {
        var _r: ProviderGpioPinValue = undefined;
        const _c = self.vtable.Read(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.Provider.IGpioPinProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42344cb7-6abc-40ff-9ce7-73b85301b900";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ValueChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IGpioPinProvider,GpioPinProviderValueChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ValueChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_DebounceTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_DebounceTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_PinNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_SharingMode: *const fn(self: *anyopaque, _r: *ProviderGpioSharingMode) callconv(.winapi) HRESULT,
        IsDriveModeSupported: *const fn(self: *anyopaque, driveMode: ProviderGpioPinDriveMode, _r: *bool) callconv(.winapi) HRESULT,
        GetDriveMode: *const fn(self: *anyopaque, _r: *ProviderGpioPinDriveMode) callconv(.winapi) HRESULT,
        SetDriveMode: *const fn(self: *anyopaque, value: ProviderGpioPinDriveMode) callconv(.winapi) HRESULT,
        Write: *const fn(self: *anyopaque, value: ProviderGpioPinValue) callconv(.winapi) HRESULT,
        Read: *const fn(self: *anyopaque, _r: *ProviderGpioPinValue) callconv(.winapi) HRESULT,
    };
};
pub const IGpioPinProviderValueChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEdge(self: *@This()) core.HResult!ProviderGpioPinEdge {
        var _r: ProviderGpioPinEdge = undefined;
        const _c = self.vtable.get_Edge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.Provider.IGpioPinProviderValueChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32a6d6f2-3d5b-44cd-8fbe-13a69f2edb24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Edge: *const fn(self: *anyopaque, _r: *ProviderGpioPinEdge) callconv(.winapi) HRESULT,
    };
};
pub const IGpioPinProviderValueChangedEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), edge: ProviderGpioPinEdge) core.HResult!*GpioPinProviderValueChangedEventArgs {
        var _r: *GpioPinProviderValueChangedEventArgs = undefined;
        const _c = self.vtable.Create(@ptrCast(self), edge, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.Provider.IGpioPinProviderValueChangedEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ecb0b59-568c-4392-b24a-8a59a902b1f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, edge: ProviderGpioPinEdge, _r: **GpioPinProviderValueChangedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IGpioProvider = extern struct {
    vtable: *const VTable,
    pub fn GetControllers(self: *@This()) core.HResult!*IVectorView(IGpioControllerProvider) {
        var _r: *IVectorView(IGpioControllerProvider) = undefined;
        const _c = self.vtable.GetControllers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.Provider.IGpioProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44e82707-08ca-434a-afe0-d61580446f7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetControllers: *const fn(self: *anyopaque, _r: **IVectorView(IGpioControllerProvider)) callconv(.winapi) HRESULT,
    };
};
pub const ProviderGpioPinDriveMode = enum(i32) {
    Input = 0,
    Output = 1,
    InputPullUp = 2,
    InputPullDown = 3,
    OutputOpenDrain = 4,
    OutputOpenDrainPullUp = 5,
    OutputOpenSource = 6,
    OutputOpenSourcePullDown = 7,
};
pub const ProviderGpioPinEdge = enum(i32) {
    FallingEdge = 0,
    RisingEdge = 1,
};
pub const ProviderGpioPinValue = enum(i32) {
    Low = 0,
    High = 1,
};
pub const ProviderGpioSharingMode = enum(i32) {
    Exclusive = 0,
    SharedReadOnly = 1,
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
