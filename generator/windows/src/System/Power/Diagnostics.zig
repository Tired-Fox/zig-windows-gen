pub const BackgroundEnergyDiagnostics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_DeviceSpecificConversionFactor() core.HResult!f64 {
        const factory = @This().IBackgroundEnergyDiagnosticsStaticsCache.get();
        return try factory.getDeviceSpecificConversionFactor();
    }
    pub fn ComputeTotalEnergyUsage() core.HResult!u64 {
        const factory = @This().IBackgroundEnergyDiagnosticsStaticsCache.get();
        return try factory.ComputeTotalEnergyUsage();
    }
    pub fn ResetTotalEnergyUsage() core.HResult!void {
        const factory = @This().IBackgroundEnergyDiagnosticsStaticsCache.get();
        return try factory.ResetTotalEnergyUsage();
    }
    pub const NAME: []const u8 = "Windows.System.Power.Diagnostics.BackgroundEnergyDiagnostics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBackgroundEnergyDiagnosticsStaticsCache: FactoryCache(IBackgroundEnergyDiagnosticsStatics, RUNTIME_NAME) = .{};
};
pub const ForegroundEnergyDiagnostics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_DeviceSpecificConversionFactor() core.HResult!f64 {
        const factory = @This().IForegroundEnergyDiagnosticsStaticsCache.get();
        return try factory.getDeviceSpecificConversionFactor();
    }
    pub fn ComputeTotalEnergyUsage() core.HResult!u64 {
        const factory = @This().IForegroundEnergyDiagnosticsStaticsCache.get();
        return try factory.ComputeTotalEnergyUsage();
    }
    pub fn ResetTotalEnergyUsage() core.HResult!void {
        const factory = @This().IForegroundEnergyDiagnosticsStaticsCache.get();
        return try factory.ResetTotalEnergyUsage();
    }
    pub const NAME: []const u8 = "Windows.System.Power.Diagnostics.ForegroundEnergyDiagnostics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IForegroundEnergyDiagnosticsStaticsCache: FactoryCache(IForegroundEnergyDiagnosticsStatics, RUNTIME_NAME) = .{};
};
pub const IBackgroundEnergyDiagnosticsStatics = extern struct {
    vtable: *const VTable,
    pub fn getDeviceSpecificConversionFactor(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DeviceSpecificConversionFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ComputeTotalEnergyUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.ComputeTotalEnergyUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetTotalEnergyUsage(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResetTotalEnergyUsage(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Power.Diagnostics.IBackgroundEnergyDiagnosticsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7663702-d3a6-46e0-8f9b-50b95bb4f9c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceSpecificConversionFactor: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        ComputeTotalEnergyUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        ResetTotalEnergyUsage: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IForegroundEnergyDiagnosticsStatics = extern struct {
    vtable: *const VTable,
    pub fn getDeviceSpecificConversionFactor(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DeviceSpecificConversionFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ComputeTotalEnergyUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.ComputeTotalEnergyUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetTotalEnergyUsage(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResetTotalEnergyUsage(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Power.Diagnostics.IForegroundEnergyDiagnosticsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23ca0917-cd07-4609-be15-8fe894c5e41e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceSpecificConversionFactor: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        ComputeTotalEnergyUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        ResetTotalEnergyUsage: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
