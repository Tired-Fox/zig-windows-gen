pub const IOemSupportInfo = extern struct {
    vtable: *const VTable,
    pub fn getSupportLink(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_SupportLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportAppLink(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_SupportAppLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportProvider(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SupportProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemManufacturers.IOemSupportInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d2eae55-87ef-4266-86d0-c4afbeb29bb9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportLink: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_SupportAppLink: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_SupportProvider: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISmbiosInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn getSerialNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SerialNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemManufacturers.ISmbiosInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "080cca7c-637c-48c4-b728-f9273812db8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SerialNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISystemSupportDeviceInfo = extern struct {
    vtable: *const VTable,
    pub fn getOperatingSystem(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OperatingSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemManufacturer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemManufacturer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemProductName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemProductName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemSku(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemSku(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemHardwareVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemHardwareVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemFirmwareVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemFirmwareVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemManufacturers.ISystemSupportDeviceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05880b99-8247-441b-a996-a1784bab79a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OperatingSystem: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemManufacturer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemProductName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemSku: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemHardwareVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemFirmwareVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISystemSupportInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn getLocalSystemEdition(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalSystemEdition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOemSupportInfo(self: *@This()) core.HResult!*OemSupportInfo {
        var _r: *OemSupportInfo = undefined;
        const _c = self.vtable.get_OemSupportInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemManufacturers.ISystemSupportInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef750974-c422-45d7-a44d-5c1c0043a2b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalSystemEdition: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OemSupportInfo: *const fn(self: *anyopaque, _r: **OemSupportInfo) callconv(.winapi) HRESULT,
    };
};
pub const ISystemSupportInfoStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getLocalDeviceInfo(self: *@This()) core.HResult!*SystemSupportDeviceInfo {
        var _r: *SystemSupportDeviceInfo = undefined;
        const _c = self.vtable.get_LocalDeviceInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemManufacturers.ISystemSupportInfoStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33f349a4-3fa1-4986-aa4b-057420455e6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalDeviceInfo: *const fn(self: *anyopaque, _r: **SystemSupportDeviceInfo) callconv(.winapi) HRESULT,
    };
};
pub const OemSupportInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupportLink(self: *@This()) core.HResult!*Uri {
        const this: *IOemSupportInfo = @ptrCast(self);
        return try this.getSupportLink();
    }
    pub fn getSupportAppLink(self: *@This()) core.HResult!*Uri {
        const this: *IOemSupportInfo = @ptrCast(self);
        return try this.getSupportAppLink();
    }
    pub fn getSupportProvider(self: *@This()) core.HResult!HSTRING {
        const this: *IOemSupportInfo = @ptrCast(self);
        return try this.getSupportProvider();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemManufacturers.OemSupportInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOemSupportInfo.GUID;
    pub const IID: Guid = IOemSupportInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOemSupportInfo.SIGNATURE);
};
pub const SmbiosInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getSerialNumber() core.HResult!HSTRING {
        const factory = @This().ISmbiosInformationStaticsCache.get();
        return try factory.getSerialNumber();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemManufacturers.SmbiosInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISmbiosInformationStaticsCache: FactoryCache(ISmbiosInformationStatics, RUNTIME_NAME) = .{};
};
pub const SystemSupportDeviceInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperatingSystem(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemSupportDeviceInfo = @ptrCast(self);
        return try this.getOperatingSystem();
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemSupportDeviceInfo = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn getSystemManufacturer(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemSupportDeviceInfo = @ptrCast(self);
        return try this.getSystemManufacturer();
    }
    pub fn getSystemProductName(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemSupportDeviceInfo = @ptrCast(self);
        return try this.getSystemProductName();
    }
    pub fn getSystemSku(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemSupportDeviceInfo = @ptrCast(self);
        return try this.getSystemSku();
    }
    pub fn getSystemHardwareVersion(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemSupportDeviceInfo = @ptrCast(self);
        return try this.getSystemHardwareVersion();
    }
    pub fn getSystemFirmwareVersion(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemSupportDeviceInfo = @ptrCast(self);
        return try this.getSystemFirmwareVersion();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemManufacturers.SystemSupportDeviceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemSupportDeviceInfo.GUID;
    pub const IID: Guid = ISystemSupportDeviceInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemSupportDeviceInfo.SIGNATURE);
};
pub const SystemSupportInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getLocalSystemEdition() core.HResult!HSTRING {
        const factory = @This().ISystemSupportInfoStaticsCache.get();
        return try factory.getLocalSystemEdition();
    }
    pub fn getOemSupportInfo() core.HResult!*OemSupportInfo {
        const factory = @This().ISystemSupportInfoStaticsCache.get();
        return try factory.getOemSupportInfo();
    }
    pub fn getLocalDeviceInfo() core.HResult!*SystemSupportDeviceInfo {
        const factory = @This().ISystemSupportInfoStatics2Cache.get();
        return try factory.getLocalDeviceInfo();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemManufacturers.SystemSupportInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISystemSupportInfoStaticsCache: FactoryCache(ISystemSupportInfoStatics, RUNTIME_NAME) = .{};
    var _ISystemSupportInfoStatics2Cache: FactoryCache(ISystemSupportInfoStatics2, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Uri = @import("../../Foundation.zig").Uri;
