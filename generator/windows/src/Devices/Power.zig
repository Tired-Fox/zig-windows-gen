pub const IPowerGridData = extern struct {
    vtable: *const VTable,
    pub fn getSeverity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Severity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLowUserExperienceImpact(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLowUserExperienceImpact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.IPowerGridData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c360fb17-fc92-5f6e-999d-16a4cf9d6c40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Severity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IsLowUserExperienceImpact: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPowerGridForecast = extern struct {
    vtable: *const VTable,
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBlockDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_BlockDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForecast(self: *@This()) core.HResult!*IVectorView(PowerGridData) {
        var _r: *IVectorView(PowerGridData) = undefined;
        const _c = self.vtable.get_Forecast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.IPowerGridForecast";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "077e4de9-ed60-58bb-a850-003c6a138685";
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
        get_BlockDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Forecast: *const fn(self: *anyopaque, _r: **IVectorView(PowerGridData)) callconv(.winapi) HRESULT,
    };
};
pub const IPowerGridForecastStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForecast(self: *@This()) core.HResult!*PowerGridForecast {
        var _r: *PowerGridForecast = undefined;
        const _c = self.vtable.GetForecast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addForecastUpdated(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ForecastUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeForecastUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ForecastUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.IPowerGridForecastStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b78c806-2e4e-5bcc-bb34-cb81c60f9e12";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForecast: *const fn(self: *anyopaque, _r: **PowerGridForecast) callconv(.winapi) HRESULT,
        add_ForecastUpdated: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ForecastUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const PowerGridData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSeverity(self: *@This()) core.HResult!f64 {
        const this: *IPowerGridData = @ptrCast(self);
        return try this.getSeverity();
    }
    pub fn getIsLowUserExperienceImpact(self: *@This()) core.HResult!bool {
        const this: *IPowerGridData = @ptrCast(self);
        return try this.getIsLowUserExperienceImpact();
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.PowerGridData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPowerGridData.GUID;
    pub const IID: Guid = IPowerGridData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPowerGridData.SIGNATURE);
};
pub const PowerGridForecast = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IPowerGridForecast = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn getBlockDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IPowerGridForecast = @ptrCast(self);
        return try this.getBlockDuration();
    }
    pub fn getForecast(self: *@This()) core.HResult!*IVectorView(PowerGridData) {
        const this: *IPowerGridForecast = @ptrCast(self);
        return try this.getForecast();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForecast() core.HResult!*PowerGridForecast {
        const factory = @This().IPowerGridForecastStaticsCache.get();
        return try factory.GetForecast();
    }
    pub fn add_ForecastUpdated(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IPowerGridForecastStaticsCache.get();
        return try factory.addForecastUpdated(handler);
    }
    pub fn remove_ForecastUpdated(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IPowerGridForecastStaticsCache.get();
        return try factory.removeForecastUpdated(token);
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.PowerGridForecast";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPowerGridForecast.GUID;
    pub const IID: Guid = IPowerGridForecast.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPowerGridForecast.SIGNATURE);
    var _IPowerGridForecastStaticsCache: FactoryCache(IPowerGridForecastStatics, RUNTIME_NAME) = .{};
};
pub const Battery = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IBattery = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn GetReport(self: *@This()) core.HResult!*BatteryReport {
        const this: *IBattery = @ptrCast(self);
        return try this.GetReport();
    }
    pub fn addReportUpdated(self: *@This(), handler: *TypedEventHandler(Battery,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IBattery = @ptrCast(self);
        return try this.addReportUpdated(handler);
    }
    pub fn removeReportUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBattery = @ptrCast(self);
        return try this.removeReportUpdated(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_AggregateBattery() core.HResult!*Battery {
        const factory = @This().IBatteryStaticsCache.get();
        return try factory.getAggregateBattery();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Battery) {
        const factory = @This().IBatteryStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IBatteryStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.Battery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBattery.GUID;
    pub const IID: Guid = IBattery.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBattery.SIGNATURE);
    var _IBatteryStaticsCache: FactoryCache(IBatteryStatics, RUNTIME_NAME) = .{};
};
pub const BatteryReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChargeRateInMilliwatts(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IBatteryReport = @ptrCast(self);
        return try this.getChargeRateInMilliwatts();
    }
    pub fn getDesignCapacityInMilliwattHours(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IBatteryReport = @ptrCast(self);
        return try this.getDesignCapacityInMilliwattHours();
    }
    pub fn getFullChargeCapacityInMilliwattHours(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IBatteryReport = @ptrCast(self);
        return try this.getFullChargeCapacityInMilliwattHours();
    }
    pub fn getRemainingCapacityInMilliwattHours(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IBatteryReport = @ptrCast(self);
        return try this.getRemainingCapacityInMilliwattHours();
    }
    pub fn getStatus(self: *@This()) core.HResult!BatteryStatus {
        const this: *IBatteryReport = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.BatteryReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBatteryReport.GUID;
    pub const IID: Guid = IBatteryReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBatteryReport.SIGNATURE);
};
pub const IBattery = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetReport(self: *@This()) core.HResult!*BatteryReport {
        var _r: *BatteryReport = undefined;
        const _c = self.vtable.GetReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReportUpdated(self: *@This(), handler: *TypedEventHandler(Battery,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReportUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReportUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReportUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.IBattery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc894fc6-0072-47c8-8b5d-614aaa7a437e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetReport: *const fn(self: *anyopaque, _r: **BatteryReport) callconv(.winapi) HRESULT,
        add_ReportUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(Battery,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReportUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBatteryReport = extern struct {
    vtable: *const VTable,
    pub fn getChargeRateInMilliwatts(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_ChargeRateInMilliwatts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesignCapacityInMilliwattHours(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_DesignCapacityInMilliwattHours(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFullChargeCapacityInMilliwattHours(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_FullChargeCapacityInMilliwattHours(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemainingCapacityInMilliwattHours(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_RemainingCapacityInMilliwattHours(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!BatteryStatus {
        var _r: BatteryStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.IBatteryReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9858c3a-4e13-420a-a8d0-24f18f395401";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChargeRateInMilliwatts: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_DesignCapacityInMilliwattHours: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_FullChargeCapacityInMilliwattHours: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_RemainingCapacityInMilliwattHours: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *BatteryStatus) callconv(.winapi) HRESULT,
    };
};
pub const IBatteryStatics = extern struct {
    vtable: *const VTable,
    pub fn getAggregateBattery(self: *@This()) core.HResult!*Battery {
        var _r: *Battery = undefined;
        const _c = self.vtable.get_AggregateBattery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Battery) {
        var _r: *IAsyncOperation(Battery) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Power.IBatteryStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79cd72b6-9e5e-4452-bea6-dfcd541e597f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AggregateBattery: *const fn(self: *anyopaque, _r: **Battery) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Battery)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const HSTRING = @import("../root.zig").HSTRING;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const BatteryStatus = @import("../System/Power.zig").BatteryStatus;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const FactoryCache = @import("../core.zig").FactoryCache;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
