pub const IPlatformTelemetryClientStatics = extern struct {
    vtable: *const VTable,
    pub fn Register(self: *@This(), id: HSTRING) core.HResult!*PlatformTelemetryRegistrationResult {
        var _r: *PlatformTelemetryRegistrationResult = undefined;
        const _c = self.vtable.Register(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterWithSettings(self: *@This(), id: HSTRING, settings: *PlatformTelemetryRegistrationSettings) core.HResult!*PlatformTelemetryRegistrationResult {
        var _r: *PlatformTelemetryRegistrationResult = undefined;
        const _c = self.vtable.RegisterWithSettings(@ptrCast(self), id, settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.Telemetry.IPlatformTelemetryClientStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9bf3f25d-d5c3-4eea-8dbe-9c8dbb0d9d8f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Register: *const fn(self: *anyopaque, id: HSTRING, _r: **PlatformTelemetryRegistrationResult) callconv(.winapi) HRESULT,
        RegisterWithSettings: *const fn(self: *anyopaque, id: HSTRING, settings: *PlatformTelemetryRegistrationSettings, _r: **PlatformTelemetryRegistrationResult) callconv(.winapi) HRESULT,
    };
};
pub const IPlatformTelemetryRegistrationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!PlatformTelemetryRegistrationStatus {
        var _r: PlatformTelemetryRegistrationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.Telemetry.IPlatformTelemetryRegistrationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d8518ab-2292-49bd-a15a-3d71d2145112";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PlatformTelemetryRegistrationStatus) callconv(.winapi) HRESULT,
    };
};
pub const IPlatformTelemetryRegistrationSettings = extern struct {
    vtable: *const VTable,
    pub fn getStorageSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_StorageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStorageSize(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_StorageSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUploadQuotaSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UploadQuotaSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUploadQuotaSize(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_UploadQuotaSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.Telemetry.IPlatformTelemetryRegistrationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "819a8582-ca19-415e-bb79-9c224bfa3a73";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StorageSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_StorageSize: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_UploadQuotaSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_UploadQuotaSize: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const PlatformTelemetryClient = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Register(id: HSTRING) core.HResult!*PlatformTelemetryRegistrationResult {
        const factory = @This().IPlatformTelemetryClientStaticsCache.get();
        return try factory.Register(id);
    }
    pub fn RegisterWithSettings(id: HSTRING, settings: *PlatformTelemetryRegistrationSettings) core.HResult!*PlatformTelemetryRegistrationResult {
        const factory = @This().IPlatformTelemetryClientStaticsCache.get();
        return try factory.RegisterWithSettings(id, settings);
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.Telemetry.PlatformTelemetryClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPlatformTelemetryClientStaticsCache: FactoryCache(IPlatformTelemetryClientStatics, RUNTIME_NAME) = .{};
};
pub const PlatformTelemetryRegistrationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!PlatformTelemetryRegistrationStatus {
        const this: *IPlatformTelemetryRegistrationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlatformTelemetryRegistrationResult.GUID;
    pub const IID: Guid = IPlatformTelemetryRegistrationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlatformTelemetryRegistrationResult.SIGNATURE);
};
pub const PlatformTelemetryRegistrationSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStorageSize(self: *@This()) core.HResult!u32 {
        const this: *IPlatformTelemetryRegistrationSettings = @ptrCast(self);
        return try this.getStorageSize();
    }
    pub fn putStorageSize(self: *@This(), value: u32) core.HResult!void {
        const this: *IPlatformTelemetryRegistrationSettings = @ptrCast(self);
        return try this.putStorageSize(value);
    }
    pub fn getUploadQuotaSize(self: *@This()) core.HResult!u32 {
        const this: *IPlatformTelemetryRegistrationSettings = @ptrCast(self);
        return try this.getUploadQuotaSize();
    }
    pub fn putUploadQuotaSize(self: *@This(), value: u32) core.HResult!void {
        const this: *IPlatformTelemetryRegistrationSettings = @ptrCast(self);
        return try this.putUploadQuotaSize(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlatformTelemetryRegistrationSettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlatformTelemetryRegistrationSettings.GUID;
    pub const IID: Guid = IPlatformTelemetryRegistrationSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlatformTelemetryRegistrationSettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlatformTelemetryRegistrationStatus = enum(i32) {
    Success = 0,
    SettingsOutOfRange = 1,
    UnknownFailure = 2,
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
