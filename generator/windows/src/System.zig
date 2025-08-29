pub const AppActivationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IAppActivationResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getAppResourceGroupInfo(self: *@This()) core.HResult!*AppResourceGroupInfo {
        const this: *IAppActivationResult = @ptrCast(self);
        return try this.getAppResourceGroupInfo();
    }
    pub const NAME: []const u8 = "Windows.System.AppActivationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppActivationResult.GUID;
    pub const IID: Guid = IAppActivationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppActivationResult.SIGNATURE);
};
pub const AppDiagnosticInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppInfo(self: *@This()) core.HResult!*AppInfo {
        const this: *IAppDiagnosticInfo = @ptrCast(self);
        return try this.getAppInfo();
    }
    pub fn GetResourceGroups(self: *@This()) core.HResult!*IVector(AppResourceGroupInfo) {
        var this: ?*IAppDiagnosticInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppDiagnosticInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetResourceGroups();
    }
    pub fn CreateResourceGroupWatcher(self: *@This()) core.HResult!*AppResourceGroupInfoWatcher {
        var this: ?*IAppDiagnosticInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppDiagnosticInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateResourceGroupWatcher();
    }
    pub fn LaunchAsync(self: *@This()) core.HResult!*IAsyncOperation(AppActivationResult) {
        var this: ?*IAppDiagnosticInfo3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppDiagnosticInfo3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LaunchAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWatcher() core.HResult!*AppDiagnosticInfoWatcher {
        const factory = @This().IAppDiagnosticInfoStatics2Cache.get();
        return try factory.CreateWatcher();
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(DiagnosticAccessStatus) {
        const factory = @This().IAppDiagnosticInfoStatics2Cache.get();
        return try factory.RequestAccessAsync();
    }
    pub fn RequestInfoForPackageAsync(packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(IVector(AppDiagnosticInfo)) {
        const factory = @This().IAppDiagnosticInfoStatics2Cache.get();
        return try factory.RequestInfoForPackageAsync(packageFamilyName);
    }
    pub fn RequestInfoForAppAsync() core.HResult!*IAsyncOperation(IVector(AppDiagnosticInfo)) {
        const factory = @This().IAppDiagnosticInfoStatics2Cache.get();
        return try factory.RequestInfoForAppAsync();
    }
    pub fn RequestInfoForAppAsync(appUserModelId: HSTRING) core.HResult!*IAsyncOperation(IVector(AppDiagnosticInfo)) {
        const factory = @This().IAppDiagnosticInfoStatics2Cache.get();
        return try factory.RequestInfoForAppAsync(appUserModelId);
    }
    pub fn RequestInfoAsync() core.HResult!*IAsyncOperation(IVector(AppDiagnosticInfo)) {
        const factory = @This().IAppDiagnosticInfoStaticsCache.get();
        return try factory.RequestInfoAsync();
    }
    pub const NAME: []const u8 = "Windows.System.AppDiagnosticInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppDiagnosticInfo.GUID;
    pub const IID: Guid = IAppDiagnosticInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppDiagnosticInfo.SIGNATURE);
    var _IAppDiagnosticInfoStatics2Cache: FactoryCache(IAppDiagnosticInfoStatics2, RUNTIME_NAME) = .{};
    var _IAppDiagnosticInfoStaticsCache: FactoryCache(IAppDiagnosticInfoStatics, RUNTIME_NAME) = .{};
};
pub const AppDiagnosticInfoWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(AppDiagnosticInfoWatcher,AppDiagnosticInfoWatcherEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(AppDiagnosticInfoWatcher,AppDiagnosticInfoWatcherEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(AppDiagnosticInfoWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(AppDiagnosticInfoWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!AppDiagnosticInfoWatcherStatus {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IAppDiagnosticInfoWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.System.AppDiagnosticInfoWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppDiagnosticInfoWatcher.GUID;
    pub const IID: Guid = IAppDiagnosticInfoWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppDiagnosticInfoWatcher.SIGNATURE);
};
pub const AppDiagnosticInfoWatcherEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppDiagnosticInfo(self: *@This()) core.HResult!*AppDiagnosticInfo {
        const this: *IAppDiagnosticInfoWatcherEventArgs = @ptrCast(self);
        return try this.getAppDiagnosticInfo();
    }
    pub const NAME: []const u8 = "Windows.System.AppDiagnosticInfoWatcherEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppDiagnosticInfoWatcherEventArgs.GUID;
    pub const IID: Guid = IAppDiagnosticInfoWatcherEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppDiagnosticInfoWatcherEventArgs.SIGNATURE);
};
pub const AppDiagnosticInfoWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const AppExecutionStateChangeResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IAppExecutionStateChangeResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.System.AppExecutionStateChangeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppExecutionStateChangeResult.GUID;
    pub const IID: Guid = IAppExecutionStateChangeResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppExecutionStateChangeResult.SIGNATURE);
};
pub const AppMemoryReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrivateCommitUsage(self: *@This()) core.HResult!u64 {
        const this: *IAppMemoryReport = @ptrCast(self);
        return try this.getPrivateCommitUsage();
    }
    pub fn getPeakPrivateCommitUsage(self: *@This()) core.HResult!u64 {
        const this: *IAppMemoryReport = @ptrCast(self);
        return try this.getPeakPrivateCommitUsage();
    }
    pub fn getTotalCommitUsage(self: *@This()) core.HResult!u64 {
        const this: *IAppMemoryReport = @ptrCast(self);
        return try this.getTotalCommitUsage();
    }
    pub fn getTotalCommitLimit(self: *@This()) core.HResult!u64 {
        const this: *IAppMemoryReport = @ptrCast(self);
        return try this.getTotalCommitLimit();
    }
    pub fn getExpectedTotalCommitLimit(self: *@This()) core.HResult!u64 {
        var this: ?*IAppMemoryReport2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppMemoryReport2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpectedTotalCommitLimit();
    }
    pub const NAME: []const u8 = "Windows.System.AppMemoryReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppMemoryReport.GUID;
    pub const IID: Guid = IAppMemoryReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppMemoryReport.SIGNATURE);
};
pub const AppMemoryUsageLevel = enum(i32) {
    Low = 0,
    Medium = 1,
    High = 2,
    OverLimit = 3,
};
pub const AppMemoryUsageLimitChangingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldLimit(self: *@This()) core.HResult!u64 {
        const this: *IAppMemoryUsageLimitChangingEventArgs = @ptrCast(self);
        return try this.getOldLimit();
    }
    pub fn getNewLimit(self: *@This()) core.HResult!u64 {
        const this: *IAppMemoryUsageLimitChangingEventArgs = @ptrCast(self);
        return try this.getNewLimit();
    }
    pub const NAME: []const u8 = "Windows.System.AppMemoryUsageLimitChangingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppMemoryUsageLimitChangingEventArgs.GUID;
    pub const IID: Guid = IAppMemoryUsageLimitChangingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppMemoryUsageLimitChangingEventArgs.SIGNATURE);
};
pub const AppResourceGroupBackgroundTaskReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskId(self: *@This()) core.HResult!*Guid {
        const this: *IAppResourceGroupBackgroundTaskReport = @ptrCast(self);
        return try this.getTaskId();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppResourceGroupBackgroundTaskReport = @ptrCast(self);
        return try this.getName();
    }
    pub fn getTrigger(self: *@This()) core.HResult!HSTRING {
        const this: *IAppResourceGroupBackgroundTaskReport = @ptrCast(self);
        return try this.getTrigger();
    }
    pub fn getEntryPoint(self: *@This()) core.HResult!HSTRING {
        const this: *IAppResourceGroupBackgroundTaskReport = @ptrCast(self);
        return try this.getEntryPoint();
    }
    pub const NAME: []const u8 = "Windows.System.AppResourceGroupBackgroundTaskReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppResourceGroupBackgroundTaskReport.GUID;
    pub const IID: Guid = IAppResourceGroupBackgroundTaskReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppResourceGroupBackgroundTaskReport.SIGNATURE);
};
pub const AppResourceGroupEnergyQuotaState = enum(i32) {
    Unknown = 0,
    Over = 1,
    Under = 2,
};
pub const AppResourceGroupExecutionState = enum(i32) {
    Unknown = 0,
    Running = 1,
    Suspending = 2,
    Suspended = 3,
    NotRunning = 4,
};
pub const AppResourceGroupInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInstanceId(self: *@This()) core.HResult!*Guid {
        const this: *IAppResourceGroupInfo = @ptrCast(self);
        return try this.getInstanceId();
    }
    pub fn getIsShared(self: *@This()) core.HResult!bool {
        const this: *IAppResourceGroupInfo = @ptrCast(self);
        return try this.getIsShared();
    }
    pub fn GetBackgroundTaskReports(self: *@This()) core.HResult!*IVector(AppResourceGroupBackgroundTaskReport) {
        const this: *IAppResourceGroupInfo = @ptrCast(self);
        return try this.GetBackgroundTaskReports();
    }
    pub fn GetMemoryReport(self: *@This()) core.HResult!*AppResourceGroupMemoryReport {
        const this: *IAppResourceGroupInfo = @ptrCast(self);
        return try this.GetMemoryReport();
    }
    pub fn GetProcessDiagnosticInfos(self: *@This()) core.HResult!*IVector(ProcessDiagnosticInfo) {
        const this: *IAppResourceGroupInfo = @ptrCast(self);
        return try this.GetProcessDiagnosticInfos();
    }
    pub fn GetStateReport(self: *@This()) core.HResult!*AppResourceGroupStateReport {
        const this: *IAppResourceGroupInfo = @ptrCast(self);
        return try this.GetStateReport();
    }
    pub fn StartSuspendAsync(self: *@This()) core.HResult!*IAsyncOperation(AppExecutionStateChangeResult) {
        var this: ?*IAppResourceGroupInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppResourceGroupInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartSuspendAsync();
    }
    pub fn StartResumeAsync(self: *@This()) core.HResult!*IAsyncOperation(AppExecutionStateChangeResult) {
        var this: ?*IAppResourceGroupInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppResourceGroupInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartResumeAsync();
    }
    pub fn StartTerminateAsync(self: *@This()) core.HResult!*IAsyncOperation(AppExecutionStateChangeResult) {
        var this: ?*IAppResourceGroupInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppResourceGroupInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartTerminateAsync();
    }
    pub const NAME: []const u8 = "Windows.System.AppResourceGroupInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppResourceGroupInfo.GUID;
    pub const IID: Guid = IAppResourceGroupInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppResourceGroupInfo.SIGNATURE);
};
pub const AppResourceGroupInfoWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,AppResourceGroupInfoWatcherEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,AppResourceGroupInfoWatcherEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn addExecutionStateChanged(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,AppResourceGroupInfoWatcherExecutionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.addExecutionStateChanged(handler);
    }
    pub fn removeExecutionStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.removeExecutionStateChanged(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!AppResourceGroupInfoWatcherStatus {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IAppResourceGroupInfoWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.System.AppResourceGroupInfoWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppResourceGroupInfoWatcher.GUID;
    pub const IID: Guid = IAppResourceGroupInfoWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppResourceGroupInfoWatcher.SIGNATURE);
};
pub const AppResourceGroupInfoWatcherEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppDiagnosticInfos(self: *@This()) core.HResult!*IVectorView(AppDiagnosticInfo) {
        const this: *IAppResourceGroupInfoWatcherEventArgs = @ptrCast(self);
        return try this.getAppDiagnosticInfos();
    }
    pub fn getAppResourceGroupInfo(self: *@This()) core.HResult!*AppResourceGroupInfo {
        const this: *IAppResourceGroupInfoWatcherEventArgs = @ptrCast(self);
        return try this.getAppResourceGroupInfo();
    }
    pub const NAME: []const u8 = "Windows.System.AppResourceGroupInfoWatcherEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppResourceGroupInfoWatcherEventArgs.GUID;
    pub const IID: Guid = IAppResourceGroupInfoWatcherEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppResourceGroupInfoWatcherEventArgs.SIGNATURE);
};
pub const AppResourceGroupInfoWatcherExecutionStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppDiagnosticInfos(self: *@This()) core.HResult!*IVectorView(AppDiagnosticInfo) {
        const this: *IAppResourceGroupInfoWatcherExecutionStateChangedEventArgs = @ptrCast(self);
        return try this.getAppDiagnosticInfos();
    }
    pub fn getAppResourceGroupInfo(self: *@This()) core.HResult!*AppResourceGroupInfo {
        const this: *IAppResourceGroupInfoWatcherExecutionStateChangedEventArgs = @ptrCast(self);
        return try this.getAppResourceGroupInfo();
    }
    pub const NAME: []const u8 = "Windows.System.AppResourceGroupInfoWatcherExecutionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppResourceGroupInfoWatcherExecutionStateChangedEventArgs.GUID;
    pub const IID: Guid = IAppResourceGroupInfoWatcherExecutionStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppResourceGroupInfoWatcherExecutionStateChangedEventArgs.SIGNATURE);
};
pub const AppResourceGroupInfoWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const AppResourceGroupMemoryReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommitUsageLimit(self: *@This()) core.HResult!u64 {
        const this: *IAppResourceGroupMemoryReport = @ptrCast(self);
        return try this.getCommitUsageLimit();
    }
    pub fn getCommitUsageLevel(self: *@This()) core.HResult!AppMemoryUsageLevel {
        const this: *IAppResourceGroupMemoryReport = @ptrCast(self);
        return try this.getCommitUsageLevel();
    }
    pub fn getPrivateCommitUsage(self: *@This()) core.HResult!u64 {
        const this: *IAppResourceGroupMemoryReport = @ptrCast(self);
        return try this.getPrivateCommitUsage();
    }
    pub fn getTotalCommitUsage(self: *@This()) core.HResult!u64 {
        const this: *IAppResourceGroupMemoryReport = @ptrCast(self);
        return try this.getTotalCommitUsage();
    }
    pub const NAME: []const u8 = "Windows.System.AppResourceGroupMemoryReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppResourceGroupMemoryReport.GUID;
    pub const IID: Guid = IAppResourceGroupMemoryReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppResourceGroupMemoryReport.SIGNATURE);
};
pub const AppResourceGroupStateReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExecutionState(self: *@This()) core.HResult!AppResourceGroupExecutionState {
        const this: *IAppResourceGroupStateReport = @ptrCast(self);
        return try this.getExecutionState();
    }
    pub fn getEnergyQuotaState(self: *@This()) core.HResult!AppResourceGroupEnergyQuotaState {
        const this: *IAppResourceGroupStateReport = @ptrCast(self);
        return try this.getEnergyQuotaState();
    }
    pub const NAME: []const u8 = "Windows.System.AppResourceGroupStateReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppResourceGroupStateReport.GUID;
    pub const IID: Guid = IAppResourceGroupStateReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppResourceGroupStateReport.SIGNATURE);
};
pub const AppUriHandlerHost = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppUriHandlerHost = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppUriHandlerHost = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IAppUriHandlerHost2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppUriHandlerHost2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppUriHandlerHost2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppUriHandlerHost2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppUriHandlerHost.IID)));
    }
    pub fn CreateInstance(name: HSTRING) core.HResult!*AppUriHandlerHost {
        const factory = @This().IAppUriHandlerHostFactoryCache.get();
        return try factory.CreateInstance(name);
    }
    pub const NAME: []const u8 = "Windows.System.AppUriHandlerHost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppUriHandlerHost.GUID;
    pub const IID: Guid = IAppUriHandlerHost.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppUriHandlerHost.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAppUriHandlerHostFactoryCache: FactoryCache(IAppUriHandlerHostFactory, RUNTIME_NAME) = .{};
};
pub const AppUriHandlerRegistration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppUriHandlerRegistration = @ptrCast(self);
        return try this.getName();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IAppUriHandlerRegistration = @ptrCast(self);
        return try this.getUser();
    }
    pub fn GetAppAddedHostsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVector(AppUriHandlerHost)) {
        const this: *IAppUriHandlerRegistration = @ptrCast(self);
        return try this.GetAppAddedHostsAsync();
    }
    pub fn SetAppAddedHostsAsync(self: *@This(), hosts: *IIterable(AppUriHandlerHost)) core.HResult!*IAsyncAction {
        const this: *IAppUriHandlerRegistration = @ptrCast(self);
        return try this.SetAppAddedHostsAsync(hosts);
    }
    pub fn GetAllHosts(self: *@This()) core.HResult!*IVector(AppUriHandlerHost) {
        var this: ?*IAppUriHandlerRegistration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppUriHandlerRegistration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllHosts();
    }
    pub fn UpdateHosts(self: *@This(), hosts: *IIterable(AppUriHandlerHost)) core.HResult!void {
        var this: ?*IAppUriHandlerRegistration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppUriHandlerRegistration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateHosts(hosts);
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppUriHandlerRegistration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppUriHandlerRegistration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPackageFamilyName();
    }
    pub const NAME: []const u8 = "Windows.System.AppUriHandlerRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppUriHandlerRegistration.GUID;
    pub const IID: Guid = IAppUriHandlerRegistration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppUriHandlerRegistration.SIGNATURE);
};
pub const AppUriHandlerRegistrationManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IAppUriHandlerRegistrationManager = @ptrCast(self);
        return try this.getUser();
    }
    pub fn TryGetRegistration(self: *@This(), name: HSTRING) core.HResult!*AppUriHandlerRegistration {
        const this: *IAppUriHandlerRegistrationManager = @ptrCast(self);
        return try this.TryGetRegistration(name);
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppUriHandlerRegistrationManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppUriHandlerRegistrationManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPackageFamilyName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForPackage(packageFamilyName: HSTRING) core.HResult!*AppUriHandlerRegistrationManager {
        const factory = @This().IAppUriHandlerRegistrationManagerStatics2Cache.get();
        return try factory.GetForPackage(packageFamilyName);
    }
    pub fn GetForPackageForUser(packageFamilyName: HSTRING, user: *User) core.HResult!*AppUriHandlerRegistrationManager {
        const factory = @This().IAppUriHandlerRegistrationManagerStatics2Cache.get();
        return try factory.GetForPackageForUser(packageFamilyName, user);
    }
    pub fn GetDefault() core.HResult!*AppUriHandlerRegistrationManager {
        const factory = @This().IAppUriHandlerRegistrationManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*AppUriHandlerRegistrationManager {
        const factory = @This().IAppUriHandlerRegistrationManagerStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.System.AppUriHandlerRegistrationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppUriHandlerRegistrationManager.GUID;
    pub const IID: Guid = IAppUriHandlerRegistrationManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppUriHandlerRegistrationManager.SIGNATURE);
    var _IAppUriHandlerRegistrationManagerStatics2Cache: FactoryCache(IAppUriHandlerRegistrationManagerStatics2, RUNTIME_NAME) = .{};
    var _IAppUriHandlerRegistrationManagerStaticsCache: FactoryCache(IAppUriHandlerRegistrationManagerStatics, RUNTIME_NAME) = .{};
};
pub const DiagnosticAccessStatus = enum(i32) {
    Unspecified = 0,
    Denied = 1,
    Limited = 2,
    Allowed = 3,
};
pub const DispatcherQueue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateTimer(self: *@This()) core.HResult!*DispatcherQueueTimer {
        const this: *IDispatcherQueue = @ptrCast(self);
        return try this.CreateTimer();
    }
    pub fn TryEnqueue(self: *@This(), callback: *DispatcherQueueHandler) core.HResult!bool {
        const this: *IDispatcherQueue = @ptrCast(self);
        return try this.TryEnqueue(callback);
    }
    pub fn TryEnqueueWithCallback(self: *@This(), priority: DispatcherQueuePriority, callback: *DispatcherQueueHandler) core.HResult!bool {
        const this: *IDispatcherQueue = @ptrCast(self);
        return try this.TryEnqueueWithCallback(priority, callback);
    }
    pub fn addShutdownStarting(self: *@This(), handler: *TypedEventHandler(DispatcherQueue,DispatcherQueueShutdownStartingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDispatcherQueue = @ptrCast(self);
        return try this.addShutdownStarting(handler);
    }
    pub fn removeShutdownStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDispatcherQueue = @ptrCast(self);
        return try this.removeShutdownStarting(token);
    }
    pub fn addShutdownCompleted(self: *@This(), handler: *TypedEventHandler(DispatcherQueue,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDispatcherQueue = @ptrCast(self);
        return try this.addShutdownCompleted(handler);
    }
    pub fn removeShutdownCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDispatcherQueue = @ptrCast(self);
        return try this.removeShutdownCompleted(token);
    }
    pub fn getHasThreadAccess(self: *@This()) core.HResult!bool {
        var this: ?*IDispatcherQueue2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDispatcherQueue2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHasThreadAccess();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentThread() core.HResult!*DispatcherQueue {
        const factory = @This().IDispatcherQueueStaticsCache.get();
        return try factory.GetForCurrentThread();
    }
    pub const NAME: []const u8 = "Windows.System.DispatcherQueue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDispatcherQueue.GUID;
    pub const IID: Guid = IDispatcherQueue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDispatcherQueue.SIGNATURE);
    var _IDispatcherQueueStaticsCache: FactoryCache(IDispatcherQueueStatics, RUNTIME_NAME) = .{};
};
pub const DispatcherQueueController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        const this: *IDispatcherQueueController = @ptrCast(self);
        return try this.getDispatcherQueue();
    }
    pub fn ShutdownQueueAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IDispatcherQueueController = @ptrCast(self);
        return try this.ShutdownQueueAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateOnDedicatedThread() core.HResult!*DispatcherQueueController {
        const factory = @This().IDispatcherQueueControllerStaticsCache.get();
        return try factory.CreateOnDedicatedThread();
    }
    pub const NAME: []const u8 = "Windows.System.DispatcherQueueController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDispatcherQueueController.GUID;
    pub const IID: Guid = IDispatcherQueueController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDispatcherQueueController.SIGNATURE);
    var _IDispatcherQueueControllerStaticsCache: FactoryCache(IDispatcherQueueControllerStatics, RUNTIME_NAME) = .{};
};
pub const DispatcherQueueHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.System.DispatcherQueueHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dfa2dc9c-1a2d-4917-98f2-939af1d6e0c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DispatcherQueuePriority = enum(i32) {
    Low = -10,
    Normal = 0,
    High = 10,
};
pub const DispatcherQueueShutdownStartingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IDispatcherQueueShutdownStartingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.System.DispatcherQueueShutdownStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDispatcherQueueShutdownStartingEventArgs.GUID;
    pub const IID: Guid = IDispatcherQueueShutdownStartingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDispatcherQueueShutdownStartingEventArgs.SIGNATURE);
};
pub const DispatcherQueueTimer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IDispatcherQueueTimer = @ptrCast(self);
        return try this.getInterval();
    }
    pub fn putInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IDispatcherQueueTimer = @ptrCast(self);
        return try this.putInterval(value);
    }
    pub fn getIsRunning(self: *@This()) core.HResult!bool {
        const this: *IDispatcherQueueTimer = @ptrCast(self);
        return try this.getIsRunning();
    }
    pub fn getIsRepeating(self: *@This()) core.HResult!bool {
        const this: *IDispatcherQueueTimer = @ptrCast(self);
        return try this.getIsRepeating();
    }
    pub fn putIsRepeating(self: *@This(), value: bool) core.HResult!void {
        const this: *IDispatcherQueueTimer = @ptrCast(self);
        return try this.putIsRepeating(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IDispatcherQueueTimer = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IDispatcherQueueTimer = @ptrCast(self);
        return try this.Stop();
    }
    pub fn addTick(self: *@This(), handler: *TypedEventHandler(DispatcherQueueTimer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDispatcherQueueTimer = @ptrCast(self);
        return try this.addTick(handler);
    }
    pub fn removeTick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDispatcherQueueTimer = @ptrCast(self);
        return try this.removeTick(token);
    }
    pub const NAME: []const u8 = "Windows.System.DispatcherQueueTimer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDispatcherQueueTimer.GUID;
    pub const IID: Guid = IDispatcherQueueTimer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDispatcherQueueTimer.SIGNATURE);
};
pub const FolderLauncherOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItemsToSelect(self: *@This()) core.HResult!*IVector(IStorageItem) {
        const this: *IFolderLauncherOptions = @ptrCast(self);
        return try this.getItemsToSelect();
    }
    pub fn getDesiredRemainingView(self: *@This()) core.HResult!ViewSizePreference {
        var this: ?*ILauncherViewOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherViewOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredRemainingView();
    }
    pub fn putDesiredRemainingView(self: *@This(), value: ViewSizePreference) core.HResult!void {
        var this: ?*ILauncherViewOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherViewOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredRemainingView(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFolderLauncherOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.System.FolderLauncherOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFolderLauncherOptions.GUID;
    pub const IID: Guid = IFolderLauncherOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFolderLauncherOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IAppActivationResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppResourceGroupInfo(self: *@This()) core.HResult!*AppResourceGroupInfo {
        var _r: *AppResourceGroupInfo = undefined;
        const _c = self.vtable.get_AppResourceGroupInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppActivationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b528900-f46e-4eb0-aa6c-38af557cf9ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_AppResourceGroupInfo: *const fn(self: *anyopaque, _r: **AppResourceGroupInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAppDiagnosticInfo = extern struct {
    vtable: *const VTable,
    pub fn getAppInfo(self: *@This()) core.HResult!*AppInfo {
        var _r: *AppInfo = undefined;
        const _c = self.vtable.get_AppInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppDiagnosticInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e348a69a-8889-4ca3-be07-d5ffff5f0804";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppInfo: *const fn(self: *anyopaque, _r: **AppInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAppDiagnosticInfo2 = extern struct {
    vtable: *const VTable,
    pub fn GetResourceGroups(self: *@This()) core.HResult!*IVector(AppResourceGroupInfo) {
        var _r: *IVector(AppResourceGroupInfo) = undefined;
        const _c = self.vtable.GetResourceGroups(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateResourceGroupWatcher(self: *@This()) core.HResult!*AppResourceGroupInfoWatcher {
        var _r: *AppResourceGroupInfoWatcher = undefined;
        const _c = self.vtable.CreateResourceGroupWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppDiagnosticInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df46fbd7-191a-446c-9473-8fbc2374a354";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetResourceGroups: *const fn(self: *anyopaque, _r: **IVector(AppResourceGroupInfo)) callconv(.winapi) HRESULT,
        CreateResourceGroupWatcher: *const fn(self: *anyopaque, _r: **AppResourceGroupInfoWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IAppDiagnosticInfo3 = extern struct {
    vtable: *const VTable,
    pub fn LaunchAsync(self: *@This()) core.HResult!*IAsyncOperation(AppActivationResult) {
        var _r: *IAsyncOperation(AppActivationResult) = undefined;
        const _c = self.vtable.LaunchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppDiagnosticInfo3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c895c63d-dd61-4c65-babd-81a10b4f9815";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LaunchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AppActivationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IAppDiagnosticInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(IVector(AppDiagnosticInfo)) {
        var _r: *IAsyncOperation(IVector(AppDiagnosticInfo)) = undefined;
        const _c = self.vtable.RequestInfoAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppDiagnosticInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce6925bf-10ca-40c8-a9ca-c5c96501866e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestInfoAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVector(AppDiagnosticInfo))) callconv(.winapi) HRESULT,
    };
};
pub const IAppDiagnosticInfoStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateWatcher(self: *@This()) core.HResult!*AppDiagnosticInfoWatcher {
        var _r: *AppDiagnosticInfoWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(DiagnosticAccessStatus) {
        var _r: *IAsyncOperation(DiagnosticAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestInfoForPackageAsync(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(IVector(AppDiagnosticInfo)) {
        var _r: *IAsyncOperation(IVector(AppDiagnosticInfo)) = undefined;
        const _c = self.vtable.RequestInfoForPackageAsync(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestInfoForAppAsync(self: *@This()) core.HResult!*IAsyncOperation(IVector(AppDiagnosticInfo)) {
        var _r: *IAsyncOperation(IVector(AppDiagnosticInfo)) = undefined;
        const _c = self.vtable.RequestInfoForAppAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestInfoForAppAsync(self: *@This(), appUserModelId: HSTRING) core.HResult!*IAsyncOperation(IVector(AppDiagnosticInfo)) {
        var _r: *IAsyncOperation(IVector(AppDiagnosticInfo)) = undefined;
        const _c = self.vtable.RequestInfoForAppAsync(@ptrCast(self), appUserModelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppDiagnosticInfoStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05b24b86-1000-4c90-bb9f-7235071c50fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **AppDiagnosticInfoWatcher) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DiagnosticAccessStatus)) callconv(.winapi) HRESULT,
        RequestInfoForPackageAsync: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **IAsyncOperation(IVector(AppDiagnosticInfo))) callconv(.winapi) HRESULT,
        RequestInfoForAppAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVector(AppDiagnosticInfo))) callconv(.winapi) HRESULT,
        RequestInfoForAppAsync: *const fn(self: *anyopaque, appUserModelId: HSTRING, _r: **IAsyncOperation(IVector(AppDiagnosticInfo))) callconv(.winapi) HRESULT,
    };
};
pub const IAppDiagnosticInfoWatcher = extern struct {
    vtable: *const VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(AppDiagnosticInfoWatcher,AppDiagnosticInfoWatcherEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(AppDiagnosticInfoWatcher,AppDiagnosticInfoWatcherEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(AppDiagnosticInfoWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(AppDiagnosticInfoWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!AppDiagnosticInfoWatcherStatus {
        var _r: AppDiagnosticInfoWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IAppDiagnosticInfoWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75575070-01d3-489a-9325-52f9cc6ede0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppDiagnosticInfoWatcher,AppDiagnosticInfoWatcherEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppDiagnosticInfoWatcher,AppDiagnosticInfoWatcherEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppDiagnosticInfoWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppDiagnosticInfoWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AppDiagnosticInfoWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAppDiagnosticInfoWatcherEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppDiagnosticInfo(self: *@This()) core.HResult!*AppDiagnosticInfo {
        var _r: *AppDiagnosticInfo = undefined;
        const _c = self.vtable.get_AppDiagnosticInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppDiagnosticInfoWatcherEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7017c716-e1da-4c65-99df-046dff5be71a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppDiagnosticInfo: *const fn(self: *anyopaque, _r: **AppDiagnosticInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAppExecutionStateChangeResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppExecutionStateChangeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f039bf0-f91b-4df8-ae77-3033ccb69114";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IAppMemoryReport = extern struct {
    vtable: *const VTable,
    pub fn getPrivateCommitUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PrivateCommitUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeakPrivateCommitUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PeakPrivateCommitUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalCommitUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_TotalCommitUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalCommitLimit(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_TotalCommitLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppMemoryReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d65339b-4d6f-45bc-9c5e-e49b3ff2758d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrivateCommitUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PeakPrivateCommitUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_TotalCommitUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_TotalCommitLimit: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IAppMemoryReport2 = extern struct {
    vtable: *const VTable,
    pub fn getExpectedTotalCommitLimit(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_ExpectedTotalCommitLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppMemoryReport2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f7f3738-51b7-42dc-b7ed-79ba46d28857";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpectedTotalCommitLimit: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IAppMemoryUsageLimitChangingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldLimit(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_OldLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewLimit(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_NewLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppMemoryUsageLimitChangingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79f86664-feca-4da5-9e40-2bc63efdc979";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldLimit: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_NewLimit: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IAppResourceGroupBackgroundTaskReport = extern struct {
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
    pub fn getTrigger(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Trigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEntryPoint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EntryPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppResourceGroupBackgroundTaskReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2566e74e-b05d-40c2-9dc1-1a4f039ea120";
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
        get_Trigger: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EntryPoint: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppResourceGroupInfo = extern struct {
    vtable: *const VTable,
    pub fn getInstanceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_InstanceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsShared(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsShared(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBackgroundTaskReports(self: *@This()) core.HResult!*IVector(AppResourceGroupBackgroundTaskReport) {
        var _r: *IVector(AppResourceGroupBackgroundTaskReport) = undefined;
        const _c = self.vtable.GetBackgroundTaskReports(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMemoryReport(self: *@This()) core.HResult!*AppResourceGroupMemoryReport {
        var _r: *AppResourceGroupMemoryReport = undefined;
        const _c = self.vtable.GetMemoryReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProcessDiagnosticInfos(self: *@This()) core.HResult!*IVector(ProcessDiagnosticInfo) {
        var _r: *IVector(ProcessDiagnosticInfo) = undefined;
        const _c = self.vtable.GetProcessDiagnosticInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStateReport(self: *@This()) core.HResult!*AppResourceGroupStateReport {
        var _r: *AppResourceGroupStateReport = undefined;
        const _c = self.vtable.GetStateReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppResourceGroupInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b913f77a-e807-49f4-845e-7b8bdcfe8ee7";
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
        get_IsShared: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetBackgroundTaskReports: *const fn(self: *anyopaque, _r: **IVector(AppResourceGroupBackgroundTaskReport)) callconv(.winapi) HRESULT,
        GetMemoryReport: *const fn(self: *anyopaque, _r: **AppResourceGroupMemoryReport) callconv(.winapi) HRESULT,
        GetProcessDiagnosticInfos: *const fn(self: *anyopaque, _r: **IVector(ProcessDiagnosticInfo)) callconv(.winapi) HRESULT,
        GetStateReport: *const fn(self: *anyopaque, _r: **AppResourceGroupStateReport) callconv(.winapi) HRESULT,
    };
};
pub const IAppResourceGroupInfo2 = extern struct {
    vtable: *const VTable,
    pub fn StartSuspendAsync(self: *@This()) core.HResult!*IAsyncOperation(AppExecutionStateChangeResult) {
        var _r: *IAsyncOperation(AppExecutionStateChangeResult) = undefined;
        const _c = self.vtable.StartSuspendAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartResumeAsync(self: *@This()) core.HResult!*IAsyncOperation(AppExecutionStateChangeResult) {
        var _r: *IAsyncOperation(AppExecutionStateChangeResult) = undefined;
        const _c = self.vtable.StartResumeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartTerminateAsync(self: *@This()) core.HResult!*IAsyncOperation(AppExecutionStateChangeResult) {
        var _r: *IAsyncOperation(AppExecutionStateChangeResult) = undefined;
        const _c = self.vtable.StartTerminateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppResourceGroupInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee9b236d-d305-4d6b-92f7-6afdad72dedc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartSuspendAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AppExecutionStateChangeResult)) callconv(.winapi) HRESULT,
        StartResumeAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AppExecutionStateChangeResult)) callconv(.winapi) HRESULT,
        StartTerminateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AppExecutionStateChangeResult)) callconv(.winapi) HRESULT,
    };
};
pub const IAppResourceGroupInfoWatcher = extern struct {
    vtable: *const VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,AppResourceGroupInfoWatcherEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,AppResourceGroupInfoWatcherEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addExecutionStateChanged(self: *@This(), handler: *TypedEventHandler(AppResourceGroupInfoWatcher,AppResourceGroupInfoWatcherExecutionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ExecutionStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeExecutionStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ExecutionStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!AppResourceGroupInfoWatcherStatus {
        var _r: AppResourceGroupInfoWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IAppResourceGroupInfoWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9b0a0fd-6e5a-4c72-8b17-09fec4a212bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppResourceGroupInfoWatcher,AppResourceGroupInfoWatcherEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppResourceGroupInfoWatcher,AppResourceGroupInfoWatcherEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppResourceGroupInfoWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppResourceGroupInfoWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ExecutionStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppResourceGroupInfoWatcher,AppResourceGroupInfoWatcherExecutionStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ExecutionStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AppResourceGroupInfoWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAppResourceGroupInfoWatcherEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppDiagnosticInfos(self: *@This()) core.HResult!*IVectorView(AppDiagnosticInfo) {
        var _r: *IVectorView(AppDiagnosticInfo) = undefined;
        const _c = self.vtable.get_AppDiagnosticInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppResourceGroupInfo(self: *@This()) core.HResult!*AppResourceGroupInfo {
        var _r: *AppResourceGroupInfo = undefined;
        const _c = self.vtable.get_AppResourceGroupInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppResourceGroupInfoWatcherEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a787637-6302-4d2f-bf89-1c12d0b2a6b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppDiagnosticInfos: *const fn(self: *anyopaque, _r: **IVectorView(AppDiagnosticInfo)) callconv(.winapi) HRESULT,
        get_AppResourceGroupInfo: *const fn(self: *anyopaque, _r: **AppResourceGroupInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAppResourceGroupInfoWatcherExecutionStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppDiagnosticInfos(self: *@This()) core.HResult!*IVectorView(AppDiagnosticInfo) {
        var _r: *IVectorView(AppDiagnosticInfo) = undefined;
        const _c = self.vtable.get_AppDiagnosticInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppResourceGroupInfo(self: *@This()) core.HResult!*AppResourceGroupInfo {
        var _r: *AppResourceGroupInfo = undefined;
        const _c = self.vtable.get_AppResourceGroupInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppResourceGroupInfoWatcherExecutionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1bdbedd7-fee6-4fd4-98dd-e92a2cc299f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppDiagnosticInfos: *const fn(self: *anyopaque, _r: **IVectorView(AppDiagnosticInfo)) callconv(.winapi) HRESULT,
        get_AppResourceGroupInfo: *const fn(self: *anyopaque, _r: **AppResourceGroupInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAppResourceGroupMemoryReport = extern struct {
    vtable: *const VTable,
    pub fn getCommitUsageLimit(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_CommitUsageLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommitUsageLevel(self: *@This()) core.HResult!AppMemoryUsageLevel {
        var _r: AppMemoryUsageLevel = undefined;
        const _c = self.vtable.get_CommitUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrivateCommitUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PrivateCommitUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalCommitUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_TotalCommitUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppResourceGroupMemoryReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c8c06b1-7db1-4c51-a225-7fae2d49e431";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CommitUsageLimit: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_CommitUsageLevel: *const fn(self: *anyopaque, _r: *AppMemoryUsageLevel) callconv(.winapi) HRESULT,
        get_PrivateCommitUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_TotalCommitUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IAppResourceGroupStateReport = extern struct {
    vtable: *const VTable,
    pub fn getExecutionState(self: *@This()) core.HResult!AppResourceGroupExecutionState {
        var _r: AppResourceGroupExecutionState = undefined;
        const _c = self.vtable.get_ExecutionState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnergyQuotaState(self: *@This()) core.HResult!AppResourceGroupEnergyQuotaState {
        var _r: AppResourceGroupEnergyQuotaState = undefined;
        const _c = self.vtable.get_EnergyQuotaState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppResourceGroupStateReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52849f18-2f70-4236-ab40-d04db0c7b931";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExecutionState: *const fn(self: *anyopaque, _r: *AppResourceGroupExecutionState) callconv(.winapi) HRESULT,
        get_EnergyQuotaState: *const fn(self: *anyopaque, _r: *AppResourceGroupEnergyQuotaState) callconv(.winapi) HRESULT,
    };
};
pub const IAppUriHandlerHost = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IAppUriHandlerHost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d50cac5-92d2-5409-b56f-7f73e10ea4c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppUriHandlerHost2 = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IAppUriHandlerHost2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a0bee95-29e4-51bf-8095-a3c068e3c72a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppUriHandlerHostFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), name: HSTRING) core.HResult!*AppUriHandlerHost {
        var _r: *AppUriHandlerHost = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppUriHandlerHostFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "257c3c96-ce04-5f98-96bb-3ebd3e9275bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, name: HSTRING, _r: **AppUriHandlerHost) callconv(.winapi) HRESULT,
    };
};
pub const IAppUriHandlerRegistration = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppAddedHostsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVector(AppUriHandlerHost)) {
        var _r: *IAsyncOperation(IVector(AppUriHandlerHost)) = undefined;
        const _c = self.vtable.GetAppAddedHostsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAppAddedHostsAsync(self: *@This(), hosts: *IIterable(AppUriHandlerHost)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetAppAddedHostsAsync(@ptrCast(self), hosts, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppUriHandlerRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f73aeb1-4569-5c3f-9ba0-99123eea32c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        GetAppAddedHostsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVector(AppUriHandlerHost))) callconv(.winapi) HRESULT,
        SetAppAddedHostsAsync: *const fn(self: *anyopaque, hosts: *IIterable(AppUriHandlerHost), _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppUriHandlerRegistration2 = extern struct {
    vtable: *const VTable,
    pub fn GetAllHosts(self: *@This()) core.HResult!*IVector(AppUriHandlerHost) {
        var _r: *IVector(AppUriHandlerHost) = undefined;
        const _c = self.vtable.GetAllHosts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateHosts(self: *@This(), hosts: *IIterable(AppUriHandlerHost)) core.HResult!void {
        const _c = self.vtable.UpdateHosts(@ptrCast(self), hosts);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppUriHandlerRegistration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d54dac97-cb39-5f1f-883e-01853730bd6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAllHosts: *const fn(self: *anyopaque, _r: **IVector(AppUriHandlerHost)) callconv(.winapi) HRESULT,
        UpdateHosts: *const fn(self: *anyopaque, hosts: *IIterable(AppUriHandlerHost)) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppUriHandlerRegistrationManager = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetRegistration(self: *@This(), name: HSTRING) core.HResult!*AppUriHandlerRegistration {
        var _r: *AppUriHandlerRegistration = undefined;
        const _c = self.vtable.TryGetRegistration(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppUriHandlerRegistrationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e62c9a52-ac94-5750-ac1b-6cfb6f250263";
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
        TryGetRegistration: *const fn(self: *anyopaque, name: HSTRING, _r: **AppUriHandlerRegistration) callconv(.winapi) HRESULT,
    };
};
pub const IAppUriHandlerRegistrationManager2 = extern struct {
    vtable: *const VTable,
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppUriHandlerRegistrationManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bddfcaf1-b51a-5e69-aefd-7088d9f2b123";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppUriHandlerRegistrationManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*AppUriHandlerRegistrationManager {
        var _r: *AppUriHandlerRegistrationManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*AppUriHandlerRegistrationManager {
        var _r: *AppUriHandlerRegistrationManager = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppUriHandlerRegistrationManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5cedd9f-5729-5b76-a1d4-0285f295c124";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **AppUriHandlerRegistrationManager) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **AppUriHandlerRegistrationManager) callconv(.winapi) HRESULT,
    };
};
pub const IAppUriHandlerRegistrationManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForPackage(self: *@This(), packageFamilyName: HSTRING) core.HResult!*AppUriHandlerRegistrationManager {
        var _r: *AppUriHandlerRegistrationManager = undefined;
        const _c = self.vtable.GetForPackage(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForPackageForUser(self: *@This(), packageFamilyName: HSTRING, user: *User) core.HResult!*AppUriHandlerRegistrationManager {
        var _r: *AppUriHandlerRegistrationManager = undefined;
        const _c = self.vtable.GetForPackageForUser(@ptrCast(self), packageFamilyName, user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IAppUriHandlerRegistrationManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14f78379-6890-5080-90a7-98824a7f079e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForPackage: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **AppUriHandlerRegistrationManager) callconv(.winapi) HRESULT,
        GetForPackageForUser: *const fn(self: *anyopaque, packageFamilyName: HSTRING, user: *User, _r: **AppUriHandlerRegistrationManager) callconv(.winapi) HRESULT,
    };
};
pub const IDispatcherQueue = extern struct {
    vtable: *const VTable,
    pub fn CreateTimer(self: *@This()) core.HResult!*DispatcherQueueTimer {
        var _r: *DispatcherQueueTimer = undefined;
        const _c = self.vtable.CreateTimer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryEnqueue(self: *@This(), callback: *DispatcherQueueHandler) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryEnqueue(@ptrCast(self), callback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryEnqueueWithCallback(self: *@This(), priority: DispatcherQueuePriority, callback: *DispatcherQueueHandler) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryEnqueueWithCallback(@ptrCast(self), priority, callback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addShutdownStarting(self: *@This(), handler: *TypedEventHandler(DispatcherQueue,DispatcherQueueShutdownStartingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ShutdownStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShutdownStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ShutdownStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addShutdownCompleted(self: *@This(), handler: *TypedEventHandler(DispatcherQueue,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ShutdownCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShutdownCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ShutdownCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IDispatcherQueue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "603e88e4-a338-4ffe-a457-a5cfb9ceb899";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTimer: *const fn(self: *anyopaque, _r: **DispatcherQueueTimer) callconv(.winapi) HRESULT,
        TryEnqueue: *const fn(self: *anyopaque, callback: *DispatcherQueueHandler, _r: *bool) callconv(.winapi) HRESULT,
        TryEnqueueWithCallback: *const fn(self: *anyopaque, priority: DispatcherQueuePriority, callback: *DispatcherQueueHandler, _r: *bool) callconv(.winapi) HRESULT,
        add_ShutdownStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(DispatcherQueue,DispatcherQueueShutdownStartingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ShutdownStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ShutdownCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(DispatcherQueue,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ShutdownCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDispatcherQueue2 = extern struct {
    vtable: *const VTable,
    pub fn getHasThreadAccess(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasThreadAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IDispatcherQueue2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c822c647-30ef-506e-bd1e-a647ae6675ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasThreadAccess: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDispatcherQueueController = extern struct {
    vtable: *const VTable,
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.get_DispatcherQueue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShutdownQueueAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShutdownQueueAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IDispatcherQueueController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22f34e66-50db-4e36-a98d-61c01b384d20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DispatcherQueue: *const fn(self: *anyopaque, _r: **DispatcherQueue) callconv(.winapi) HRESULT,
        ShutdownQueueAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IDispatcherQueueControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateOnDedicatedThread(self: *@This()) core.HResult!*DispatcherQueueController {
        var _r: *DispatcherQueueController = undefined;
        const _c = self.vtable.CreateOnDedicatedThread(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IDispatcherQueueControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a6c98e0-5198-49a2-a313-3f70d1f13c27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateOnDedicatedThread: *const fn(self: *anyopaque, _r: **DispatcherQueueController) callconv(.winapi) HRESULT,
    };
};
pub const IDispatcherQueueShutdownStartingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IDispatcherQueueShutdownStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4724c4c-ff97-40c0-a226-cc0aaa545e89";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IDispatcherQueueStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentThread(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.GetForCurrentThread(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IDispatcherQueueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a96d83d7-9371-4517-9245-d0824ac12c74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentThread: *const fn(self: *anyopaque, _r: **DispatcherQueue) callconv(.winapi) HRESULT,
    };
};
pub const IDispatcherQueueTimer = extern struct {
    vtable: *const VTable,
    pub fn getInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Interval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Interval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRunning(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRunning(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRepeating(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRepeating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRepeating(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRepeating(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTick(self: *@This(), handler: *TypedEventHandler(DispatcherQueueTimer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Tick(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Tick(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IDispatcherQueueTimer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5feabb1d-a31c-4727-b1ac-37454649d56a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Interval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Interval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_IsRunning: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsRepeating: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRepeating: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Tick: *const fn(self: *anyopaque, handler: *TypedEventHandler(DispatcherQueueTimer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Tick: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFolderLauncherOptions = extern struct {
    vtable: *const VTable,
    pub fn getItemsToSelect(self: *@This()) core.HResult!*IVector(IStorageItem) {
        var _r: *IVector(IStorageItem) = undefined;
        const _c = self.vtable.get_ItemsToSelect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IFolderLauncherOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb91c27d-6b87-432a-bd04-776c6f5fb2ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ItemsToSelect: *const fn(self: *anyopaque, _r: **IVector(IStorageItem)) callconv(.winapi) HRESULT,
    };
};
pub const IKnownUserPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FirstName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LastName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccountName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccountName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGuestHost(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GuestHost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrincipalName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrincipalName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDomainName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DomainName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionInitiationProtocolUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SessionInitiationProtocolUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IKnownUserPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7755911a-70c5-48e5-b637-5ba3441e4ee4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirstName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LastName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProviderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AccountName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GuestHost: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PrincipalName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DomainName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SessionInitiationProtocolUri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownUserPropertiesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getAgeEnforcementRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AgeEnforcementRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IKnownUserPropertiesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b450782-f620-577e-b1b3-dd56644d79b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AgeEnforcementRegion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILaunchUriResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!LaunchUriStatus {
        var _r: LaunchUriStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResult(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.ILaunchUriResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec27a8df-f6d5-45ca-913a-70a40c5c8221";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *LaunchUriStatus) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherOptions = extern struct {
    vtable: *const VTable,
    pub fn getTreatAsUntrusted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TreatAsUntrusted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTreatAsUntrusted(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_TreatAsUntrusted(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayApplicationPicker(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DisplayApplicationPicker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayApplicationPicker(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DisplayApplicationPicker(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUI(self: *@This()) core.HResult!*LauncherUIOptions {
        var _r: *LauncherUIOptions = undefined;
        const _c = self.vtable.get_UI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreferredApplicationPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PreferredApplicationPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredApplicationPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PreferredApplicationPackageFamilyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreferredApplicationDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PreferredApplicationDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredApplicationDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PreferredApplicationDisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFallbackUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_FallbackUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFallbackUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_FallbackUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bafa21d8-b071-4cd8-853e-341203e557d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TreatAsUntrusted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TreatAsUntrusted: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DisplayApplicationPicker: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DisplayApplicationPicker: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_UI: *const fn(self: *anyopaque, _r: **LauncherUIOptions) callconv(.winapi) HRESULT,
        get_PreferredApplicationPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PreferredApplicationPackageFamilyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PreferredApplicationDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PreferredApplicationDisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_FallbackUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getTargetApplicationPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetApplicationPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetApplicationPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetApplicationPackageFamilyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNeighboringFilesQuery(self: *@This()) core.HResult!*StorageFileQueryResult {
        var _r: *StorageFileQueryResult = undefined;
        const _c = self.vtable.get_NeighboringFilesQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNeighboringFilesQuery(self: *@This(), value: *StorageFileQueryResult) core.HResult!void {
        const _c = self.vtable.put_NeighboringFilesQuery(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ba08eb4-6e40-4dce-a1a3-2f53950afb49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetApplicationPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetApplicationPackageFamilyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_NeighboringFilesQuery: *const fn(self: *anyopaque, _r: **StorageFileQueryResult) callconv(.winapi) HRESULT,
        put_NeighboringFilesQuery: *const fn(self: *anyopaque, value: *StorageFileQueryResult) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherOptions3 = extern struct {
    vtable: *const VTable,
    pub fn getIgnoreAppUriHandlers(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IgnoreAppUriHandlers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIgnoreAppUriHandlers(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IgnoreAppUriHandlers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherOptions3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0770655-4b63-4e3a-9107-4e687841923a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IgnoreAppUriHandlers: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IgnoreAppUriHandlers: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherOptions4 = extern struct {
    vtable: *const VTable,
    pub fn getLimitPickerToCurrentAppAndAppUriHandlers(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LimitPickerToCurrentAppAndAppUriHandlers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLimitPickerToCurrentAppAndAppUriHandlers(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_LimitPickerToCurrentAppAndAppUriHandlers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherOptions4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef6fd10e-e6fb-4814-a44e-57e8b9d9a01b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LimitPickerToCurrentAppAndAppUriHandlers: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_LimitPickerToCurrentAppAndAppUriHandlers: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherStatics = extern struct {
    vtable: *const VTable,
    pub fn LaunchFileAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchFileAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFileAsyncWithOptions(self: *@This(), file: *IStorageFile, options: *LauncherOptions) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchFileAsyncWithOptions(@ptrCast(self), file, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchUriAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriAsyncWithOptions(self: *@This(), uri: *Uri, options: *LauncherOptions) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchUriAsyncWithOptions(@ptrCast(self), uri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "277151c3-9e3e-42f6-91a4-5dfdeb232451";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LaunchFileAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        LaunchFileAsyncWithOptions: *const fn(self: *anyopaque, file: *IStorageFile, options: *LauncherOptions, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        LaunchUriAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        LaunchUriAsyncWithOptions: *const fn(self: *anyopaque, uri: *Uri, options: *LauncherOptions, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherStatics2 = extern struct {
    vtable: *const VTable,
    pub fn LaunchUriForResultsAsync(self: *@This(), uri: *Uri, options: *LauncherOptions) core.HResult!*IAsyncOperation(LaunchUriResult) {
        var _r: *IAsyncOperation(LaunchUriResult) = undefined;
        const _c = self.vtable.LaunchUriForResultsAsync(@ptrCast(self), uri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriForResultsAsyncWithOptionsWithInputData(self: *@This(), uri: *Uri, options: *LauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(LaunchUriResult) {
        var _r: *IAsyncOperation(LaunchUriResult) = undefined;
        const _c = self.vtable.LaunchUriForResultsAsyncWithOptionsWithInputData(@ptrCast(self), uri, options, inputData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriAsync(self: *@This(), uri: *Uri, options: *LauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchUriAsync(@ptrCast(self), uri, options, inputData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn QueryUriSupportAsync(self: *@This(), uri: *Uri, launchQuerySupportType: LaunchQuerySupportType) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        var _r: *IAsyncOperation(LaunchQuerySupportStatus) = undefined;
        const _c = self.vtable.QueryUriSupportAsync(@ptrCast(self), uri, launchQuerySupportType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn QueryUriSupportAsyncWithLaunchQuerySupportTypeWithPackageFamilyName(self: *@This(), uri: *Uri, launchQuerySupportType: LaunchQuerySupportType, packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        var _r: *IAsyncOperation(LaunchQuerySupportStatus) = undefined;
        const _c = self.vtable.QueryUriSupportAsyncWithLaunchQuerySupportTypeWithPackageFamilyName(@ptrCast(self), uri, launchQuerySupportType, packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn QueryFileSupportAsync(self: *@This(), file: *StorageFile) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        var _r: *IAsyncOperation(LaunchQuerySupportStatus) = undefined;
        const _c = self.vtable.QueryFileSupportAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn QueryFileSupportAsyncWithPackageFamilyName(self: *@This(), file: *StorageFile, packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        var _r: *IAsyncOperation(LaunchQuerySupportStatus) = undefined;
        const _c = self.vtable.QueryFileSupportAsyncWithPackageFamilyName(@ptrCast(self), file, packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindUriSchemeHandlersAsync(self: *@This(), scheme: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        var _r: *IAsyncOperation(IVectorView(AppInfo)) = undefined;
        const _c = self.vtable.FindUriSchemeHandlersAsync(@ptrCast(self), scheme, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindUriSchemeHandlersAsyncWithLaunchQuerySupportType(self: *@This(), scheme: HSTRING, launchQuerySupportType: LaunchQuerySupportType) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        var _r: *IAsyncOperation(IVectorView(AppInfo)) = undefined;
        const _c = self.vtable.FindUriSchemeHandlersAsyncWithLaunchQuerySupportType(@ptrCast(self), scheme, launchQuerySupportType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindFileHandlersAsync(self: *@This(), extension: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        var _r: *IAsyncOperation(IVectorView(AppInfo)) = undefined;
        const _c = self.vtable.FindFileHandlersAsync(@ptrCast(self), extension, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59ba2fbb-24cb-4c02-a4c4-8294569d54f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LaunchUriForResultsAsync: *const fn(self: *anyopaque, uri: *Uri, options: *LauncherOptions, _r: **IAsyncOperation(LaunchUriResult)) callconv(.winapi) HRESULT,
        LaunchUriForResultsAsyncWithOptionsWithInputData: *const fn(self: *anyopaque, uri: *Uri, options: *LauncherOptions, inputData: *ValueSet, _r: **IAsyncOperation(LaunchUriResult)) callconv(.winapi) HRESULT,
        LaunchUriAsync: *const fn(self: *anyopaque, uri: *Uri, options: *LauncherOptions, inputData: *ValueSet, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        QueryUriSupportAsync: *const fn(self: *anyopaque, uri: *Uri, launchQuerySupportType: LaunchQuerySupportType, _r: **IAsyncOperation(LaunchQuerySupportStatus)) callconv(.winapi) HRESULT,
        QueryUriSupportAsyncWithLaunchQuerySupportTypeWithPackageFamilyName: *const fn(self: *anyopaque, uri: *Uri, launchQuerySupportType: LaunchQuerySupportType, packageFamilyName: HSTRING, _r: **IAsyncOperation(LaunchQuerySupportStatus)) callconv(.winapi) HRESULT,
        QueryFileSupportAsync: *const fn(self: *anyopaque, file: *StorageFile, _r: **IAsyncOperation(LaunchQuerySupportStatus)) callconv(.winapi) HRESULT,
        QueryFileSupportAsyncWithPackageFamilyName: *const fn(self: *anyopaque, file: *StorageFile, packageFamilyName: HSTRING, _r: **IAsyncOperation(LaunchQuerySupportStatus)) callconv(.winapi) HRESULT,
        FindUriSchemeHandlersAsync: *const fn(self: *anyopaque, scheme: HSTRING, _r: **IAsyncOperation(IVectorView(AppInfo))) callconv(.winapi) HRESULT,
        FindUriSchemeHandlersAsyncWithLaunchQuerySupportType: *const fn(self: *anyopaque, scheme: HSTRING, launchQuerySupportType: LaunchQuerySupportType, _r: **IAsyncOperation(IVectorView(AppInfo))) callconv(.winapi) HRESULT,
        FindFileHandlersAsync: *const fn(self: *anyopaque, extension: HSTRING, _r: **IAsyncOperation(IVectorView(AppInfo))) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherStatics3 = extern struct {
    vtable: *const VTable,
    pub fn LaunchFolderAsync(self: *@This(), folder: *IStorageFolder) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchFolderAsync(@ptrCast(self), folder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFolderAsyncWithOptions(self: *@This(), folder: *IStorageFolder, options: *FolderLauncherOptions) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchFolderAsyncWithOptions(@ptrCast(self), folder, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "234261a8-9db3-4683-aa42-dc6f51d33847";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LaunchFolderAsync: *const fn(self: *anyopaque, folder: *IStorageFolder, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        LaunchFolderAsyncWithOptions: *const fn(self: *anyopaque, folder: *IStorageFolder, options: *FolderLauncherOptions, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherStatics4 = extern struct {
    vtable: *const VTable,
    pub fn QueryAppUriSupportAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        var _r: *IAsyncOperation(LaunchQuerySupportStatus) = undefined;
        const _c = self.vtable.QueryAppUriSupportAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn QueryAppUriSupportAsyncWithPackageFamilyName(self: *@This(), uri: *Uri, packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        var _r: *IAsyncOperation(LaunchQuerySupportStatus) = undefined;
        const _c = self.vtable.QueryAppUriSupportAsyncWithPackageFamilyName(@ptrCast(self), uri, packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAppUriHandlersAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        var _r: *IAsyncOperation(IVectorView(AppInfo)) = undefined;
        const _c = self.vtable.FindAppUriHandlersAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriForUserAsync(self: *@This(), user: *User, uri: *Uri) core.HResult!*IAsyncOperation(LaunchUriStatus) {
        var _r: *IAsyncOperation(LaunchUriStatus) = undefined;
        const _c = self.vtable.LaunchUriForUserAsync(@ptrCast(self), user, uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriForUserAsyncWithUriWithOptions(self: *@This(), user: *User, uri: *Uri, options: *LauncherOptions) core.HResult!*IAsyncOperation(LaunchUriStatus) {
        var _r: *IAsyncOperation(LaunchUriStatus) = undefined;
        const _c = self.vtable.LaunchUriForUserAsyncWithUriWithOptions(@ptrCast(self), user, uri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriForUserAsyncWithOptionsWithInputData(self: *@This(), user: *User, uri: *Uri, options: *LauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(LaunchUriStatus) {
        var _r: *IAsyncOperation(LaunchUriStatus) = undefined;
        const _c = self.vtable.LaunchUriForUserAsyncWithOptionsWithInputData(@ptrCast(self), user, uri, options, inputData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriForResultsForUserAsync(self: *@This(), user: *User, uri: *Uri, options: *LauncherOptions) core.HResult!*IAsyncOperation(LaunchUriResult) {
        var _r: *IAsyncOperation(LaunchUriResult) = undefined;
        const _c = self.vtable.LaunchUriForResultsForUserAsync(@ptrCast(self), user, uri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriForResultsForUserAsyncWithUriWithOptionsWithInputData(self: *@This(), user: *User, uri: *Uri, options: *LauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(LaunchUriResult) {
        var _r: *IAsyncOperation(LaunchUriResult) = undefined;
        const _c = self.vtable.LaunchUriForResultsForUserAsyncWithUriWithOptionsWithInputData(@ptrCast(self), user, uri, options, inputData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9ec819f-b5a5-41c6-b3b3-dd1b3178bcf2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        QueryAppUriSupportAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperation(LaunchQuerySupportStatus)) callconv(.winapi) HRESULT,
        QueryAppUriSupportAsyncWithPackageFamilyName: *const fn(self: *anyopaque, uri: *Uri, packageFamilyName: HSTRING, _r: **IAsyncOperation(LaunchQuerySupportStatus)) callconv(.winapi) HRESULT,
        FindAppUriHandlersAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperation(IVectorView(AppInfo))) callconv(.winapi) HRESULT,
        LaunchUriForUserAsync: *const fn(self: *anyopaque, user: *User, uri: *Uri, _r: **IAsyncOperation(LaunchUriStatus)) callconv(.winapi) HRESULT,
        LaunchUriForUserAsyncWithUriWithOptions: *const fn(self: *anyopaque, user: *User, uri: *Uri, options: *LauncherOptions, _r: **IAsyncOperation(LaunchUriStatus)) callconv(.winapi) HRESULT,
        LaunchUriForUserAsyncWithOptionsWithInputData: *const fn(self: *anyopaque, user: *User, uri: *Uri, options: *LauncherOptions, inputData: *ValueSet, _r: **IAsyncOperation(LaunchUriStatus)) callconv(.winapi) HRESULT,
        LaunchUriForResultsForUserAsync: *const fn(self: *anyopaque, user: *User, uri: *Uri, options: *LauncherOptions, _r: **IAsyncOperation(LaunchUriResult)) callconv(.winapi) HRESULT,
        LaunchUriForResultsForUserAsyncWithUriWithOptionsWithInputData: *const fn(self: *anyopaque, user: *User, uri: *Uri, options: *LauncherOptions, inputData: *ValueSet, _r: **IAsyncOperation(LaunchUriResult)) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherStatics5 = extern struct {
    vtable: *const VTable,
    pub fn LaunchFolderPathAsync(self: *@This(), path: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchFolderPathAsync(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFolderPathAsyncWithOptions(self: *@This(), path: HSTRING, options: *FolderLauncherOptions) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchFolderPathAsyncWithOptions(@ptrCast(self), path, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFolderPathForUserAsync(self: *@This(), user: *User, path: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchFolderPathForUserAsync(@ptrCast(self), user, path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFolderPathForUserAsyncWithPathWithOptions(self: *@This(), user: *User, path: HSTRING, options: *FolderLauncherOptions) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchFolderPathForUserAsyncWithPathWithOptions(@ptrCast(self), user, path, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b24ef84-d895-5fea-9153-1ac49aed9ba9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LaunchFolderPathAsync: *const fn(self: *anyopaque, path: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        LaunchFolderPathAsyncWithOptions: *const fn(self: *anyopaque, path: HSTRING, options: *FolderLauncherOptions, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        LaunchFolderPathForUserAsync: *const fn(self: *anyopaque, user: *User, path: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        LaunchFolderPathForUserAsyncWithPathWithOptions: *const fn(self: *anyopaque, user: *User, path: HSTRING, options: *FolderLauncherOptions, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherUIOptions = extern struct {
    vtable: *const VTable,
    pub fn getInvocationPoint(self: *@This()) core.HResult!*IReference(Point) {
        var _r: *IReference(Point) = undefined;
        const _c = self.vtable.get_InvocationPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInvocationPoint(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const _c = self.vtable.put_InvocationPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionRect(self: *@This()) core.HResult!*IReference(Rect) {
        var _r: *IReference(Rect) = undefined;
        const _c = self.vtable.get_SelectionRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionRect(self: *@This(), value: *IReference(Rect)) core.HResult!void {
        const _c = self.vtable.put_SelectionRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreferredPlacement(self: *@This()) core.HResult!Placement {
        var _r: Placement = undefined;
        const _c = self.vtable.get_PreferredPlacement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredPlacement(self: *@This(), value: Placement) core.HResult!void {
        const _c = self.vtable.put_PreferredPlacement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherUIOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b25da6e-8aa6-41e9-8251-4165f5985f49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InvocationPoint: *const fn(self: *anyopaque, _r: **IReference(Point)) callconv(.winapi) HRESULT,
        put_InvocationPoint: *const fn(self: *anyopaque, value: *IReference(Point)) callconv(.winapi) HRESULT,
        get_SelectionRect: *const fn(self: *anyopaque, _r: **IReference(Rect)) callconv(.winapi) HRESULT,
        put_SelectionRect: *const fn(self: *anyopaque, value: *IReference(Rect)) callconv(.winapi) HRESULT,
        get_PreferredPlacement: *const fn(self: *anyopaque, _r: *Placement) callconv(.winapi) HRESULT,
        put_PreferredPlacement: *const fn(self: *anyopaque, value: Placement) callconv(.winapi) HRESULT,
    };
};
pub const ILauncherViewOptions = extern struct {
    vtable: *const VTable,
    pub fn getDesiredRemainingView(self: *@This()) core.HResult!ViewSizePreference {
        var _r: ViewSizePreference = undefined;
        const _c = self.vtable.get_DesiredRemainingView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredRemainingView(self: *@This(), value: ViewSizePreference) core.HResult!void {
        const _c = self.vtable.put_DesiredRemainingView(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.ILauncherViewOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a9b29f1-7ca7-49de-9bd3-3c5b7184f616";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredRemainingView: *const fn(self: *anyopaque, _r: *ViewSizePreference) callconv(.winapi) HRESULT,
        put_DesiredRemainingView: *const fn(self: *anyopaque, value: ViewSizePreference) callconv(.winapi) HRESULT,
    };
};
pub const IMemoryManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getAppMemoryUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_AppMemoryUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppMemoryUsageLimit(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_AppMemoryUsageLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppMemoryUsageLevel(self: *@This()) core.HResult!AppMemoryUsageLevel {
        var _r: AppMemoryUsageLevel = undefined;
        const _c = self.vtable.get_AppMemoryUsageLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAppMemoryUsageIncreased(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AppMemoryUsageIncreased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAppMemoryUsageIncreased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AppMemoryUsageIncreased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAppMemoryUsageDecreased(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AppMemoryUsageDecreased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAppMemoryUsageDecreased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AppMemoryUsageDecreased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAppMemoryUsageLimitChanging(self: *@This(), handler: *EventHandler(AppMemoryUsageLimitChangingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AppMemoryUsageLimitChanging(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAppMemoryUsageLimitChanging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AppMemoryUsageLimitChanging(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IMemoryManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c6c279c-d7ca-4779-9188-4057219ce64c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppMemoryUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_AppMemoryUsageLimit: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_AppMemoryUsageLevel: *const fn(self: *anyopaque, _r: *AppMemoryUsageLevel) callconv(.winapi) HRESULT,
        add_AppMemoryUsageIncreased: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AppMemoryUsageIncreased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AppMemoryUsageDecreased: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AppMemoryUsageDecreased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AppMemoryUsageLimitChanging: *const fn(self: *anyopaque, handler: *EventHandler(AppMemoryUsageLimitChangingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AppMemoryUsageLimitChanging: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMemoryManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetAppMemoryReport(self: *@This()) core.HResult!*AppMemoryReport {
        var _r: *AppMemoryReport = undefined;
        const _c = self.vtable.GetAppMemoryReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProcessMemoryReport(self: *@This()) core.HResult!*ProcessMemoryReport {
        var _r: *ProcessMemoryReport = undefined;
        const _c = self.vtable.GetProcessMemoryReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IMemoryManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6eee351f-6d62-423f-9479-b01f9c9f7669";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAppMemoryReport: *const fn(self: *anyopaque, _r: **AppMemoryReport) callconv(.winapi) HRESULT,
        GetProcessMemoryReport: *const fn(self: *anyopaque, _r: **ProcessMemoryReport) callconv(.winapi) HRESULT,
    };
};
pub const IMemoryManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn TrySetAppMemoryUsageLimit(self: *@This(), value: u64) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetAppMemoryUsageLimit(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IMemoryManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "149b59ce-92ad-4e35-89eb-50dfb4c0d91c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TrySetAppMemoryUsageLimit: *const fn(self: *anyopaque, value: u64, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMemoryManagerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getExpectedAppMemoryUsageLimit(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_ExpectedAppMemoryUsageLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IMemoryManagerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5a94828-e84e-4886-8a0d-44b3190e3b72";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpectedAppMemoryUsageLimit: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IProcessMemoryReport = extern struct {
    vtable: *const VTable,
    pub fn getPrivateWorkingSetUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PrivateWorkingSetUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalWorkingSetUsage(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_TotalWorkingSetUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IProcessMemoryReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "087305a8-9b70-4782-8741-3a982b6ce5e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrivateWorkingSetUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_TotalWorkingSetUsage: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IProtocolForResultsOperation = extern struct {
    vtable: *const VTable,
    pub fn ReportCompleted(self: *@This(), data: *ValueSet) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self), data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IProtocolForResultsOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d581293a-6de9-4d28-9378-f86782e182bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque, data: *ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteLauncherOptions = extern struct {
    vtable: *const VTable,
    pub fn getFallbackUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_FallbackUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFallbackUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_FallbackUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreferredAppIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_PreferredAppIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IRemoteLauncherOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e3a2788-2891-4cdf-a2d6-9dff7d02e693";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_FallbackUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_PreferredAppIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteLauncherStatics = extern struct {
    vtable: *const VTable,
    pub fn LaunchUriAsync(self: *@This(), remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, uri: *Uri) core.HResult!*IAsyncOperation(RemoteLaunchUriStatus) {
        var _r: *IAsyncOperation(RemoteLaunchUriStatus) = undefined;
        const _c = self.vtable.LaunchUriAsync(@ptrCast(self), remoteSystemConnectionRequest, uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriAsyncWithUriWithOptions(self: *@This(), remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, uri: *Uri, options: *RemoteLauncherOptions) core.HResult!*IAsyncOperation(RemoteLaunchUriStatus) {
        var _r: *IAsyncOperation(RemoteLaunchUriStatus) = undefined;
        const _c = self.vtable.LaunchUriAsyncWithUriWithOptions(@ptrCast(self), remoteSystemConnectionRequest, uri, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchUriAsyncWithOptionsWithInputData(self: *@This(), remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, uri: *Uri, options: *RemoteLauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(RemoteLaunchUriStatus) {
        var _r: *IAsyncOperation(RemoteLaunchUriStatus) = undefined;
        const _c = self.vtable.LaunchUriAsyncWithOptionsWithInputData(@ptrCast(self), remoteSystemConnectionRequest, uri, options, inputData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IRemoteLauncherStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7db7a93-a30c-48b7-9f21-051026a4e517";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LaunchUriAsync: *const fn(self: *anyopaque, remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, uri: *Uri, _r: **IAsyncOperation(RemoteLaunchUriStatus)) callconv(.winapi) HRESULT,
        LaunchUriAsyncWithUriWithOptions: *const fn(self: *anyopaque, remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, uri: *Uri, options: *RemoteLauncherOptions, _r: **IAsyncOperation(RemoteLaunchUriStatus)) callconv(.winapi) HRESULT,
        LaunchUriAsyncWithOptionsWithInputData: *const fn(self: *anyopaque, remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, uri: *Uri, options: *RemoteLauncherOptions, inputData: *ValueSet, _r: **IAsyncOperation(RemoteLaunchUriStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IUser = extern struct {
    vtable: *const VTable,
    pub fn getNonRoamableId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NonRoamableId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationStatus(self: *@This()) core.HResult!UserAuthenticationStatus {
        var _r: UserAuthenticationStatus = undefined;
        const _c = self.vtable.get_AuthenticationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!UserType {
        var _r: UserType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPropertyAsync(self: *@This(), value: HSTRING) core.HResult!*IAsyncOperation(IInspectable) {
        var _r: *IAsyncOperation(IInspectable) = undefined;
        const _c = self.vtable.GetPropertyAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPropertiesAsync(self: *@This(), values: *IVectorView(HSTRING)) core.HResult!*IAsyncOperation(IPropertySet) {
        var _r: *IAsyncOperation(IPropertySet) = undefined;
        const _c = self.vtable.GetPropertiesAsync(@ptrCast(self), values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPictureAsync(self: *@This(), desiredSize: UserPictureSize) core.HResult!*IAsyncOperation(IRandomAccessStreamReference) {
        var _r: *IAsyncOperation(IRandomAccessStreamReference) = undefined;
        const _c = self.vtable.GetPictureAsync(@ptrCast(self), desiredSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df9a26c6-e746-4bcd-b5d4-120103c4209b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NonRoamableId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AuthenticationStatus: *const fn(self: *anyopaque, _r: *UserAuthenticationStatus) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *UserType) callconv(.winapi) HRESULT,
        GetPropertyAsync: *const fn(self: *anyopaque, value: HSTRING, _r: **IAsyncOperation(IInspectable)) callconv(.winapi) HRESULT,
        GetPropertiesAsync: *const fn(self: *anyopaque, values: *IVectorView(HSTRING), _r: **IAsyncOperation(IPropertySet)) callconv(.winapi) HRESULT,
        GetPictureAsync: *const fn(self: *anyopaque, desiredSize: UserPictureSize, _r: **IAsyncOperation(IRandomAccessStreamReference)) callconv(.winapi) HRESULT,
    };
};
pub const IUser2 = extern struct {
    vtable: *const VTable,
    pub fn CheckUserAgeConsentGroupAsync(self: *@This(), consentGroup: UserAgeConsentGroup) core.HResult!*IAsyncOperation(UserAgeConsentResult) {
        var _r: *IAsyncOperation(UserAgeConsentResult) = undefined;
        const _c = self.vtable.CheckUserAgeConsentGroupAsync(@ptrCast(self), consentGroup, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUser2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98ba5628-a6e3-518e-89d9-d3b2b1991a10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CheckUserAgeConsentGroupAsync: *const fn(self: *anyopaque, consentGroup: UserAgeConsentGroup, _r: **IAsyncOperation(UserAgeConsentResult)) callconv(.winapi) HRESULT,
    };
};
pub const IUserAuthenticationStatusChangeDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IUserAuthenticationStatusChangeDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88b59568-bb30-42fb-a270-e9902e40efa7";
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
pub const IUserAuthenticationStatusChangingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*UserAuthenticationStatusChangeDeferral {
        var _r: *UserAuthenticationStatusChangeDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewStatus(self: *@This()) core.HResult!UserAuthenticationStatus {
        var _r: UserAuthenticationStatus = undefined;
        const _c = self.vtable.get_NewStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentStatus(self: *@This()) core.HResult!UserAuthenticationStatus {
        var _r: UserAuthenticationStatus = undefined;
        const _c = self.vtable.get_CurrentStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUserAuthenticationStatusChangingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c030f28-a711-4c1e-ab48-04179c15938f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **UserAuthenticationStatusChangeDeferral) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        get_NewStatus: *const fn(self: *anyopaque, _r: *UserAuthenticationStatus) callconv(.winapi) HRESULT,
        get_CurrentStatus: *const fn(self: *anyopaque, _r: *UserAuthenticationStatus) callconv(.winapi) HRESULT,
    };
};
pub const IUserChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUserChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "086459dc-18c6-48db-bc99-724fb9203ccc";
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
pub const IUserChangedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getChangedPropertyKinds(self: *@This()) core.HResult!*IVectorView(UserWatcherUpdateKind) {
        var _r: *IVectorView(UserWatcherUpdateKind) = undefined;
        const _c = self.vtable.get_ChangedPropertyKinds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUserChangedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b2ccb44-6f01-560c-97ad-fc7f32ec581f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangedPropertyKinds: *const fn(self: *anyopaque, _r: **IVectorView(UserWatcherUpdateKind)) callconv(.winapi) HRESULT,
    };
};
pub const IUserDeviceAssociationChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_NewUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_OldUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUserDeviceAssociationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd1f6f6c-bb5d-4d7b-a5f0-c8cd11a38d42";
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
        get_NewUser: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        get_OldUser: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IUserDeviceAssociationStatics = extern struct {
    vtable: *const VTable,
    pub fn FindUserFromDeviceId(self: *@This(), deviceId: HSTRING) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.FindUserFromDeviceId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addUserDeviceAssociationChanged(self: *@This(), handler: *EventHandler(UserDeviceAssociationChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UserDeviceAssociationChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUserDeviceAssociationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UserDeviceAssociationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IUserDeviceAssociationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e491e14-f85a-4c07-8da9-7fe3d0542343";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindUserFromDeviceId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **User) callconv(.winapi) HRESULT,
        add_UserDeviceAssociationChanged: *const fn(self: *anyopaque, handler: *EventHandler(UserDeviceAssociationChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UserDeviceAssociationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUserPicker = extern struct {
    vtable: *const VTable,
    pub fn getAllowGuestAccounts(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowGuestAccounts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowGuestAccounts(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowGuestAccounts(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuggestedSelectedUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_SuggestedSelectedUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuggestedSelectedUser(self: *@This(), value: *User) core.HResult!void {
        const _c = self.vtable.put_SuggestedSelectedUser(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PickSingleUserAsync(self: *@This()) core.HResult!*IAsyncOperation(User) {
        var _r: *IAsyncOperation(User) = undefined;
        const _c = self.vtable.PickSingleUserAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUserPicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d548008-f1e3-4a6c-8ddc-a9bb0f488aed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowGuestAccounts: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowGuestAccounts: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SuggestedSelectedUser: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        put_SuggestedSelectedUser: *const fn(self: *anyopaque, value: *User) callconv(.winapi) HRESULT,
        PickSingleUserAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(User)) callconv(.winapi) HRESULT,
    };
};
pub const IUserPickerStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUserPickerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de3290dc-7e73-4df6-a1ae-4d7eca82b40d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IUserStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateWatcher(self: *@This()) core.HResult!*UserWatcher {
        var _r: *UserWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(User)) {
        var _r: *IAsyncOperation(IVectorView(User)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), ty: UserType) core.HResult!*IAsyncOperation(IVectorView(User)) {
        var _r: *IAsyncOperation(IVectorView(User)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), ty: UserType, status: UserAuthenticationStatus) core.HResult!*IAsyncOperation(IVectorView(User)) {
        var _r: *IAsyncOperation(IVectorView(User)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), ty, status, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFromId(self: *@This(), nonRoamableId: HSTRING) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.GetFromId(@ptrCast(self), nonRoamableId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUserStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "155eb23b-242a-45e0-a2e9-3171fc6a7fdd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **UserWatcher) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(User))) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, ty: UserType, _r: **IAsyncOperation(IVectorView(User))) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, ty: UserType, status: UserAuthenticationStatus, _r: **IAsyncOperation(IVectorView(User))) callconv(.winapi) HRESULT,
        GetFromId: *const fn(self: *anyopaque, nonRoamableId: HSTRING, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IUserStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IUserStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74a37e11-2eb5-4487-b0d5-2c6790e013e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IUserWatcher = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!UserWatcherStatus {
        var _r: UserWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAuthenticationStatusChanged(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AuthenticationStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAuthenticationStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AuthenticationStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAuthenticationStatusChanging(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserAuthenticationStatusChangingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AuthenticationStatusChanging(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAuthenticationStatusChanging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AuthenticationStatusChanging(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(UserWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(UserWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IUserWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "155eb23b-242a-45e0-a2e9-3171fc6a7fbb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *UserWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AuthenticationStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AuthenticationStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AuthenticationStatusChanging: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserWatcher,UserAuthenticationStatusChangingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AuthenticationStatusChanging: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const KnownUserProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getDisplayName() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStaticsCache.get();
        return try factory.getDisplayName();
    }
    pub fn getFirstName() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStaticsCache.get();
        return try factory.getFirstName();
    }
    pub fn getLastName() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStaticsCache.get();
        return try factory.getLastName();
    }
    pub fn getProviderName() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStaticsCache.get();
        return try factory.getProviderName();
    }
    pub fn getAccountName() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStaticsCache.get();
        return try factory.getAccountName();
    }
    pub fn getGuestHost() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStaticsCache.get();
        return try factory.getGuestHost();
    }
    pub fn getPrincipalName() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStaticsCache.get();
        return try factory.getPrincipalName();
    }
    pub fn getDomainName() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStaticsCache.get();
        return try factory.getDomainName();
    }
    pub fn getSessionInitiationProtocolUri() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStaticsCache.get();
        return try factory.getSessionInitiationProtocolUri();
    }
    pub fn getAgeEnforcementRegion() core.HResult!HSTRING {
        const factory = @This().IKnownUserPropertiesStatics2Cache.get();
        return try factory.getAgeEnforcementRegion();
    }
    pub const NAME: []const u8 = "Windows.System.KnownUserProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownUserPropertiesStaticsCache: FactoryCache(IKnownUserPropertiesStatics, RUNTIME_NAME) = .{};
    var _IKnownUserPropertiesStatics2Cache: FactoryCache(IKnownUserPropertiesStatics2, RUNTIME_NAME) = .{};
};
pub const LaunchFileStatus = enum(i32) {
    Success = 0,
    AppUnavailable = 1,
    DeniedByPolicy = 2,
    FileTypeNotSupported = 3,
    Unknown = 4,
};
pub const LaunchQuerySupportStatus = enum(i32) {
    Available = 0,
    AppNotInstalled = 1,
    AppUnavailable = 2,
    NotSupported = 3,
    Unknown = 4,
};
pub const LaunchQuerySupportType = enum(i32) {
    Uri = 0,
    UriForResults = 1,
};
pub const LaunchUriResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!LaunchUriStatus {
        const this: *ILaunchUriResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getResult(self: *@This()) core.HResult!*ValueSet {
        const this: *ILaunchUriResult = @ptrCast(self);
        return try this.getResult();
    }
    pub const NAME: []const u8 = "Windows.System.LaunchUriResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILaunchUriResult.GUID;
    pub const IID: Guid = ILaunchUriResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILaunchUriResult.SIGNATURE);
};
pub const LaunchUriStatus = enum(i32) {
    Success = 0,
    AppUnavailable = 1,
    ProtocolUnavailable = 2,
    Unknown = 3,
};
pub const Launcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn QueryAppUriSupportAsync(uri: *Uri) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        const factory = @This().ILauncherStatics4Cache.get();
        return try factory.QueryAppUriSupportAsync(uri);
    }
    pub fn QueryAppUriSupportAsyncWithPackageFamilyName(uri: *Uri, packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        const factory = @This().ILauncherStatics4Cache.get();
        return try factory.QueryAppUriSupportAsyncWithPackageFamilyName(uri, packageFamilyName);
    }
    pub fn FindAppUriHandlersAsync(uri: *Uri) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        const factory = @This().ILauncherStatics4Cache.get();
        return try factory.FindAppUriHandlersAsync(uri);
    }
    pub fn LaunchUriForUserAsync(user: *User, uri: *Uri) core.HResult!*IAsyncOperation(LaunchUriStatus) {
        const factory = @This().ILauncherStatics4Cache.get();
        return try factory.LaunchUriForUserAsync(user, uri);
    }
    pub fn LaunchUriForUserAsyncWithUriWithOptions(user: *User, uri: *Uri, options: *LauncherOptions) core.HResult!*IAsyncOperation(LaunchUriStatus) {
        const factory = @This().ILauncherStatics4Cache.get();
        return try factory.LaunchUriForUserAsyncWithUriWithOptions(user, uri, options);
    }
    pub fn LaunchUriForUserAsyncWithOptionsWithInputData(user: *User, uri: *Uri, options: *LauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(LaunchUriStatus) {
        const factory = @This().ILauncherStatics4Cache.get();
        return try factory.LaunchUriForUserAsyncWithOptionsWithInputData(user, uri, options, inputData);
    }
    pub fn LaunchUriForResultsForUserAsync(user: *User, uri: *Uri, options: *LauncherOptions) core.HResult!*IAsyncOperation(LaunchUriResult) {
        const factory = @This().ILauncherStatics4Cache.get();
        return try factory.LaunchUriForResultsForUserAsync(user, uri, options);
    }
    pub fn LaunchUriForResultsForUserAsyncWithUriWithOptionsWithInputData(user: *User, uri: *Uri, options: *LauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(LaunchUriResult) {
        const factory = @This().ILauncherStatics4Cache.get();
        return try factory.LaunchUriForResultsForUserAsyncWithUriWithOptionsWithInputData(user, uri, options, inputData);
    }
    pub fn LaunchFileAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStaticsCache.get();
        return try factory.LaunchFileAsync(file);
    }
    pub fn LaunchFileAsyncWithOptions(file: *IStorageFile, options: *LauncherOptions) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStaticsCache.get();
        return try factory.LaunchFileAsyncWithOptions(file, options);
    }
    pub fn LaunchUriAsync(uri: *Uri) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStaticsCache.get();
        return try factory.LaunchUriAsync(uri);
    }
    pub fn LaunchUriAsyncWithOptions(uri: *Uri, options: *LauncherOptions) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStaticsCache.get();
        return try factory.LaunchUriAsyncWithOptions(uri, options);
    }
    pub fn LaunchFolderPathAsync(path: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStatics5Cache.get();
        return try factory.LaunchFolderPathAsync(path);
    }
    pub fn LaunchFolderPathAsyncWithOptions(path: HSTRING, options: *FolderLauncherOptions) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStatics5Cache.get();
        return try factory.LaunchFolderPathAsyncWithOptions(path, options);
    }
    pub fn LaunchFolderPathForUserAsync(user: *User, path: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStatics5Cache.get();
        return try factory.LaunchFolderPathForUserAsync(user, path);
    }
    pub fn LaunchFolderPathForUserAsyncWithPathWithOptions(user: *User, path: HSTRING, options: *FolderLauncherOptions) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStatics5Cache.get();
        return try factory.LaunchFolderPathForUserAsyncWithPathWithOptions(user, path, options);
    }
    pub fn LaunchFolderAsync(folder: *IStorageFolder) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStatics3Cache.get();
        return try factory.LaunchFolderAsync(folder);
    }
    pub fn LaunchFolderAsyncWithOptions(folder: *IStorageFolder, options: *FolderLauncherOptions) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStatics3Cache.get();
        return try factory.LaunchFolderAsyncWithOptions(folder, options);
    }
    pub fn LaunchUriForResultsAsync(uri: *Uri, options: *LauncherOptions) core.HResult!*IAsyncOperation(LaunchUriResult) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.LaunchUriForResultsAsync(uri, options);
    }
    pub fn LaunchUriForResultsAsyncWithOptionsWithInputData(uri: *Uri, options: *LauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(LaunchUriResult) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.LaunchUriForResultsAsyncWithOptionsWithInputData(uri, options, inputData);
    }
    pub fn LaunchUriAsync(uri: *Uri, options: *LauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.LaunchUriAsync(uri, options, inputData);
    }
    pub fn QueryUriSupportAsync(uri: *Uri, launchQuerySupportType: LaunchQuerySupportType) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.QueryUriSupportAsync(uri, launchQuerySupportType);
    }
    pub fn QueryUriSupportAsyncWithLaunchQuerySupportTypeWithPackageFamilyName(uri: *Uri, launchQuerySupportType: LaunchQuerySupportType, packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.QueryUriSupportAsyncWithLaunchQuerySupportTypeWithPackageFamilyName(uri, launchQuerySupportType, packageFamilyName);
    }
    pub fn QueryFileSupportAsync(file: *StorageFile) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.QueryFileSupportAsync(file);
    }
    pub fn QueryFileSupportAsyncWithPackageFamilyName(file: *StorageFile, packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(LaunchQuerySupportStatus) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.QueryFileSupportAsyncWithPackageFamilyName(file, packageFamilyName);
    }
    pub fn FindUriSchemeHandlersAsync(scheme: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.FindUriSchemeHandlersAsync(scheme);
    }
    pub fn FindUriSchemeHandlersAsyncWithLaunchQuerySupportType(scheme: HSTRING, launchQuerySupportType: LaunchQuerySupportType) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.FindUriSchemeHandlersAsyncWithLaunchQuerySupportType(scheme, launchQuerySupportType);
    }
    pub fn FindFileHandlersAsync(extension: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInfo)) {
        const factory = @This().ILauncherStatics2Cache.get();
        return try factory.FindFileHandlersAsync(extension);
    }
    pub const NAME: []const u8 = "Windows.System.Launcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ILauncherStatics4Cache: FactoryCache(ILauncherStatics4, RUNTIME_NAME) = .{};
    var _ILauncherStaticsCache: FactoryCache(ILauncherStatics, RUNTIME_NAME) = .{};
    var _ILauncherStatics5Cache: FactoryCache(ILauncherStatics5, RUNTIME_NAME) = .{};
    var _ILauncherStatics3Cache: FactoryCache(ILauncherStatics3, RUNTIME_NAME) = .{};
    var _ILauncherStatics2Cache: FactoryCache(ILauncherStatics2, RUNTIME_NAME) = .{};
};
pub const LauncherOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetApplicationPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILauncherOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTargetApplicationPackageFamilyName();
    }
    pub fn putTargetApplicationPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ILauncherOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTargetApplicationPackageFamilyName(value);
    }
    pub fn getNeighboringFilesQuery(self: *@This()) core.HResult!*StorageFileQueryResult {
        var this: ?*ILauncherOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNeighboringFilesQuery();
    }
    pub fn putNeighboringFilesQuery(self: *@This(), value: *StorageFileQueryResult) core.HResult!void {
        var this: ?*ILauncherOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNeighboringFilesQuery(value);
    }
    pub fn getTreatAsUntrusted(self: *@This()) core.HResult!bool {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.getTreatAsUntrusted();
    }
    pub fn putTreatAsUntrusted(self: *@This(), value: bool) core.HResult!void {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.putTreatAsUntrusted(value);
    }
    pub fn getDisplayApplicationPicker(self: *@This()) core.HResult!bool {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.getDisplayApplicationPicker();
    }
    pub fn putDisplayApplicationPicker(self: *@This(), value: bool) core.HResult!void {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.putDisplayApplicationPicker(value);
    }
    pub fn getUI(self: *@This()) core.HResult!*LauncherUIOptions {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.getUI();
    }
    pub fn getPreferredApplicationPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.getPreferredApplicationPackageFamilyName();
    }
    pub fn putPreferredApplicationPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.putPreferredApplicationPackageFamilyName(value);
    }
    pub fn getPreferredApplicationDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.getPreferredApplicationDisplayName();
    }
    pub fn putPreferredApplicationDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.putPreferredApplicationDisplayName(value);
    }
    pub fn getFallbackUri(self: *@This()) core.HResult!*Uri {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.getFallbackUri();
    }
    pub fn putFallbackUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.putFallbackUri(value);
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn putContentType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ILauncherOptions = @ptrCast(self);
        return try this.putContentType(value);
    }
    pub fn getIgnoreAppUriHandlers(self: *@This()) core.HResult!bool {
        var this: ?*ILauncherOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIgnoreAppUriHandlers();
    }
    pub fn putIgnoreAppUriHandlers(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ILauncherOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIgnoreAppUriHandlers(value);
    }
    pub fn getLimitPickerToCurrentAppAndAppUriHandlers(self: *@This()) core.HResult!bool {
        var this: ?*ILauncherOptions4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherOptions4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLimitPickerToCurrentAppAndAppUriHandlers();
    }
    pub fn putLimitPickerToCurrentAppAndAppUriHandlers(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ILauncherOptions4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherOptions4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLimitPickerToCurrentAppAndAppUriHandlers(value);
    }
    pub fn getDesiredRemainingView(self: *@This()) core.HResult!ViewSizePreference {
        var this: ?*ILauncherViewOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherViewOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredRemainingView();
    }
    pub fn putDesiredRemainingView(self: *@This(), value: ViewSizePreference) core.HResult!void {
        var this: ?*ILauncherViewOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILauncherViewOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredRemainingView(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILauncherOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.System.LauncherOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILauncherOptions.GUID;
    pub const IID: Guid = ILauncherOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILauncherOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const LauncherUIOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInvocationPoint(self: *@This()) core.HResult!*IReference(Point) {
        const this: *ILauncherUIOptions = @ptrCast(self);
        return try this.getInvocationPoint();
    }
    pub fn putInvocationPoint(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const this: *ILauncherUIOptions = @ptrCast(self);
        return try this.putInvocationPoint(value);
    }
    pub fn getSelectionRect(self: *@This()) core.HResult!*IReference(Rect) {
        const this: *ILauncherUIOptions = @ptrCast(self);
        return try this.getSelectionRect();
    }
    pub fn putSelectionRect(self: *@This(), value: *IReference(Rect)) core.HResult!void {
        const this: *ILauncherUIOptions = @ptrCast(self);
        return try this.putSelectionRect(value);
    }
    pub fn getPreferredPlacement(self: *@This()) core.HResult!Placement {
        const this: *ILauncherUIOptions = @ptrCast(self);
        return try this.getPreferredPlacement();
    }
    pub fn putPreferredPlacement(self: *@This(), value: Placement) core.HResult!void {
        const this: *ILauncherUIOptions = @ptrCast(self);
        return try this.putPreferredPlacement(value);
    }
    pub const NAME: []const u8 = "Windows.System.LauncherUIOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILauncherUIOptions.GUID;
    pub const IID: Guid = ILauncherUIOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILauncherUIOptions.SIGNATURE);
};
pub const MemoryManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetAppMemoryReport() core.HResult!*AppMemoryReport {
        const factory = @This().IMemoryManagerStatics2Cache.get();
        return try factory.GetAppMemoryReport();
    }
    pub fn GetProcessMemoryReport() core.HResult!*ProcessMemoryReport {
        const factory = @This().IMemoryManagerStatics2Cache.get();
        return try factory.GetProcessMemoryReport();
    }
    pub fn getExpectedAppMemoryUsageLimit() core.HResult!u64 {
        const factory = @This().IMemoryManagerStatics4Cache.get();
        return try factory.getExpectedAppMemoryUsageLimit();
    }
    pub fn TrySetAppMemoryUsageLimit(value: u64) core.HResult!bool {
        const factory = @This().IMemoryManagerStatics3Cache.get();
        return try factory.TrySetAppMemoryUsageLimit(value);
    }
    pub fn getAppMemoryUsage() core.HResult!u64 {
        const factory = @This().IMemoryManagerStaticsCache.get();
        return try factory.getAppMemoryUsage();
    }
    pub fn getAppMemoryUsageLimit() core.HResult!u64 {
        const factory = @This().IMemoryManagerStaticsCache.get();
        return try factory.getAppMemoryUsageLimit();
    }
    pub fn getAppMemoryUsageLevel() core.HResult!AppMemoryUsageLevel {
        const factory = @This().IMemoryManagerStaticsCache.get();
        return try factory.getAppMemoryUsageLevel();
    }
    pub fn addAppMemoryUsageIncreased(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMemoryManagerStaticsCache.get();
        return try factory.addAppMemoryUsageIncreased(handler);
    }
    pub fn removeAppMemoryUsageIncreased(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMemoryManagerStaticsCache.get();
        return try factory.removeAppMemoryUsageIncreased(token);
    }
    pub fn addAppMemoryUsageDecreased(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMemoryManagerStaticsCache.get();
        return try factory.addAppMemoryUsageDecreased(handler);
    }
    pub fn removeAppMemoryUsageDecreased(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMemoryManagerStaticsCache.get();
        return try factory.removeAppMemoryUsageDecreased(token);
    }
    pub fn addAppMemoryUsageLimitChanging(handler: *EventHandler(AppMemoryUsageLimitChangingEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IMemoryManagerStaticsCache.get();
        return try factory.addAppMemoryUsageLimitChanging(handler);
    }
    pub fn removeAppMemoryUsageLimitChanging(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMemoryManagerStaticsCache.get();
        return try factory.removeAppMemoryUsageLimitChanging(token);
    }
    pub const NAME: []const u8 = "Windows.System.MemoryManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMemoryManagerStatics2Cache: FactoryCache(IMemoryManagerStatics2, RUNTIME_NAME) = .{};
    var _IMemoryManagerStatics4Cache: FactoryCache(IMemoryManagerStatics4, RUNTIME_NAME) = .{};
    var _IMemoryManagerStatics3Cache: FactoryCache(IMemoryManagerStatics3, RUNTIME_NAME) = .{};
    var _IMemoryManagerStaticsCache: FactoryCache(IMemoryManagerStatics, RUNTIME_NAME) = .{};
};
pub const ProcessMemoryReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrivateWorkingSetUsage(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryReport = @ptrCast(self);
        return try this.getPrivateWorkingSetUsage();
    }
    pub fn getTotalWorkingSetUsage(self: *@This()) core.HResult!u64 {
        const this: *IProcessMemoryReport = @ptrCast(self);
        return try this.getTotalWorkingSetUsage();
    }
    pub const NAME: []const u8 = "Windows.System.ProcessMemoryReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessMemoryReport.GUID;
    pub const IID: Guid = IProcessMemoryReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessMemoryReport.SIGNATURE);
};
pub const ProcessorArchitecture = enum(i32) {
    X86 = 0,
    Arm = 5,
    X64 = 9,
    Neutral = 11,
    Arm64 = 12,
    X86OnArm64 = 14,
    Unknown = 65535,
};
pub const ProtocolForResultsOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReportCompleted(self: *@This(), data: *ValueSet) core.HResult!void {
        const this: *IProtocolForResultsOperation = @ptrCast(self);
        return try this.ReportCompleted(data);
    }
    pub const NAME: []const u8 = "Windows.System.ProtocolForResultsOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProtocolForResultsOperation.GUID;
    pub const IID: Guid = IProtocolForResultsOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProtocolForResultsOperation.SIGNATURE);
};
pub const RemoteLaunchUriStatus = enum(i32) {
    Unknown = 0,
    Success = 1,
    AppUnavailable = 2,
    ProtocolUnavailable = 3,
    RemoteSystemUnavailable = 4,
    ValueSetTooLarge = 5,
    DeniedByLocalSystem = 6,
    DeniedByRemoteSystem = 7,
};
pub const RemoteLauncher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn LaunchUriAsync(remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, uri: *Uri) core.HResult!*IAsyncOperation(RemoteLaunchUriStatus) {
        const factory = @This().IRemoteLauncherStaticsCache.get();
        return try factory.LaunchUriAsync(remoteSystemConnectionRequest, uri);
    }
    pub fn LaunchUriAsyncWithUriWithOptions(remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, uri: *Uri, options: *RemoteLauncherOptions) core.HResult!*IAsyncOperation(RemoteLaunchUriStatus) {
        const factory = @This().IRemoteLauncherStaticsCache.get();
        return try factory.LaunchUriAsyncWithUriWithOptions(remoteSystemConnectionRequest, uri, options);
    }
    pub fn LaunchUriAsyncWithOptionsWithInputData(remoteSystemConnectionRequest: *RemoteSystemConnectionRequest, uri: *Uri, options: *RemoteLauncherOptions, inputData: *ValueSet) core.HResult!*IAsyncOperation(RemoteLaunchUriStatus) {
        const factory = @This().IRemoteLauncherStaticsCache.get();
        return try factory.LaunchUriAsyncWithOptionsWithInputData(remoteSystemConnectionRequest, uri, options, inputData);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteLauncher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IRemoteLauncherStaticsCache: FactoryCache(IRemoteLauncherStatics, RUNTIME_NAME) = .{};
};
pub const RemoteLauncherOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFallbackUri(self: *@This()) core.HResult!*Uri {
        const this: *IRemoteLauncherOptions = @ptrCast(self);
        return try this.getFallbackUri();
    }
    pub fn putFallbackUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IRemoteLauncherOptions = @ptrCast(self);
        return try this.putFallbackUri(value);
    }
    pub fn getPreferredAppIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IRemoteLauncherOptions = @ptrCast(self);
        return try this.getPreferredAppIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRemoteLauncherOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.System.RemoteLauncherOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteLauncherOptions.GUID;
    pub const IID: Guid = IRemoteLauncherOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteLauncherOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const User = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNonRoamableId(self: *@This()) core.HResult!HSTRING {
        const this: *IUser = @ptrCast(self);
        return try this.getNonRoamableId();
    }
    pub fn getAuthenticationStatus(self: *@This()) core.HResult!UserAuthenticationStatus {
        const this: *IUser = @ptrCast(self);
        return try this.getAuthenticationStatus();
    }
    pub fn getType(self: *@This()) core.HResult!UserType {
        const this: *IUser = @ptrCast(self);
        return try this.getType();
    }
    pub fn GetPropertyAsync(self: *@This(), value: HSTRING) core.HResult!*IAsyncOperation(IInspectable) {
        const this: *IUser = @ptrCast(self);
        return try this.GetPropertyAsync(value);
    }
    pub fn GetPropertiesAsync(self: *@This(), values: *IVectorView(HSTRING)) core.HResult!*IAsyncOperation(IPropertySet) {
        const this: *IUser = @ptrCast(self);
        return try this.GetPropertiesAsync(values);
    }
    pub fn GetPictureAsync(self: *@This(), desiredSize: UserPictureSize) core.HResult!*IAsyncOperation(IRandomAccessStreamReference) {
        const this: *IUser = @ptrCast(self);
        return try this.GetPictureAsync(desiredSize);
    }
    pub fn CheckUserAgeConsentGroupAsync(self: *@This(), consentGroup: UserAgeConsentGroup) core.HResult!*IAsyncOperation(UserAgeConsentResult) {
        var this: ?*IUser2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUser2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CheckUserAgeConsentGroupAsync(consentGroup);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWatcher() core.HResult!*UserWatcher {
        const factory = @This().IUserStaticsCache.get();
        return try factory.CreateWatcher();
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(IVectorView(User)) {
        const factory = @This().IUserStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub fn FindAllAsync(ty: UserType) core.HResult!*IAsyncOperation(IVectorView(User)) {
        const factory = @This().IUserStaticsCache.get();
        return try factory.FindAllAsync(ty);
    }
    pub fn FindAllAsync(ty: UserType, status: UserAuthenticationStatus) core.HResult!*IAsyncOperation(IVectorView(User)) {
        const factory = @This().IUserStaticsCache.get();
        return try factory.FindAllAsync(ty, status);
    }
    pub fn GetFromId(nonRoamableId: HSTRING) core.HResult!*User {
        const factory = @This().IUserStaticsCache.get();
        return try factory.GetFromId(nonRoamableId);
    }
    pub fn GetDefault() core.HResult!*User {
        const factory = @This().IUserStatics2Cache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.System.User";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUser.GUID;
    pub const IID: Guid = IUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUser.SIGNATURE);
    var _IUserStaticsCache: FactoryCache(IUserStatics, RUNTIME_NAME) = .{};
    var _IUserStatics2Cache: FactoryCache(IUserStatics2, RUNTIME_NAME) = .{};
};
pub const UserAgeConsentGroup = enum(i32) {
    Child = 0,
    Minor = 1,
    Adult = 2,
};
pub const UserAgeConsentResult = enum(i32) {
    NotEnforced = 0,
    Included = 1,
    NotIncluded = 2,
    Unknown = 3,
    Ambiguous = 4,
};
pub const UserAuthenticationStatus = enum(i32) {
    Unauthenticated = 0,
    LocallyAuthenticated = 1,
    RemotelyAuthenticated = 2,
};
pub const UserAuthenticationStatusChangeDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IUserAuthenticationStatusChangeDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.System.UserAuthenticationStatusChangeDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserAuthenticationStatusChangeDeferral.GUID;
    pub const IID: Guid = IUserAuthenticationStatusChangeDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserAuthenticationStatusChangeDeferral.SIGNATURE);
};
pub const UserAuthenticationStatusChangingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*UserAuthenticationStatusChangeDeferral {
        const this: *IUserAuthenticationStatusChangingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IUserAuthenticationStatusChangingEventArgs = @ptrCast(self);
        return try this.getUser();
    }
    pub fn getNewStatus(self: *@This()) core.HResult!UserAuthenticationStatus {
        const this: *IUserAuthenticationStatusChangingEventArgs = @ptrCast(self);
        return try this.getNewStatus();
    }
    pub fn getCurrentStatus(self: *@This()) core.HResult!UserAuthenticationStatus {
        const this: *IUserAuthenticationStatusChangingEventArgs = @ptrCast(self);
        return try this.getCurrentStatus();
    }
    pub const NAME: []const u8 = "Windows.System.UserAuthenticationStatusChangingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserAuthenticationStatusChangingEventArgs.GUID;
    pub const IID: Guid = IUserAuthenticationStatusChangingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserAuthenticationStatusChangingEventArgs.SIGNATURE);
};
pub const UserChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IUserChangedEventArgs = @ptrCast(self);
        return try this.getUser();
    }
    pub fn getChangedPropertyKinds(self: *@This()) core.HResult!*IVectorView(UserWatcherUpdateKind) {
        var this: ?*IUserChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChangedPropertyKinds();
    }
    pub const NAME: []const u8 = "Windows.System.UserChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserChangedEventArgs.GUID;
    pub const IID: Guid = IUserChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserChangedEventArgs.SIGNATURE);
};
pub const UserDeviceAssociation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindUserFromDeviceId(deviceId: HSTRING) core.HResult!*User {
        const factory = @This().IUserDeviceAssociationStaticsCache.get();
        return try factory.FindUserFromDeviceId(deviceId);
    }
    pub fn addUserDeviceAssociationChanged(handler: *EventHandler(UserDeviceAssociationChangedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IUserDeviceAssociationStaticsCache.get();
        return try factory.addUserDeviceAssociationChanged(handler);
    }
    pub fn removeUserDeviceAssociationChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IUserDeviceAssociationStaticsCache.get();
        return try factory.removeUserDeviceAssociationChanged(token);
    }
    pub const NAME: []const u8 = "Windows.System.UserDeviceAssociation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IUserDeviceAssociationStaticsCache: FactoryCache(IUserDeviceAssociationStatics, RUNTIME_NAME) = .{};
};
pub const UserDeviceAssociationChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDeviceAssociationChangedEventArgs = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getNewUser(self: *@This()) core.HResult!*User {
        const this: *IUserDeviceAssociationChangedEventArgs = @ptrCast(self);
        return try this.getNewUser();
    }
    pub fn getOldUser(self: *@This()) core.HResult!*User {
        const this: *IUserDeviceAssociationChangedEventArgs = @ptrCast(self);
        return try this.getOldUser();
    }
    pub const NAME: []const u8 = "Windows.System.UserDeviceAssociationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDeviceAssociationChangedEventArgs.GUID;
    pub const IID: Guid = IUserDeviceAssociationChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDeviceAssociationChangedEventArgs.SIGNATURE);
};
pub const UserPicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowGuestAccounts(self: *@This()) core.HResult!bool {
        const this: *IUserPicker = @ptrCast(self);
        return try this.getAllowGuestAccounts();
    }
    pub fn putAllowGuestAccounts(self: *@This(), value: bool) core.HResult!void {
        const this: *IUserPicker = @ptrCast(self);
        return try this.putAllowGuestAccounts(value);
    }
    pub fn getSuggestedSelectedUser(self: *@This()) core.HResult!*User {
        const this: *IUserPicker = @ptrCast(self);
        return try this.getSuggestedSelectedUser();
    }
    pub fn putSuggestedSelectedUser(self: *@This(), value: *User) core.HResult!void {
        const this: *IUserPicker = @ptrCast(self);
        return try this.putSuggestedSelectedUser(value);
    }
    pub fn PickSingleUserAsync(self: *@This()) core.HResult!*IAsyncOperation(User) {
        const this: *IUserPicker = @ptrCast(self);
        return try this.PickSingleUserAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUserPicker.IID)));
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().IUserPickerStaticsCache.get();
        return try factory.IsSupported();
    }
    pub const NAME: []const u8 = "Windows.System.UserPicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserPicker.GUID;
    pub const IID: Guid = IUserPicker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserPicker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IUserPickerStaticsCache: FactoryCache(IUserPickerStatics, RUNTIME_NAME) = .{};
};
pub const UserPictureSize = enum(i32) {
    Size64x64 = 0,
    Size208x208 = 1,
    Size424x424 = 2,
    Size1080x1080 = 3,
};
pub const UserType = enum(i32) {
    LocalUser = 0,
    RemoteUser = 1,
    LocalGuest = 2,
    RemoteGuest = 3,
    SystemManaged = 4,
};
pub const UserWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!UserWatcherStatus {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub fn addAuthenticationStatusChanged(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.addAuthenticationStatusChanged(handler);
    }
    pub fn removeAuthenticationStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.removeAuthenticationStatusChanged(token);
    }
    pub fn addAuthenticationStatusChanging(self: *@This(), handler: *TypedEventHandler(UserWatcher,UserAuthenticationStatusChangingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.addAuthenticationStatusChanging(handler);
    }
    pub fn removeAuthenticationStatusChanging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.removeAuthenticationStatusChanging(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(UserWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(UserWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub const NAME: []const u8 = "Windows.System.UserWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserWatcher.GUID;
    pub const IID: Guid = IUserWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserWatcher.SIGNATURE);
};
pub const UserWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const UserWatcherUpdateKind = enum(i32) {
    Properties = 0,
    Picture = 1,
};
pub const VirtualKey = enum(i32) {
    None = 0,
    LeftButton = 1,
    RightButton = 2,
    Cancel = 3,
    MiddleButton = 4,
    XButton1 = 5,
    XButton2 = 6,
    Back = 8,
    Tab = 9,
    Clear = 12,
    Enter = 13,
    Shift = 16,
    Control = 17,
    Menu = 18,
    Pause = 19,
    CapitalLock = 20,
    Kana = 21,
    Hangul = 21,
    ImeOn = 22,
    Junja = 23,
    Final = 24,
    Hanja = 25,
    Kanji = 25,
    ImeOff = 26,
    Escape = 27,
    Convert = 28,
    NonConvert = 29,
    Accept = 30,
    ModeChange = 31,
    Space = 32,
    PageUp = 33,
    PageDown = 34,
    End = 35,
    Home = 36,
    Left = 37,
    Up = 38,
    Right = 39,
    Down = 40,
    Select = 41,
    Print = 42,
    Execute = 43,
    Snapshot = 44,
    Insert = 45,
    Delete = 46,
    Help = 47,
    Number0 = 48,
    Number1 = 49,
    Number2 = 50,
    Number3 = 51,
    Number4 = 52,
    Number5 = 53,
    Number6 = 54,
    Number7 = 55,
    Number8 = 56,
    Number9 = 57,
    A = 65,
    B = 66,
    C = 67,
    D = 68,
    E = 69,
    F = 70,
    G = 71,
    H = 72,
    I = 73,
    J = 74,
    K = 75,
    L = 76,
    M = 77,
    N = 78,
    O = 79,
    P = 80,
    Q = 81,
    R = 82,
    S = 83,
    T = 84,
    U = 85,
    V = 86,
    W = 87,
    X = 88,
    Y = 89,
    Z = 90,
    LeftWindows = 91,
    RightWindows = 92,
    Application = 93,
    Sleep = 95,
    NumberPad0 = 96,
    NumberPad1 = 97,
    NumberPad2 = 98,
    NumberPad3 = 99,
    NumberPad4 = 100,
    NumberPad5 = 101,
    NumberPad6 = 102,
    NumberPad7 = 103,
    NumberPad8 = 104,
    NumberPad9 = 105,
    Multiply = 106,
    Add = 107,
    Separator = 108,
    Subtract = 109,
    Decimal = 110,
    Divide = 111,
    F1 = 112,
    F2 = 113,
    F3 = 114,
    F4 = 115,
    F5 = 116,
    F6 = 117,
    F7 = 118,
    F8 = 119,
    F9 = 120,
    F10 = 121,
    F11 = 122,
    F12 = 123,
    F13 = 124,
    F14 = 125,
    F15 = 126,
    F16 = 127,
    F17 = 128,
    F18 = 129,
    F19 = 130,
    F20 = 131,
    F21 = 132,
    F22 = 133,
    F23 = 134,
    F24 = 135,
    NavigationView = 136,
    NavigationMenu = 137,
    NavigationUp = 138,
    NavigationDown = 139,
    NavigationLeft = 140,
    NavigationRight = 141,
    NavigationAccept = 142,
    NavigationCancel = 143,
    NumberKeyLock = 144,
    Scroll = 145,
    LeftShift = 160,
    RightShift = 161,
    LeftControl = 162,
    RightControl = 163,
    LeftMenu = 164,
    RightMenu = 165,
    GoBack = 166,
    GoForward = 167,
    Refresh = 168,
    Stop = 169,
    Search = 170,
    Favorites = 171,
    GoHome = 172,
    GamepadA = 195,
    GamepadB = 196,
    GamepadX = 197,
    GamepadY = 198,
    GamepadRightShoulder = 199,
    GamepadLeftShoulder = 200,
    GamepadLeftTrigger = 201,
    GamepadRightTrigger = 202,
    GamepadDPadUp = 203,
    GamepadDPadDown = 204,
    GamepadDPadLeft = 205,
    GamepadDPadRight = 206,
    GamepadMenu = 207,
    GamepadView = 208,
    GamepadLeftThumbstickButton = 209,
    GamepadRightThumbstickButton = 210,
    GamepadLeftThumbstickUp = 211,
    GamepadLeftThumbstickDown = 212,
    GamepadLeftThumbstickRight = 213,
    GamepadLeftThumbstickLeft = 214,
    GamepadRightThumbstickUp = 215,
    GamepadRightThumbstickDown = 216,
    GamepadRightThumbstickRight = 217,
    GamepadRightThumbstickLeft = 218,
};
pub const VirtualKeyModifiers = enum(i32) {
    None = 0,
    Control = 1,
    Menu = 2,
    Shift = 4,
    Windows = 8,
};
pub const AutoUpdateTimeZoneStatus = enum(i32) {
    Attempted = 0,
    TimedOut = 1,
    Failed = 2,
};
pub const DateTimeSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SetSystemDateTime(utcDateTime: DateTime) core.HResult!void {
        const factory = @This().IDateTimeSettingsStaticsCache.get();
        return try factory.SetSystemDateTime(utcDateTime);
    }
    pub const NAME: []const u8 = "Windows.System.DateTimeSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IDateTimeSettingsStaticsCache: FactoryCache(IDateTimeSettingsStatics, RUNTIME_NAME) = .{};
};
pub const IDateTimeSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn SetSystemDateTime(self: *@This(), utcDateTime: DateTime) core.HResult!void {
        const _c = self.vtable.SetSystemDateTime(@ptrCast(self), utcDateTime);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IDateTimeSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d2150d1-47ee-48ab-a52b-9f1954278d82";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetSystemDateTime: *const fn(self: *anyopaque, utcDateTime: DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IProcessLauncherOptions = extern struct {
    vtable: *const VTable,
    pub fn getStandardInput(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.get_StandardInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStandardInput(self: *@This(), value: *IInputStream) core.HResult!void {
        const _c = self.vtable.put_StandardInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStandardOutput(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_StandardOutput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStandardOutput(self: *@This(), value: *IOutputStream) core.HResult!void {
        const _c = self.vtable.put_StandardOutput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStandardError(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_StandardError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStandardError(self: *@This(), value: *IOutputStream) core.HResult!void {
        const _c = self.vtable.put_StandardError(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWorkingDirectory(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WorkingDirectory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWorkingDirectory(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WorkingDirectory(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IProcessLauncherOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3080b9cf-f444-4a83-beaf-a549a0f3229c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StandardInput: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
        put_StandardInput: *const fn(self: *anyopaque, value: *IInputStream) callconv(.winapi) HRESULT,
        get_StandardOutput: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        put_StandardOutput: *const fn(self: *anyopaque, value: *IOutputStream) callconv(.winapi) HRESULT,
        get_StandardError: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        put_StandardError: *const fn(self: *anyopaque, value: *IOutputStream) callconv(.winapi) HRESULT,
        get_WorkingDirectory: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_WorkingDirectory: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IProcessLauncherResult = extern struct {
    vtable: *const VTable,
    pub fn getExitCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExitCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IProcessLauncherResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "544c8934-86d8-4991-8e75-ece8a43b6b6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExitCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IProcessLauncherStatics = extern struct {
    vtable: *const VTable,
    pub fn RunToCompletionAsync(self: *@This(), fileName: HSTRING, args: HSTRING) core.HResult!*IAsyncOperation(ProcessLauncherResult) {
        var _r: *IAsyncOperation(ProcessLauncherResult) = undefined;
        const _c = self.vtable.RunToCompletionAsync(@ptrCast(self), fileName, args, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RunToCompletionAsyncWithArgsWithOptions(self: *@This(), fileName: HSTRING, args: HSTRING, options: *ProcessLauncherOptions) core.HResult!*IAsyncOperation(ProcessLauncherResult) {
        var _r: *IAsyncOperation(ProcessLauncherResult) = undefined;
        const _c = self.vtable.RunToCompletionAsyncWithArgsWithOptions(@ptrCast(self), fileName, args, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.IProcessLauncherStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33ab66e7-2d0e-448b-a6a0-c13c3836d09c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RunToCompletionAsync: *const fn(self: *anyopaque, fileName: HSTRING, args: HSTRING, _r: **IAsyncOperation(ProcessLauncherResult)) callconv(.winapi) HRESULT,
        RunToCompletionAsyncWithArgsWithOptions: *const fn(self: *anyopaque, fileName: HSTRING, args: HSTRING, options: *ProcessLauncherOptions, _r: **IAsyncOperation(ProcessLauncherResult)) callconv(.winapi) HRESULT,
    };
};
pub const IShutdownManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn BeginShutdown(self: *@This(), shutdownKind: ShutdownKind, timeout: TimeSpan) core.HResult!void {
        const _c = self.vtable.BeginShutdown(@ptrCast(self), shutdownKind, timeout);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CancelShutdown(self: *@This()) core.HResult!void {
        const _c = self.vtable.CancelShutdown(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IShutdownManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72e247ed-dd5b-4d6c-b1d0-c57a7bbb5f94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        BeginShutdown: *const fn(self: *anyopaque, shutdownKind: ShutdownKind, timeout: TimeSpan) callconv(.winapi) HRESULT,
        CancelShutdown: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IShutdownManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsPowerStateSupported(self: *@This(), powerState: PowerState) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPowerStateSupported(@ptrCast(self), powerState, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnterPowerState(self: *@This(), powerState: PowerState) core.HResult!void {
        const _c = self.vtable.EnterPowerState(@ptrCast(self), powerState);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnterPowerStateWithWakeUpAfter(self: *@This(), powerState: PowerState, wakeUpAfter: TimeSpan) core.HResult!void {
        const _c = self.vtable.EnterPowerStateWithWakeUpAfter(@ptrCast(self), powerState, wakeUpAfter);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.IShutdownManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f69a02f-9c34-43c7-a8c3-70b30a7f7504";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsPowerStateSupported: *const fn(self: *anyopaque, powerState: PowerState, _r: *bool) callconv(.winapi) HRESULT,
        EnterPowerState: *const fn(self: *anyopaque, powerState: PowerState) callconv(.winapi) HRESULT,
        EnterPowerStateWithWakeUpAfter: *const fn(self: *anyopaque, powerState: PowerState, wakeUpAfter: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ITimeZoneSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrentTimeZoneDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrentTimeZoneDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedTimeZoneDisplayNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedTimeZoneDisplayNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanChangeTimeZone(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanChangeTimeZone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeTimeZoneByDisplayName(self: *@This(), timeZoneDisplayName: HSTRING) core.HResult!void {
        const _c = self.vtable.ChangeTimeZoneByDisplayName(@ptrCast(self), timeZoneDisplayName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.ITimeZoneSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b3b2bea-a101-41ae-9fbd-028728bab73d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentTimeZoneDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportedTimeZoneDisplayNames: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_CanChangeTimeZone: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ChangeTimeZoneByDisplayName: *const fn(self: *anyopaque, timeZoneDisplayName: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITimeZoneSettingsStatics2 = extern struct {
    vtable: *const VTable,
    pub fn AutoUpdateTimeZoneAsync(self: *@This(), timeout: TimeSpan) core.HResult!*IAsyncOperation(AutoUpdateTimeZoneStatus) {
        var _r: *IAsyncOperation(AutoUpdateTimeZoneStatus) = undefined;
        const _c = self.vtable.AutoUpdateTimeZoneAsync(@ptrCast(self), timeout, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.ITimeZoneSettingsStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "555c0db8-39a8-49fa-b4f6-a2c7fc2842ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AutoUpdateTimeZoneAsync: *const fn(self: *anyopaque, timeout: TimeSpan, _r: **IAsyncOperation(AutoUpdateTimeZoneStatus)) callconv(.winapi) HRESULT,
    };
};
pub const PowerState = enum(i32) {
    ConnectedStandby = 0,
    SleepS3 = 1,
};
pub const ProcessLauncher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RunToCompletionAsync(fileName: HSTRING, args: HSTRING) core.HResult!*IAsyncOperation(ProcessLauncherResult) {
        const factory = @This().IProcessLauncherStaticsCache.get();
        return try factory.RunToCompletionAsync(fileName, args);
    }
    pub fn RunToCompletionAsyncWithArgsWithOptions(fileName: HSTRING, args: HSTRING, options: *ProcessLauncherOptions) core.HResult!*IAsyncOperation(ProcessLauncherResult) {
        const factory = @This().IProcessLauncherStaticsCache.get();
        return try factory.RunToCompletionAsyncWithArgsWithOptions(fileName, args, options);
    }
    pub const NAME: []const u8 = "Windows.System.ProcessLauncher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IProcessLauncherStaticsCache: FactoryCache(IProcessLauncherStatics, RUNTIME_NAME) = .{};
};
pub const ProcessLauncherOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStandardInput(self: *@This()) core.HResult!*IInputStream {
        const this: *IProcessLauncherOptions = @ptrCast(self);
        return try this.getStandardInput();
    }
    pub fn putStandardInput(self: *@This(), value: *IInputStream) core.HResult!void {
        const this: *IProcessLauncherOptions = @ptrCast(self);
        return try this.putStandardInput(value);
    }
    pub fn getStandardOutput(self: *@This()) core.HResult!*IOutputStream {
        const this: *IProcessLauncherOptions = @ptrCast(self);
        return try this.getStandardOutput();
    }
    pub fn putStandardOutput(self: *@This(), value: *IOutputStream) core.HResult!void {
        const this: *IProcessLauncherOptions = @ptrCast(self);
        return try this.putStandardOutput(value);
    }
    pub fn getStandardError(self: *@This()) core.HResult!*IOutputStream {
        const this: *IProcessLauncherOptions = @ptrCast(self);
        return try this.getStandardError();
    }
    pub fn putStandardError(self: *@This(), value: *IOutputStream) core.HResult!void {
        const this: *IProcessLauncherOptions = @ptrCast(self);
        return try this.putStandardError(value);
    }
    pub fn getWorkingDirectory(self: *@This()) core.HResult!HSTRING {
        const this: *IProcessLauncherOptions = @ptrCast(self);
        return try this.getWorkingDirectory();
    }
    pub fn putWorkingDirectory(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IProcessLauncherOptions = @ptrCast(self);
        return try this.putWorkingDirectory(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IProcessLauncherOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.System.ProcessLauncherOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessLauncherOptions.GUID;
    pub const IID: Guid = IProcessLauncherOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessLauncherOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ProcessLauncherResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExitCode(self: *@This()) core.HResult!u32 {
        const this: *IProcessLauncherResult = @ptrCast(self);
        return try this.getExitCode();
    }
    pub const NAME: []const u8 = "Windows.System.ProcessLauncherResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessLauncherResult.GUID;
    pub const IID: Guid = IProcessLauncherResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessLauncherResult.SIGNATURE);
};
pub const ShutdownKind = enum(i32) {
    Shutdown = 0,
    Restart = 1,
};
pub const ShutdownManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn BeginShutdown(shutdownKind: ShutdownKind, timeout: TimeSpan) core.HResult!void {
        const factory = @This().IShutdownManagerStaticsCache.get();
        return try factory.BeginShutdown(shutdownKind, timeout);
    }
    pub fn CancelShutdown() core.HResult!void {
        const factory = @This().IShutdownManagerStaticsCache.get();
        return try factory.CancelShutdown();
    }
    pub fn IsPowerStateSupported(powerState: PowerState) core.HResult!bool {
        const factory = @This().IShutdownManagerStatics2Cache.get();
        return try factory.IsPowerStateSupported(powerState);
    }
    pub fn EnterPowerState(powerState: PowerState) core.HResult!void {
        const factory = @This().IShutdownManagerStatics2Cache.get();
        return try factory.EnterPowerState(powerState);
    }
    pub fn EnterPowerStateWithWakeUpAfter(powerState: PowerState, wakeUpAfter: TimeSpan) core.HResult!void {
        const factory = @This().IShutdownManagerStatics2Cache.get();
        return try factory.EnterPowerStateWithWakeUpAfter(powerState, wakeUpAfter);
    }
    pub const NAME: []const u8 = "Windows.System.ShutdownManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IShutdownManagerStaticsCache: FactoryCache(IShutdownManagerStatics, RUNTIME_NAME) = .{};
    var _IShutdownManagerStatics2Cache: FactoryCache(IShutdownManagerStatics2, RUNTIME_NAME) = .{};
};
pub const TimeZoneSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrentTimeZoneDisplayName() core.HResult!HSTRING {
        const factory = @This().ITimeZoneSettingsStaticsCache.get();
        return try factory.getCurrentTimeZoneDisplayName();
    }
    pub fn getSupportedTimeZoneDisplayNames() core.HResult!*IVectorView(HSTRING) {
        const factory = @This().ITimeZoneSettingsStaticsCache.get();
        return try factory.getSupportedTimeZoneDisplayNames();
    }
    pub fn getCanChangeTimeZone() core.HResult!bool {
        const factory = @This().ITimeZoneSettingsStaticsCache.get();
        return try factory.getCanChangeTimeZone();
    }
    pub fn ChangeTimeZoneByDisplayName(timeZoneDisplayName: HSTRING) core.HResult!void {
        const factory = @This().ITimeZoneSettingsStaticsCache.get();
        return try factory.ChangeTimeZoneByDisplayName(timeZoneDisplayName);
    }
    pub fn AutoUpdateTimeZoneAsync(timeout: TimeSpan) core.HResult!*IAsyncOperation(AutoUpdateTimeZoneStatus) {
        const factory = @This().ITimeZoneSettingsStatics2Cache.get();
        return try factory.AutoUpdateTimeZoneAsync(timeout);
    }
    pub const NAME: []const u8 = "Windows.System.TimeZoneSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ITimeZoneSettingsStaticsCache: FactoryCache(ITimeZoneSettingsStatics, RUNTIME_NAME) = .{};
    var _ITimeZoneSettingsStatics2Cache: FactoryCache(ITimeZoneSettingsStatics2, RUNTIME_NAME) = .{};
};
const IUnknown = @import("./root.zig").IUnknown;
const IActivationFactory = @import("./Foundation.zig").IActivationFactory;
const Guid = @import("./root.zig").Guid;
const Deferral = @import("./Foundation.zig").Deferral;
const IVector = @import("./Foundation/Collections.zig").IVector;
const ValueSet = @import("./Foundation/Collections.zig").ValueSet;
const AppInfo = @import("./ApplicationModel.zig").AppInfo;
const ViewSizePreference = @import("./UI/ViewManagement.zig").ViewSizePreference;
const IIterable = @import("./Foundation/Collections.zig").IIterable;
const IInspectable = @import("./Foundation.zig").IInspectable;
const ProcessDiagnosticInfo = @import("./Diagnostics.zig").ProcessDiagnosticInfo;
const Uri = @import("./Foundation.zig").Uri;
const RemoteSystemConnectionRequest = @import("./RemoteSystems.zig").RemoteSystemConnectionRequest;
const HRESULT = @import("./root.zig").HRESULT;
const EventRegistrationToken = @import("./Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("./Foundation.zig").IAsyncAction;
const StorageFile = @import("./Storage.zig").StorageFile;
const IVectorView = @import("./Foundation/Collections.zig").IVectorView;
const IStorageFolder = @import("./Storage.zig").IStorageFolder;
const IReference = @import("./Foundation.zig").IReference;
const IStorageItem = @import("./Storage.zig").IStorageItem;
const Placement = @import("./UI/Popups.zig").Placement;
const Point = @import("./Foundation.zig").Point;
const IInputStream = @import("./Storage/Streams.zig").IInputStream;
const DateTime = @import("./Foundation.zig").DateTime;
const StorageFileQueryResult = @import("./Storage/Search.zig").StorageFileQueryResult;
const IRandomAccessStreamReference = @import("./Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("./core.zig").FactoryCache;
const IStorageFile = @import("./Storage.zig").IStorageFile;
const Rect = @import("./Foundation.zig").Rect;
const TrustLevel = @import("./root.zig").TrustLevel;
const TypedEventHandler = @import("./Foundation.zig").TypedEventHandler;
const HSTRING = @import("./root.zig").HSTRING;
const TimeSpan = @import("./Foundation.zig").TimeSpan;
const IAgileObject = @import("./root.zig").IAgileObject;
const IOutputStream = @import("./Storage/Streams.zig").IOutputStream;
const HResult = @import("./Foundation.zig").HResult;
const EventHandler = @import("./Foundation.zig").EventHandler;
const IAsyncOperation = @import("./Foundation.zig").IAsyncOperation;
const core = @import("./root.zig").core;
const IPropertySet = @import("./Foundation/Collections.zig").IPropertySet;
pub const Diagnostics = @import("./System/Diagnostics.zig");
pub const Display = @import("./System/Display.zig");
pub const Inventory = @import("./System/Inventory.zig");
pub const Power = @import("./System/Power.zig");
pub const Preview = @import("./System/Preview.zig");
pub const Profile = @import("./System/Profile.zig");
pub const RemoteDesktop = @import("./System/RemoteDesktop.zig");
pub const RemoteSystems = @import("./System/RemoteSystems.zig");
pub const Threading = @import("./System/Threading.zig");
pub const Update = @import("./System/Update.zig");
pub const UserProfile = @import("./System/UserProfile.zig");
