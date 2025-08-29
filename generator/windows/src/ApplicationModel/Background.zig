pub const CommunicationBlockingAppSetAsActiveTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICommunicationBlockingAppSetAsActiveTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.CommunicationBlockingAppSetAsActiveTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICommunicationBlockingAppSetAsActiveTrigger.GUID;
    pub const IID: Guid = ICommunicationBlockingAppSetAsActiveTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICommunicationBlockingAppSetAsActiveTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ICommunicationBlockingAppSetAsActiveTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ICommunicationBlockingAppSetAsActiveTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb91f28a-16a5-486d-974c-7835a8477be2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneTrigger = extern struct {
    vtable: *const VTable,
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OneShot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTriggerType(self: *@This()) core.HResult!PhoneTriggerType {
        var _r: PhoneTriggerType = undefined;
        const _c = self.vtable.get_TriggerType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IPhoneTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8dcfe99b-d4c5-49f1-b7d3-82e87a0e9dde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OneShot: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_TriggerType: *const fn(self: *anyopaque, _r: *PhoneTriggerType) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), type: PhoneTriggerType, oneShot: bool) core.HResult!*PhoneTrigger {
        var _r: *PhoneTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), type, oneShot, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IPhoneTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0d93cda-5fc1-48fb-a546-32262040157b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, type: PhoneTriggerType, oneShot: bool, _r: **PhoneTrigger) callconv(.winapi) HRESULT,
    };
};
pub const PhoneTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        const this: *IPhoneTrigger = @ptrCast(self);
        return try this.getOneShot();
    }
    pub fn getTriggerType(self: *@This()) core.HResult!PhoneTriggerType {
        const this: *IPhoneTrigger = @ptrCast(self);
        return try this.getTriggerType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(type: PhoneTriggerType, oneShot: bool) core.HResult!*PhoneTrigger {
        const factory = @This().IPhoneTriggerFactoryCache.get();
        return try factory.Create(type, oneShot);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.PhoneTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneTrigger.GUID;
    pub const IID: Guid = IPhoneTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneTrigger.SIGNATURE);
    var _IPhoneTriggerFactoryCache: FactoryCache(IPhoneTriggerFactory, RUNTIME_NAME) = .{};
};
pub const ISmartCardTrigger = extern struct {
    vtable: *const VTable,
    pub fn getTriggerType(self: *@This()) core.HResult!SmartCardTriggerType {
        var _r: SmartCardTriggerType = undefined;
        const _c = self.vtable.get_TriggerType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISmartCardTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f53bc5ac-84ca-4972-8ce9-e58f97b37a50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TriggerType: *const fn(self: *anyopaque, _r: *SmartCardTriggerType) callconv(.winapi) HRESULT,
    };
};
pub const ISmartCardTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), triggerType: SmartCardTriggerType) core.HResult!*SmartCardTrigger {
        var _r: *SmartCardTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), triggerType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISmartCardTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63bf54c3-89c1-4e00-a9d3-97c629269dad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, triggerType: SmartCardTriggerType, _r: **SmartCardTrigger) callconv(.winapi) HRESULT,
    };
};
pub const SmartCardTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTriggerType(self: *@This()) core.HResult!SmartCardTriggerType {
        const this: *ISmartCardTrigger = @ptrCast(self);
        return try this.getTriggerType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(triggerType: SmartCardTriggerType) core.HResult!*SmartCardTrigger {
        const factory = @This().ISmartCardTriggerFactoryCache.get();
        return try factory.Create(triggerType);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.SmartCardTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISmartCardTrigger.GUID;
    pub const IID: Guid = ISmartCardTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISmartCardTrigger.SIGNATURE);
    var _ISmartCardTriggerFactoryCache: FactoryCache(ISmartCardTriggerFactory, RUNTIME_NAME) = .{};
};
pub const AlarmAccessStatus = enum(i32) {
    Unspecified = 0,
    AllowedWithWakeupCapability = 1,
    AllowedWithoutWakeupCapability = 2,
    Denied = 3,
};
pub const AlarmApplicationManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(AlarmAccessStatus) {
        const factory = @This().IAlarmApplicationManagerStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub fn GetAccessStatus() core.HResult!AlarmAccessStatus {
        const factory = @This().IAlarmApplicationManagerStaticsCache.get();
        return try factory.GetAccessStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.AlarmApplicationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAlarmApplicationManagerStaticsCache: FactoryCache(IAlarmApplicationManagerStatics, RUNTIME_NAME) = .{};
};
pub const IAlarmApplicationManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(AlarmAccessStatus) {
        var _r: *IAsyncOperation(AlarmAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccessStatus(self: *@This()) core.HResult!AlarmAccessStatus {
        var _r: AlarmAccessStatus = undefined;
        const _c = self.vtable.GetAccessStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IAlarmApplicationManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca03fa3b-cce6-4de2-b09b-9628bd33bbbe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AlarmAccessStatus)) callconv(.winapi) HRESULT,
        GetAccessStatus: *const fn(self: *anyopaque, _r: *AlarmAccessStatus) callconv(.winapi) HRESULT,
    };
};
pub const ActivitySensorTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSubscribedActivities(self: *@This()) core.HResult!*IVector(ActivityType) {
        const this: *IActivitySensorTrigger = @ptrCast(self);
        return try this.getSubscribedActivities();
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IActivitySensorTrigger = @ptrCast(self);
        return try this.getReportInterval();
    }
    pub fn getSupportedActivities(self: *@This()) core.HResult!*IVectorView(ActivityType) {
        const this: *IActivitySensorTrigger = @ptrCast(self);
        return try this.getSupportedActivities();
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        const this: *IActivitySensorTrigger = @ptrCast(self);
        return try this.getMinimumReportInterval();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(reportIntervalInMilliseconds: u32) core.HResult!*ActivitySensorTrigger {
        const factory = @This().IActivitySensorTriggerFactoryCache.get();
        return try factory.Create(reportIntervalInMilliseconds);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ActivitySensorTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivitySensorTrigger.GUID;
    pub const IID: Guid = IActivitySensorTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivitySensorTrigger.SIGNATURE);
    var _IActivitySensorTriggerFactoryCache: FactoryCache(IActivitySensorTriggerFactory, RUNTIME_NAME) = .{};
};
pub const ApplicationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestAsync(self: *@This()) core.HResult!*IAsyncOperation(ApplicationTriggerResult) {
        const this: *IApplicationTrigger = @ptrCast(self);
        return try this.RequestAsync();
    }
    pub fn RequestAsync(self: *@This(), arguments: *ValueSet) core.HResult!*IAsyncOperation(ApplicationTriggerResult) {
        const this: *IApplicationTrigger = @ptrCast(self);
        return try this.RequestAsync(arguments);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IApplicationTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ApplicationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationTrigger.GUID;
    pub const IID: Guid = IApplicationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ApplicationTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArguments(self: *@This()) core.HResult!*ValueSet {
        const this: *IApplicationTriggerDetails = @ptrCast(self);
        return try this.getArguments();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ApplicationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationTriggerDetails.GUID;
    pub const IID: Guid = IApplicationTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationTriggerDetails.SIGNATURE);
};
pub const ApplicationTriggerResult = enum(i32) {
    Allowed = 0,
    CurrentlyRunning = 1,
    DisabledByPolicy = 2,
    UnknownError = 3,
};
pub const AppointmentStoreNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppointmentStoreNotificationTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.AppointmentStoreNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppointmentStoreNotificationTrigger.GUID;
    pub const IID: Guid = IAppointmentStoreNotificationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppointmentStoreNotificationTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BackgroundAccessRequestKind = enum(i32) {
    AlwaysAllowed = 0,
    AllowedSubjectToSystemPolicy = 1,
};
pub const BackgroundAccessStatus = enum(i32) {
    Unspecified = 0,
    AllowedWithAlwaysOnRealTimeConnectivity = 1,
    AllowedMayUseActiveRealTimeConnectivity = 2,
    Denied = 3,
    AlwaysAllowed = 4,
    AllowedSubjectToSystemPolicy = 5,
    DeniedBySystemPolicy = 6,
    DeniedByUser = 7,
};
pub const BackgroundExecutionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(BackgroundAccessStatus) {
        const factory = @This().IBackgroundExecutionManagerStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub fn RequestAccessAsync(applicationId: HSTRING) core.HResult!*IAsyncOperation(BackgroundAccessStatus) {
        const factory = @This().IBackgroundExecutionManagerStaticsCache.get();
        return try factory.RequestAccessAsync(applicationId);
    }
    pub fn RemoveAccess() core.HResult!void {
        const factory = @This().IBackgroundExecutionManagerStaticsCache.get();
        return try factory.RemoveAccess();
    }
    pub fn RemoveAccess(applicationId: HSTRING) core.HResult!void {
        const factory = @This().IBackgroundExecutionManagerStaticsCache.get();
        return try factory.RemoveAccess(applicationId);
    }
    pub fn GetAccessStatus() core.HResult!BackgroundAccessStatus {
        const factory = @This().IBackgroundExecutionManagerStaticsCache.get();
        return try factory.GetAccessStatus();
    }
    pub fn GetAccessStatus(applicationId: HSTRING) core.HResult!BackgroundAccessStatus {
        const factory = @This().IBackgroundExecutionManagerStaticsCache.get();
        return try factory.GetAccessStatus(applicationId);
    }
    pub fn RequestAccessKindAsync(requestedAccess: BackgroundAccessRequestKind, reason: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IBackgroundExecutionManagerStatics2Cache.get();
        return try factory.RequestAccessKindAsync(requestedAccess, reason);
    }
    pub fn RequestAccessKindForModernStandbyAsync(requestedAccess: BackgroundAccessRequestKind, reason: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IBackgroundExecutionManagerStatics3Cache.get();
        return try factory.RequestAccessKindForModernStandbyAsync(requestedAccess, reason);
    }
    pub fn GetAccessStatusForModernStandby() core.HResult!BackgroundAccessStatus {
        const factory = @This().IBackgroundExecutionManagerStatics3Cache.get();
        return try factory.GetAccessStatusForModernStandby();
    }
    pub fn GetAccessStatusForModernStandby(applicationId: HSTRING) core.HResult!BackgroundAccessStatus {
        const factory = @This().IBackgroundExecutionManagerStatics3Cache.get();
        return try factory.GetAccessStatusForModernStandby(applicationId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundExecutionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBackgroundExecutionManagerStaticsCache: FactoryCache(IBackgroundExecutionManagerStatics, RUNTIME_NAME) = .{};
    var _IBackgroundExecutionManagerStatics2Cache: FactoryCache(IBackgroundExecutionManagerStatics2, RUNTIME_NAME) = .{};
    var _IBackgroundExecutionManagerStatics3Cache: FactoryCache(IBackgroundExecutionManagerStatics3, RUNTIME_NAME) = .{};
};
pub const BackgroundTaskBuilder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putTaskEntryPoint(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IBackgroundTaskBuilder = @ptrCast(self);
        return try this.putTaskEntryPoint(value);
    }
    pub fn getTaskEntryPoint(self: *@This()) core.HResult!HSTRING {
        const this: *IBackgroundTaskBuilder = @ptrCast(self);
        return try this.getTaskEntryPoint();
    }
    pub fn SetTrigger(self: *@This(), trigger: *IBackgroundTrigger) core.HResult!void {
        const this: *IBackgroundTaskBuilder = @ptrCast(self);
        return try this.SetTrigger(trigger);
    }
    pub fn AddCondition(self: *@This(), condition: *IBackgroundCondition) core.HResult!void {
        const this: *IBackgroundTaskBuilder = @ptrCast(self);
        return try this.AddCondition(condition);
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IBackgroundTaskBuilder = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IBackgroundTaskBuilder = @ptrCast(self);
        return try this.getName();
    }
    pub fn Register(self: *@This()) core.HResult!*BackgroundTaskRegistration {
        var this: ?*IBackgroundTaskBuilder6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Register();
    }
    pub fn putCancelOnConditionLoss(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBackgroundTaskBuilder2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCancelOnConditionLoss(value);
    }
    pub fn getCancelOnConditionLoss(self: *@This()) core.HResult!bool {
        var this: ?*IBackgroundTaskBuilder2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCancelOnConditionLoss();
    }
    pub fn putIsNetworkRequested(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBackgroundTaskBuilder3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsNetworkRequested(value);
    }
    pub fn getIsNetworkRequested(self: *@This()) core.HResult!bool {
        var this: ?*IBackgroundTaskBuilder3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsNetworkRequested();
    }
    pub fn getTaskGroup(self: *@This()) core.HResult!*BackgroundTaskRegistrationGroup {
        var this: ?*IBackgroundTaskBuilder4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTaskGroup();
    }
    pub fn putTaskGroup(self: *@This(), value: *BackgroundTaskRegistrationGroup) core.HResult!void {
        var this: ?*IBackgroundTaskBuilder4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTaskGroup(value);
    }
    pub fn SetTaskEntryPointClsid(self: *@This(), TaskEntryPoint: *Guid) core.HResult!void {
        var this: ?*IBackgroundTaskBuilder5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetTaskEntryPointClsid(TaskEntryPoint);
    }
    pub fn getAllowRunningTaskInStandby(self: *@This()) core.HResult!bool {
        var this: ?*IBackgroundTaskBuilder6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowRunningTaskInStandby();
    }
    pub fn putAllowRunningTaskInStandby(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBackgroundTaskBuilder6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowRunningTaskInStandby(value);
    }
    pub fn Validate(self: *@This()) core.HResult!bool {
        var this: ?*IBackgroundTaskBuilder6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Validate();
    }
    pub fn Register(self: *@This(), taskName: HSTRING) core.HResult!*BackgroundTaskRegistration {
        var this: ?*IBackgroundTaskBuilder6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskBuilder6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Register(taskName);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTaskBuilder.IID)));
    }
    pub fn getIsRunningTaskInStandbySupported() core.HResult!bool {
        const factory = @This().IBackgroundTaskBuilderStaticsCache.get();
        return try factory.getIsRunningTaskInStandbySupported();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundTaskBuilder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTaskBuilder.GUID;
    pub const IID: Guid = IBackgroundTaskBuilder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTaskBuilder.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBackgroundTaskBuilderStaticsCache: FactoryCache(IBackgroundTaskBuilderStatics, RUNTIME_NAME) = .{};
};
pub const BackgroundTaskCanceledEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IBackgroundTaskInstance, reason: BackgroundTaskCancellationReason) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *IBackgroundTaskInstance, reason: BackgroundTaskCancellationReason) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *IBackgroundTaskInstance, reason: BackgroundTaskCancellationReason) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, reason);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundTaskCanceledEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6c4bac0-51f8-4c57-ac3f-156dd1680c4f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IBackgroundTaskInstance, reason: BackgroundTaskCancellationReason) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const BackgroundTaskCancellationReason = enum(i32) {
    Abort = 0,
    Terminating = 1,
    LoggingOff = 2,
    ServicingUpdate = 3,
    IdleTask = 4,
    Uninstall = 5,
    ConditionLoss = 6,
    SystemPolicy = 7,
    QuietHoursEntered = 8,
    ExecutionTimeExceeded = 9,
    ResourceRevocation = 10,
    EnergySaver = 11,
};
pub const BackgroundTaskCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInstanceId(self: *@This()) core.HResult!*Guid {
        const this: *IBackgroundTaskCompletedEventArgs = @ptrCast(self);
        return try this.getInstanceId();
    }
    pub fn CheckResult(self: *@This()) core.HResult!void {
        const this: *IBackgroundTaskCompletedEventArgs = @ptrCast(self);
        return try this.CheckResult();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundTaskCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTaskCompletedEventArgs.GUID;
    pub const IID: Guid = IBackgroundTaskCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTaskCompletedEventArgs.SIGNATURE);
};
pub const BackgroundTaskCompletedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *BackgroundTaskRegistration, args: *BackgroundTaskCompletedEventArgs) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *BackgroundTaskRegistration, args: *BackgroundTaskCompletedEventArgs) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *BackgroundTaskRegistration, args: *BackgroundTaskCompletedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, args);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundTaskCompletedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b38e929-a086-46a7-a678-439135822bcf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *BackgroundTaskRegistration, args: *BackgroundTaskCompletedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const BackgroundTaskDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IBackgroundTaskDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundTaskDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTaskDeferral.GUID;
    pub const IID: Guid = IBackgroundTaskDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTaskDeferral.SIGNATURE);
};
pub const BackgroundTaskProgressEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInstanceId(self: *@This()) core.HResult!*Guid {
        const this: *IBackgroundTaskProgressEventArgs = @ptrCast(self);
        return try this.getInstanceId();
    }
    pub fn getProgress(self: *@This()) core.HResult!u32 {
        const this: *IBackgroundTaskProgressEventArgs = @ptrCast(self);
        return try this.getProgress();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundTaskProgressEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTaskProgressEventArgs.GUID;
    pub const IID: Guid = IBackgroundTaskProgressEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTaskProgressEventArgs.SIGNATURE);
};
pub const BackgroundTaskProgressEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *BackgroundTaskRegistration, args: *BackgroundTaskProgressEventArgs) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *BackgroundTaskRegistration, args: *BackgroundTaskProgressEventArgs) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *BackgroundTaskRegistration, args: *BackgroundTaskProgressEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, args);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundTaskProgressEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46e0683c-8a88-4c99-804c-76897f6277a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *BackgroundTaskRegistration, args: *BackgroundTaskProgressEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const BackgroundTaskRegistration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskId(self: *@This()) core.HResult!*Guid {
        const this: *IBackgroundTaskRegistration = @ptrCast(self);
        return try this.getTaskId();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IBackgroundTaskRegistration = @ptrCast(self);
        return try this.getName();
    }
    pub fn addProgress(self: *@This(), handler: *BackgroundTaskProgressEventHandler) core.HResult!EventRegistrationToken {
        const this: *IBackgroundTaskRegistration = @ptrCast(self);
        return try this.addProgress(handler);
    }
    pub fn removeProgress(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IBackgroundTaskRegistration = @ptrCast(self);
        return try this.removeProgress(cookie);
    }
    pub fn addCompleted(self: *@This(), handler: *BackgroundTaskCompletedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IBackgroundTaskRegistration = @ptrCast(self);
        return try this.addCompleted(handler);
    }
    pub fn removeCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IBackgroundTaskRegistration = @ptrCast(self);
        return try this.removeCompleted(cookie);
    }
    pub fn Unregister(self: *@This(), cancelTask: bool) core.HResult!void {
        const this: *IBackgroundTaskRegistration = @ptrCast(self);
        return try this.Unregister(cancelTask);
    }
    pub fn getTrigger(self: *@This()) core.HResult!*IBackgroundTrigger {
        var this: ?*IBackgroundTaskRegistration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskRegistration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTrigger();
    }
    pub fn getTaskGroup(self: *@This()) core.HResult!*BackgroundTaskRegistrationGroup {
        var this: ?*IBackgroundTaskRegistration3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskRegistration3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTaskGroup();
    }
    pub fn getTaskLastThrottledInStandbyTimestamp(self: *@This()) core.HResult!DateTime {
        var this: ?*IBackgroundTaskRegistration4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskRegistration4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTaskLastThrottledInStandbyTimestamp();
    }
    pub fn getAppEnergyUsePredictionContribution(self: *@This()) core.HResult!f64 {
        var this: ?*IBackgroundTaskRegistration4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTaskRegistration4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppEnergyUsePredictionContribution();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAllTasks() core.HResult!*IMapView(Guid,IBackgroundTaskRegistration) {
        const factory = @This().IBackgroundTaskRegistrationStaticsCache.get();
        return try factory.getAllTasks();
    }
    pub fn getAllTaskGroups() core.HResult!*IMapView(HSTRING,BackgroundTaskRegistrationGroup) {
        const factory = @This().IBackgroundTaskRegistrationStatics2Cache.get();
        return try factory.getAllTaskGroups();
    }
    pub fn GetTaskGroup(groupId: HSTRING) core.HResult!*BackgroundTaskRegistrationGroup {
        const factory = @This().IBackgroundTaskRegistrationStatics2Cache.get();
        return try factory.GetTaskGroup(groupId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundTaskRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTaskRegistration.GUID;
    pub const IID: Guid = IBackgroundTaskRegistration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTaskRegistration.SIGNATURE);
    var _IBackgroundTaskRegistrationStaticsCache: FactoryCache(IBackgroundTaskRegistrationStatics, RUNTIME_NAME) = .{};
    var _IBackgroundTaskRegistrationStatics2Cache: FactoryCache(IBackgroundTaskRegistrationStatics2, RUNTIME_NAME) = .{};
};
pub const BackgroundTaskRegistrationGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IBackgroundTaskRegistrationGroup = @ptrCast(self);
        return try this.getId();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IBackgroundTaskRegistrationGroup = @ptrCast(self);
        return try this.getName();
    }
    pub fn addBackgroundActivated(self: *@This(), handler: *TypedEventHandler(BackgroundTaskRegistrationGroup,BackgroundActivatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBackgroundTaskRegistrationGroup = @ptrCast(self);
        return try this.addBackgroundActivated(handler);
    }
    pub fn removeBackgroundActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBackgroundTaskRegistrationGroup = @ptrCast(self);
        return try this.removeBackgroundActivated(token);
    }
    pub fn getAllTasks(self: *@This()) core.HResult!*IMapView(Guid,BackgroundTaskRegistration) {
        const this: *IBackgroundTaskRegistrationGroup = @ptrCast(self);
        return try this.getAllTasks();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(id: HSTRING) core.HResult!*BackgroundTaskRegistrationGroup {
        const factory = @This().IBackgroundTaskRegistrationGroupFactoryCache.get();
        return try factory.Create(id);
    }
    pub fn CreateWithName(id: HSTRING, name: HSTRING) core.HResult!*BackgroundTaskRegistrationGroup {
        const factory = @This().IBackgroundTaskRegistrationGroupFactoryCache.get();
        return try factory.CreateWithName(id, name);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTaskRegistrationGroup.GUID;
    pub const IID: Guid = IBackgroundTaskRegistrationGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTaskRegistrationGroup.SIGNATURE);
    var _IBackgroundTaskRegistrationGroupFactoryCache: FactoryCache(IBackgroundTaskRegistrationGroupFactory, RUNTIME_NAME) = .{};
};
pub const BackgroundTaskThrottleCounter = enum(i32) {
    All = 0,
    Cpu = 1,
    Network = 2,
};
pub const BackgroundWorkCost = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAppEnergyUseLevel() core.HResult!EnergyUseLevel {
        const factory = @This().IBackgroundWorkCostStatics2Cache.get();
        return try factory.getAppEnergyUseLevel();
    }
    pub fn getAppEnergyUsePrediction() core.HResult!EnergyUseLevel {
        const factory = @This().IBackgroundWorkCostStatics2Cache.get();
        return try factory.getAppEnergyUsePrediction();
    }
    pub fn getAppLastThrottledInStandbyTimestamp() core.HResult!DateTime {
        const factory = @This().IBackgroundWorkCostStatics2Cache.get();
        return try factory.getAppLastThrottledInStandbyTimestamp();
    }
    pub fn getCurrentBackgroundWorkCost() core.HResult!BackgroundWorkCostValue {
        const factory = @This().IBackgroundWorkCostStaticsCache.get();
        return try factory.getCurrentBackgroundWorkCost();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BackgroundWorkCost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBackgroundWorkCostStatics2Cache: FactoryCache(IBackgroundWorkCostStatics2, RUNTIME_NAME) = .{};
    var _IBackgroundWorkCostStaticsCache: FactoryCache(IBackgroundWorkCostStatics, RUNTIME_NAME) = .{};
};
pub const BackgroundWorkCostValue = enum(i32) {
    Low = 0,
    Medium = 1,
    High = 2,
};
pub const BluetoothLEAdvertisementPublisherTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAdvertisement(self: *@This()) core.HResult!*BluetoothLEAdvertisement {
        const this: *IBluetoothLEAdvertisementPublisherTrigger = @ptrCast(self);
        return try this.getAdvertisement();
    }
    pub fn getPreferredTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreferredTransmitPowerLevelInDBm();
    }
    pub fn putPreferredTransmitPowerLevelInDBm(self: *@This(), value: *IReference(i16)) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPreferredTransmitPowerLevelInDBm(value);
    }
    pub fn getUseExtendedFormat(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseExtendedFormat();
    }
    pub fn putUseExtendedFormat(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseExtendedFormat(value);
    }
    pub fn getIsAnonymous(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAnonymous();
    }
    pub fn putIsAnonymous(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsAnonymous(value);
    }
    pub fn getIncludeTransmitPowerLevel(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIncludeTransmitPowerLevel();
    }
    pub fn putIncludeTransmitPowerLevel(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIncludeTransmitPowerLevel(value);
    }
    pub fn getPrimaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrimaryPhy();
    }
    pub fn putPrimaryPhy(self: *@This(), value: BluetoothLEAdvertisementPhyType) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrimaryPhy(value);
    }
    pub fn getSecondaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSecondaryPhy();
    }
    pub fn putSecondaryPhy(self: *@This(), value: BluetoothLEAdvertisementPhyType) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementPublisherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementPublisherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSecondaryPhy(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothLEAdvertisementPublisherTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BluetoothLEAdvertisementPublisherTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementPublisherTrigger.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementPublisherTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementPublisherTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BluetoothLEAdvertisementWatcherTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMinSamplingInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IBluetoothLEAdvertisementWatcherTrigger = @ptrCast(self);
        return try this.getMinSamplingInterval();
    }
    pub fn getMaxSamplingInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IBluetoothLEAdvertisementWatcherTrigger = @ptrCast(self);
        return try this.getMaxSamplingInterval();
    }
    pub fn getMinOutOfRangeTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IBluetoothLEAdvertisementWatcherTrigger = @ptrCast(self);
        return try this.getMinOutOfRangeTimeout();
    }
    pub fn getMaxOutOfRangeTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IBluetoothLEAdvertisementWatcherTrigger = @ptrCast(self);
        return try this.getMaxOutOfRangeTimeout();
    }
    pub fn getSignalStrengthFilter(self: *@This()) core.HResult!*BluetoothSignalStrengthFilter {
        const this: *IBluetoothLEAdvertisementWatcherTrigger = @ptrCast(self);
        return try this.getSignalStrengthFilter();
    }
    pub fn putSignalStrengthFilter(self: *@This(), value: *BluetoothSignalStrengthFilter) core.HResult!void {
        const this: *IBluetoothLEAdvertisementWatcherTrigger = @ptrCast(self);
        return try this.putSignalStrengthFilter(value);
    }
    pub fn getAdvertisementFilter(self: *@This()) core.HResult!*BluetoothLEAdvertisementFilter {
        const this: *IBluetoothLEAdvertisementWatcherTrigger = @ptrCast(self);
        return try this.getAdvertisementFilter();
    }
    pub fn putAdvertisementFilter(self: *@This(), value: *BluetoothLEAdvertisementFilter) core.HResult!void {
        const this: *IBluetoothLEAdvertisementWatcherTrigger = @ptrCast(self);
        return try this.putAdvertisementFilter(value);
    }
    pub fn getAllowExtendedAdvertisements(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementWatcherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowExtendedAdvertisements();
    }
    pub fn putAllowExtendedAdvertisements(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementWatcherTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcherTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowExtendedAdvertisements(value);
    }
    pub fn getUseUncoded1MPhy(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementWatcherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseUncoded1MPhy();
    }
    pub fn putUseUncoded1MPhy(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementWatcherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseUncoded1MPhy(value);
    }
    pub fn getUseCodedPhy(self: *@This()) core.HResult!bool {
        var this: ?*IBluetoothLEAdvertisementWatcherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseCodedPhy();
    }
    pub fn putUseCodedPhy(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementWatcherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseCodedPhy(value);
    }
    pub fn getScanParameters(self: *@This()) core.HResult!*BluetoothLEAdvertisementScanParameters {
        var this: ?*IBluetoothLEAdvertisementWatcherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScanParameters();
    }
    pub fn putScanParameters(self: *@This(), value: *BluetoothLEAdvertisementScanParameters) core.HResult!void {
        var this: ?*IBluetoothLEAdvertisementWatcherTrigger3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBluetoothLEAdvertisementWatcherTrigger3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putScanParameters(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBluetoothLEAdvertisementWatcherTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.BluetoothLEAdvertisementWatcherTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBluetoothLEAdvertisementWatcherTrigger.GUID;
    pub const IID: Guid = IBluetoothLEAdvertisementWatcherTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBluetoothLEAdvertisementWatcherTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CachedFileUpdaterTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICachedFileUpdaterTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.CachedFileUpdaterTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICachedFileUpdaterTrigger.GUID;
    pub const IID: Guid = ICachedFileUpdaterTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICachedFileUpdaterTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CachedFileUpdaterTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUpdateTarget(self: *@This()) core.HResult!CachedFileTarget {
        const this: *ICachedFileUpdaterTriggerDetails = @ptrCast(self);
        return try this.getUpdateTarget();
    }
    pub fn getUpdateRequest(self: *@This()) core.HResult!*FileUpdateRequest {
        const this: *ICachedFileUpdaterTriggerDetails = @ptrCast(self);
        return try this.getUpdateRequest();
    }
    pub fn getCanRequestUserInput(self: *@This()) core.HResult!bool {
        const this: *ICachedFileUpdaterTriggerDetails = @ptrCast(self);
        return try this.getCanRequestUserInput();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.CachedFileUpdaterTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICachedFileUpdaterTriggerDetails.GUID;
    pub const IID: Guid = ICachedFileUpdaterTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICachedFileUpdaterTriggerDetails.SIGNATURE);
};
pub const ChatMessageNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IChatMessageNotificationTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ChatMessageNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageNotificationTrigger.GUID;
    pub const IID: Guid = IChatMessageNotificationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageNotificationTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ChatMessageReceivedNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IChatMessageReceivedNotificationTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ChatMessageReceivedNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageReceivedNotificationTrigger.GUID;
    pub const IID: Guid = IChatMessageReceivedNotificationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageReceivedNotificationTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactStoreNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactStoreNotificationTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ContactStoreNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactStoreNotificationTrigger.GUID;
    pub const IID: Guid = IContactStoreNotificationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactStoreNotificationTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContentPrefetchTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWaitInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IContentPrefetchTrigger = @ptrCast(self);
        return try this.getWaitInterval();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContentPrefetchTrigger.IID)));
    }
    pub fn Create(waitInterval: TimeSpan) core.HResult!*ContentPrefetchTrigger {
        const factory = @This().IContentPrefetchTriggerFactoryCache.get();
        return try factory.Create(waitInterval);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ContentPrefetchTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentPrefetchTrigger.GUID;
    pub const IID: Guid = IContentPrefetchTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentPrefetchTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IContentPrefetchTriggerFactoryCache: FactoryCache(IContentPrefetchTriggerFactory, RUNTIME_NAME) = .{};
};
pub const ConversationalAgentTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ConversationalAgentTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CustomSystemEventTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTriggerId(self: *@This()) core.HResult!HSTRING {
        const this: *ICustomSystemEventTrigger = @ptrCast(self);
        return try this.getTriggerId();
    }
    pub fn getRecurrence(self: *@This()) core.HResult!CustomSystemEventTriggerRecurrence {
        const this: *ICustomSystemEventTrigger = @ptrCast(self);
        return try this.getRecurrence();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(triggerId: HSTRING, recurrence: CustomSystemEventTriggerRecurrence) core.HResult!*CustomSystemEventTrigger {
        const factory = @This().ICustomSystemEventTriggerFactoryCache.get();
        return try factory.Create(triggerId, recurrence);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.CustomSystemEventTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICustomSystemEventTrigger.GUID;
    pub const IID: Guid = ICustomSystemEventTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICustomSystemEventTrigger.SIGNATURE);
    var _ICustomSystemEventTriggerFactoryCache: FactoryCache(ICustomSystemEventTriggerFactory, RUNTIME_NAME) = .{};
};
pub const CustomSystemEventTriggerRecurrence = enum(i32) {
    Once = 0,
    Always = 1,
};
pub const DeviceConnectionChangeTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceConnectionChangeTrigger = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getCanMaintainConnection(self: *@This()) core.HResult!bool {
        const this: *IDeviceConnectionChangeTrigger = @ptrCast(self);
        return try this.getCanMaintainConnection();
    }
    pub fn getMaintainConnection(self: *@This()) core.HResult!bool {
        const this: *IDeviceConnectionChangeTrigger = @ptrCast(self);
        return try this.getMaintainConnection();
    }
    pub fn putMaintainConnection(self: *@This(), value: bool) core.HResult!void {
        const this: *IDeviceConnectionChangeTrigger = @ptrCast(self);
        return try this.putMaintainConnection(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(DeviceConnectionChangeTrigger) {
        const factory = @This().IDeviceConnectionChangeTriggerStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.DeviceConnectionChangeTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceConnectionChangeTrigger.GUID;
    pub const IID: Guid = IDeviceConnectionChangeTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceConnectionChangeTrigger.SIGNATURE);
    var _IDeviceConnectionChangeTriggerStaticsCache: FactoryCache(IDeviceConnectionChangeTriggerStatics, RUNTIME_NAME) = .{};
};
pub const DeviceManufacturerNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTriggerQualifier(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceManufacturerNotificationTrigger = @ptrCast(self);
        return try this.getTriggerQualifier();
    }
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        const this: *IDeviceManufacturerNotificationTrigger = @ptrCast(self);
        return try this.getOneShot();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(triggerQualifier: HSTRING, oneShot: bool) core.HResult!*DeviceManufacturerNotificationTrigger {
        const factory = @This().IDeviceManufacturerNotificationTriggerFactoryCache.get();
        return try factory.Create(triggerQualifier, oneShot);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.DeviceManufacturerNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceManufacturerNotificationTrigger.GUID;
    pub const IID: Guid = IDeviceManufacturerNotificationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceManufacturerNotificationTrigger.SIGNATURE);
    var _IDeviceManufacturerNotificationTriggerFactoryCache: FactoryCache(IDeviceManufacturerNotificationTriggerFactory, RUNTIME_NAME) = .{};
};
pub const DeviceServicingTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestAsync(self: *@This(), deviceId: HSTRING, expectedDuration: TimeSpan) core.HResult!*IAsyncOperation(DeviceTriggerResult) {
        const this: *IDeviceServicingTrigger = @ptrCast(self);
        return try this.RequestAsync(deviceId, expectedDuration);
    }
    pub fn RequestAsync(self: *@This(), deviceId: HSTRING, expectedDuration: TimeSpan, arguments: HSTRING) core.HResult!*IAsyncOperation(DeviceTriggerResult) {
        const this: *IDeviceServicingTrigger = @ptrCast(self);
        return try this.RequestAsync(deviceId, expectedDuration, arguments);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDeviceServicingTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.DeviceServicingTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceServicingTrigger.GUID;
    pub const IID: Guid = IDeviceServicingTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceServicingTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DeviceTriggerResult = enum(i32) {
    Allowed = 0,
    DeniedByUser = 1,
    DeniedBySystem = 2,
    LowBattery = 3,
};
pub const DeviceUseTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(DeviceTriggerResult) {
        const this: *IDeviceUseTrigger = @ptrCast(self);
        return try this.RequestAsync(deviceId);
    }
    pub fn RequestAsync(self: *@This(), deviceId: HSTRING, arguments: HSTRING) core.HResult!*IAsyncOperation(DeviceTriggerResult) {
        const this: *IDeviceUseTrigger = @ptrCast(self);
        return try this.RequestAsync(deviceId, arguments);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDeviceUseTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.DeviceUseTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceUseTrigger.GUID;
    pub const IID: Guid = IDeviceUseTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceUseTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DeviceWatcherTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.DeviceWatcherTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceWatcherTrigger.GUID;
    pub const IID: Guid = IDeviceWatcherTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceWatcherTrigger.SIGNATURE);
};
pub const EmailStoreNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailStoreNotificationTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.EmailStoreNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailStoreNotificationTrigger.GUID;
    pub const IID: Guid = IEmailStoreNotificationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailStoreNotificationTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const EnergyUseLevel = enum(i32) {
    Unknown = 0,
    UnderHalfOfBudget = 1,
    OverHalfOfBudget = 2,
    OverBudget = 3,
};
pub const GattCharacteristicNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCharacteristic(self: *@This()) core.HResult!*GattCharacteristic {
        const this: *IGattCharacteristicNotificationTrigger = @ptrCast(self);
        return try this.getCharacteristic();
    }
    pub fn getEventTriggeringMode(self: *@This()) core.HResult!BluetoothEventTriggeringMode {
        var this: ?*IGattCharacteristicNotificationTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGattCharacteristicNotificationTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEventTriggeringMode();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(characteristic: *GattCharacteristic) core.HResult!*GattCharacteristicNotificationTrigger {
        const factory = @This().IGattCharacteristicNotificationTriggerFactoryCache.get();
        return try factory.Create(characteristic);
    }
    pub fn Create(characteristic: *GattCharacteristic, eventTriggeringMode: BluetoothEventTriggeringMode) core.HResult!*GattCharacteristicNotificationTrigger {
        const factory = @This().IGattCharacteristicNotificationTriggerFactory2Cache.get();
        return try factory.Create(characteristic, eventTriggeringMode);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattCharacteristicNotificationTrigger.GUID;
    pub const IID: Guid = IGattCharacteristicNotificationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattCharacteristicNotificationTrigger.SIGNATURE);
    var _IGattCharacteristicNotificationTriggerFactoryCache: FactoryCache(IGattCharacteristicNotificationTriggerFactory, RUNTIME_NAME) = .{};
    var _IGattCharacteristicNotificationTriggerFactory2Cache: FactoryCache(IGattCharacteristicNotificationTriggerFactory2, RUNTIME_NAME) = .{};
};
pub const GattServiceProviderTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTriggerId(self: *@This()) core.HResult!HSTRING {
        const this: *IGattServiceProviderTrigger = @ptrCast(self);
        return try this.getTriggerId();
    }
    pub fn getService(self: *@This()) core.HResult!*GattLocalService {
        const this: *IGattServiceProviderTrigger = @ptrCast(self);
        return try this.getService();
    }
    pub fn putAdvertisingParameters(self: *@This(), value: *GattServiceProviderAdvertisingParameters) core.HResult!void {
        const this: *IGattServiceProviderTrigger = @ptrCast(self);
        return try this.putAdvertisingParameters(value);
    }
    pub fn getAdvertisingParameters(self: *@This()) core.HResult!*GattServiceProviderAdvertisingParameters {
        const this: *IGattServiceProviderTrigger = @ptrCast(self);
        return try this.getAdvertisingParameters();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAsync(triggerId: HSTRING, serviceUuid: *Guid) core.HResult!*IAsyncOperation(GattServiceProviderTriggerResult) {
        const factory = @This().IGattServiceProviderTriggerStaticsCache.get();
        return try factory.CreateAsync(triggerId, serviceUuid);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.GattServiceProviderTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattServiceProviderTrigger.GUID;
    pub const IID: Guid = IGattServiceProviderTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattServiceProviderTrigger.SIGNATURE);
    var _IGattServiceProviderTriggerStaticsCache: FactoryCache(IGattServiceProviderTriggerStatics, RUNTIME_NAME) = .{};
};
pub const GattServiceProviderTriggerResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTrigger(self: *@This()) core.HResult!*GattServiceProviderTrigger {
        const this: *IGattServiceProviderTriggerResult = @ptrCast(self);
        return try this.getTrigger();
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        const this: *IGattServiceProviderTriggerResult = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.GattServiceProviderTriggerResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGattServiceProviderTriggerResult.GUID;
    pub const IID: Guid = IGattServiceProviderTriggerResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGattServiceProviderTriggerResult.SIGNATURE);
};
pub const GeovisitTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMonitoringScope(self: *@This()) core.HResult!VisitMonitoringScope {
        const this: *IGeovisitTrigger = @ptrCast(self);
        return try this.getMonitoringScope();
    }
    pub fn putMonitoringScope(self: *@This(), value: VisitMonitoringScope) core.HResult!void {
        const this: *IGeovisitTrigger = @ptrCast(self);
        return try this.putMonitoringScope(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGeovisitTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.GeovisitTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeovisitTrigger.GUID;
    pub const IID: Guid = IGeovisitTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeovisitTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IActivitySensorTrigger = extern struct {
    vtable: *const VTable,
    pub fn getSubscribedActivities(self: *@This()) core.HResult!*IVector(ActivityType) {
        var _r: *IVector(ActivityType) = undefined;
        const _c = self.vtable.get_SubscribedActivities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedActivities(self: *@This()) core.HResult!*IVectorView(ActivityType) {
        var _r: *IVectorView(ActivityType) = undefined;
        const _c = self.vtable.get_SupportedActivities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumReportInterval(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinimumReportInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IActivitySensorTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0dd4342-e37b-4823-a5fe-6b31dfefdeb0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SubscribedActivities: *const fn(self: *anyopaque, _r: **IVector(ActivityType)) callconv(.winapi) HRESULT,
        get_ReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SupportedActivities: *const fn(self: *anyopaque, _r: **IVectorView(ActivityType)) callconv(.winapi) HRESULT,
        get_MinimumReportInterval: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IActivitySensorTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), reportIntervalInMilliseconds: u32) core.HResult!*ActivitySensorTrigger {
        var _r: *ActivitySensorTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), reportIntervalInMilliseconds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IActivitySensorTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a72691c3-3837-44f7-831b-0132cc872bc3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, reportIntervalInMilliseconds: u32, _r: **ActivitySensorTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationTrigger = extern struct {
    vtable: *const VTable,
    pub fn RequestAsync(self: *@This()) core.HResult!*IAsyncOperation(ApplicationTriggerResult) {
        var _r: *IAsyncOperation(ApplicationTriggerResult) = undefined;
        const _c = self.vtable.RequestAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAsync(self: *@This(), arguments: *ValueSet) core.HResult!*IAsyncOperation(ApplicationTriggerResult) {
        var _r: *IAsyncOperation(ApplicationTriggerResult) = undefined;
        const _c = self.vtable.RequestAsync(@ptrCast(self), arguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IApplicationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0b468630-9574-492c-9e93-1a3ae6335fe9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ApplicationTriggerResult)) callconv(.winapi) HRESULT,
        RequestAsync: *const fn(self: *anyopaque, arguments: *ValueSet, _r: **IAsyncOperation(ApplicationTriggerResult)) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getArguments(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IApplicationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97dc6ab2-2219-4a9e-9c5e-41d047f76e82";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IAppointmentStoreNotificationTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IAppointmentStoreNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64d4040c-c201-42ad-aa2a-e21ba3425b6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundCondition = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundCondition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae48a1ee-8951-400a-8302-9c9c9a2a3a3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundExecutionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(BackgroundAccessStatus) {
        var _r: *IAsyncOperation(BackgroundAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This(), applicationId: HSTRING) core.HResult!*IAsyncOperation(BackgroundAccessStatus) {
        var _r: *IAsyncOperation(BackgroundAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveAccess(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveAccess(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAccess(self: *@This(), applicationId: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveAccess(@ptrCast(self), applicationId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAccessStatus(self: *@This()) core.HResult!BackgroundAccessStatus {
        var _r: BackgroundAccessStatus = undefined;
        const _c = self.vtable.GetAccessStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccessStatus(self: *@This(), applicationId: HSTRING) core.HResult!BackgroundAccessStatus {
        var _r: BackgroundAccessStatus = undefined;
        const _c = self.vtable.GetAccessStatus(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundExecutionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e826ea58-66a9-4d41-83d4-b4c18c87b846";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(BackgroundAccessStatus)) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **IAsyncOperation(BackgroundAccessStatus)) callconv(.winapi) HRESULT,
        RemoveAccess: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RemoveAccess: *const fn(self: *anyopaque, applicationId: HSTRING) callconv(.winapi) HRESULT,
        GetAccessStatus: *const fn(self: *anyopaque, _r: *BackgroundAccessStatus) callconv(.winapi) HRESULT,
        GetAccessStatus: *const fn(self: *anyopaque, applicationId: HSTRING, _r: *BackgroundAccessStatus) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundExecutionManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessKindAsync(self: *@This(), requestedAccess: BackgroundAccessRequestKind, reason: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestAccessKindAsync(@ptrCast(self), requestedAccess, reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundExecutionManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "469b24ef-9bbb-4e18-999a-fd6512931be9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessKindAsync: *const fn(self: *anyopaque, requestedAccess: BackgroundAccessRequestKind, reason: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundExecutionManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessKindForModernStandbyAsync(self: *@This(), requestedAccess: BackgroundAccessRequestKind, reason: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestAccessKindForModernStandbyAsync(@ptrCast(self), requestedAccess, reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccessStatusForModernStandby(self: *@This()) core.HResult!BackgroundAccessStatus {
        var _r: BackgroundAccessStatus = undefined;
        const _c = self.vtable.GetAccessStatusForModernStandby(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccessStatusForModernStandby(self: *@This(), applicationId: HSTRING) core.HResult!BackgroundAccessStatus {
        var _r: BackgroundAccessStatus = undefined;
        const _c = self.vtable.GetAccessStatusForModernStandby(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundExecutionManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98a5d3f6-5a25-5b6c-9192-d77a43dfedc4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessKindForModernStandbyAsync: *const fn(self: *anyopaque, requestedAccess: BackgroundAccessRequestKind, reason: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GetAccessStatusForModernStandby: *const fn(self: *anyopaque, _r: *BackgroundAccessStatus) callconv(.winapi) HRESULT,
        GetAccessStatusForModernStandby: *const fn(self: *anyopaque, applicationId: HSTRING, _r: *BackgroundAccessStatus) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTask = extern struct {
    vtable: *const VTable,
    pub fn Run(self: *@This(), taskInstance: *IBackgroundTaskInstance) core.HResult!void {
        const _c = self.vtable.Run(@ptrCast(self), taskInstance);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d13d534-fd12-43ce-8c22-ea1ff13c06df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Run: *const fn(self: *anyopaque, taskInstance: *IBackgroundTaskInstance) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskBuilder = extern struct {
    vtable: *const VTable,
    pub fn putTaskEntryPoint(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TaskEntryPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTaskEntryPoint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskEntryPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetTrigger(self: *@This(), trigger: *IBackgroundTrigger) core.HResult!void {
        const _c = self.vtable.SetTrigger(@ptrCast(self), trigger);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddCondition(self: *@This(), condition: *IBackgroundCondition) core.HResult!void {
        const _c = self.vtable.AddCondition(@ptrCast(self), condition);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Register(self: *@This()) core.HResult!*BackgroundTaskRegistration {
        var _r: *BackgroundTaskRegistration = undefined;
        const _c = self.vtable.Register(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskBuilder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0351550e-3e64-4572-a93a-84075a37c917";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_TaskEntryPoint: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TaskEntryPoint: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetTrigger: *const fn(self: *anyopaque, trigger: *IBackgroundTrigger) callconv(.winapi) HRESULT,
        AddCondition: *const fn(self: *anyopaque, condition: *IBackgroundCondition) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        Register: *const fn(self: *anyopaque, _r: **BackgroundTaskRegistration) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskBuilder2 = extern struct {
    vtable: *const VTable,
    pub fn putCancelOnConditionLoss(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CancelOnConditionLoss(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCancelOnConditionLoss(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CancelOnConditionLoss(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskBuilder2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ae7cfb1-104f-406d-8db6-844a570f42bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_CancelOnConditionLoss: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CancelOnConditionLoss: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskBuilder3 = extern struct {
    vtable: *const VTable,
    pub fn putIsNetworkRequested(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsNetworkRequested(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsNetworkRequested(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsNetworkRequested(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskBuilder3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28c74f4a-8ba9-4c09-a24f-19683e2c924c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsNetworkRequested: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsNetworkRequested: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskBuilder4 = extern struct {
    vtable: *const VTable,
    pub fn getTaskGroup(self: *@This()) core.HResult!*BackgroundTaskRegistrationGroup {
        var _r: *BackgroundTaskRegistrationGroup = undefined;
        const _c = self.vtable.get_TaskGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTaskGroup(self: *@This(), value: *BackgroundTaskRegistrationGroup) core.HResult!void {
        const _c = self.vtable.put_TaskGroup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskBuilder4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4755e522-cba2-4e35-bd16-a6da7f1c19aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskGroup: *const fn(self: *anyopaque, _r: **BackgroundTaskRegistrationGroup) callconv(.winapi) HRESULT,
        put_TaskGroup: *const fn(self: *anyopaque, value: *BackgroundTaskRegistrationGroup) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskBuilder5 = extern struct {
    vtable: *const VTable,
    pub fn SetTaskEntryPointClsid(self: *@This(), TaskEntryPoint: *Guid) core.HResult!void {
        const _c = self.vtable.SetTaskEntryPointClsid(@ptrCast(self), TaskEntryPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskBuilder5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "077103f6-99f5-4af4-bcad-4731d0330d43";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetTaskEntryPointClsid: *const fn(self: *anyopaque, TaskEntryPoint: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskBuilder6 = extern struct {
    vtable: *const VTable,
    pub fn getAllowRunningTaskInStandby(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowRunningTaskInStandby(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowRunningTaskInStandby(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowRunningTaskInStandby(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Validate(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Validate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Register(self: *@This(), taskName: HSTRING) core.HResult!*BackgroundTaskRegistration {
        var _r: *BackgroundTaskRegistration = undefined;
        const _c = self.vtable.Register(@ptrCast(self), taskName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskBuilder6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80b47b17-ec8b-5653-850b-7508a01f52e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowRunningTaskInStandby: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowRunningTaskInStandby: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        Validate: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Register: *const fn(self: *anyopaque, taskName: HSTRING, _r: **BackgroundTaskRegistration) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskBuilderStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsRunningTaskInStandbySupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRunningTaskInStandbySupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskBuilderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1eb5046-06f2-55b4-9bb7-a6457ebf3300";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRunningTaskInStandbySupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInstanceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_InstanceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckResult(self: *@This()) core.HResult!void {
        const _c = self.vtable.CheckResult(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "565d25cf-f209-48f4-9967-2b184f7bfbf0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InstanceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        CheckResult: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93cc156d-af27-4dd3-846e-24ee40cadd25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskInstance = extern struct {
    vtable: *const VTable,
    pub fn getInstanceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_InstanceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTask(self: *@This()) core.HResult!*BackgroundTaskRegistration {
        var _r: *BackgroundTaskRegistration = undefined;
        const _c = self.vtable.get_Task(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProgress(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Progress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTriggerDetails(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_TriggerDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCanceled(self: *@This(), cancelHandler: *BackgroundTaskCanceledEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Canceled(@ptrCast(self), cancelHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCanceled(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Canceled(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuspendedCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SuspendedCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*BackgroundTaskDeferral {
        var _r: *BackgroundTaskDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskInstance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "865bda7a-21d8-4573-8f32-928a1b0641f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InstanceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Task: *const fn(self: *anyopaque, _r: **BackgroundTaskRegistration) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Progress: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_TriggerDetails: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        add_Canceled: *const fn(self: *anyopaque, cancelHandler: *BackgroundTaskCanceledEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Canceled: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_SuspendedCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **BackgroundTaskDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskInstance2 = extern struct {
    vtable: *const VTable,
    pub fn GetThrottleCount(self: *@This(), counter: BackgroundTaskThrottleCounter) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.GetThrottleCount(@ptrCast(self), counter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskInstance2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f7d0176-0c76-4fb4-896d-5de1864122f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetThrottleCount: *const fn(self: *anyopaque, counter: BackgroundTaskThrottleCounter, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskInstance4 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskInstance4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f29f23c-aa04-4b08-97b0-06d874cdabf5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskProgressEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInstanceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_InstanceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskProgressEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb1468ac-8332-4d0a-9532-03eae684da31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InstanceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskRegistration = extern struct {
    vtable: *const VTable,
    pub fn getTaskId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TaskId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addProgress(self: *@This(), handler: *BackgroundTaskProgressEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Progress(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProgress(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Progress(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompleted(self: *@This(), handler: *BackgroundTaskCompletedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Unregister(self: *@This(), cancelTask: bool) core.HResult!void {
        const _c = self.vtable.Unregister(@ptrCast(self), cancelTask);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10654cc2-a26e-43bf-8c12-1fb40dbfbfa0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_Progress: *const fn(self: *anyopaque, handler: *BackgroundTaskProgressEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Progress: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, handler: *BackgroundTaskCompletedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        Unregister: *const fn(self: *anyopaque, cancelTask: bool) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskRegistration2 = extern struct {
    vtable: *const VTable,
    pub fn getTrigger(self: *@This()) core.HResult!*IBackgroundTrigger {
        var _r: *IBackgroundTrigger = undefined;
        const _c = self.vtable.get_Trigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskRegistration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6138c703-bb86-4112-afc3-7f939b166e3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Trigger: *const fn(self: *anyopaque, _r: **IBackgroundTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskRegistration3 = extern struct {
    vtable: *const VTable,
    pub fn getTaskGroup(self: *@This()) core.HResult!*BackgroundTaskRegistrationGroup {
        var _r: *BackgroundTaskRegistrationGroup = undefined;
        const _c = self.vtable.get_TaskGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskRegistration3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe338195-9423-4d8b-830d-b1dd2c7badd5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskGroup: *const fn(self: *anyopaque, _r: **BackgroundTaskRegistrationGroup) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskRegistration4 = extern struct {
    vtable: *const VTable,
    pub fn getTaskLastThrottledInStandbyTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_TaskLastThrottledInStandbyTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppEnergyUsePredictionContribution(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AppEnergyUsePredictionContribution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskRegistration4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "169c09c9-b0de-5576-a05b-a02067989879";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskLastThrottledInStandbyTimestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_AppEnergyUsePredictionContribution: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskRegistrationGroup = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addBackgroundActivated(self: *@This(), handler: *TypedEventHandler(BackgroundTaskRegistrationGroup,BackgroundActivatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BackgroundActivated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBackgroundActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BackgroundActivated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllTasks(self: *@This()) core.HResult!*IMapView(Guid,BackgroundTaskRegistration) {
        var _r: *IMapView(Guid,BackgroundTaskRegistration) = undefined;
        const _c = self.vtable.get_AllTasks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ab1919a-871b-4167-8a76-055cd67b5b23";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_BackgroundActivated: *const fn(self: *anyopaque, handler: *TypedEventHandler(BackgroundTaskRegistrationGroup,BackgroundActivatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BackgroundActivated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_AllTasks: *const fn(self: *anyopaque, _r: **IMapView(Guid,BackgroundTaskRegistration)) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskRegistrationGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), id: HSTRING) core.HResult!*BackgroundTaskRegistrationGroup {
        var _r: *BackgroundTaskRegistrationGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithName(self: *@This(), id: HSTRING, name: HSTRING) core.HResult!*BackgroundTaskRegistrationGroup {
        var _r: *BackgroundTaskRegistrationGroup = undefined;
        const _c = self.vtable.CreateWithName(@ptrCast(self), id, name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83d92b69-44cf-4631-9740-03c7d8741bc5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, id: HSTRING, _r: **BackgroundTaskRegistrationGroup) callconv(.winapi) HRESULT,
        CreateWithName: *const fn(self: *anyopaque, id: HSTRING, name: HSTRING, _r: **BackgroundTaskRegistrationGroup) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskRegistrationStatics = extern struct {
    vtable: *const VTable,
    pub fn getAllTasks(self: *@This()) core.HResult!*IMapView(Guid,IBackgroundTaskRegistration) {
        var _r: *IMapView(Guid,IBackgroundTaskRegistration) = undefined;
        const _c = self.vtable.get_AllTasks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskRegistrationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c542f69-b000-42ba-a093-6a563c65e3f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllTasks: *const fn(self: *anyopaque, _r: **IMapView(Guid,IBackgroundTaskRegistration)) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTaskRegistrationStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getAllTaskGroups(self: *@This()) core.HResult!*IMapView(HSTRING,BackgroundTaskRegistrationGroup) {
        var _r: *IMapView(HSTRING,BackgroundTaskRegistrationGroup) = undefined;
        const _c = self.vtable.get_AllTaskGroups(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTaskGroup(self: *@This(), groupId: HSTRING) core.HResult!*BackgroundTaskRegistrationGroup {
        var _r: *BackgroundTaskRegistrationGroup = undefined;
        const _c = self.vtable.GetTaskGroup(@ptrCast(self), groupId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTaskRegistrationStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "174b671e-b20d-4fa9-ad9a-e93ad6c71e01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllTaskGroups: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,BackgroundTaskRegistrationGroup)) callconv(.winapi) HRESULT,
        GetTaskGroup: *const fn(self: *anyopaque, groupId: HSTRING, _r: **BackgroundTaskRegistrationGroup) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84b3a058-6027-4b87-9790-bdf3f757dbd7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundWorkCostStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrentBackgroundWorkCost(self: *@This()) core.HResult!BackgroundWorkCostValue {
        var _r: BackgroundWorkCostValue = undefined;
        const _c = self.vtable.get_CurrentBackgroundWorkCost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundWorkCostStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c740a662-c310-4b82-b3e3-3bcfb9e4c77d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentBackgroundWorkCost: *const fn(self: *anyopaque, _r: *BackgroundWorkCostValue) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundWorkCostStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getAppEnergyUseLevel(self: *@This()) core.HResult!EnergyUseLevel {
        var _r: EnergyUseLevel = undefined;
        const _c = self.vtable.get_AppEnergyUseLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppEnergyUsePrediction(self: *@This()) core.HResult!EnergyUseLevel {
        var _r: EnergyUseLevel = undefined;
        const _c = self.vtable.get_AppEnergyUsePrediction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppLastThrottledInStandbyTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_AppLastThrottledInStandbyTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBackgroundWorkCostStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d868c976-81f6-57c8-ab2b-400b749e21d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppEnergyUseLevel: *const fn(self: *anyopaque, _r: *EnergyUseLevel) callconv(.winapi) HRESULT,
        get_AppEnergyUsePrediction: *const fn(self: *anyopaque, _r: *EnergyUseLevel) callconv(.winapi) HRESULT,
        get_AppLastThrottledInStandbyTimestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementPublisherTrigger = extern struct {
    vtable: *const VTable,
    pub fn getAdvertisement(self: *@This()) core.HResult!*BluetoothLEAdvertisement {
        var _r: *BluetoothLEAdvertisement = undefined;
        const _c = self.vtable.get_Advertisement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBluetoothLEAdvertisementPublisherTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab3e2612-25d3-48ae-8724-d81877ae6129";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Advertisement: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisement) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementPublisherTrigger2 = extern struct {
    vtable: *const VTable,
    pub fn getPreferredTransmitPowerLevelInDBm(self: *@This()) core.HResult!*IReference(i16) {
        var _r: *IReference(i16) = undefined;
        const _c = self.vtable.get_PreferredTransmitPowerLevelInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredTransmitPowerLevelInDBm(self: *@This(), value: *IReference(i16)) core.HResult!void {
        const _c = self.vtable.put_PreferredTransmitPowerLevelInDBm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUseExtendedFormat(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseExtendedFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseExtendedFormat(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseExtendedFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAnonymous(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAnonymous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAnonymous(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAnonymous(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncludeTransmitPowerLevel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeTransmitPowerLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeTransmitPowerLevel(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeTransmitPowerLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBluetoothLEAdvertisementPublisherTrigger2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa28d064-38f4-597d-b597-4e55588c6503";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreferredTransmitPowerLevelInDBm: *const fn(self: *anyopaque, _r: **IReference(i16)) callconv(.winapi) HRESULT,
        put_PreferredTransmitPowerLevelInDBm: *const fn(self: *anyopaque, value: *IReference(i16)) callconv(.winapi) HRESULT,
        get_UseExtendedFormat: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseExtendedFormat: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAnonymous: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAnonymous: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncludeTransmitPowerLevel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeTransmitPowerLevel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementPublisherTrigger3 = extern struct {
    vtable: *const VTable,
    pub fn getPrimaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var _r: BluetoothLEAdvertisementPhyType = undefined;
        const _c = self.vtable.get_PrimaryPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrimaryPhy(self: *@This(), value: BluetoothLEAdvertisementPhyType) core.HResult!void {
        const _c = self.vtable.put_PrimaryPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSecondaryPhy(self: *@This()) core.HResult!BluetoothLEAdvertisementPhyType {
        var _r: BluetoothLEAdvertisementPhyType = undefined;
        const _c = self.vtable.get_SecondaryPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSecondaryPhy(self: *@This(), value: BluetoothLEAdvertisementPhyType) core.HResult!void {
        const _c = self.vtable.put_SecondaryPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBluetoothLEAdvertisementPublisherTrigger3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64419d03-d604-5bdc-b7d2-a7fe25c55460";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrimaryPhy: *const fn(self: *anyopaque, _r: *BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
        put_PrimaryPhy: *const fn(self: *anyopaque, value: BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
        get_SecondaryPhy: *const fn(self: *anyopaque, _r: *BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
        put_SecondaryPhy: *const fn(self: *anyopaque, value: BluetoothLEAdvertisementPhyType) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementWatcherTrigger = extern struct {
    vtable: *const VTable,
    pub fn getMinSamplingInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MinSamplingInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxSamplingInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MaxSamplingInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinOutOfRangeTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MinOutOfRangeTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxOutOfRangeTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MaxOutOfRangeTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignalStrengthFilter(self: *@This()) core.HResult!*BluetoothSignalStrengthFilter {
        var _r: *BluetoothSignalStrengthFilter = undefined;
        const _c = self.vtable.get_SignalStrengthFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignalStrengthFilter(self: *@This(), value: *BluetoothSignalStrengthFilter) core.HResult!void {
        const _c = self.vtable.put_SignalStrengthFilter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAdvertisementFilter(self: *@This()) core.HResult!*BluetoothLEAdvertisementFilter {
        var _r: *BluetoothLEAdvertisementFilter = undefined;
        const _c = self.vtable.get_AdvertisementFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAdvertisementFilter(self: *@This(), value: *BluetoothLEAdvertisementFilter) core.HResult!void {
        const _c = self.vtable.put_AdvertisementFilter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1aab1819-bce1-48eb-a827-59fb7cee52a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinSamplingInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MaxSamplingInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MinOutOfRangeTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MaxOutOfRangeTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_SignalStrengthFilter: *const fn(self: *anyopaque, _r: **BluetoothSignalStrengthFilter) callconv(.winapi) HRESULT,
        put_SignalStrengthFilter: *const fn(self: *anyopaque, value: *BluetoothSignalStrengthFilter) callconv(.winapi) HRESULT,
        get_AdvertisementFilter: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisementFilter) callconv(.winapi) HRESULT,
        put_AdvertisementFilter: *const fn(self: *anyopaque, value: *BluetoothLEAdvertisementFilter) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementWatcherTrigger2 = extern struct {
    vtable: *const VTable,
    pub fn getAllowExtendedAdvertisements(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowExtendedAdvertisements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowExtendedAdvertisements(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowExtendedAdvertisements(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "39b56799-eb39-5ab6-9932-aa9e4549604d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowExtendedAdvertisements: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowExtendedAdvertisements: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IBluetoothLEAdvertisementWatcherTrigger3 = extern struct {
    vtable: *const VTable,
    pub fn getUseUncoded1MPhy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseUncoded1MPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseUncoded1MPhy(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseUncoded1MPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUseCodedPhy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseCodedPhy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseCodedPhy(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseCodedPhy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScanParameters(self: *@This()) core.HResult!*BluetoothLEAdvertisementScanParameters {
        var _r: *BluetoothLEAdvertisementScanParameters = undefined;
        const _c = self.vtable.get_ScanParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScanParameters(self: *@This(), value: *BluetoothLEAdvertisementScanParameters) core.HResult!void {
        const _c = self.vtable.put_ScanParameters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da50011a-8261-56a0-ac7b-a8de1624088b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UseUncoded1MPhy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseUncoded1MPhy: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_UseCodedPhy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseCodedPhy: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ScanParameters: *const fn(self: *anyopaque, _r: **BluetoothLEAdvertisementScanParameters) callconv(.winapi) HRESULT,
        put_ScanParameters: *const fn(self: *anyopaque, value: *BluetoothLEAdvertisementScanParameters) callconv(.winapi) HRESULT,
    };
};
pub const ICachedFileUpdaterTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ICachedFileUpdaterTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e21caeeb-32f2-4d31-b553-b9e01bde37e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const ICachedFileUpdaterTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getUpdateTarget(self: *@This()) core.HResult!CachedFileTarget {
        var _r: CachedFileTarget = undefined;
        const _c = self.vtable.get_UpdateTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateRequest(self: *@This()) core.HResult!*FileUpdateRequest {
        var _r: *FileUpdateRequest = undefined;
        const _c = self.vtable.get_UpdateRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanRequestUserInput(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanRequestUserInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ICachedFileUpdaterTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71838c13-1314-47b4-9597-dc7e248c17cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UpdateTarget: *const fn(self: *anyopaque, _r: *CachedFileTarget) callconv(.winapi) HRESULT,
        get_UpdateRequest: *const fn(self: *anyopaque, _r: **FileUpdateRequest) callconv(.winapi) HRESULT,
        get_CanRequestUserInput: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageNotificationTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IChatMessageNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "513b43bf-1d40-5c5d-78f5-c923fee3739e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageReceivedNotificationTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IChatMessageReceivedNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ea3760e-baf5-4077-88e9-060cf6f0c6d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IContactStoreNotificationTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IContactStoreNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c833419b-4705-4571-9a16-06b997bf9c96";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IContentPrefetchTrigger = extern struct {
    vtable: *const VTable,
    pub fn getWaitInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_WaitInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IContentPrefetchTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "710627ee-04fa-440b-80c0-173202199e5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WaitInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IContentPrefetchTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), waitInterval: TimeSpan) core.HResult!*ContentPrefetchTrigger {
        var _r: *ContentPrefetchTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), waitInterval, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IContentPrefetchTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2643eda-8a03-409e-b8c4-88814c28ccb6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, waitInterval: TimeSpan, _r: **ContentPrefetchTrigger) callconv(.winapi) HRESULT,
    };
};
pub const ICustomSystemEventTrigger = extern struct {
    vtable: *const VTable,
    pub fn getTriggerId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TriggerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecurrence(self: *@This()) core.HResult!CustomSystemEventTriggerRecurrence {
        var _r: CustomSystemEventTriggerRecurrence = undefined;
        const _c = self.vtable.get_Recurrence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ICustomSystemEventTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3596798-cf6b-4ef4-a0ca-29cf4a278c87";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TriggerId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Recurrence: *const fn(self: *anyopaque, _r: *CustomSystemEventTriggerRecurrence) callconv(.winapi) HRESULT,
    };
};
pub const ICustomSystemEventTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), triggerId: HSTRING, recurrence: CustomSystemEventTriggerRecurrence) core.HResult!*CustomSystemEventTrigger {
        var _r: *CustomSystemEventTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), triggerId, recurrence, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ICustomSystemEventTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6bcb16c5-f2dc-41b2-9efd-b96bdcd13ced";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, triggerId: HSTRING, recurrence: CustomSystemEventTriggerRecurrence, _r: **CustomSystemEventTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceConnectionChangeTrigger = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanMaintainConnection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanMaintainConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaintainConnection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_MaintainConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaintainConnection(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_MaintainConnection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IDeviceConnectionChangeTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90875e64-3cdd-4efb-ab1c-5b3b6a60ce34";
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
        get_CanMaintainConnection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaintainConnection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_MaintainConnection: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceConnectionChangeTriggerStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(DeviceConnectionChangeTrigger) {
        var _r: *IAsyncOperation(DeviceConnectionChangeTrigger) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IDeviceConnectionChangeTriggerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3ea246a-4efd-4498-aa60-a4e4e3b17ab9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(DeviceConnectionChangeTrigger)) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceManufacturerNotificationTrigger = extern struct {
    vtable: *const VTable,
    pub fn getTriggerQualifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TriggerQualifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OneShot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IDeviceManufacturerNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81278ab5-41ab-16da-86c2-7f7bf0912f5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TriggerQualifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OneShot: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceManufacturerNotificationTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), triggerQualifier: HSTRING, oneShot: bool) core.HResult!*DeviceManufacturerNotificationTrigger {
        var _r: *DeviceManufacturerNotificationTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), triggerQualifier, oneShot, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IDeviceManufacturerNotificationTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7955de75-25bb-4153-a1a2-3029fcabb652";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, triggerQualifier: HSTRING, oneShot: bool, _r: **DeviceManufacturerNotificationTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceServicingTrigger = extern struct {
    vtable: *const VTable,
    pub fn RequestAsync(self: *@This(), deviceId: HSTRING, expectedDuration: TimeSpan) core.HResult!*IAsyncOperation(DeviceTriggerResult) {
        var _r: *IAsyncOperation(DeviceTriggerResult) = undefined;
        const _c = self.vtable.RequestAsync(@ptrCast(self), deviceId, expectedDuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAsync(self: *@This(), deviceId: HSTRING, expectedDuration: TimeSpan, arguments: HSTRING) core.HResult!*IAsyncOperation(DeviceTriggerResult) {
        var _r: *IAsyncOperation(DeviceTriggerResult) = undefined;
        const _c = self.vtable.RequestAsync(@ptrCast(self), deviceId, expectedDuration, arguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IDeviceServicingTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ab217ad-6e34-49d3-9e6f-17f1b6dfa881";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAsync: *const fn(self: *anyopaque, deviceId: HSTRING, expectedDuration: TimeSpan, _r: **IAsyncOperation(DeviceTriggerResult)) callconv(.winapi) HRESULT,
        RequestAsync: *const fn(self: *anyopaque, deviceId: HSTRING, expectedDuration: TimeSpan, arguments: HSTRING, _r: **IAsyncOperation(DeviceTriggerResult)) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceUseTrigger = extern struct {
    vtable: *const VTable,
    pub fn RequestAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(DeviceTriggerResult) {
        var _r: *IAsyncOperation(DeviceTriggerResult) = undefined;
        const _c = self.vtable.RequestAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAsync(self: *@This(), deviceId: HSTRING, arguments: HSTRING) core.HResult!*IAsyncOperation(DeviceTriggerResult) {
        var _r: *IAsyncOperation(DeviceTriggerResult) = undefined;
        const _c = self.vtable.RequestAsync(@ptrCast(self), deviceId, arguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IDeviceUseTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0da68011-334f-4d57-b6ec-6dca64b412e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(DeviceTriggerResult)) callconv(.winapi) HRESULT,
        RequestAsync: *const fn(self: *anyopaque, deviceId: HSTRING, arguments: HSTRING, _r: **IAsyncOperation(DeviceTriggerResult)) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceWatcherTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IDeviceWatcherTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4617fdd-8573-4260-befc-5bec89cb693d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IEmailStoreNotificationTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IEmailStoreNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "986d06da-47eb-4268-a4f2-f3f77188388a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicNotificationTrigger = extern struct {
    vtable: *const VTable,
    pub fn getCharacteristic(self: *@This()) core.HResult!*GattCharacteristic {
        var _r: *GattCharacteristic = undefined;
        const _c = self.vtable.get_Characteristic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IGattCharacteristicNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e25f8fc8-0696-474f-a732-f292b0cebc5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Characteristic: *const fn(self: *anyopaque, _r: **GattCharacteristic) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicNotificationTrigger2 = extern struct {
    vtable: *const VTable,
    pub fn getEventTriggeringMode(self: *@This()) core.HResult!BluetoothEventTriggeringMode {
        var _r: BluetoothEventTriggeringMode = undefined;
        const _c = self.vtable.get_EventTriggeringMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IGattCharacteristicNotificationTrigger2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9322a2c4-ae0e-42f2-b28c-f51372e69245";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EventTriggeringMode: *const fn(self: *anyopaque, _r: *BluetoothEventTriggeringMode) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicNotificationTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), characteristic: *GattCharacteristic) core.HResult!*GattCharacteristicNotificationTrigger {
        var _r: *GattCharacteristicNotificationTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), characteristic, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IGattCharacteristicNotificationTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57ba1995-b143-4575-9f6b-fd59d93ace1a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, characteristic: *GattCharacteristic, _r: **GattCharacteristicNotificationTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IGattCharacteristicNotificationTriggerFactory2 = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), characteristic: *GattCharacteristic, eventTriggeringMode: BluetoothEventTriggeringMode) core.HResult!*GattCharacteristicNotificationTrigger {
        var _r: *GattCharacteristicNotificationTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), characteristic, eventTriggeringMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IGattCharacteristicNotificationTriggerFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5998e91f-8a53-4e9f-a32c-23cd33664cee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, characteristic: *GattCharacteristic, eventTriggeringMode: BluetoothEventTriggeringMode, _r: **GattCharacteristicNotificationTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderTrigger = extern struct {
    vtable: *const VTable,
    pub fn getTriggerId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TriggerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getService(self: *@This()) core.HResult!*GattLocalService {
        var _r: *GattLocalService = undefined;
        const _c = self.vtable.get_Service(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAdvertisingParameters(self: *@This(), value: *GattServiceProviderAdvertisingParameters) core.HResult!void {
        const _c = self.vtable.put_AdvertisingParameters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAdvertisingParameters(self: *@This()) core.HResult!*GattServiceProviderAdvertisingParameters {
        var _r: *GattServiceProviderAdvertisingParameters = undefined;
        const _c = self.vtable.get_AdvertisingParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IGattServiceProviderTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ddc6a3e9-1557-4bd8-8542-468aa0c696f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TriggerId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Service: *const fn(self: *anyopaque, _r: **GattLocalService) callconv(.winapi) HRESULT,
        put_AdvertisingParameters: *const fn(self: *anyopaque, value: *GattServiceProviderAdvertisingParameters) callconv(.winapi) HRESULT,
        get_AdvertisingParameters: *const fn(self: *anyopaque, _r: **GattServiceProviderAdvertisingParameters) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderTriggerResult = extern struct {
    vtable: *const VTable,
    pub fn getTrigger(self: *@This()) core.HResult!*GattServiceProviderTrigger {
        var _r: *GattServiceProviderTrigger = undefined;
        const _c = self.vtable.get_Trigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getError(self: *@This()) core.HResult!BluetoothError {
        var _r: BluetoothError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IGattServiceProviderTriggerResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c4691b1-b198-4e84-bad4-cf4ad299ed3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Trigger: *const fn(self: *anyopaque, _r: **GattServiceProviderTrigger) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *BluetoothError) callconv(.winapi) HRESULT,
    };
};
pub const IGattServiceProviderTriggerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAsync(self: *@This(), triggerId: HSTRING, serviceUuid: *Guid) core.HResult!*IAsyncOperation(GattServiceProviderTriggerResult) {
        var _r: *IAsyncOperation(GattServiceProviderTriggerResult) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), triggerId, serviceUuid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IGattServiceProviderTriggerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b413a36a-e294-4591-a5a6-64891a828153";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, triggerId: HSTRING, serviceUuid: *Guid, _r: **IAsyncOperation(GattServiceProviderTriggerResult)) callconv(.winapi) HRESULT,
    };
};
pub const IGeovisitTrigger = extern struct {
    vtable: *const VTable,
    pub fn getMonitoringScope(self: *@This()) core.HResult!VisitMonitoringScope {
        var _r: VisitMonitoringScope = undefined;
        const _c = self.vtable.get_MonitoringScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMonitoringScope(self: *@This(), value: VisitMonitoringScope) core.HResult!void {
        const _c = self.vtable.put_MonitoringScope(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IGeovisitTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4818edaa-04e1-4127-9a4c-19351b8a80a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MonitoringScope: *const fn(self: *anyopaque, _r: *VisitMonitoringScope) callconv(.winapi) HRESULT,
        put_MonitoringScope: *const fn(self: *anyopaque, value: VisitMonitoringScope) callconv(.winapi) HRESULT,
    };
};
pub const ILocationTrigger = extern struct {
    vtable: *const VTable,
    pub fn getTriggerType(self: *@This()) core.HResult!LocationTriggerType {
        var _r: LocationTriggerType = undefined;
        const _c = self.vtable.get_TriggerType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ILocationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47666a1c-6877-481e-8026-ff7e14a811a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TriggerType: *const fn(self: *anyopaque, _r: *LocationTriggerType) callconv(.winapi) HRESULT,
    };
};
pub const ILocationTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), triggerType: LocationTriggerType) core.HResult!*LocationTrigger {
        var _r: *LocationTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), triggerType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ILocationTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1106bb07-ff69-4e09-aa8b-1384ea475e98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, triggerType: LocationTriggerType, _r: **LocationTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IMaintenanceTrigger = extern struct {
    vtable: *const VTable,
    pub fn getFreshnessTime(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_FreshnessTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OneShot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IMaintenanceTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68184c83-fc22-4ce5-841a-7239a9810047";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FreshnessTime: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_OneShot: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMaintenanceTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), freshnessTime: u32, oneShot: bool) core.HResult!*MaintenanceTrigger {
        var _r: *MaintenanceTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), freshnessTime, oneShot, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IMaintenanceTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b3ddb2e-97dd-4629-88b0-b06cf9482ae5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, freshnessTime: u32, oneShot: bool, _r: **MaintenanceTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IMediaProcessingTrigger = extern struct {
    vtable: *const VTable,
    pub fn RequestAsync(self: *@This()) core.HResult!*IAsyncOperation(MediaProcessingTriggerResult) {
        var _r: *IAsyncOperation(MediaProcessingTriggerResult) = undefined;
        const _c = self.vtable.RequestAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAsync(self: *@This(), arguments: *ValueSet) core.HResult!*IAsyncOperation(MediaProcessingTriggerResult) {
        var _r: *IAsyncOperation(MediaProcessingTriggerResult) = undefined;
        const _c = self.vtable.RequestAsync(@ptrCast(self), arguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IMediaProcessingTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a95be65-8a52-4b30-9011-cf38040ea8b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MediaProcessingTriggerResult)) callconv(.winapi) HRESULT,
        RequestAsync: *const fn(self: *anyopaque, arguments: *ValueSet, _r: **IAsyncOperation(MediaProcessingTriggerResult)) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorHotspotAuthenticationTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.INetworkOperatorHotspotAuthenticationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e756c791-3001-4de5-83c7-de61d88831d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorNotificationTrigger = extern struct {
    vtable: *const VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NetworkAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.INetworkOperatorNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90089cc6-63cd-480c-95d1-6e6aef801e4a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorNotificationTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), networkAccountId: HSTRING) core.HResult!*NetworkOperatorNotificationTrigger {
        var _r: *NetworkOperatorNotificationTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), networkAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.INetworkOperatorNotificationTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a223e00-27d7-4353-adb9-9265aaea579d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, networkAccountId: HSTRING, _r: **NetworkOperatorNotificationTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IPushNotificationTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), applicationId: HSTRING) core.HResult!*PushNotificationTrigger {
        var _r: *PushNotificationTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IPushNotificationTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6dd8ed1b-458e-4fc2-bc2e-d5664f77ed19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **PushNotificationTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IRcsEndUserMessageAvailableTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IRcsEndUserMessageAvailableTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "986d0d6a-b2f6-467f-a978-a44091c11a66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IRfcommConnectionTrigger = extern struct {
    vtable: *const VTable,
    pub fn getInboundConnection(self: *@This()) core.HResult!*RfcommInboundConnectionInformation {
        var _r: *RfcommInboundConnectionInformation = undefined;
        const _c = self.vtable.get_InboundConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutboundConnection(self: *@This()) core.HResult!*RfcommOutboundConnectionInformation {
        var _r: *RfcommOutboundConnectionInformation = undefined;
        const _c = self.vtable.get_OutboundConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowMultipleConnections(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowMultipleConnections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowMultipleConnections(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowMultipleConnections(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        var _r: SocketProtectionLevel = undefined;
        const _c = self.vtable.get_ProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProtectionLevel(self: *@This(), value: SocketProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_ProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemoteHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_RemoteHostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteHostName(self: *@This(), value: *HostName) core.HResult!void {
        const _c = self.vtable.put_RemoteHostName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IRfcommConnectionTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8c4cae2-0b53-4464-9394-fd875654de64";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InboundConnection: *const fn(self: *anyopaque, _r: **RfcommInboundConnectionInformation) callconv(.winapi) HRESULT,
        get_OutboundConnection: *const fn(self: *anyopaque, _r: **RfcommOutboundConnectionInformation) callconv(.winapi) HRESULT,
        get_AllowMultipleConnections: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowMultipleConnections: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ProtectionLevel: *const fn(self: *anyopaque, _r: *SocketProtectionLevel) callconv(.winapi) HRESULT,
        put_ProtectionLevel: *const fn(self: *anyopaque, value: SocketProtectionLevel) callconv(.winapi) HRESULT,
        get_RemoteHostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        put_RemoteHostName: *const fn(self: *anyopaque, value: *HostName) callconv(.winapi) HRESULT,
    };
};
pub const ISecondaryAuthenticationFactorAuthenticationTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISecondaryAuthenticationFactorAuthenticationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f237f327-5181-4f24-96a7-700a4e5fac62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const ISensorDataThresholdTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISensorDataThresholdTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bc0f372-d48b-4b7f-abec-15f9bacc12e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const ISensorDataThresholdTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), threshold: *ISensorDataThreshold) core.HResult!*SensorDataThresholdTrigger {
        var _r: *SensorDataThresholdTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), threshold, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISensorDataThresholdTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "921fe675-7df0-4da3-97b3-e544ee857fe6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, threshold: *ISensorDataThreshold, _r: **SensorDataThresholdTrigger) callconv(.winapi) HRESULT,
    };
};
pub const ISmsMessageReceivedTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), filterRules: *SmsFilterRules) core.HResult!*SmsMessageReceivedTrigger {
        var _r: *SmsMessageReceivedTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), filterRules, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISmsMessageReceivedTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea3ad8c8-6ba4-4ab2-8d21-bc6b09c77564";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, filterRules: *SmsFilterRules, _r: **SmsMessageReceivedTrigger) callconv(.winapi) HRESULT,
    };
};
pub const ISocketActivityTrigger = extern struct {
    vtable: *const VTable,
    pub fn getIsWakeFromLowPowerSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWakeFromLowPowerSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISocketActivityTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9bbf810-9dde-4f8a-83e3-b0e0e7a50d70";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsWakeFromLowPowerSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryChangeTrackerTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), tracker: *StorageLibraryChangeTracker) core.HResult!*StorageLibraryChangeTrackerTrigger {
        var _r: *StorageLibraryChangeTrackerTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), tracker, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IStorageLibraryChangeTrackerTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1eb0ffd0-5a85-499e-a888-824607124f50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, tracker: *StorageLibraryChangeTracker, _r: **StorageLibraryChangeTrackerTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryContentChangedTrigger = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IStorageLibraryContentChangedTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1637e0a7-829c-45bc-929b-a1e7ea78d89b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryContentChangedTriggerStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), storageLibrary: *StorageLibrary) core.HResult!*StorageLibraryContentChangedTrigger {
        var _r: *StorageLibraryContentChangedTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), storageLibrary, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromLibraries(self: *@This(), storageLibraries: *IIterable(StorageLibrary)) core.HResult!*StorageLibraryContentChangedTrigger {
        var _r: *StorageLibraryContentChangedTrigger = undefined;
        const _c = self.vtable.CreateFromLibraries(@ptrCast(self), storageLibraries, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IStorageLibraryContentChangedTriggerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f9f1b39-5f90-4e12-914e-a7d8e0bbfb18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, storageLibrary: *StorageLibrary, _r: **StorageLibraryContentChangedTrigger) callconv(.winapi) HRESULT,
        CreateFromLibraries: *const fn(self: *anyopaque, storageLibraries: *IIterable(StorageLibrary), _r: **StorageLibraryContentChangedTrigger) callconv(.winapi) HRESULT,
    };
};
pub const ISystemCondition = extern struct {
    vtable: *const VTable,
    pub fn getConditionType(self: *@This()) core.HResult!SystemConditionType {
        var _r: SystemConditionType = undefined;
        const _c = self.vtable.get_ConditionType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISystemCondition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c15fb476-89c5-420b-abd3-fb3030472128";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConditionType: *const fn(self: *anyopaque, _r: *SystemConditionType) callconv(.winapi) HRESULT,
    };
};
pub const ISystemConditionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), conditionType: SystemConditionType) core.HResult!*SystemCondition {
        var _r: *SystemCondition = undefined;
        const _c = self.vtable.Create(@ptrCast(self), conditionType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISystemConditionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d269d1f1-05a7-49ae-87d7-16b2b8b9a553";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, conditionType: SystemConditionType, _r: **SystemCondition) callconv(.winapi) HRESULT,
    };
};
pub const ISystemTrigger = extern struct {
    vtable: *const VTable,
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OneShot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTriggerType(self: *@This()) core.HResult!SystemTriggerType {
        var _r: SystemTriggerType = undefined;
        const _c = self.vtable.get_TriggerType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISystemTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d80c776-3748-4463-8d7e-276dc139ac1c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OneShot: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_TriggerType: *const fn(self: *anyopaque, _r: *SystemTriggerType) callconv(.winapi) HRESULT,
    };
};
pub const ISystemTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), triggerType: SystemTriggerType, oneShot: bool) core.HResult!*SystemTrigger {
        var _r: *SystemTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), triggerType, oneShot, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ISystemTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e80423d4-8791-4579-8126-87ec8aaa407a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, triggerType: SystemTriggerType, oneShot: bool, _r: **SystemTrigger) callconv(.winapi) HRESULT,
    };
};
pub const ITimeTrigger = extern struct {
    vtable: *const VTable,
    pub fn getFreshnessTime(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_FreshnessTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OneShot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ITimeTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "656e5556-0b2a-4377-ba70-3b45a935547f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FreshnessTime: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_OneShot: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ITimeTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), freshnessTime: u32, oneShot: bool) core.HResult!*TimeTrigger {
        var _r: *TimeTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), freshnessTime, oneShot, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ITimeTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38c682fe-9b54-45e6-b2f3-269b87a6f734";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, freshnessTime: u32, oneShot: bool, _r: **TimeTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationActionTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), applicationId: HSTRING) core.HResult!*ToastNotificationActionTrigger {
        var _r: *ToastNotificationActionTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IToastNotificationActionTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b09dfc27-6480-4349-8125-97b3efaa0a3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **ToastNotificationActionTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationHistoryChangedTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), applicationId: HSTRING) core.HResult!*ToastNotificationHistoryChangedTrigger {
        var _r: *ToastNotificationHistoryChangedTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IToastNotificationHistoryChangedTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81c6faad-8797-4785-81b4-b0cccb73d1d9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **ToastNotificationHistoryChangedTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IUserNotificationChangedTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), notificationKinds: NotificationKinds) core.HResult!*UserNotificationChangedTrigger {
        var _r: *UserNotificationChangedTrigger = undefined;
        const _c = self.vtable.Create(@ptrCast(self), notificationKinds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IUserNotificationChangedTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cad4436c-69ab-4e18-a48a-5ed2ac435957";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, notificationKinds: NotificationKinds, _r: **UserNotificationChangedTrigger) callconv(.winapi) HRESULT,
    };
};
pub const LocationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTriggerType(self: *@This()) core.HResult!LocationTriggerType {
        const this: *ILocationTrigger = @ptrCast(self);
        return try this.getTriggerType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(triggerType: LocationTriggerType) core.HResult!*LocationTrigger {
        const factory = @This().ILocationTriggerFactoryCache.get();
        return try factory.Create(triggerType);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.LocationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILocationTrigger.GUID;
    pub const IID: Guid = ILocationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILocationTrigger.SIGNATURE);
    var _ILocationTriggerFactoryCache: FactoryCache(ILocationTriggerFactory, RUNTIME_NAME) = .{};
};
pub const LocationTriggerType = enum(i32) {
    Geofence = 0,
};
pub const MaintenanceTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFreshnessTime(self: *@This()) core.HResult!u32 {
        const this: *IMaintenanceTrigger = @ptrCast(self);
        return try this.getFreshnessTime();
    }
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        const this: *IMaintenanceTrigger = @ptrCast(self);
        return try this.getOneShot();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(freshnessTime: u32, oneShot: bool) core.HResult!*MaintenanceTrigger {
        const factory = @This().IMaintenanceTriggerFactoryCache.get();
        return try factory.Create(freshnessTime, oneShot);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.MaintenanceTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMaintenanceTrigger.GUID;
    pub const IID: Guid = IMaintenanceTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMaintenanceTrigger.SIGNATURE);
    var _IMaintenanceTriggerFactoryCache: FactoryCache(IMaintenanceTriggerFactory, RUNTIME_NAME) = .{};
};
pub const MediaProcessingTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestAsync(self: *@This()) core.HResult!*IAsyncOperation(MediaProcessingTriggerResult) {
        const this: *IMediaProcessingTrigger = @ptrCast(self);
        return try this.RequestAsync();
    }
    pub fn RequestAsync(self: *@This(), arguments: *ValueSet) core.HResult!*IAsyncOperation(MediaProcessingTriggerResult) {
        const this: *IMediaProcessingTrigger = @ptrCast(self);
        return try this.RequestAsync(arguments);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaProcessingTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.MediaProcessingTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaProcessingTrigger.GUID;
    pub const IID: Guid = IMediaProcessingTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaProcessingTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaProcessingTriggerResult = enum(i32) {
    Allowed = 0,
    CurrentlyRunning = 1,
    DisabledByPolicy = 2,
    UnknownError = 3,
};
pub const MobileBroadbandDeviceServiceNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.MobileBroadbandDeviceServiceNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandPcoDataChangeTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.MobileBroadbandPcoDataChangeTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandPinLockStateChangeTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.MobileBroadbandPinLockStateChangeTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandRadioStateChangeTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.MobileBroadbandRadioStateChangeTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandRegistrationStateChangeTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.MobileBroadbandRegistrationStateChangeTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NetworkOperatorDataUsageTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.NetworkOperatorDataUsageTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NetworkOperatorHotspotAuthenticationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INetworkOperatorHotspotAuthenticationTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.NetworkOperatorHotspotAuthenticationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkOperatorHotspotAuthenticationTrigger.GUID;
    pub const IID: Guid = INetworkOperatorHotspotAuthenticationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkOperatorHotspotAuthenticationTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NetworkOperatorNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorNotificationTrigger = @ptrCast(self);
        return try this.getNetworkAccountId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(networkAccountId: HSTRING) core.HResult!*NetworkOperatorNotificationTrigger {
        const factory = @This().INetworkOperatorNotificationTriggerFactoryCache.get();
        return try factory.Create(networkAccountId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.NetworkOperatorNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkOperatorNotificationTrigger.GUID;
    pub const IID: Guid = INetworkOperatorNotificationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkOperatorNotificationTrigger.SIGNATURE);
    var _INetworkOperatorNotificationTriggerFactoryCache: FactoryCache(INetworkOperatorNotificationTriggerFactory, RUNTIME_NAME) = .{};
};
pub const PaymentAppCanMakePaymentTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.PaymentAppCanMakePaymentTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PushNotificationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub fn Create(applicationId: HSTRING) core.HResult!*PushNotificationTrigger {
        const factory = @This().IPushNotificationTriggerFactoryCache.get();
        return try factory.Create(applicationId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.PushNotificationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPushNotificationTriggerFactoryCache: FactoryCache(IPushNotificationTriggerFactory, RUNTIME_NAME) = .{};
};
pub const RcsEndUserMessageAvailableTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRcsEndUserMessageAvailableTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.RcsEndUserMessageAvailableTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRcsEndUserMessageAvailableTrigger.GUID;
    pub const IID: Guid = IRcsEndUserMessageAvailableTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRcsEndUserMessageAvailableTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const RfcommConnectionTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInboundConnection(self: *@This()) core.HResult!*RfcommInboundConnectionInformation {
        const this: *IRfcommConnectionTrigger = @ptrCast(self);
        return try this.getInboundConnection();
    }
    pub fn getOutboundConnection(self: *@This()) core.HResult!*RfcommOutboundConnectionInformation {
        const this: *IRfcommConnectionTrigger = @ptrCast(self);
        return try this.getOutboundConnection();
    }
    pub fn getAllowMultipleConnections(self: *@This()) core.HResult!bool {
        const this: *IRfcommConnectionTrigger = @ptrCast(self);
        return try this.getAllowMultipleConnections();
    }
    pub fn putAllowMultipleConnections(self: *@This(), value: bool) core.HResult!void {
        const this: *IRfcommConnectionTrigger = @ptrCast(self);
        return try this.putAllowMultipleConnections(value);
    }
    pub fn getProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        const this: *IRfcommConnectionTrigger = @ptrCast(self);
        return try this.getProtectionLevel();
    }
    pub fn putProtectionLevel(self: *@This(), value: SocketProtectionLevel) core.HResult!void {
        const this: *IRfcommConnectionTrigger = @ptrCast(self);
        return try this.putProtectionLevel(value);
    }
    pub fn getRemoteHostName(self: *@This()) core.HResult!*HostName {
        const this: *IRfcommConnectionTrigger = @ptrCast(self);
        return try this.getRemoteHostName();
    }
    pub fn putRemoteHostName(self: *@This(), value: *HostName) core.HResult!void {
        const this: *IRfcommConnectionTrigger = @ptrCast(self);
        return try this.putRemoteHostName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRfcommConnectionTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.RfcommConnectionTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRfcommConnectionTrigger.GUID;
    pub const IID: Guid = IRfcommConnectionTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRfcommConnectionTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SecondaryAuthenticationFactorAuthenticationTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISecondaryAuthenticationFactorAuthenticationTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.SecondaryAuthenticationFactorAuthenticationTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISecondaryAuthenticationFactorAuthenticationTrigger.GUID;
    pub const IID: Guid = ISecondaryAuthenticationFactorAuthenticationTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISecondaryAuthenticationFactorAuthenticationTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SensorDataThresholdTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(threshold: *ISensorDataThreshold) core.HResult!*SensorDataThresholdTrigger {
        const factory = @This().ISensorDataThresholdTriggerFactoryCache.get();
        return try factory.Create(threshold);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.SensorDataThresholdTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISensorDataThresholdTrigger.GUID;
    pub const IID: Guid = ISensorDataThresholdTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISensorDataThresholdTrigger.SIGNATURE);
    var _ISensorDataThresholdTriggerFactoryCache: FactoryCache(ISensorDataThresholdTriggerFactory, RUNTIME_NAME) = .{};
};
pub const SmsMessageReceivedTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(filterRules: *SmsFilterRules) core.HResult!*SmsMessageReceivedTrigger {
        const factory = @This().ISmsMessageReceivedTriggerFactoryCache.get();
        return try factory.Create(filterRules);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.SmsMessageReceivedTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _ISmsMessageReceivedTriggerFactoryCache: FactoryCache(ISmsMessageReceivedTriggerFactory, RUNTIME_NAME) = .{};
};
pub const SocketActivityTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsWakeFromLowPowerSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISocketActivityTrigger = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISocketActivityTrigger.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWakeFromLowPowerSupported();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.SocketActivityTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageLibraryChangeTrackerTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(tracker: *StorageLibraryChangeTracker) core.HResult!*StorageLibraryChangeTrackerTrigger {
        const factory = @This().IStorageLibraryChangeTrackerTriggerFactoryCache.get();
        return try factory.Create(tracker);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.StorageLibraryChangeTrackerTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IStorageLibraryChangeTrackerTriggerFactoryCache: FactoryCache(IStorageLibraryChangeTrackerTriggerFactory, RUNTIME_NAME) = .{};
};
pub const StorageLibraryContentChangedTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(storageLibrary: *StorageLibrary) core.HResult!*StorageLibraryContentChangedTrigger {
        const factory = @This().IStorageLibraryContentChangedTriggerStaticsCache.get();
        return try factory.Create(storageLibrary);
    }
    pub fn CreateFromLibraries(storageLibraries: *IIterable(StorageLibrary)) core.HResult!*StorageLibraryContentChangedTrigger {
        const factory = @This().IStorageLibraryContentChangedTriggerStaticsCache.get();
        return try factory.CreateFromLibraries(storageLibraries);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageLibraryContentChangedTrigger.GUID;
    pub const IID: Guid = IStorageLibraryContentChangedTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageLibraryContentChangedTrigger.SIGNATURE);
    var _IStorageLibraryContentChangedTriggerStaticsCache: FactoryCache(IStorageLibraryContentChangedTriggerStatics, RUNTIME_NAME) = .{};
};
pub const SystemCondition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConditionType(self: *@This()) core.HResult!SystemConditionType {
        const this: *ISystemCondition = @ptrCast(self);
        return try this.getConditionType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(conditionType: SystemConditionType) core.HResult!*SystemCondition {
        const factory = @This().ISystemConditionFactoryCache.get();
        return try factory.Create(conditionType);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.SystemCondition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemCondition.GUID;
    pub const IID: Guid = ISystemCondition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemCondition.SIGNATURE);
    var _ISystemConditionFactoryCache: FactoryCache(ISystemConditionFactory, RUNTIME_NAME) = .{};
};
pub const SystemConditionType = enum(i32) {
    Invalid = 0,
    UserPresent = 1,
    UserNotPresent = 2,
    InternetAvailable = 3,
    InternetNotAvailable = 4,
    SessionConnected = 5,
    SessionDisconnected = 6,
    FreeNetworkAvailable = 7,
    BackgroundWorkCostNotHigh = 8,
};
pub const SystemTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        const this: *ISystemTrigger = @ptrCast(self);
        return try this.getOneShot();
    }
    pub fn getTriggerType(self: *@This()) core.HResult!SystemTriggerType {
        const this: *ISystemTrigger = @ptrCast(self);
        return try this.getTriggerType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(triggerType: SystemTriggerType, oneShot: bool) core.HResult!*SystemTrigger {
        const factory = @This().ISystemTriggerFactoryCache.get();
        return try factory.Create(triggerType, oneShot);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.SystemTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemTrigger.GUID;
    pub const IID: Guid = ISystemTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemTrigger.SIGNATURE);
    var _ISystemTriggerFactoryCache: FactoryCache(ISystemTriggerFactory, RUNTIME_NAME) = .{};
};
pub const SystemTriggerType = enum(i32) {
    Invalid = 0,
    SmsReceived = 1,
    UserPresent = 2,
    UserAway = 3,
    NetworkStateChange = 4,
    ControlChannelReset = 5,
    InternetAvailable = 6,
    SessionConnected = 7,
    ServicingComplete = 8,
    LockScreenApplicationAdded = 9,
    LockScreenApplicationRemoved = 10,
    TimeZoneChange = 11,
    OnlineIdConnectedStateChange = 12,
    BackgroundWorkCostChange = 13,
    PowerStateChange = 14,
    DefaultSignInAccountChange = 15,
};
pub const TetheringEntitlementCheckTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.TetheringEntitlementCheckTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TimeTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFreshnessTime(self: *@This()) core.HResult!u32 {
        const this: *ITimeTrigger = @ptrCast(self);
        return try this.getFreshnessTime();
    }
    pub fn getOneShot(self: *@This()) core.HResult!bool {
        const this: *ITimeTrigger = @ptrCast(self);
        return try this.getOneShot();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(freshnessTime: u32, oneShot: bool) core.HResult!*TimeTrigger {
        const factory = @This().ITimeTriggerFactoryCache.get();
        return try factory.Create(freshnessTime, oneShot);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.TimeTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimeTrigger.GUID;
    pub const IID: Guid = ITimeTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimeTrigger.SIGNATURE);
    var _ITimeTriggerFactoryCache: FactoryCache(ITimeTriggerFactory, RUNTIME_NAME) = .{};
};
pub const ToastNotificationActionTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub fn Create(applicationId: HSTRING) core.HResult!*ToastNotificationActionTrigger {
        const factory = @This().IToastNotificationActionTriggerFactoryCache.get();
        return try factory.Create(applicationId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ToastNotificationActionTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IToastNotificationActionTriggerFactoryCache: FactoryCache(IToastNotificationActionTriggerFactory, RUNTIME_NAME) = .{};
};
pub const ToastNotificationHistoryChangedTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub fn Create(applicationId: HSTRING) core.HResult!*ToastNotificationHistoryChangedTrigger {
        const factory = @This().IToastNotificationHistoryChangedTriggerFactoryCache.get();
        return try factory.Create(applicationId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.ToastNotificationHistoryChangedTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IToastNotificationHistoryChangedTriggerFactoryCache: FactoryCache(IToastNotificationHistoryChangedTriggerFactory, RUNTIME_NAME) = .{};
};
pub const UserNotificationChangedTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(notificationKinds: NotificationKinds) core.HResult!*UserNotificationChangedTrigger {
        const factory = @This().IUserNotificationChangedTriggerFactoryCache.get();
        return try factory.Create(notificationKinds);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.UserNotificationChangedTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IUserNotificationChangedTriggerFactoryCache: FactoryCache(IUserNotificationChangedTriggerFactory, RUNTIME_NAME) = .{};
};
pub const WiFiOnDemandHotspotConnectTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.WiFiOnDemandHotspotConnectTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WiFiOnDemandHotspotUpdateMetadataTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTrigger.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.WiFiOnDemandHotspotUpdateMetadataTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTrigger.GUID;
    pub const IID: Guid = IBackgroundTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTrigger.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AppBroadcastTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putProviderInfo(self: *@This(), value: *AppBroadcastTriggerProviderInfo) core.HResult!void {
        const this: *IAppBroadcastTrigger = @ptrCast(self);
        return try this.putProviderInfo(value);
    }
    pub fn getProviderInfo(self: *@This()) core.HResult!*AppBroadcastTriggerProviderInfo {
        const this: *IAppBroadcastTrigger = @ptrCast(self);
        return try this.getProviderInfo();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAppBroadcastTrigger(providerKey: HSTRING) core.HResult!*AppBroadcastTrigger {
        const factory = @This().IAppBroadcastTriggerFactoryCache.get();
        return try factory.CreateAppBroadcastTrigger(providerKey);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.AppBroadcastTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastTrigger.GUID;
    pub const IID: Guid = IAppBroadcastTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastTrigger.SIGNATURE);
    var _IAppBroadcastTriggerFactoryCache: FactoryCache(IAppBroadcastTriggerFactory, RUNTIME_NAME) = .{};
};
pub const AppBroadcastTriggerProviderInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putDisplayNameResource(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.putDisplayNameResource(value);
    }
    pub fn getDisplayNameResource(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.getDisplayNameResource();
    }
    pub fn putLogoResource(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.putLogoResource(value);
    }
    pub fn getLogoResource(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.getLogoResource();
    }
    pub fn putVideoKeyFrameInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.putVideoKeyFrameInterval(value);
    }
    pub fn getVideoKeyFrameInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.getVideoKeyFrameInterval();
    }
    pub fn putMaxVideoBitrate(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.putMaxVideoBitrate(value);
    }
    pub fn getMaxVideoBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.getMaxVideoBitrate();
    }
    pub fn putMaxVideoWidth(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.putMaxVideoWidth(value);
    }
    pub fn getMaxVideoWidth(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.getMaxVideoWidth();
    }
    pub fn putMaxVideoHeight(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.putMaxVideoHeight(value);
    }
    pub fn getMaxVideoHeight(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastTriggerProviderInfo = @ptrCast(self);
        return try this.getMaxVideoHeight();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.AppBroadcastTriggerProviderInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastTriggerProviderInfo.GUID;
    pub const IID: Guid = IAppBroadcastTriggerProviderInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastTriggerProviderInfo.SIGNATURE);
};
pub const IAppBroadcastTrigger = extern struct {
    vtable: *const VTable,
    pub fn putProviderInfo(self: *@This(), value: *AppBroadcastTriggerProviderInfo) core.HResult!void {
        const _c = self.vtable.put_ProviderInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProviderInfo(self: *@This()) core.HResult!*AppBroadcastTriggerProviderInfo {
        var _r: *AppBroadcastTriggerProviderInfo = undefined;
        const _c = self.vtable.get_ProviderInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IAppBroadcastTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74d4f496-8d37-44ec-9481-2a0b9854eb48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ProviderInfo: *const fn(self: *anyopaque, value: *AppBroadcastTriggerProviderInfo) callconv(.winapi) HRESULT,
        get_ProviderInfo: *const fn(self: *anyopaque, _r: **AppBroadcastTriggerProviderInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateAppBroadcastTrigger(self: *@This(), providerKey: HSTRING) core.HResult!*AppBroadcastTrigger {
        var _r: *AppBroadcastTrigger = undefined;
        const _c = self.vtable.CreateAppBroadcastTrigger(@ptrCast(self), providerKey, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IAppBroadcastTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "280b9f44-22f4-4618-a02e-e7e411eb7238";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAppBroadcastTrigger: *const fn(self: *anyopaque, providerKey: HSTRING, _r: **AppBroadcastTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastTriggerProviderInfo = extern struct {
    vtable: *const VTable,
    pub fn putDisplayNameResource(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayNameResource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayNameResource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayNameResource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogoResource(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LogoResource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLogoResource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LogoResource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoKeyFrameInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_VideoKeyFrameInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideoKeyFrameInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_VideoKeyFrameInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxVideoBitrate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxVideoBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxVideoBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxVideoBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxVideoWidth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxVideoWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxVideoWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxVideoWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxVideoHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxVideoHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxVideoHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxVideoHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f219352d-9de8-4420-9ce2-5eff8f17376b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DisplayNameResource: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayNameResource: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LogoResource: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_LogoResource: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_VideoKeyFrameInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_VideoKeyFrameInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_MaxVideoBitrate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MaxVideoBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxVideoWidth: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MaxVideoWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxVideoHeight: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MaxVideoHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const CachedFileTarget = @import("../Storage/Provider.zig").CachedFileTarget;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const GattLocalService = @import("../Devices/Bluetooth/GenericAttributeProfile.zig").GattLocalService;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const VisitMonitoringScope = @import("../Devices/Geolocation.zig").VisitMonitoringScope;
const IInspectable = @import("../Foundation.zig").IInspectable;
const GattServiceProviderAdvertisingParameters = @import("../Devices/Bluetooth/GenericAttributeProfile.zig").GattServiceProviderAdvertisingParameters;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const NotificationKinds = @import("../UI/Notifications.zig").NotificationKinds;
const HRESULT = @import("../root.zig").HRESULT;
const BluetoothError = @import("../Devices/Bluetooth.zig").BluetoothError;
const GattCharacteristic = @import("../Devices/Bluetooth/GenericAttributeProfile.zig").GattCharacteristic;
const HostName = @import("../Networking.zig").HostName;
const SmsFilterRules = @import("../Devices/Sms.zig").SmsFilterRules;
const BluetoothLEAdvertisementScanParameters = @import("../Devices/Bluetooth/Advertisement.zig").BluetoothLEAdvertisementScanParameters;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const PhoneTriggerType = @import("./Calls/Background.zig").PhoneTriggerType;
const IReference = @import("../Foundation.zig").IReference;
const BluetoothLEAdvertisementFilter = @import("../Devices/Bluetooth/Advertisement.zig").BluetoothLEAdvertisementFilter;
const DateTime = @import("../Foundation.zig").DateTime;
const ActivityType = @import("../Devices/Sensors.zig").ActivityType;
const BackgroundActivatedEventArgs = @import("./Activation.zig").BackgroundActivatedEventArgs;
const BluetoothLEAdvertisementPhyType = @import("../Devices/Bluetooth/Advertisement.zig").BluetoothLEAdvertisementPhyType;
const FactoryCache = @import("../core.zig").FactoryCache;
const BluetoothLEAdvertisement = @import("../Devices/Bluetooth/Advertisement.zig").BluetoothLEAdvertisement;
const SmartCardTriggerType = @import("../Devices/SmartCards.zig").SmartCardTriggerType;
const StorageLibrary = @import("../Storage.zig").StorageLibrary;
const BluetoothEventTriggeringMode = @import("../Devices/Bluetooth/Background.zig").BluetoothEventTriggeringMode;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IAgileObject = @import("../root.zig").IAgileObject;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const RfcommInboundConnectionInformation = @import("../Devices/Bluetooth/Background.zig").RfcommInboundConnectionInformation;
const RfcommOutboundConnectionInformation = @import("../Devices/Bluetooth/Background.zig").RfcommOutboundConnectionInformation;
const ISensorDataThreshold = @import("../Devices/Sensors.zig").ISensorDataThreshold;
const BluetoothSignalStrengthFilter = @import("../Devices/Bluetooth.zig").BluetoothSignalStrengthFilter;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const StorageLibraryChangeTracker = @import("../Storage.zig").StorageLibraryChangeTracker;
const SocketProtectionLevel = @import("../Networking/Sockets.zig").SocketProtectionLevel;
const FileUpdateRequest = @import("../Storage/Provider.zig").FileUpdateRequest;
const User = @import("../System.zig").User;
