pub const IOfflineMapPackage = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!OfflineMapPackageStatus {
        var _r: OfflineMapPackageStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnclosingRegionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnclosingRegionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEstimatedSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_EstimatedSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStatusChanged(self: *@This(), value: *TypedEventHandler(OfflineMapPackage,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestStartDownloadAsync(self: *@This()) core.HResult!*IAsyncOperation(OfflineMapPackageStartDownloadResult) {
        var _r: *IAsyncOperation(OfflineMapPackageStartDownloadResult) = undefined;
        const _c = self.vtable.RequestStartDownloadAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.OfflineMaps.IOfflineMapPackage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a797673b-a5b5-4144-b525-e68c8862664b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *OfflineMapPackageStatus) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EnclosingRegionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EstimatedSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(OfflineMapPackage,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        RequestStartDownloadAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(OfflineMapPackageStartDownloadResult)) callconv(.winapi) HRESULT,
    };
};
pub const IOfflineMapPackageQueryResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!OfflineMapPackageQueryStatus {
        var _r: OfflineMapPackageQueryStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackages(self: *@This()) core.HResult!*IVectorView(OfflineMapPackage) {
        var _r: *IVectorView(OfflineMapPackage) = undefined;
        const _c = self.vtable.get_Packages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.OfflineMaps.IOfflineMapPackageQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55585411-39e1-4e41-a4e1-5f4872bee199";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *OfflineMapPackageQueryStatus) callconv(.winapi) HRESULT,
        get_Packages: *const fn(self: *anyopaque, _r: **IVectorView(OfflineMapPackage)) callconv(.winapi) HRESULT,
    };
};
pub const IOfflineMapPackageStartDownloadResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!OfflineMapPackageStartDownloadStatus {
        var _r: OfflineMapPackageStartDownloadStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.OfflineMaps.IOfflineMapPackageStartDownloadResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d965b918-d4d6-4afe-9378-3ec71ef11c3d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *OfflineMapPackageStartDownloadStatus) callconv(.winapi) HRESULT,
    };
};
pub const IOfflineMapPackageStatics = extern struct {
    vtable: *const VTable,
    pub fn FindPackagesAsync(self: *@This(), queryPoint: *Geopoint) core.HResult!*IAsyncOperation(OfflineMapPackageQueryResult) {
        var _r: *IAsyncOperation(OfflineMapPackageQueryResult) = undefined;
        const _c = self.vtable.FindPackagesAsync(@ptrCast(self), queryPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesInBoundingBoxAsync(self: *@This(), queryBoundingBox: *GeoboundingBox) core.HResult!*IAsyncOperation(OfflineMapPackageQueryResult) {
        var _r: *IAsyncOperation(OfflineMapPackageQueryResult) = undefined;
        const _c = self.vtable.FindPackagesInBoundingBoxAsync(@ptrCast(self), queryBoundingBox, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindPackagesInGeocircleAsync(self: *@This(), queryCircle: *Geocircle) core.HResult!*IAsyncOperation(OfflineMapPackageQueryResult) {
        var _r: *IAsyncOperation(OfflineMapPackageQueryResult) = undefined;
        const _c = self.vtable.FindPackagesInGeocircleAsync(@ptrCast(self), queryCircle, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.OfflineMaps.IOfflineMapPackageStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "185e7922-a831-4ab0-941f-6998fa929285";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindPackagesAsync: *const fn(self: *anyopaque, queryPoint: *Geopoint, _r: **IAsyncOperation(OfflineMapPackageQueryResult)) callconv(.winapi) HRESULT,
        FindPackagesInBoundingBoxAsync: *const fn(self: *anyopaque, queryBoundingBox: *GeoboundingBox, _r: **IAsyncOperation(OfflineMapPackageQueryResult)) callconv(.winapi) HRESULT,
        FindPackagesInGeocircleAsync: *const fn(self: *anyopaque, queryCircle: *Geocircle, _r: **IAsyncOperation(OfflineMapPackageQueryResult)) callconv(.winapi) HRESULT,
    };
};
pub const OfflineMapPackage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!OfflineMapPackageStatus {
        const this: *IOfflineMapPackage = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IOfflineMapPackage = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getEnclosingRegionName(self: *@This()) core.HResult!HSTRING {
        const this: *IOfflineMapPackage = @ptrCast(self);
        return try this.getEnclosingRegionName();
    }
    pub fn getEstimatedSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IOfflineMapPackage = @ptrCast(self);
        return try this.getEstimatedSizeInBytes();
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IOfflineMapPackage = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn addStatusChanged(self: *@This(), value: *TypedEventHandler(OfflineMapPackage,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IOfflineMapPackage = @ptrCast(self);
        return try this.addStatusChanged(value);
    }
    pub fn RequestStartDownloadAsync(self: *@This()) core.HResult!*IAsyncOperation(OfflineMapPackageStartDownloadResult) {
        const this: *IOfflineMapPackage = @ptrCast(self);
        return try this.RequestStartDownloadAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindPackagesAsync(queryPoint: *Geopoint) core.HResult!*IAsyncOperation(OfflineMapPackageQueryResult) {
        const _f = @This().IOfflineMapPackageStaticsCache.get();
        return try _f.FindPackagesAsync(queryPoint);
    }
    pub fn FindPackagesInBoundingBoxAsync(queryBoundingBox: *GeoboundingBox) core.HResult!*IAsyncOperation(OfflineMapPackageQueryResult) {
        const _f = @This().IOfflineMapPackageStaticsCache.get();
        return try _f.FindPackagesInBoundingBoxAsync(queryBoundingBox);
    }
    pub fn FindPackagesInGeocircleAsync(queryCircle: *Geocircle) core.HResult!*IAsyncOperation(OfflineMapPackageQueryResult) {
        const _f = @This().IOfflineMapPackageStaticsCache.get();
        return try _f.FindPackagesInGeocircleAsync(queryCircle);
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.OfflineMaps.OfflineMapPackage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOfflineMapPackage.GUID;
    pub const IID: Guid = IOfflineMapPackage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOfflineMapPackage.SIGNATURE);
    var _IOfflineMapPackageStaticsCache: FactoryCache(IOfflineMapPackageStatics, RUNTIME_NAME) = .{};
};
pub const OfflineMapPackageQueryResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!OfflineMapPackageQueryStatus {
        const this: *IOfflineMapPackageQueryResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getPackages(self: *@This()) core.HResult!*IVectorView(OfflineMapPackage) {
        const this: *IOfflineMapPackageQueryResult = @ptrCast(self);
        return try this.getPackages();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOfflineMapPackageQueryResult.GUID;
    pub const IID: Guid = IOfflineMapPackageQueryResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOfflineMapPackageQueryResult.SIGNATURE);
};
pub const OfflineMapPackageQueryStatus = enum(i32) {
    Success = 0,
    UnknownError = 1,
    InvalidCredentials = 2,
    NetworkFailure = 3,
};
pub const OfflineMapPackageStartDownloadResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!OfflineMapPackageStartDownloadStatus {
        const this: *IOfflineMapPackageStartDownloadResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOfflineMapPackageStartDownloadResult.GUID;
    pub const IID: Guid = IOfflineMapPackageStartDownloadResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOfflineMapPackageStartDownloadResult.SIGNATURE);
};
pub const OfflineMapPackageStartDownloadStatus = enum(i32) {
    Success = 0,
    UnknownError = 1,
    InvalidCredentials = 2,
    DeniedWithoutCapability = 3,
};
pub const OfflineMapPackageStatus = enum(i32) {
    NotDownloaded = 0,
    Downloading = 1,
    Downloaded = 2,
    Deleting = 3,
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const GeoboundingBox = @import("../../Devices/Geolocation.zig").GeoboundingBox;
const Geocircle = @import("../../Devices/Geolocation.zig").Geocircle;
const FactoryCache = @import("../../core.zig").FactoryCache;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const Geopoint = @import("../../Devices/Geolocation.zig").Geopoint;
const HSTRING = @import("../../root.zig").HSTRING;
