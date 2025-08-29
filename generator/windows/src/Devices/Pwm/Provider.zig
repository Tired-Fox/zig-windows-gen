pub const IPwmControllerProvider = extern struct {
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
    pub fn SetDesiredFrequency(self: *@This(), frequency: f64) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.SetDesiredFrequency(@ptrCast(self), frequency, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxFrequency(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinFrequency(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcquirePin(self: *@This(), pin: i32) core.HResult!void {
        const _c = self.vtable.AcquirePin(@ptrCast(self), pin);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReleasePin(self: *@This(), pin: i32) core.HResult!void {
        const _c = self.vtable.ReleasePin(@ptrCast(self), pin);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnablePin(self: *@This(), pin: i32) core.HResult!void {
        const _c = self.vtable.EnablePin(@ptrCast(self), pin);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DisablePin(self: *@This(), pin: i32) core.HResult!void {
        const _c = self.vtable.DisablePin(@ptrCast(self), pin);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPulseParameters(self: *@This(), pin: i32, dutyCycle: f64, invertPolarity: bool) core.HResult!void {
        const _c = self.vtable.SetPulseParameters(@ptrCast(self), pin, dutyCycle, invertPolarity);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Pwm.Provider.IPwmControllerProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1300593b-e2e3-40a4-b7d9-48dff0377a52";
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
        SetDesiredFrequency: *const fn(self: *anyopaque, frequency: f64, _r: *f64) callconv(.winapi) HRESULT,
        get_MaxFrequency: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MinFrequency: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        AcquirePin: *const fn(self: *anyopaque, pin: i32) callconv(.winapi) HRESULT,
        ReleasePin: *const fn(self: *anyopaque, pin: i32) callconv(.winapi) HRESULT,
        EnablePin: *const fn(self: *anyopaque, pin: i32) callconv(.winapi) HRESULT,
        DisablePin: *const fn(self: *anyopaque, pin: i32) callconv(.winapi) HRESULT,
        SetPulseParameters: *const fn(self: *anyopaque, pin: i32, dutyCycle: f64, invertPolarity: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPwmProvider = extern struct {
    vtable: *const VTable,
    pub fn GetControllers(self: *@This()) core.HResult!*IVectorView(IPwmControllerProvider) {
        var _r: *IVectorView(IPwmControllerProvider) = undefined;
        const _c = self.vtable.GetControllers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Pwm.Provider.IPwmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3301228-52f1-47b0-9349-66ba43d25902";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetControllers: *const fn(self: *anyopaque, _r: **IVectorView(IPwmControllerProvider)) callconv(.winapi) HRESULT,
    };
};
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
