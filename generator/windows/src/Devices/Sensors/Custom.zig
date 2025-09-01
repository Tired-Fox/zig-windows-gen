pub const CustomSensor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*CustomSensorReading {
        const this: *ICustomSensor = @ptrCast(self);
        return try this.GetCurrentReading();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *ICustomSensor = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const this: *ICustomSensor = @ptrCast(self);
        return try this.putReportInterval(value);
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *ICustomSensor = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ICustomSensor = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(CustomSensor,CustomSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICustomSensor = @ptrCast(self);
        return try this.addReadingChanged(handler);
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICustomSensor = @ptrCast(self);
        return try this.removeReadingChanged(token);
    }
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICustomSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICustomSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReportLatency(value);
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var this: ?*ICustomSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICustomSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReportLatency();
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var this: ?*ICustomSensor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICustomSensor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBatchSize();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector(interfaceId: *Guid) core.HResult!HSTRING {
        const _f = @This().ICustomSensorStaticsCache.get();
        return try _f.GetDeviceSelector(interfaceId);
    }
    pub fn FromIdAsync(sensorId: HSTRING) core.HResult!*IAsyncOperation(CustomSensor) {
        const _f = @This().ICustomSensorStaticsCache.get();
        return try _f.FromIdAsync(sensorId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Custom.CustomSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICustomSensor.GUID;
    pub const IID: Guid = ICustomSensor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICustomSensor.SIGNATURE);
    var _ICustomSensorStaticsCache: FactoryCache(ICustomSensorStatics, RUNTIME_NAME) = .{};
};
pub const CustomSensorReading = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ICustomSensorReading = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *ICustomSensorReading = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*ICustomSensorReading2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICustomSensorReading2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPerformanceCount();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Custom.CustomSensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICustomSensorReading.GUID;
    pub const IID: Guid = ICustomSensorReading.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICustomSensorReading.SIGNATURE);
};
pub const CustomSensorReadingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReading(self: *@This()) core.HResult!*CustomSensorReading {
        const this: *ICustomSensorReadingChangedEventArgs = @ptrCast(self);
        return try this.getReading();
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Custom.CustomSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICustomSensorReadingChangedEventArgs.GUID;
    pub const IID: Guid = ICustomSensorReadingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICustomSensorReadingChangedEventArgs.SIGNATURE);
};
pub const ICustomSensor = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentReading(self: *@This()) core.HResult!*CustomSensorReading {
        var _r: *CustomSensorReading = undefined;
        const _c = self.vtable.GetCurrentReading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReportInterval(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReadingChanged(self: *@This(), handler: *TypedEventHandler(CustomSensor,CustomSensorReadingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Custom.ICustomSensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a136f9ad-4034-4b4d-99dd-531aac649c09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentReading: *const fn(self: *anyopaque, _r: **CustomSensorReading) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ReportInterval: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_ReadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CustomSensor,CustomSensorReadingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICustomSensor2 = extern struct {
    vtable: *const VTable,
    pub fn putReportLatency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ReportLatency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReportLatency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Custom.ICustomSensor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20db3111-ec58-4d9f-bfbd-e77825088510";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ReportLatency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ReportLatency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ICustomSensorReading = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Custom.ICustomSensorReading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64004f4d-446a-4366-a87a-5f963268ec53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const ICustomSensorReading2 = extern struct {
    vtable: *const VTable,
    pub fn getPerformanceCount(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PerformanceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Custom.ICustomSensorReading2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "223c98ea-bf73-4992-9a48-d3c897594ccb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PerformanceCount: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const ICustomSensorReadingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReading(self: *@This()) core.HResult!*CustomSensorReading {
        var _r: *CustomSensorReading = undefined;
        const _c = self.vtable.get_Reading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Custom.ICustomSensorReadingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b202023-cffd-4cc1-8ff0-e21823d76fcc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reading: *const fn(self: *anyopaque, _r: **CustomSensorReading) callconv(.winapi) HRESULT,
    };
};
pub const ICustomSensorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), interfaceId: *Guid) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), interfaceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), sensorId: HSTRING) core.HResult!*IAsyncOperation(CustomSensor) {
        var _r: *IAsyncOperation(CustomSensor) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), sensorId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Sensors.Custom.ICustomSensorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "992052cf-f422-4c7d-836b-e7dc74a7124b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, interfaceId: *Guid, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, sensorId: HSTRING, _r: **IAsyncOperation(CustomSensor)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const DateTime = @import("../../Foundation.zig").DateTime;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const IReference = @import("../../Foundation.zig").IReference;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
