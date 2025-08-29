pub const IPwmController = extern struct {
    vtable: *const VTable,
    pub fn getPinCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PinCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActualFrequency(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ActualFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDesiredFrequency(self: *@This(), desiredFrequency: f64) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.SetDesiredFrequency(@ptrCast(self), desiredFrequency, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinFrequency(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxFrequency(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenPin(self: *@This(), pinNumber: i32) core.HResult!*PwmPin {
        var _r: *PwmPin = undefined;
        const _c = self.vtable.OpenPin(@ptrCast(self), pinNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Pwm.IPwmController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c45f5c85-d2e8-42cf-9bd6-cf5ed029e6a7";
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
        get_ActualFrequency: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        SetDesiredFrequency: *const fn(self: *anyopaque, desiredFrequency: f64, _r: *f64) callconv(.winapi) HRESULT,
        get_MinFrequency: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MaxFrequency: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        OpenPin: *const fn(self: *anyopaque, pinNumber: i32, _r: **PwmPin) callconv(.winapi) HRESULT,
    };
};
pub const IPwmControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetControllersAsync(self: *@This(), provider: *IPwmProvider) core.HResult!*IAsyncOperation(IVectorView(PwmController)) {
        var _r: *IAsyncOperation(IVectorView(PwmController)) = undefined;
        const _c = self.vtable.GetControllersAsync(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Pwm.IPwmControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4263bda1-8946-4404-bd48-81dd124af4d9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetControllersAsync: *const fn(self: *anyopaque, provider: *IPwmProvider, _r: **IAsyncOperation(IVectorView(PwmController))) callconv(.winapi) HRESULT,
    };
};
pub const IPwmControllerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(PwmController) {
        var _r: *IAsyncOperation(PwmController) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Pwm.IPwmControllerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44fc5b1f-f119-4bdd-97ad-f76ef986736d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PwmController)) callconv(.winapi) HRESULT,
    };
};
pub const IPwmControllerStatics3 = extern struct {
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
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(PwmController) {
        var _r: *IAsyncOperation(PwmController) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Pwm.IPwmControllerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2581871-0229-4344-ae3f-9b7cd0e66b94";
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
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(PwmController)) callconv(.winapi) HRESULT,
    };
};
pub const IPwmPin = extern struct {
    vtable: *const VTable,
    pub fn getController(self: *@This()) core.HResult!*PwmController {
        var _r: *PwmController = undefined;
        const _c = self.vtable.get_Controller(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetActiveDutyCyclePercentage(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.GetActiveDutyCyclePercentage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetActiveDutyCyclePercentage(self: *@This(), dutyCyclePercentage: f64) core.HResult!void {
        const _c = self.vtable.SetActiveDutyCyclePercentage(@ptrCast(self), dutyCyclePercentage);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPolarity(self: *@This()) core.HResult!PwmPulsePolarity {
        var _r: PwmPulsePolarity = undefined;
        const _c = self.vtable.get_Polarity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPolarity(self: *@This(), value: PwmPulsePolarity) core.HResult!void {
        const _c = self.vtable.put_Polarity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsStarted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStarted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Pwm.IPwmPin";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22972dc8-c6cf-4821-b7f9-c6454fb6af79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Controller: *const fn(self: *anyopaque, _r: **PwmController) callconv(.winapi) HRESULT,
        GetActiveDutyCyclePercentage: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        SetActiveDutyCyclePercentage: *const fn(self: *anyopaque, dutyCyclePercentage: f64) callconv(.winapi) HRESULT,
        get_Polarity: *const fn(self: *anyopaque, _r: *PwmPulsePolarity) callconv(.winapi) HRESULT,
        put_Polarity: *const fn(self: *anyopaque, value: PwmPulsePolarity) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_IsStarted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const PwmController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPinCount(self: *@This()) core.HResult!i32 {
        const this: *IPwmController = @ptrCast(self);
        return try this.getPinCount();
    }
    pub fn getActualFrequency(self: *@This()) core.HResult!f64 {
        const this: *IPwmController = @ptrCast(self);
        return try this.getActualFrequency();
    }
    pub fn SetDesiredFrequency(self: *@This(), desiredFrequency: f64) core.HResult!f64 {
        const this: *IPwmController = @ptrCast(self);
        return try this.SetDesiredFrequency(desiredFrequency);
    }
    pub fn getMinFrequency(self: *@This()) core.HResult!f64 {
        const this: *IPwmController = @ptrCast(self);
        return try this.getMinFrequency();
    }
    pub fn getMaxFrequency(self: *@This()) core.HResult!f64 {
        const this: *IPwmController = @ptrCast(self);
        return try this.getMaxFrequency();
    }
    pub fn OpenPin(self: *@This(), pinNumber: i32) core.HResult!*PwmPin {
        const this: *IPwmController = @ptrCast(self);
        return try this.OpenPin(pinNumber);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IPwmControllerStatics3Cache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorWithFriendlyName(friendlyName: HSTRING) core.HResult!HSTRING {
        const factory = @This().IPwmControllerStatics3Cache.get();
        return try factory.GetDeviceSelectorWithFriendlyName(friendlyName);
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(PwmController) {
        const factory = @This().IPwmControllerStatics3Cache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(PwmController) {
        const factory = @This().IPwmControllerStatics2Cache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn GetControllersAsync(provider: *IPwmProvider) core.HResult!*IAsyncOperation(IVectorView(PwmController)) {
        const factory = @This().IPwmControllerStaticsCache.get();
        return try factory.GetControllersAsync(provider);
    }
    pub const NAME: []const u8 = "Windows.Devices.Pwm.PwmController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPwmController.GUID;
    pub const IID: Guid = IPwmController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPwmController.SIGNATURE);
    var _IPwmControllerStatics3Cache: FactoryCache(IPwmControllerStatics3, RUNTIME_NAME) = .{};
    var _IPwmControllerStatics2Cache: FactoryCache(IPwmControllerStatics2, RUNTIME_NAME) = .{};
    var _IPwmControllerStaticsCache: FactoryCache(IPwmControllerStatics, RUNTIME_NAME) = .{};
};
pub const PwmPin = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getController(self: *@This()) core.HResult!*PwmController {
        const this: *IPwmPin = @ptrCast(self);
        return try this.getController();
    }
    pub fn GetActiveDutyCyclePercentage(self: *@This()) core.HResult!f64 {
        const this: *IPwmPin = @ptrCast(self);
        return try this.GetActiveDutyCyclePercentage();
    }
    pub fn SetActiveDutyCyclePercentage(self: *@This(), dutyCyclePercentage: f64) core.HResult!void {
        const this: *IPwmPin = @ptrCast(self);
        return try this.SetActiveDutyCyclePercentage(dutyCyclePercentage);
    }
    pub fn getPolarity(self: *@This()) core.HResult!PwmPulsePolarity {
        const this: *IPwmPin = @ptrCast(self);
        return try this.getPolarity();
    }
    pub fn putPolarity(self: *@This(), value: PwmPulsePolarity) core.HResult!void {
        const this: *IPwmPin = @ptrCast(self);
        return try this.putPolarity(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPwmPin = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IPwmPin = @ptrCast(self);
        return try this.Stop();
    }
    pub fn getIsStarted(self: *@This()) core.HResult!bool {
        const this: *IPwmPin = @ptrCast(self);
        return try this.getIsStarted();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Pwm.PwmPin";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPwmPin.GUID;
    pub const IID: Guid = IPwmPin.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPwmPin.SIGNATURE);
};
pub const PwmPulsePolarity = enum(i32) {
    ActiveHigh = 0,
    ActiveLow = 1,
};
const HSTRING = @import("../root.zig").HSTRING;
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../core.zig").FactoryCache;
const IPwmProvider = @import("./Provider.zig").IPwmProvider;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
pub const Provider = @import("./Pwm/Provider.zig");
