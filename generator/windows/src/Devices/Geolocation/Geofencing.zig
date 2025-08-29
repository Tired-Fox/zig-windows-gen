pub const Geofence = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IGeofence = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IGeofence = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getDwellTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IGeofence = @ptrCast(self);
        return try this.getDwellTime();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IGeofence = @ptrCast(self);
        return try this.getId();
    }
    pub fn getMonitoredStates(self: *@This()) core.HResult!MonitoredGeofenceStates {
        const this: *IGeofence = @ptrCast(self);
        return try this.getMonitoredStates();
    }
    pub fn getGeoshape(self: *@This()) core.HResult!*IGeoshape {
        const this: *IGeofence = @ptrCast(self);
        return try this.getGeoshape();
    }
    pub fn getSingleUse(self: *@This()) core.HResult!bool {
        const this: *IGeofence = @ptrCast(self);
        return try this.getSingleUse();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(id: HSTRING, geoshape: *IGeoshape) core.HResult!*Geofence {
        const factory = @This().IGeofenceFactoryCache.get();
        return try factory.Create(id, geoshape);
    }
    pub fn CreateWithMonitorStates(id: HSTRING, geoshape: *IGeoshape, monitoredStates: MonitoredGeofenceStates, singleUse: bool) core.HResult!*Geofence {
        const factory = @This().IGeofenceFactoryCache.get();
        return try factory.CreateWithMonitorStates(id, geoshape, monitoredStates, singleUse);
    }
    pub fn CreateWithMonitorStatesAndDwellTime(id: HSTRING, geoshape: *IGeoshape, monitoredStates: MonitoredGeofenceStates, singleUse: bool, dwellTime: TimeSpan) core.HResult!*Geofence {
        const factory = @This().IGeofenceFactoryCache.get();
        return try factory.CreateWithMonitorStatesAndDwellTime(id, geoshape, monitoredStates, singleUse, dwellTime);
    }
    pub fn CreateWithMonitorStatesDwellTimeStartTimeAndDuration(id: HSTRING, geoshape: *IGeoshape, monitoredStates: MonitoredGeofenceStates, singleUse: bool, dwellTime: TimeSpan, startTime: DateTime, duration: TimeSpan) core.HResult!*Geofence {
        const factory = @This().IGeofenceFactoryCache.get();
        return try factory.CreateWithMonitorStatesDwellTimeStartTimeAndDuration(id, geoshape, monitoredStates, singleUse, dwellTime, startTime, duration);
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geofencing.Geofence";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeofence.GUID;
    pub const IID: Guid = IGeofence.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeofence.SIGNATURE);
    var _IGeofenceFactoryCache: FactoryCache(IGeofenceFactory, RUNTIME_NAME) = .{};
};
pub const GeofenceMonitor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GeofenceMonitorStatus {
        const this: *IGeofenceMonitor = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getGeofences(self: *@This()) core.HResult!*IVector(Geofence) {
        const this: *IGeofenceMonitor = @ptrCast(self);
        return try this.getGeofences();
    }
    pub fn getLastKnownGeoposition(self: *@This()) core.HResult!*Geoposition {
        const this: *IGeofenceMonitor = @ptrCast(self);
        return try this.getLastKnownGeoposition();
    }
    pub fn addGeofenceStateChanged(self: *@This(), eventHandler: *TypedEventHandler(GeofenceMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGeofenceMonitor = @ptrCast(self);
        return try this.addGeofenceStateChanged(eventHandler);
    }
    pub fn removeGeofenceStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGeofenceMonitor = @ptrCast(self);
        return try this.removeGeofenceStateChanged(token);
    }
    pub fn ReadReports(self: *@This()) core.HResult!*IVectorView(GeofenceStateChangeReport) {
        const this: *IGeofenceMonitor = @ptrCast(self);
        return try this.ReadReports();
    }
    pub fn addStatusChanged(self: *@This(), eventHandler: *TypedEventHandler(GeofenceMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGeofenceMonitor = @ptrCast(self);
        return try this.addStatusChanged(eventHandler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGeofenceMonitor = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*GeofenceMonitor {
        const factory = @This().IGeofenceMonitorStaticsCache.get();
        return try factory.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geofencing.GeofenceMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeofenceMonitor.GUID;
    pub const IID: Guid = IGeofenceMonitor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeofenceMonitor.SIGNATURE);
    var _IGeofenceMonitorStaticsCache: FactoryCache(IGeofenceMonitorStatics, RUNTIME_NAME) = .{};
};
pub const GeofenceMonitorStatus = enum(i32) {
    Ready = 0,
    Initializing = 1,
    NoData = 2,
    Disabled = 3,
    NotInitialized = 4,
    NotAvailable = 5,
};
pub const GeofenceRemovalReason = enum(i32) {
    Used = 0,
    Expired = 1,
};
pub const GeofenceState = enum(i32) {
    None = 0,
    Entered = 1,
    Exited = 2,
    Removed = 4,
};
pub const GeofenceStateChangeReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNewState(self: *@This()) core.HResult!GeofenceState {
        const this: *IGeofenceStateChangeReport = @ptrCast(self);
        return try this.getNewState();
    }
    pub fn getGeofence(self: *@This()) core.HResult!*Geofence {
        const this: *IGeofenceStateChangeReport = @ptrCast(self);
        return try this.getGeofence();
    }
    pub fn getGeoposition(self: *@This()) core.HResult!*Geoposition {
        const this: *IGeofenceStateChangeReport = @ptrCast(self);
        return try this.getGeoposition();
    }
    pub fn getRemovalReason(self: *@This()) core.HResult!GeofenceRemovalReason {
        const this: *IGeofenceStateChangeReport = @ptrCast(self);
        return try this.getRemovalReason();
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geofencing.GeofenceStateChangeReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeofenceStateChangeReport.GUID;
    pub const IID: Guid = IGeofenceStateChangeReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeofenceStateChangeReport.SIGNATURE);
};
pub const IGeofence = extern struct {
    vtable: *const VTable,
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDwellTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DwellTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMonitoredStates(self: *@This()) core.HResult!MonitoredGeofenceStates {
        var _r: MonitoredGeofenceStates = undefined;
        const _c = self.vtable.get_MonitoredStates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGeoshape(self: *@This()) core.HResult!*IGeoshape {
        var _r: *IGeoshape = undefined;
        const _c = self.vtable.get_Geoshape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSingleUse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SingleUse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geofencing.IGeofence";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c090823-edb8-47e0-8245-5bf61d321f2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_DwellTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MonitoredStates: *const fn(self: *anyopaque, _r: *MonitoredGeofenceStates) callconv(.winapi) HRESULT,
        get_Geoshape: *const fn(self: *anyopaque, _r: **IGeoshape) callconv(.winapi) HRESULT,
        get_SingleUse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGeofenceFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), id: HSTRING, geoshape: *IGeoshape) core.HResult!*Geofence {
        var _r: *Geofence = undefined;
        const _c = self.vtable.Create(@ptrCast(self), id, geoshape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithMonitorStates(self: *@This(), id: HSTRING, geoshape: *IGeoshape, monitoredStates: MonitoredGeofenceStates, singleUse: bool) core.HResult!*Geofence {
        var _r: *Geofence = undefined;
        const _c = self.vtable.CreateWithMonitorStates(@ptrCast(self), id, geoshape, monitoredStates, singleUse, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithMonitorStatesAndDwellTime(self: *@This(), id: HSTRING, geoshape: *IGeoshape, monitoredStates: MonitoredGeofenceStates, singleUse: bool, dwellTime: TimeSpan) core.HResult!*Geofence {
        var _r: *Geofence = undefined;
        const _c = self.vtable.CreateWithMonitorStatesAndDwellTime(@ptrCast(self), id, geoshape, monitoredStates, singleUse, dwellTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithMonitorStatesDwellTimeStartTimeAndDuration(self: *@This(), id: HSTRING, geoshape: *IGeoshape, monitoredStates: MonitoredGeofenceStates, singleUse: bool, dwellTime: TimeSpan, startTime: DateTime, duration: TimeSpan) core.HResult!*Geofence {
        var _r: *Geofence = undefined;
        const _c = self.vtable.CreateWithMonitorStatesDwellTimeStartTimeAndDuration(@ptrCast(self), id, geoshape, monitoredStates, singleUse, dwellTime, startTime, duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geofencing.IGeofenceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "841f624b-325f-4b90-bca7-2b8022a93796";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, id: HSTRING, geoshape: *IGeoshape, _r: **Geofence) callconv(.winapi) HRESULT,
        CreateWithMonitorStates: *const fn(self: *anyopaque, id: HSTRING, geoshape: *IGeoshape, monitoredStates: MonitoredGeofenceStates, singleUse: bool, _r: **Geofence) callconv(.winapi) HRESULT,
        CreateWithMonitorStatesAndDwellTime: *const fn(self: *anyopaque, id: HSTRING, geoshape: *IGeoshape, monitoredStates: MonitoredGeofenceStates, singleUse: bool, dwellTime: TimeSpan, _r: **Geofence) callconv(.winapi) HRESULT,
        CreateWithMonitorStatesDwellTimeStartTimeAndDuration: *const fn(self: *anyopaque, id: HSTRING, geoshape: *IGeoshape, monitoredStates: MonitoredGeofenceStates, singleUse: bool, dwellTime: TimeSpan, startTime: DateTime, duration: TimeSpan, _r: **Geofence) callconv(.winapi) HRESULT,
    };
};
pub const IGeofenceMonitor = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GeofenceMonitorStatus {
        var _r: GeofenceMonitorStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGeofences(self: *@This()) core.HResult!*IVector(Geofence) {
        var _r: *IVector(Geofence) = undefined;
        const _c = self.vtable.get_Geofences(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastKnownGeoposition(self: *@This()) core.HResult!*Geoposition {
        var _r: *Geoposition = undefined;
        const _c = self.vtable.get_LastKnownGeoposition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addGeofenceStateChanged(self: *@This(), eventHandler: *TypedEventHandler(GeofenceMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GeofenceStateChanged(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGeofenceStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GeofenceStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadReports(self: *@This()) core.HResult!*IVectorView(GeofenceStateChangeReport) {
        var _r: *IVectorView(GeofenceStateChangeReport) = undefined;
        const _c = self.vtable.ReadReports(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusChanged(self: *@This(), eventHandler: *TypedEventHandler(GeofenceMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c0f5f78-1c1f-4621-bbbd-833b92247226";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GeofenceMonitorStatus) callconv(.winapi) HRESULT,
        get_Geofences: *const fn(self: *anyopaque, _r: **IVector(Geofence)) callconv(.winapi) HRESULT,
        get_LastKnownGeoposition: *const fn(self: *anyopaque, _r: **Geoposition) callconv(.winapi) HRESULT,
        add_GeofenceStateChanged: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(GeofenceMonitor,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GeofenceStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        ReadReports: *const fn(self: *anyopaque, _r: **IVectorView(GeofenceStateChangeReport)) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(GeofenceMonitor,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGeofenceMonitorStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*GeofenceMonitor {
        var _r: *GeofenceMonitor = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geofencing.IGeofenceMonitorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2dd32fcf-7e75-4899-ace3-2bd0a65cce06";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **GeofenceMonitor) callconv(.winapi) HRESULT,
    };
};
pub const IGeofenceStateChangeReport = extern struct {
    vtable: *const VTable,
    pub fn getNewState(self: *@This()) core.HResult!GeofenceState {
        var _r: GeofenceState = undefined;
        const _c = self.vtable.get_NewState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGeofence(self: *@This()) core.HResult!*Geofence {
        var _r: *Geofence = undefined;
        const _c = self.vtable.get_Geofence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGeoposition(self: *@This()) core.HResult!*Geoposition {
        var _r: *Geoposition = undefined;
        const _c = self.vtable.get_Geoposition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemovalReason(self: *@This()) core.HResult!GeofenceRemovalReason {
        var _r: GeofenceRemovalReason = undefined;
        const _c = self.vtable.get_RemovalReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Geofencing.IGeofenceStateChangeReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a243c18-2464-4c89-be05-b3ffff5babc5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewState: *const fn(self: *anyopaque, _r: *GeofenceState) callconv(.winapi) HRESULT,
        get_Geofence: *const fn(self: *anyopaque, _r: **Geofence) callconv(.winapi) HRESULT,
        get_Geoposition: *const fn(self: *anyopaque, _r: **Geoposition) callconv(.winapi) HRESULT,
        get_RemovalReason: *const fn(self: *anyopaque, _r: *GeofenceRemovalReason) callconv(.winapi) HRESULT,
    };
};
pub const MonitoredGeofenceStates = enum(i32) {
    None = 0,
    Entered = 1,
    Exited = 2,
    Removed = 4,
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const DateTime = @import("../../Foundation.zig").DateTime;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const IGeoshape = @import("../Geolocation.zig").IGeoshape;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Geoposition = @import("../Geolocation.zig").Geoposition;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
