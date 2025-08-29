pub const IServiceDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), serviceType: ServiceDeviceType) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), serviceType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorFromServiceId(self: *@This(), serviceId: *Guid) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorFromServiceId(@ptrCast(self), serviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Portable.IServiceDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a88214e1-59c7-4a20-aba6-9f6707937230";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, serviceType: ServiceDeviceType, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorFromServiceId: *const fn(self: *anyopaque, serviceId: *Guid, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorageDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromId(self: *@This(), deviceId: HSTRING) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Portable.IStorageDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ece44ee-1b23-4dd2-8652-bc164f003128";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **StorageFolder) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ServiceDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector(serviceType: ServiceDeviceType) core.HResult!HSTRING {
        const factory = @This().IServiceDeviceStaticsCache.get();
        return try factory.GetDeviceSelector(serviceType);
    }
    pub fn GetDeviceSelectorFromServiceId(serviceId: *Guid) core.HResult!HSTRING {
        const factory = @This().IServiceDeviceStaticsCache.get();
        return try factory.GetDeviceSelectorFromServiceId(serviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Portable.ServiceDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IServiceDeviceStaticsCache: FactoryCache(IServiceDeviceStatics, RUNTIME_NAME) = .{};
};
pub const ServiceDeviceType = enum(i32) {
    CalendarService = 0,
    ContactsService = 1,
    DeviceStatusService = 2,
    NotesService = 3,
    RingtonesService = 4,
    SmsService = 5,
    TasksService = 6,
};
pub const StorageDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromId(deviceId: HSTRING) core.HResult!*StorageFolder {
        const factory = @This().IStorageDeviceStaticsCache.get();
        return try factory.FromId(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IStorageDeviceStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.Devices.Portable.StorageDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStorageDeviceStaticsCache: FactoryCache(IStorageDeviceStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const HSTRING = @import("../root.zig").HSTRING;
