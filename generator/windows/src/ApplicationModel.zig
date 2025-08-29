pub const IStartupTask = extern struct {
    vtable: *const VTable,
    pub fn RequestEnableAsync(self: *@This()) core.HResult!*IAsyncOperation(StartupTaskState) {
        var _r: *IAsyncOperation(StartupTaskState) = undefined;
        const _c = self.vtable.RequestEnableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Disable(self: *@This()) core.HResult!void {
        const _c = self.vtable.Disable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!StartupTaskState {
        var _r: StartupTaskState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IStartupTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f75c23c8-b5f2-4f6c-88dd-36cb1d599d17";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestEnableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StartupTaskState)) callconv(.winapi) HRESULT,
        Disable: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *StartupTaskState) callconv(.winapi) HRESULT,
        get_TaskId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStartupTaskStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentPackageAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StartupTask)) {
        var _r: *IAsyncOperation(IVectorView(StartupTask)) = undefined;
        const _c = self.vtable.GetForCurrentPackageAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAsync(self: *@This(), taskId: HSTRING) core.HResult!*IAsyncOperation(StartupTask) {
        var _r: *IAsyncOperation(StartupTask) = undefined;
        const _c = self.vtable.GetAsync(@ptrCast(self), taskId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IStartupTaskStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee5b60bd-a148-41a7-b26e-e8b88a1e62f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentPackageAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StartupTask))) callconv(.winapi) HRESULT,
        GetAsync: *const fn(self: *anyopaque, taskId: HSTRING, _r: **IAsyncOperation(StartupTask)) callconv(.winapi) HRESULT,
    };
};
pub const StartupTask = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestEnableAsync(self: *@This()) core.HResult!*IAsyncOperation(StartupTaskState) {
        const this: *IStartupTask = @ptrCast(self);
        return try this.RequestEnableAsync();
    }
    pub fn Disable(self: *@This()) core.HResult!void {
        const this: *IStartupTask = @ptrCast(self);
        return try this.Disable();
    }
    pub fn getState(self: *@This()) core.HResult!StartupTaskState {
        const this: *IStartupTask = @ptrCast(self);
        return try this.getState();
    }
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        const this: *IStartupTask = @ptrCast(self);
        return try this.getTaskId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentPackageAsync() core.HResult!*IAsyncOperation(IVectorView(StartupTask)) {
        const factory = @This().IStartupTaskStaticsCache.get();
        return try factory.GetForCurrentPackageAsync();
    }
    pub fn GetAsync(taskId: HSTRING) core.HResult!*IAsyncOperation(StartupTask) {
        const factory = @This().IStartupTaskStaticsCache.get();
        return try factory.GetAsync(taskId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.StartupTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStartupTask.GUID;
    pub const IID: Guid = IStartupTask.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStartupTask.SIGNATURE);
    var _IStartupTaskStaticsCache: FactoryCache(IStartupTaskStatics, RUNTIME_NAME) = .{};
};
pub const StartupTaskState = enum(i32) {
    Disabled = 0,
    DisabledByUser = 1,
    Enabled = 2,
    DisabledByPolicy = 3,
    EnabledByPolicy = 4,
};
pub const AddResourcePackageOptions = enum(i32) {
    None = 0,
    ForceTargetAppShutdown = 1,
    ApplyUpdateIfAvailable = 2,
};
pub const AppDisplayInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDisplayInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDisplayInfo = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn GetLogo(self: *@This(), size: Size) core.HResult!*RandomAccessStreamReference {
        const this: *IAppDisplayInfo = @ptrCast(self);
        return try this.GetLogo(size);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppDisplayInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppDisplayInfo.GUID;
    pub const IID: Guid = IAppDisplayInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppDisplayInfo.SIGNATURE);
};
pub const AppExecutionContext = enum(i32) {
    Unknown = 0,
    Host = 1,
    Guest = 2,
};
pub const AppInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInfo = @ptrCast(self);
        return try this.getAppUserModelId();
    }
    pub fn getDisplayInfo(self: *@This()) core.HResult!*AppDisplayInfo {
        const this: *IAppInfo = @ptrCast(self);
        return try this.getDisplayInfo();
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInfo = @ptrCast(self);
        return try this.getPackageFamilyName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var this: ?*IAppInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPackage();
    }
    pub fn getExecutionContext(self: *@This()) core.HResult!AppExecutionContext {
        var this: ?*IAppInfo3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInfo3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExecutionContext();
    }
    pub fn getSupportedFileExtensions(self: *@This()) core.HResult![*]HSTRING {
        var this: ?*IAppInfo4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInfo4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedFileExtensions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*AppInfo {
        const factory = @This().IAppInfoStaticsCache.get();
        return try factory.getCurrent();
    }
    pub fn GetFromAppUserModelId(appUserModelId: HSTRING) core.HResult!*AppInfo {
        const factory = @This().IAppInfoStaticsCache.get();
        return try factory.GetFromAppUserModelId(appUserModelId);
    }
    pub fn GetFromAppUserModelIdForUser(user: *User, appUserModelId: HSTRING) core.HResult!*AppInfo {
        const factory = @This().IAppInfoStaticsCache.get();
        return try factory.GetFromAppUserModelIdForUser(user, appUserModelId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInfo.GUID;
    pub const IID: Guid = IAppInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInfo.SIGNATURE);
    var _IAppInfoStaticsCache: FactoryCache(IAppInfoStatics, RUNTIME_NAME) = .{};
};
pub const AppInstallerInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IAppInstallerInfo = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getOnLaunch(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOnLaunch();
    }
    pub fn getHoursBetweenUpdateChecks(self: *@This()) core.HResult!u32 {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHoursBetweenUpdateChecks();
    }
    pub fn getShowPrompt(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShowPrompt();
    }
    pub fn getUpdateBlocksActivation(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUpdateBlocksActivation();
    }
    pub fn getAutomaticBackgroundTask(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutomaticBackgroundTask();
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getForceUpdateFromAnyVersion();
    }
    pub fn getIsAutoRepairEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAutoRepairEnabled();
    }
    pub fn getVersion(self: *@This()) core.HResult!PackageVersion {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVersion();
    }
    pub fn getLastChecked(self: *@This()) core.HResult!DateTime {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChecked();
    }
    pub fn getPausedUntil(self: *@This()) core.HResult!*IReference(DateTime) {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPausedUntil();
    }
    pub fn getUpdateUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUpdateUris();
    }
    pub fn getRepairUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRepairUris();
    }
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDependencyPackageUris();
    }
    pub fn getOptionalPackageUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOptionalPackageUris();
    }
    pub fn getPolicySource(self: *@This()) core.HResult!AppInstallerPolicySource {
        var this: ?*IAppInstallerInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallerInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPolicySource();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppInstallerInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInstallerInfo.GUID;
    pub const IID: Guid = IAppInstallerInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInstallerInfo.SIGNATURE);
};
pub const AppInstallerPolicySource = enum(i32) {
    Default = 0,
    System = 1,
};
pub const AppInstance = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKey(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInstance = @ptrCast(self);
        return try this.getKey();
    }
    pub fn getIsCurrentInstance(self: *@This()) core.HResult!bool {
        const this: *IAppInstance = @ptrCast(self);
        return try this.getIsCurrentInstance();
    }
    pub fn RedirectActivationTo(self: *@This()) core.HResult!void {
        const this: *IAppInstance = @ptrCast(self);
        return try this.RedirectActivationTo();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getRecommendedInstance() core.HResult!*AppInstance {
        const factory = @This().IAppInstanceStaticsCache.get();
        return try factory.getRecommendedInstance();
    }
    pub fn GetActivatedEventArgs() core.HResult!*IActivatedEventArgs {
        const factory = @This().IAppInstanceStaticsCache.get();
        return try factory.GetActivatedEventArgs();
    }
    pub fn FindOrRegisterInstanceForKey(key: HSTRING) core.HResult!*AppInstance {
        const factory = @This().IAppInstanceStaticsCache.get();
        return try factory.FindOrRegisterInstanceForKey(key);
    }
    pub fn Unregister() core.HResult!void {
        const factory = @This().IAppInstanceStaticsCache.get();
        return try factory.Unregister();
    }
    pub fn GetInstances() core.HResult!*IVector(AppInstance) {
        const factory = @This().IAppInstanceStaticsCache.get();
        return try factory.GetInstances();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppInstance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInstance.GUID;
    pub const IID: Guid = IAppInstance.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInstance.SIGNATURE);
    var _IAppInstanceStaticsCache: FactoryCache(IAppInstanceStatics, RUNTIME_NAME) = .{};
};
pub const DesignMode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getDesignModeEnabled() core.HResult!bool {
        const factory = @This().IDesignModeStaticsCache.get();
        return try factory.getDesignModeEnabled();
    }
    pub fn getDesignMode2Enabled() core.HResult!bool {
        const factory = @This().IDesignModeStatics2Cache.get();
        return try factory.getDesignMode2Enabled();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DesignMode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IDesignModeStaticsCache: FactoryCache(IDesignModeStatics, RUNTIME_NAME) = .{};
    var _IDesignModeStatics2Cache: FactoryCache(IDesignModeStatics2, RUNTIME_NAME) = .{};
};
pub const EnteredBackgroundEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEnteredBackgroundEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.EnteredBackgroundEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEnteredBackgroundEventArgs.GUID;
    pub const IID: Guid = IEnteredBackgroundEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEnteredBackgroundEventArgs.SIGNATURE);
};
pub const FindRelatedPackagesOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRelationship(self: *@This()) core.HResult!PackageRelationship {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.getRelationship();
    }
    pub fn putRelationship(self: *@This(), value: PackageRelationship) core.HResult!void {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.putRelationship(value);
    }
    pub fn getIncludeFrameworks(self: *@This()) core.HResult!bool {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.getIncludeFrameworks();
    }
    pub fn putIncludeFrameworks(self: *@This(), value: bool) core.HResult!void {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.putIncludeFrameworks(value);
    }
    pub fn getIncludeHostRuntimes(self: *@This()) core.HResult!bool {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.getIncludeHostRuntimes();
    }
    pub fn putIncludeHostRuntimes(self: *@This(), value: bool) core.HResult!void {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.putIncludeHostRuntimes(value);
    }
    pub fn getIncludeOptionals(self: *@This()) core.HResult!bool {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.getIncludeOptionals();
    }
    pub fn putIncludeOptionals(self: *@This(), value: bool) core.HResult!void {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.putIncludeOptionals(value);
    }
    pub fn getIncludeResources(self: *@This()) core.HResult!bool {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.getIncludeResources();
    }
    pub fn putIncludeResources(self: *@This(), value: bool) core.HResult!void {
        const this: *IFindRelatedPackagesOptions = @ptrCast(self);
        return try this.putIncludeResources(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(Relationship: PackageRelationship) core.HResult!*FindRelatedPackagesOptions {
        const factory = @This().IFindRelatedPackagesOptionsFactoryCache.get();
        return try factory.CreateInstance(Relationship);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.FindRelatedPackagesOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFindRelatedPackagesOptions.GUID;
    pub const IID: Guid = IFindRelatedPackagesOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFindRelatedPackagesOptions.SIGNATURE);
    var _IFindRelatedPackagesOptionsFactoryCache: FactoryCache(IFindRelatedPackagesOptionsFactory, RUNTIME_NAME) = .{};
};
pub const IAppDisplayInfo = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLogo(self: *@This(), size: Size) core.HResult!*RandomAccessStreamReference {
        var _r: *RandomAccessStreamReference = undefined;
        const _c = self.vtable.GetLogo(@ptrCast(self), size, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppDisplayInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1aeb1103-e4d4-41aa-a4f6-c4a276e79eac";
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
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetLogo: *const fn(self: *anyopaque, size: Size, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
    };
};
pub const IAppInfo = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayInfo(self: *@This()) core.HResult!*AppDisplayInfo {
        var _r: *AppDisplayInfo = undefined;
        const _c = self.vtable.get_DisplayInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf7f59b3-6a09-4de8-a6c0-5792d56880d1";
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
        get_AppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayInfo: *const fn(self: *anyopaque, _r: **AppDisplayInfo) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be4b1f5a-2098-431b-bd25-b30878748d47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const IAppInfo3 = extern struct {
    vtable: *const VTable,
    pub fn getExecutionContext(self: *@This()) core.HResult!AppExecutionContext {
        var _r: AppExecutionContext = undefined;
        const _c = self.vtable.get_ExecutionContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppInfo3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09a78e46-93a4-46de-9397-0843b57115ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExecutionContext: *const fn(self: *anyopaque, _r: *AppExecutionContext) callconv(.winapi) HRESULT,
    };
};
pub const IAppInfo4 = extern struct {
    vtable: *const VTable,
    pub fn getSupportedFileExtensions(self: *@This()) core.HResult![*]HSTRING {
        var _r: [*]HSTRING = undefined;
        const _c = self.vtable.get_SupportedFileExtensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppInfo4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f34bdeb-1609-4554-9f33-12e1e803e0d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedFileExtensions: *const fn(self: *anyopaque, _r: *[*]HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*AppInfo {
        var _r: *AppInfo = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFromAppUserModelId(self: *@This(), appUserModelId: HSTRING) core.HResult!*AppInfo {
        var _r: *AppInfo = undefined;
        const _c = self.vtable.GetFromAppUserModelId(@ptrCast(self), appUserModelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFromAppUserModelIdForUser(self: *@This(), user: *User, appUserModelId: HSTRING) core.HResult!*AppInfo {
        var _r: *AppInfo = undefined;
        const _c = self.vtable.GetFromAppUserModelIdForUser(@ptrCast(self), user, appUserModelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf1f782a-e48b-4f0c-9b0b-79c3f8957dd7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **AppInfo) callconv(.winapi) HRESULT,
        GetFromAppUserModelId: *const fn(self: *anyopaque, appUserModelId: HSTRING, _r: **AppInfo) callconv(.winapi) HRESULT,
        GetFromAppUserModelIdForUser: *const fn(self: *anyopaque, user: *User, appUserModelId: HSTRING, _r: **AppInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallerInfo = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppInstallerInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29ab2ac0-d4f6-42a3-adcd-d6583c659508";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallerInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getOnLaunch(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OnLaunch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHoursBetweenUpdateChecks(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HoursBetweenUpdateChecks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShowPrompt(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowPrompt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateBlocksActivation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UpdateBlocksActivation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutomaticBackgroundTask(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutomaticBackgroundTask(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForceUpdateFromAnyVersion(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceUpdateFromAnyVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAutoRepairEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAutoRepairEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVersion(self: *@This()) core.HResult!PackageVersion {
        var _r: PackageVersion = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastChecked(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastChecked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPausedUntil(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_PausedUntil(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var _r: *IVectorView(Uri) = undefined;
        const _c = self.vtable.get_UpdateUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRepairUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var _r: *IVectorView(Uri) = undefined;
        const _c = self.vtable.get_RepairUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDependencyPackageUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var _r: *IVectorView(Uri) = undefined;
        const _c = self.vtable.get_DependencyPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptionalPackageUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var _r: *IVectorView(Uri) = undefined;
        const _c = self.vtable.get_OptionalPackageUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPolicySource(self: *@This()) core.HResult!AppInstallerPolicySource {
        var _r: AppInstallerPolicySource = undefined;
        const _c = self.vtable.get_PolicySource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppInstallerInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d20f1388-8256-597c-8511-c84ec50d5e2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OnLaunch: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HoursBetweenUpdateChecks: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ShowPrompt: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_UpdateBlocksActivation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AutomaticBackgroundTask: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ForceUpdateFromAnyVersion: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsAutoRepairEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *PackageVersion) callconv(.winapi) HRESULT,
        get_LastChecked: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_PausedUntil: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_UpdateUris: *const fn(self: *anyopaque, _r: **IVectorView(Uri)) callconv(.winapi) HRESULT,
        get_RepairUris: *const fn(self: *anyopaque, _r: **IVectorView(Uri)) callconv(.winapi) HRESULT,
        get_DependencyPackageUris: *const fn(self: *anyopaque, _r: **IVectorView(Uri)) callconv(.winapi) HRESULT,
        get_OptionalPackageUris: *const fn(self: *anyopaque, _r: **IVectorView(Uri)) callconv(.winapi) HRESULT,
        get_PolicySource: *const fn(self: *anyopaque, _r: *AppInstallerPolicySource) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstance = extern struct {
    vtable: *const VTable,
    pub fn getKey(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Key(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCurrentInstance(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCurrentInstance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RedirectActivationTo(self: *@This()) core.HResult!void {
        const _c = self.vtable.RedirectActivationTo(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppInstance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "675f2b47-f25f-4532-9fd6-3633e0634d01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Key: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsCurrentInstance: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        RedirectActivationTo: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstanceStatics = extern struct {
    vtable: *const VTable,
    pub fn getRecommendedInstance(self: *@This()) core.HResult!*AppInstance {
        var _r: *AppInstance = undefined;
        const _c = self.vtable.get_RecommendedInstance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetActivatedEventArgs(self: *@This()) core.HResult!*IActivatedEventArgs {
        var _r: *IActivatedEventArgs = undefined;
        const _c = self.vtable.GetActivatedEventArgs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindOrRegisterInstanceForKey(self: *@This(), key: HSTRING) core.HResult!*AppInstance {
        var _r: *AppInstance = undefined;
        const _c = self.vtable.FindOrRegisterInstanceForKey(@ptrCast(self), key, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Unregister(self: *@This()) core.HResult!void {
        const _c = self.vtable.Unregister(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetInstances(self: *@This()) core.HResult!*IVector(AppInstance) {
        var _r: *IVector(AppInstance) = undefined;
        const _c = self.vtable.GetInstances(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IAppInstanceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d11e77f-9ea6-47af-a6ec-46784c5ba254";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RecommendedInstance: *const fn(self: *anyopaque, _r: **AppInstance) callconv(.winapi) HRESULT,
        GetActivatedEventArgs: *const fn(self: *anyopaque, _r: **IActivatedEventArgs) callconv(.winapi) HRESULT,
        FindOrRegisterInstanceForKey: *const fn(self: *anyopaque, key: HSTRING, _r: **AppInstance) callconv(.winapi) HRESULT,
        Unregister: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetInstances: *const fn(self: *anyopaque, _r: **IVector(AppInstance)) callconv(.winapi) HRESULT,
    };
};
pub const IDesignModeStatics = extern struct {
    vtable: *const VTable,
    pub fn getDesignModeEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DesignModeEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IDesignModeStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c3893cc-f81a-4e7a-b857-76a80887e185";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesignModeEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDesignModeStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getDesignMode2Enabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DesignMode2Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IDesignModeStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80cf8137-b064-4858-bec8-3eba22357535";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesignMode2Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IEnteredBackgroundEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IEnteredBackgroundEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f722dcc2-9827-403d-aaed-ecca9ac17398";
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
pub const IFindRelatedPackagesOptions = extern struct {
    vtable: *const VTable,
    pub fn getRelationship(self: *@This()) core.HResult!PackageRelationship {
        var _r: PackageRelationship = undefined;
        const _c = self.vtable.get_Relationship(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelationship(self: *@This(), value: PackageRelationship) core.HResult!void {
        const _c = self.vtable.put_Relationship(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncludeFrameworks(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeFrameworks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeFrameworks(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeFrameworks(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncludeHostRuntimes(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeHostRuntimes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeHostRuntimes(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeHostRuntimes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncludeOptionals(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeOptionals(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeOptionals(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeOptionals(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncludeResources(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeResources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeResources(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeResources(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IFindRelatedPackagesOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41dd7eea-b335-521f-b96c-5ea07f5b7329";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Relationship: *const fn(self: *anyopaque, _r: *PackageRelationship) callconv(.winapi) HRESULT,
        put_Relationship: *const fn(self: *anyopaque, value: PackageRelationship) callconv(.winapi) HRESULT,
        get_IncludeFrameworks: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeFrameworks: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncludeHostRuntimes: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeHostRuntimes: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncludeOptionals: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeOptionals: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncludeResources: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeResources: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IFindRelatedPackagesOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), Relationship: PackageRelationship) core.HResult!*FindRelatedPackagesOptions {
        var _r: *FindRelatedPackagesOptions = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), Relationship, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IFindRelatedPackagesOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7d17254-a4fd-55c4-98cf-f2710b7d8be2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, Relationship: PackageRelationship, _r: **FindRelatedPackagesOptions) callconv(.winapi) HRESULT,
    };
};
pub const ILeavingBackgroundEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ILeavingBackgroundEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "39c6ec9a-ae6e-46f9-a07a-cfc23f88733e";
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
pub const ILimitedAccessFeatureRequestResult = extern struct {
    vtable: *const VTable,
    pub fn getFeatureId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FeatureId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!LimitedAccessFeatureStatus {
        var _r: LimitedAccessFeatureStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEstimatedRemovalDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_EstimatedRemovalDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ILimitedAccessFeatureRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d45156a6-1e24-5ddd-abb4-6188aba4d5bf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FeatureId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *LimitedAccessFeatureStatus) callconv(.winapi) HRESULT,
        get_EstimatedRemovalDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const ILimitedAccessFeaturesStatics = extern struct {
    vtable: *const VTable,
    pub fn TryUnlockFeature(self: *@This(), featureId: HSTRING, token: HSTRING, attestation: HSTRING) core.HResult!*LimitedAccessFeatureRequestResult {
        var _r: *LimitedAccessFeatureRequestResult = undefined;
        const _c = self.vtable.TryUnlockFeature(@ptrCast(self), featureId, token, attestation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ILimitedAccessFeaturesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8be612d4-302b-5fbf-a632-1a99e43e8925";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryUnlockFeature: *const fn(self: *anyopaque, featureId: HSTRING, token: HSTRING, attestation: HSTRING, _r: **LimitedAccessFeatureRequestResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackage = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*PackageId {
        var _r: *PackageId = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstalledLocation(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_InstalledLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFramework(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFramework(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDependencies(self: *@This()) core.HResult!*IVectorView(Package) {
        var _r: *IVectorView(Package) = undefined;
        const _c = self.vtable.get_Dependencies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "163c792f-bd75-413c-bf23-b1fe7b95d825";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **PackageId) callconv(.winapi) HRESULT,
        get_InstalledLocation: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_IsFramework: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Dependencies: *const fn(self: *anyopaque, _r: **IVectorView(Package)) callconv(.winapi) HRESULT,
    };
};
pub const IPackage2 = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublisherDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PublisherDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLogo(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsResourcePackage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsResourcePackage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBundle(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBundle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDevelopmentMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDevelopmentMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6612fb6-7688-4ace-95fb-359538e7aa01";
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
        get_PublisherDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Logo: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_IsResourcePackage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBundle: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDevelopmentMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPackage3 = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!*PackageStatus {
        var _r: *PackageStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstalledDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_InstalledDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppListEntriesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppListEntry)) {
        var _r: *IAsyncOperation(IVectorView(AppListEntry)) = undefined;
        const _c = self.vtable.GetAppListEntriesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackage3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f738b61-f86a-4917-93d1-f1ee9d3b35d9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: **PackageStatus) callconv(.winapi) HRESULT,
        get_InstalledDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        GetAppListEntriesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(AppListEntry))) callconv(.winapi) HRESULT,
    };
};
pub const IPackage4 = extern struct {
    vtable: *const VTable,
    pub fn getSignatureKind(self: *@This()) core.HResult!PackageSignatureKind {
        var _r: PackageSignatureKind = undefined;
        const _c = self.vtable.get_SignatureKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOptional(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOptional(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn VerifyContentIntegrityAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.VerifyContentIntegrityAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackage4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65aed1ae-b95b-450c-882b-6255187f397e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SignatureKind: *const fn(self: *anyopaque, _r: *PackageSignatureKind) callconv(.winapi) HRESULT,
        get_IsOptional: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        VerifyContentIntegrityAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPackage5 = extern struct {
    vtable: *const VTable,
    pub fn GetContentGroupsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVector(PackageContentGroup)) {
        var _r: *IAsyncOperation(IVector(PackageContentGroup)) = undefined;
        const _c = self.vtable.GetContentGroupsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContentGroupAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(PackageContentGroup) {
        var _r: *IAsyncOperation(PackageContentGroup) = undefined;
        const _c = self.vtable.GetContentGroupAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StageContentGroupsAsync(self: *@This(), names: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVector(PackageContentGroup)) {
        var _r: *IAsyncOperation(IVector(PackageContentGroup)) = undefined;
        const _c = self.vtable.StageContentGroupsAsync(@ptrCast(self), names, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StageContentGroupsAsync(self: *@This(), names: *IIterable(HSTRING), moveToHeadOfQueue: bool) core.HResult!*IAsyncOperation(IVector(PackageContentGroup)) {
        var _r: *IAsyncOperation(IVector(PackageContentGroup)) = undefined;
        const _c = self.vtable.StageContentGroupsAsync(@ptrCast(self), names, moveToHeadOfQueue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetInUseAsync(self: *@This(), inUse: bool) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SetInUseAsync(@ptrCast(self), inUse, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackage5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e842dd4-d9ac-45ed-9a1e-74ce056b2635";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetContentGroupsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVector(PackageContentGroup))) callconv(.winapi) HRESULT,
        GetContentGroupAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(PackageContentGroup)) callconv(.winapi) HRESULT,
        StageContentGroupsAsync: *const fn(self: *anyopaque, names: *IIterable(HSTRING), _r: **IAsyncOperation(IVector(PackageContentGroup))) callconv(.winapi) HRESULT,
        StageContentGroupsAsync: *const fn(self: *anyopaque, names: *IIterable(HSTRING), moveToHeadOfQueue: bool, _r: **IAsyncOperation(IVector(PackageContentGroup))) callconv(.winapi) HRESULT,
        SetInUseAsync: *const fn(self: *anyopaque, inUse: bool, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPackage6 = extern struct {
    vtable: *const VTable,
    pub fn GetAppInstallerInfo(self: *@This()) core.HResult!*AppInstallerInfo {
        var _r: *AppInstallerInfo = undefined;
        const _c = self.vtable.GetAppInstallerInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckUpdateAvailabilityAsync(self: *@This()) core.HResult!*IAsyncOperation(PackageUpdateAvailabilityResult) {
        var _r: *IAsyncOperation(PackageUpdateAvailabilityResult) = undefined;
        const _c = self.vtable.CheckUpdateAvailabilityAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackage6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b1ad942-12d7-4754-ae4e-638cbc0e3a2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAppInstallerInfo: *const fn(self: *anyopaque, _r: **AppInstallerInfo) callconv(.winapi) HRESULT,
        CheckUpdateAvailabilityAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PackageUpdateAvailabilityResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPackage7 = extern struct {
    vtable: *const VTable,
    pub fn getMutableLocation(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_MutableLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEffectiveLocation(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_EffectiveLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackage7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86ff8d31-a2e4-45e0-9732-283a6d88fde1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MutableLocation: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_EffectiveLocation: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IPackage8 = extern struct {
    vtable: *const VTable,
    pub fn getEffectiveExternalLocation(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_EffectiveExternalLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMachineExternalLocation(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_MachineExternalLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserExternalLocation(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_UserExternalLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstalledPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InstalledPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMutablePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MutablePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEffectivePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EffectivePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEffectiveExternalPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EffectiveExternalPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMachineExternalPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MachineExternalPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserExternalPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserExternalPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLogoAsRandomAccessStreamReference(self: *@This(), size: Size) core.HResult!*RandomAccessStreamReference {
        var _r: *RandomAccessStreamReference = undefined;
        const _c = self.vtable.GetLogoAsRandomAccessStreamReference(@ptrCast(self), size, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppListEntries(self: *@This()) core.HResult!*IVectorView(AppListEntry) {
        var _r: *IVectorView(AppListEntry) = undefined;
        const _c = self.vtable.GetAppListEntries(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStub(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStub(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackage8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c584f7b-ce2a-4be6-a093-77cfbb2a7ea1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EffectiveExternalLocation: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_MachineExternalLocation: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_UserExternalLocation: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_InstalledPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MutablePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EffectivePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EffectiveExternalPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MachineExternalPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UserExternalPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetLogoAsRandomAccessStreamReference: *const fn(self: *anyopaque, size: Size, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
        GetAppListEntries: *const fn(self: *anyopaque, _r: **IVectorView(AppListEntry)) callconv(.winapi) HRESULT,
        get_IsStub: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPackage9 = extern struct {
    vtable: *const VTable,
    pub fn FindRelatedPackages(self: *@This(), options: *FindRelatedPackagesOptions) core.HResult!*IVector(Package) {
        var _r: *IVector(Package) = undefined;
        const _c = self.vtable.FindRelatedPackages(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceUriSchemeName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceUriSchemeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackage9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5ab224f-d7e1-49ec-90ce-720cdbd02e9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindRelatedPackages: *const fn(self: *anyopaque, options: *FindRelatedPackagesOptions, _r: **IVector(Package)) callconv(.winapi) HRESULT,
        get_SourceUriSchemeName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalog = extern struct {
    vtable: *const VTable,
    pub fn addPackageStaging(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageStagingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageStaging(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageStaging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageStaging(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageInstalling(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageInstallingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageInstalling(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageInstalling(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageInstalling(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageUpdating(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageUpdating(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageUpdating(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageUpdating(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageUninstalling(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageUninstallingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageUninstalling(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageUninstalling(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageUninstalling(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageStatusChanged(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "230a3751-9de3-4445-be74-91fb325abefe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PackageStaging: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageCatalog,PackageStagingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageStaging: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageInstalling: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageCatalog,PackageInstallingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageInstalling: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageUpdating: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageCatalog,PackageUpdatingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageUpdating: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageUninstalling: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageCatalog,PackageUninstallingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageUninstalling: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageCatalog,PackageStatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalog2 = extern struct {
    vtable: *const VTable,
    pub fn addPackageContentGroupStaging(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageContentGroupStagingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageContentGroupStaging(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageContentGroupStaging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageContentGroupStaging(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddOptionalPackageAsync(self: *@This(), optionalPackageFamilyName: HSTRING) core.HResult!*IAsyncOperation(PackageCatalogAddOptionalPackageResult) {
        var _r: *IAsyncOperation(PackageCatalogAddOptionalPackageResult) = undefined;
        const _c = self.vtable.AddOptionalPackageAsync(@ptrCast(self), optionalPackageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalog2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96a60c36-8ff7-4344-b6bf-ee64c2207ed2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PackageContentGroupStaging: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageCatalog,PackageContentGroupStagingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageContentGroupStaging: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        AddOptionalPackageAsync: *const fn(self: *anyopaque, optionalPackageFamilyName: HSTRING, _r: **IAsyncOperation(PackageCatalogAddOptionalPackageResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalog3 = extern struct {
    vtable: *const VTable,
    pub fn RemoveOptionalPackagesAsync(self: *@This(), optionalPackageFamilyNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(PackageCatalogRemoveOptionalPackagesResult) {
        var _r: *IAsyncOperation(PackageCatalogRemoveOptionalPackagesResult) = undefined;
        const _c = self.vtable.RemoveOptionalPackagesAsync(@ptrCast(self), optionalPackageFamilyNames, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalog3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96dd5c88-8837-43f9-9015-033434ba14f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RemoveOptionalPackagesAsync: *const fn(self: *anyopaque, optionalPackageFamilyNames: *IIterable(HSTRING), _r: **IAsyncOperation(PackageCatalogRemoveOptionalPackagesResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalog4 = extern struct {
    vtable: *const VTable,
    pub fn AddResourcePackageAsync(self: *@This(), resourcePackageFamilyName: HSTRING, resourceID: HSTRING, options: AddResourcePackageOptions) core.HResult!*IAsyncOperationWithProgress(PackageCatalogAddResourcePackageResult,PackageInstallProgress) {
        var _r: *IAsyncOperationWithProgress(PackageCatalogAddResourcePackageResult,PackageInstallProgress) = undefined;
        const _c = self.vtable.AddResourcePackageAsync(@ptrCast(self), resourcePackageFamilyName, resourceID, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveResourcePackagesAsync(self: *@This(), resourcePackages: *IIterable(Package)) core.HResult!*IAsyncOperation(PackageCatalogRemoveResourcePackagesResult) {
        var _r: *IAsyncOperation(PackageCatalogRemoveResourcePackagesResult) = undefined;
        const _c = self.vtable.RemoveResourcePackagesAsync(@ptrCast(self), resourcePackages, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalog4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c37c399b-44cc-4b7b-8baf-796c04ead3b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddResourcePackageAsync: *const fn(self: *anyopaque, resourcePackageFamilyName: HSTRING, resourceID: HSTRING, options: AddResourcePackageOptions, _r: **IAsyncOperationWithProgress(PackageCatalogAddResourcePackageResult,PackageInstallProgress)) callconv(.winapi) HRESULT,
        RemoveResourcePackagesAsync: *const fn(self: *anyopaque, resourcePackages: *IIterable(Package), _r: **IAsyncOperation(PackageCatalogRemoveResourcePackagesResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalogAddOptionalPackageResult = extern struct {
    vtable: *const VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalogAddOptionalPackageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3bf10cd4-b4df-47b3-a963-e2fa832f7dd3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalogAddResourcePackageResult = extern struct {
    vtable: *const VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalogAddResourcePackageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9636ce0d-3e17-493f-aa08-ccec6fdef699";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_IsComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalogRemoveOptionalPackagesResult = extern struct {
    vtable: *const VTable,
    pub fn getPackagesRemoved(self: *@This()) core.HResult!*IVectorView(Package) {
        var _r: *IVectorView(Package) = undefined;
        const _c = self.vtable.get_PackagesRemoved(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalogRemoveOptionalPackagesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29d2f97b-d974-4e64-9359-22cadfd79828";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackagesRemoved: *const fn(self: *anyopaque, _r: **IVectorView(Package)) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalogRemoveResourcePackagesResult = extern struct {
    vtable: *const VTable,
    pub fn getPackagesRemoved(self: *@This()) core.HResult!*IVectorView(Package) {
        var _r: *IVectorView(Package) = undefined;
        const _c = self.vtable.get_PackagesRemoved(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalogRemoveResourcePackagesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae719709-1a52-4321-87b3-e5a1a17981a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackagesRemoved: *const fn(self: *anyopaque, _r: **IVectorView(Package)) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalogStatics = extern struct {
    vtable: *const VTable,
    pub fn OpenForCurrentPackage(self: *@This()) core.HResult!*PackageCatalog {
        var _r: *PackageCatalog = undefined;
        const _c = self.vtable.OpenForCurrentPackage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenForCurrentUser(self: *@This()) core.HResult!*PackageCatalog {
        var _r: *PackageCatalog = undefined;
        const _c = self.vtable.OpenForCurrentUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalogStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a18c9696-e65b-4634-ba21-5e63eb7244a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenForCurrentPackage: *const fn(self: *anyopaque, _r: **PackageCatalog) callconv(.winapi) HRESULT,
        OpenForCurrentUser: *const fn(self: *anyopaque, _r: **PackageCatalog) callconv(.winapi) HRESULT,
    };
};
pub const IPackageCatalogStatics2 = extern struct {
    vtable: *const VTable,
    pub fn OpenForPackage(self: *@This(), package: *Package) core.HResult!*PackageCatalog {
        var _r: *PackageCatalog = undefined;
        const _c = self.vtable.OpenForPackage(@ptrCast(self), package, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageCatalogStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c11c159-9a28-598c-b185-55e1899b2be4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenForPackage: *const fn(self: *anyopaque, package: *Package, _r: **PackageCatalog) callconv(.winapi) HRESULT,
    };
};
pub const IPackageContentGroup = extern struct {
    vtable: *const VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!PackageContentGroupState {
        var _r: PackageContentGroupState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageContentGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f62695d-120a-4798-b5e1-5800dda8f2e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *PackageContentGroupState) callconv(.winapi) HRESULT,
        get_IsRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPackageContentGroupStagingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentGroupName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentGroupName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsContentGroupRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsContentGroupRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageContentGroupStagingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d7bc27e-6f27-446c-986e-d4733d4d9113";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IsComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_ContentGroupName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsContentGroupRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPackageContentGroupStatics = extern struct {
    vtable: *const VTable,
    pub fn getRequiredGroupName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RequiredGroupName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageContentGroupStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70ee7619-5f12-4b92-b9ea-6ccada13bc75";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequiredGroupName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPackageId = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVersion(self: *@This()) core.HResult!PackageVersion {
        var _r: PackageVersion = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArchitecture(self: *@This()) core.HResult!ProcessorArchitecture {
        var _r: ProcessorArchitecture = undefined;
        const _c = self.vtable.get_Architecture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResourceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Publisher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublisherId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PublisherId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFullName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FullName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1adb665e-37c7-4790-9980-dd7ae74e8bb2";
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
        get_Version: *const fn(self: *anyopaque, _r: *PackageVersion) callconv(.winapi) HRESULT,
        get_Architecture: *const fn(self: *anyopaque, _r: *ProcessorArchitecture) callconv(.winapi) HRESULT,
        get_ResourceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Publisher: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PublisherId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FullName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPackageIdWithMetadata = extern struct {
    vtable: *const VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Author(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageIdWithMetadata";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40577a7c-0c9e-443d-9074-855f5ce0a08d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProductId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Author: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPackageInstallingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageInstallingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97741eb7-ab7a-401a-8b61-eb0e7faff237";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IsComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackageStagingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageStagingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1041682d-54e2-4f51-b828-9ef7046c210f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IsComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackageStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e534bdf-2960-4878-97a4-9624deb72f2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const IPackageStatus = extern struct {
    vtable: *const VTable,
    pub fn VerifyIsOK(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.VerifyIsOK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNotAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NotAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackageOffline(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PackageOffline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataOffline(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DataOffline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Disabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeedsRemediation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NeedsRemediation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLicenseIssue(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LicenseIssue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModified(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Modified(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTampered(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Tampered(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDependencyIssue(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DependencyIssue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServicing(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Servicing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeploymentInProgress(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DeploymentInProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5fe74f71-a365-4c09-a02d-046d525ea1da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        VerifyIsOK: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_NotAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PackageOffline: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DataOffline: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Disabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_NeedsRemediation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_LicenseIssue: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Modified: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Tampered: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DependencyIssue: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Servicing: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DeploymentInProgress: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPackageStatus2 = extern struct {
    vtable: *const VTable,
    pub fn getIsPartiallyStaged(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPartiallyStaged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageStatus2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f428fa93-7c56-4862-acfa-abaedcc0694d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPartiallyStaged: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPackageStatusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "437d714d-bd80-4a70-bc50-f6e796509575";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const IPackageUninstallingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageUninstallingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4443aa52-ab22-44cd-82bb-4ec9b827367a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IsComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackageUpdateAvailabilityResult = extern struct {
    vtable: *const VTable,
    pub fn getAvailability(self: *@This()) core.HResult!PackageUpdateAvailability {
        var _r: PackageUpdateAvailability = undefined;
        const _c = self.vtable.get_Availability(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageUpdateAvailabilityResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "114e5009-199a-48a1-a079-313c45634a71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Availability: *const fn(self: *anyopaque, _r: *PackageUpdateAvailability) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackageUpdatingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourcePackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_SourcePackage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_TargetPackage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd7b4228-fd74-443e-b114-23e677b0e86f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SourcePackage: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_TargetPackage: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IsComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPackageWithMetadata = extern struct {
    vtable: *const VTable,
    pub fn getInstallDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_InstallDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetThumbnailToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetThumbnailToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Launch(self: *@This(), parameters: HSTRING) core.HResult!void {
        const _c = self.vtable.Launch(@ptrCast(self), parameters);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IPackageWithMetadata";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95949780-1de9-40f2-b452-0de9f1910012";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InstallDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        GetThumbnailToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        Launch: *const fn(self: *anyopaque, parameters: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISuspendingDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ISuspendingDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59140509-8bc9-4eb4-b636-dabdc4f46f66";
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
pub const ISuspendingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSuspendingOperation(self: *@This()) core.HResult!*SuspendingOperation {
        var _r: *SuspendingOperation = undefined;
        const _c = self.vtable.get_SuspendingOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ISuspendingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96061c05-2dba-4d08-b0bd-2b30a131c6aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SuspendingOperation: *const fn(self: *anyopaque, _r: **SuspendingOperation) callconv(.winapi) HRESULT,
    };
};
pub const ISuspendingOperation = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*SuspendingDeferral {
        var _r: *SuspendingDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ISuspendingOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9da4ca41-20e1-4e9b-9f65-a9f435340c3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **SuspendingDeferral) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const LeavingBackgroundEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ILeavingBackgroundEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LeavingBackgroundEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILeavingBackgroundEventArgs.GUID;
    pub const IID: Guid = ILeavingBackgroundEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILeavingBackgroundEventArgs.SIGNATURE);
};
pub const LimitedAccessFeatureRequestResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFeatureId(self: *@This()) core.HResult!HSTRING {
        const this: *ILimitedAccessFeatureRequestResult = @ptrCast(self);
        return try this.getFeatureId();
    }
    pub fn getStatus(self: *@This()) core.HResult!LimitedAccessFeatureStatus {
        const this: *ILimitedAccessFeatureRequestResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getEstimatedRemovalDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *ILimitedAccessFeatureRequestResult = @ptrCast(self);
        return try this.getEstimatedRemovalDate();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LimitedAccessFeatureRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILimitedAccessFeatureRequestResult.GUID;
    pub const IID: Guid = ILimitedAccessFeatureRequestResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILimitedAccessFeatureRequestResult.SIGNATURE);
};
pub const LimitedAccessFeatureStatus = enum(i32) {
    Unavailable = 0,
    Available = 1,
    AvailableWithoutToken = 2,
    Unknown = 3,
};
pub const LimitedAccessFeatures = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryUnlockFeature(featureId: HSTRING, token: HSTRING, attestation: HSTRING) core.HResult!*LimitedAccessFeatureRequestResult {
        const factory = @This().ILimitedAccessFeaturesStaticsCache.get();
        return try factory.TryUnlockFeature(featureId, token, attestation);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LimitedAccessFeatures";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ILimitedAccessFeaturesStaticsCache: FactoryCache(ILimitedAccessFeaturesStatics, RUNTIME_NAME) = .{};
};
pub const Package = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!*PackageId {
        const this: *IPackage = @ptrCast(self);
        return try this.getId();
    }
    pub fn getInstalledLocation(self: *@This()) core.HResult!*StorageFolder {
        const this: *IPackage = @ptrCast(self);
        return try this.getInstalledLocation();
    }
    pub fn getIsFramework(self: *@This()) core.HResult!bool {
        const this: *IPackage = @ptrCast(self);
        return try this.getIsFramework();
    }
    pub fn getDependencies(self: *@This()) core.HResult!*IVectorView(Package) {
        const this: *IPackage = @ptrCast(self);
        return try this.getDependencies();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn getPublisherDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPublisherDisplayName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getLogo(self: *@This()) core.HResult!*Uri {
        var this: ?*IPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLogo();
    }
    pub fn getIsResourcePackage(self: *@This()) core.HResult!bool {
        var this: ?*IPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsResourcePackage();
    }
    pub fn getIsBundle(self: *@This()) core.HResult!bool {
        var this: ?*IPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBundle();
    }
    pub fn getIsDevelopmentMode(self: *@This()) core.HResult!bool {
        var this: ?*IPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDevelopmentMode();
    }
    pub fn getStatus(self: *@This()) core.HResult!*PackageStatus {
        var this: ?*IPackage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn getInstalledDate(self: *@This()) core.HResult!DateTime {
        var this: ?*IPackage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInstalledDate();
    }
    pub fn GetAppListEntriesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppListEntry)) {
        var this: ?*IPackage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAppListEntriesAsync();
    }
    pub fn getInstallDate(self: *@This()) core.HResult!DateTime {
        var this: ?*IPackageWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInstallDate();
    }
    pub fn GetThumbnailToken(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackageWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailToken();
    }
    pub fn Launch(self: *@This(), parameters: HSTRING) core.HResult!void {
        var this: ?*IPackageWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Launch(parameters);
    }
    pub fn getSignatureKind(self: *@This()) core.HResult!PackageSignatureKind {
        var this: ?*IPackage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSignatureKind();
    }
    pub fn getIsOptional(self: *@This()) core.HResult!bool {
        var this: ?*IPackage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOptional();
    }
    pub fn VerifyContentIntegrityAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IPackage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.VerifyContentIntegrityAsync();
    }
    pub fn GetContentGroupsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVector(PackageContentGroup)) {
        var this: ?*IPackage5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetContentGroupsAsync();
    }
    pub fn GetContentGroupAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(PackageContentGroup) {
        var this: ?*IPackage5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetContentGroupAsync(name);
    }
    pub fn StageContentGroupsAsync(self: *@This(), names: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVector(PackageContentGroup)) {
        var this: ?*IPackage5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StageContentGroupsAsync(names);
    }
    pub fn StageContentGroupsAsync(self: *@This(), names: *IIterable(HSTRING), moveToHeadOfQueue: bool) core.HResult!*IAsyncOperation(IVector(PackageContentGroup)) {
        var this: ?*IPackage5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StageContentGroupsAsync(names, moveToHeadOfQueue);
    }
    pub fn SetInUseAsync(self: *@This(), inUse: bool) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IPackage5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetInUseAsync(inUse);
    }
    pub fn GetAppInstallerInfo(self: *@This()) core.HResult!*AppInstallerInfo {
        var this: ?*IPackage6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAppInstallerInfo();
    }
    pub fn CheckUpdateAvailabilityAsync(self: *@This()) core.HResult!*IAsyncOperation(PackageUpdateAvailabilityResult) {
        var this: ?*IPackage6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CheckUpdateAvailabilityAsync();
    }
    pub fn getMutableLocation(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IPackage7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMutableLocation();
    }
    pub fn getEffectiveLocation(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IPackage7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectiveLocation();
    }
    pub fn getEffectiveExternalLocation(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectiveExternalLocation();
    }
    pub fn getMachineExternalLocation(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMachineExternalLocation();
    }
    pub fn getUserExternalLocation(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserExternalLocation();
    }
    pub fn getInstalledPath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInstalledPath();
    }
    pub fn getMutablePath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMutablePath();
    }
    pub fn getEffectivePath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectivePath();
    }
    pub fn getEffectiveExternalPath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectiveExternalPath();
    }
    pub fn getMachineExternalPath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMachineExternalPath();
    }
    pub fn getUserExternalPath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserExternalPath();
    }
    pub fn GetLogoAsRandomAccessStreamReference(self: *@This(), size: Size) core.HResult!*RandomAccessStreamReference {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLogoAsRandomAccessStreamReference(size);
    }
    pub fn GetAppListEntries(self: *@This()) core.HResult!*IVectorView(AppListEntry) {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAppListEntries();
    }
    pub fn getIsStub(self: *@This()) core.HResult!bool {
        var this: ?*IPackage8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsStub();
    }
    pub fn FindRelatedPackages(self: *@This(), options: *FindRelatedPackagesOptions) core.HResult!*IVector(Package) {
        var this: ?*IPackage9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindRelatedPackages(options);
    }
    pub fn getSourceUriSchemeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackage9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackage9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSourceUriSchemeName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*Package {
        const factory = @This().IPackageStaticsCache.get();
        return try factory.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Package";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackage.GUID;
    pub const IID: Guid = IPackage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackage.SIGNATURE);
    var _IPackageStaticsCache: FactoryCache(IPackageStatics, RUNTIME_NAME) = .{};
};
pub const PackageCatalog = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addPackageStaging(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageStagingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.addPackageStaging(handler);
    }
    pub fn removePackageStaging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.removePackageStaging(token);
    }
    pub fn addPackageInstalling(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageInstallingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.addPackageInstalling(handler);
    }
    pub fn removePackageInstalling(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.removePackageInstalling(token);
    }
    pub fn addPackageUpdating(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.addPackageUpdating(handler);
    }
    pub fn removePackageUpdating(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.removePackageUpdating(token);
    }
    pub fn addPackageUninstalling(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageUninstallingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.addPackageUninstalling(handler);
    }
    pub fn removePackageUninstalling(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.removePackageUninstalling(token);
    }
    pub fn addPackageStatusChanged(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.addPackageStatusChanged(handler);
    }
    pub fn removePackageStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageCatalog = @ptrCast(self);
        return try this.removePackageStatusChanged(token);
    }
    pub fn addPackageContentGroupStaging(self: *@This(), handler: *TypedEventHandler(PackageCatalog,PackageContentGroupStagingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IPackageCatalog2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageCatalog2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPackageContentGroupStaging(handler);
    }
    pub fn removePackageContentGroupStaging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IPackageCatalog2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageCatalog2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePackageContentGroupStaging(token);
    }
    pub fn AddOptionalPackageAsync(self: *@This(), optionalPackageFamilyName: HSTRING) core.HResult!*IAsyncOperation(PackageCatalogAddOptionalPackageResult) {
        var this: ?*IPackageCatalog2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageCatalog2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOptionalPackageAsync(optionalPackageFamilyName);
    }
    pub fn RemoveOptionalPackagesAsync(self: *@This(), optionalPackageFamilyNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(PackageCatalogRemoveOptionalPackagesResult) {
        var this: ?*IPackageCatalog3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageCatalog3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveOptionalPackagesAsync(optionalPackageFamilyNames);
    }
    pub fn AddResourcePackageAsync(self: *@This(), resourcePackageFamilyName: HSTRING, resourceID: HSTRING, options: AddResourcePackageOptions) core.HResult!*IAsyncOperationWithProgress(PackageCatalogAddResourcePackageResult,PackageInstallProgress) {
        var this: ?*IPackageCatalog4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageCatalog4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddResourcePackageAsync(resourcePackageFamilyName, resourceID, options);
    }
    pub fn RemoveResourcePackagesAsync(self: *@This(), resourcePackages: *IIterable(Package)) core.HResult!*IAsyncOperation(PackageCatalogRemoveResourcePackagesResult) {
        var this: ?*IPackageCatalog4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageCatalog4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveResourcePackagesAsync(resourcePackages);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn OpenForCurrentPackage() core.HResult!*PackageCatalog {
        const factory = @This().IPackageCatalogStaticsCache.get();
        return try factory.OpenForCurrentPackage();
    }
    pub fn OpenForCurrentUser() core.HResult!*PackageCatalog {
        const factory = @This().IPackageCatalogStaticsCache.get();
        return try factory.OpenForCurrentUser();
    }
    pub fn OpenForPackage(package: *Package) core.HResult!*PackageCatalog {
        const factory = @This().IPackageCatalogStatics2Cache.get();
        return try factory.OpenForPackage(package);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageCatalog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageCatalog.GUID;
    pub const IID: Guid = IPackageCatalog.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageCatalog.SIGNATURE);
    var _IPackageCatalogStaticsCache: FactoryCache(IPackageCatalogStatics, RUNTIME_NAME) = .{};
    var _IPackageCatalogStatics2Cache: FactoryCache(IPackageCatalogStatics2, RUNTIME_NAME) = .{};
};
pub const PackageCatalogAddOptionalPackageResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageCatalogAddOptionalPackageResult = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IPackageCatalogAddOptionalPackageResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageCatalogAddOptionalPackageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageCatalogAddOptionalPackageResult.GUID;
    pub const IID: Guid = IPackageCatalogAddOptionalPackageResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageCatalogAddOptionalPackageResult.SIGNATURE);
};
pub const PackageCatalogAddResourcePackageResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageCatalogAddResourcePackageResult = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        const this: *IPackageCatalogAddResourcePackageResult = @ptrCast(self);
        return try this.getIsComplete();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IPackageCatalogAddResourcePackageResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageCatalogAddResourcePackageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageCatalogAddResourcePackageResult.GUID;
    pub const IID: Guid = IPackageCatalogAddResourcePackageResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageCatalogAddResourcePackageResult.SIGNATURE);
};
pub const PackageCatalogRemoveOptionalPackagesResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackagesRemoved(self: *@This()) core.HResult!*IVectorView(Package) {
        const this: *IPackageCatalogRemoveOptionalPackagesResult = @ptrCast(self);
        return try this.getPackagesRemoved();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IPackageCatalogRemoveOptionalPackagesResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageCatalogRemoveOptionalPackagesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageCatalogRemoveOptionalPackagesResult.GUID;
    pub const IID: Guid = IPackageCatalogRemoveOptionalPackagesResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageCatalogRemoveOptionalPackagesResult.SIGNATURE);
};
pub const PackageCatalogRemoveResourcePackagesResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackagesRemoved(self: *@This()) core.HResult!*IVectorView(Package) {
        const this: *IPackageCatalogRemoveResourcePackagesResult = @ptrCast(self);
        return try this.getPackagesRemoved();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IPackageCatalogRemoveResourcePackagesResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageCatalogRemoveResourcePackagesResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageCatalogRemoveResourcePackagesResult.GUID;
    pub const IID: Guid = IPackageCatalogRemoveResourcePackagesResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageCatalogRemoveResourcePackagesResult.SIGNATURE);
};
pub const PackageContentGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageContentGroup = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageContentGroup = @ptrCast(self);
        return try this.getName();
    }
    pub fn getState(self: *@This()) core.HResult!PackageContentGroupState {
        const this: *IPackageContentGroup = @ptrCast(self);
        return try this.getState();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        const this: *IPackageContentGroup = @ptrCast(self);
        return try this.getIsRequired();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getRequiredGroupName() core.HResult!HSTRING {
        const factory = @This().IPackageContentGroupStaticsCache.get();
        return try factory.getRequiredGroupName();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageContentGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageContentGroup.GUID;
    pub const IID: Guid = IPackageContentGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageContentGroup.SIGNATURE);
    var _IPackageContentGroupStaticsCache: FactoryCache(IPackageContentGroupStatics, RUNTIME_NAME) = .{};
};
pub const PackageContentGroupStagingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *IPackageContentGroupStagingEventArgs = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageContentGroupStagingEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        const this: *IPackageContentGroupStagingEventArgs = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        const this: *IPackageContentGroupStagingEventArgs = @ptrCast(self);
        return try this.getIsComplete();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IPackageContentGroupStagingEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn getContentGroupName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageContentGroupStagingEventArgs = @ptrCast(self);
        return try this.getContentGroupName();
    }
    pub fn getIsContentGroupRequired(self: *@This()) core.HResult!bool {
        const this: *IPackageContentGroupStagingEventArgs = @ptrCast(self);
        return try this.getIsContentGroupRequired();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageContentGroupStagingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageContentGroupStagingEventArgs.GUID;
    pub const IID: Guid = IPackageContentGroupStagingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageContentGroupStagingEventArgs.SIGNATURE);
};
pub const PackageContentGroupState = enum(i32) {
    NotStaged = 0,
    Queued = 1,
    Staging = 2,
    Staged = 3,
};
pub const PackageId = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageId = @ptrCast(self);
        return try this.getName();
    }
    pub fn getVersion(self: *@This()) core.HResult!PackageVersion {
        const this: *IPackageId = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn getArchitecture(self: *@This()) core.HResult!ProcessorArchitecture {
        const this: *IPackageId = @ptrCast(self);
        return try this.getArchitecture();
    }
    pub fn getResourceId(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageId = @ptrCast(self);
        return try this.getResourceId();
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageId = @ptrCast(self);
        return try this.getPublisher();
    }
    pub fn getPublisherId(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageId = @ptrCast(self);
        return try this.getPublisherId();
    }
    pub fn getFullName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageId = @ptrCast(self);
        return try this.getFullName();
    }
    pub fn getFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageId = @ptrCast(self);
        return try this.getFamilyName();
    }
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackageIdWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageIdWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProductId();
    }
    pub fn getAuthor(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPackageIdWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageIdWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAuthor();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageId.GUID;
    pub const IID: Guid = IPackageId.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageId.SIGNATURE);
};
pub const PackageInstallProgress = extern struct {
    PercentComplete: u32,
};
pub const PackageInstallingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *IPackageInstallingEventArgs = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageInstallingEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        const this: *IPackageInstallingEventArgs = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        const this: *IPackageInstallingEventArgs = @ptrCast(self);
        return try this.getIsComplete();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IPackageInstallingEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageInstallingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageInstallingEventArgs.GUID;
    pub const IID: Guid = IPackageInstallingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageInstallingEventArgs.SIGNATURE);
};
pub const PackageRelationship = enum(i32) {
    Dependencies = 0,
    Dependents = 1,
    All = 2,
};
pub const PackageSignatureKind = enum(i32) {
    None = 0,
    Developer = 1,
    Enterprise = 2,
    Store = 3,
    System = 4,
};
pub const PackageStagingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *IPackageStagingEventArgs = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageStagingEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        const this: *IPackageStagingEventArgs = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        const this: *IPackageStagingEventArgs = @ptrCast(self);
        return try this.getIsComplete();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IPackageStagingEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageStagingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageStagingEventArgs.GUID;
    pub const IID: Guid = IPackageStagingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageStagingEventArgs.SIGNATURE);
};
pub const PackageStatus = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn VerifyIsOK(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.VerifyIsOK();
    }
    pub fn getNotAvailable(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getNotAvailable();
    }
    pub fn getPackageOffline(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getPackageOffline();
    }
    pub fn getDataOffline(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getDataOffline();
    }
    pub fn getDisabled(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getDisabled();
    }
    pub fn getNeedsRemediation(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getNeedsRemediation();
    }
    pub fn getLicenseIssue(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getLicenseIssue();
    }
    pub fn getModified(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getModified();
    }
    pub fn getTampered(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getTampered();
    }
    pub fn getDependencyIssue(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getDependencyIssue();
    }
    pub fn getServicing(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getServicing();
    }
    pub fn getDeploymentInProgress(self: *@This()) core.HResult!bool {
        const this: *IPackageStatus = @ptrCast(self);
        return try this.getDeploymentInProgress();
    }
    pub fn getIsPartiallyStaged(self: *@This()) core.HResult!bool {
        var this: ?*IPackageStatus2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPackageStatus2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPartiallyStaged();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageStatus.GUID;
    pub const IID: Guid = IPackageStatus.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageStatus.SIGNATURE);
};
pub const PackageStatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageStatusChangedEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageStatusChangedEventArgs.GUID;
    pub const IID: Guid = IPackageStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageStatusChangedEventArgs.SIGNATURE);
};
pub const PackageUninstallingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *IPackageUninstallingEventArgs = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageUninstallingEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        const this: *IPackageUninstallingEventArgs = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        const this: *IPackageUninstallingEventArgs = @ptrCast(self);
        return try this.getIsComplete();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IPackageUninstallingEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageUninstallingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageUninstallingEventArgs.GUID;
    pub const IID: Guid = IPackageUninstallingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageUninstallingEventArgs.SIGNATURE);
};
pub const PackageUpdateAvailability = enum(i32) {
    Unknown = 0,
    NoUpdates = 1,
    Available = 2,
    Required = 3,
    Error = 4,
};
pub const PackageUpdateAvailabilityResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAvailability(self: *@This()) core.HResult!PackageUpdateAvailability {
        const this: *IPackageUpdateAvailabilityResult = @ptrCast(self);
        return try this.getAvailability();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IPackageUpdateAvailabilityResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageUpdateAvailabilityResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageUpdateAvailabilityResult.GUID;
    pub const IID: Guid = IPackageUpdateAvailabilityResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageUpdateAvailabilityResult.SIGNATURE);
};
pub const PackageUpdatingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivityId(self: *@This()) core.HResult!*Guid {
        const this: *IPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getSourcePackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getSourcePackage();
    }
    pub fn getTargetPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getTargetPackage();
    }
    pub fn getProgress(self: *@This()) core.HResult!f64 {
        const this: *IPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        const this: *IPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getIsComplete();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageUpdatingEventArgs.GUID;
    pub const IID: Guid = IPackageUpdatingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageUpdatingEventArgs.SIGNATURE);
};
pub const PackageVersion = extern struct {
    Major: u16,
    Minor: u16,
    Build: u16,
    Revision: u16,
};
pub const SuspendingDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *ISuspendingDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SuspendingDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISuspendingDeferral.GUID;
    pub const IID: Guid = ISuspendingDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISuspendingDeferral.SIGNATURE);
};
pub const SuspendingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSuspendingOperation(self: *@This()) core.HResult!*SuspendingOperation {
        const this: *ISuspendingEventArgs = @ptrCast(self);
        return try this.getSuspendingOperation();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SuspendingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISuspendingEventArgs.GUID;
    pub const IID: Guid = ISuspendingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISuspendingEventArgs.SIGNATURE);
};
pub const SuspendingOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*SuspendingDeferral {
        const this: *ISuspendingOperation = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *ISuspendingOperation = @ptrCast(self);
        return try this.getDeadline();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.SuspendingOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISuspendingOperation.GUID;
    pub const IID: Guid = ISuspendingOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISuspendingOperation.SIGNATURE);
};
pub const FullTrustLaunchResult = enum(i32) {
    Success = 0,
    AccessDenied = 1,
    FileNotFound = 2,
    Unknown = 3,
};
pub const FullTrustProcessLaunchResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLaunchResult(self: *@This()) core.HResult!FullTrustLaunchResult {
        const this: *IFullTrustProcessLaunchResult = @ptrCast(self);
        return try this.getLaunchResult();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IFullTrustProcessLaunchResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.FullTrustProcessLaunchResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFullTrustProcessLaunchResult.GUID;
    pub const IID: Guid = IFullTrustProcessLaunchResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFullTrustProcessLaunchResult.SIGNATURE);
};
pub const FullTrustProcessLauncher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn LaunchFullTrustProcessForCurrentAppAsync() core.HResult!*IAsyncAction {
        const factory = @This().IFullTrustProcessLauncherStaticsCache.get();
        return try factory.LaunchFullTrustProcessForCurrentAppAsync();
    }
    pub fn LaunchFullTrustProcessForCurrentAppAsync(parameterGroupId: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IFullTrustProcessLauncherStaticsCache.get();
        return try factory.LaunchFullTrustProcessForCurrentAppAsync(parameterGroupId);
    }
    pub fn LaunchFullTrustProcessForAppAsync(fullTrustPackageRelativeAppId: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IFullTrustProcessLauncherStaticsCache.get();
        return try factory.LaunchFullTrustProcessForAppAsync(fullTrustPackageRelativeAppId);
    }
    pub fn LaunchFullTrustProcessForAppAsync(fullTrustPackageRelativeAppId: HSTRING, parameterGroupId: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IFullTrustProcessLauncherStaticsCache.get();
        return try factory.LaunchFullTrustProcessForAppAsync(fullTrustPackageRelativeAppId, parameterGroupId);
    }
    pub fn LaunchFullTrustProcessForCurrentAppWithArgumentsAsync(commandLine: HSTRING) core.HResult!*IAsyncOperation(FullTrustProcessLaunchResult) {
        const factory = @This().IFullTrustProcessLauncherStatics2Cache.get();
        return try factory.LaunchFullTrustProcessForCurrentAppWithArgumentsAsync(commandLine);
    }
    pub fn LaunchFullTrustProcessForAppWithArgumentsAsync(fullTrustPackageRelativeAppId: HSTRING, commandLine: HSTRING) core.HResult!*IAsyncOperation(FullTrustProcessLaunchResult) {
        const factory = @This().IFullTrustProcessLauncherStatics2Cache.get();
        return try factory.LaunchFullTrustProcessForAppWithArgumentsAsync(fullTrustPackageRelativeAppId, commandLine);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.FullTrustProcessLauncher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IFullTrustProcessLauncherStaticsCache: FactoryCache(IFullTrustProcessLauncherStatics, RUNTIME_NAME) = .{};
    var _IFullTrustProcessLauncherStatics2Cache: FactoryCache(IFullTrustProcessLauncherStatics2, RUNTIME_NAME) = .{};
};
pub const IFullTrustProcessLaunchResult = extern struct {
    vtable: *const VTable,
    pub fn getLaunchResult(self: *@This()) core.HResult!FullTrustLaunchResult {
        var _r: FullTrustLaunchResult = undefined;
        const _c = self.vtable.get_LaunchResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IFullTrustProcessLaunchResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8917d888-edfb-515f-8e22-5ebceb69dfd9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LaunchResult: *const fn(self: *anyopaque, _r: *FullTrustLaunchResult) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IFullTrustProcessLauncherStatics = extern struct {
    vtable: *const VTable,
    pub fn LaunchFullTrustProcessForCurrentAppAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.LaunchFullTrustProcessForCurrentAppAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFullTrustProcessForCurrentAppAsync(self: *@This(), parameterGroupId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.LaunchFullTrustProcessForCurrentAppAsync(@ptrCast(self), parameterGroupId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFullTrustProcessForAppAsync(self: *@This(), fullTrustPackageRelativeAppId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.LaunchFullTrustProcessForAppAsync(@ptrCast(self), fullTrustPackageRelativeAppId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFullTrustProcessForAppAsync(self: *@This(), fullTrustPackageRelativeAppId: HSTRING, parameterGroupId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.LaunchFullTrustProcessForAppAsync(@ptrCast(self), fullTrustPackageRelativeAppId, parameterGroupId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IFullTrustProcessLauncherStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d784837f-1100-3c6b-a455-f6262cc331b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LaunchFullTrustProcessForCurrentAppAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        LaunchFullTrustProcessForCurrentAppAsync: *const fn(self: *anyopaque, parameterGroupId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        LaunchFullTrustProcessForAppAsync: *const fn(self: *anyopaque, fullTrustPackageRelativeAppId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        LaunchFullTrustProcessForAppAsync: *const fn(self: *anyopaque, fullTrustPackageRelativeAppId: HSTRING, parameterGroupId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IFullTrustProcessLauncherStatics2 = extern struct {
    vtable: *const VTable,
    pub fn LaunchFullTrustProcessForCurrentAppWithArgumentsAsync(self: *@This(), commandLine: HSTRING) core.HResult!*IAsyncOperation(FullTrustProcessLaunchResult) {
        var _r: *IAsyncOperation(FullTrustProcessLaunchResult) = undefined;
        const _c = self.vtable.LaunchFullTrustProcessForCurrentAppWithArgumentsAsync(@ptrCast(self), commandLine, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchFullTrustProcessForAppWithArgumentsAsync(self: *@This(), fullTrustPackageRelativeAppId: HSTRING, commandLine: HSTRING) core.HResult!*IAsyncOperation(FullTrustProcessLaunchResult) {
        var _r: *IAsyncOperation(FullTrustProcessLaunchResult) = undefined;
        const _c = self.vtable.LaunchFullTrustProcessForAppWithArgumentsAsync(@ptrCast(self), fullTrustPackageRelativeAppId, commandLine, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.IFullTrustProcessLauncherStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b8ed72f-b65c-56cf-a1a7-2bf77cbc6ea8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LaunchFullTrustProcessForCurrentAppWithArgumentsAsync: *const fn(self: *anyopaque, commandLine: HSTRING, _r: **IAsyncOperation(FullTrustProcessLaunchResult)) callconv(.winapi) HRESULT,
        LaunchFullTrustProcessForAppWithArgumentsAsync: *const fn(self: *anyopaque, fullTrustPackageRelativeAppId: HSTRING, commandLine: HSTRING, _r: **IAsyncOperation(FullTrustProcessLaunchResult)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("./root.zig").IUnknown;
const Guid = @import("./root.zig").Guid;
const RandomAccessStreamReference = @import("./Storage/Streams.zig").RandomAccessStreamReference;
const Deferral = @import("./Foundation.zig").Deferral;
const AppListEntry = @import("./Core.zig").AppListEntry;
const IVector = @import("./Foundation/Collections.zig").IVector;
const Size = @import("./Foundation.zig").Size;
const IAsyncOperationWithProgress = @import("./Foundation.zig").IAsyncOperationWithProgress;
const IIterable = @import("./Foundation/Collections.zig").IIterable;
const IInspectable = @import("./Foundation.zig").IInspectable;
const Uri = @import("./Foundation.zig").Uri;
const HRESULT = @import("./root.zig").HRESULT;
const EventRegistrationToken = @import("./Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("./Foundation.zig").IAsyncAction;
const IVectorView = @import("./Foundation/Collections.zig").IVectorView;
const IReference = @import("./Foundation.zig").IReference;
const DateTime = @import("./Foundation.zig").DateTime;
const FactoryCache = @import("./core.zig").FactoryCache;
const TrustLevel = @import("./root.zig").TrustLevel;
const TypedEventHandler = @import("./Foundation.zig").TypedEventHandler;
const ProcessorArchitecture = @import("./System.zig").ProcessorArchitecture;
const HSTRING = @import("./root.zig").HSTRING;
const HResult = @import("./Foundation.zig").HResult;
const IAsyncOperation = @import("./Foundation.zig").IAsyncOperation;
const core = @import("./root.zig").core;
const IActivatedEventArgs = @import("./Activation.zig").IActivatedEventArgs;
const User = @import("./System.zig").User;
const StorageFolder = @import("./Storage.zig").StorageFolder;
pub const Activation = @import("./ApplicationModel/Activation.zig");
pub const AppExtensions = @import("./ApplicationModel/AppExtensions.zig");
pub const Appointments = @import("./ApplicationModel/Appointments.zig");
pub const AppService = @import("./ApplicationModel/AppService.zig");
pub const Background = @import("./ApplicationModel/Background.zig");
pub const Calls = @import("./ApplicationModel/Calls.zig");
pub const Chat = @import("./ApplicationModel/Chat.zig");
pub const CommunicationBlocking = @import("./ApplicationModel/CommunicationBlocking.zig");
pub const Contacts = @import("./ApplicationModel/Contacts.zig");
pub const ConversationalAgent = @import("./ApplicationModel/ConversationalAgent.zig");
pub const Core = @import("./ApplicationModel/Core.zig");
pub const DataTransfer = @import("./ApplicationModel/DataTransfer.zig");
pub const Email = @import("./ApplicationModel/Email.zig");
pub const ExtendedExecution = @import("./ApplicationModel/ExtendedExecution.zig");
pub const Holographic = @import("./ApplicationModel/Holographic.zig");
pub const LockScreen = @import("./ApplicationModel/LockScreen.zig");
pub const PackageExtensions = @import("./ApplicationModel/PackageExtensions.zig");
pub const Payments = @import("./ApplicationModel/Payments.zig");
pub const Resources = @import("./ApplicationModel/Resources.zig");
pub const Search = @import("./ApplicationModel/Search.zig");
pub const SocialInfo = @import("./ApplicationModel/SocialInfo.zig");
pub const Store = @import("./ApplicationModel/Store.zig");
pub const UserActivities = @import("./ApplicationModel/UserActivities.zig");
pub const UserDataAccounts = @import("./ApplicationModel/UserDataAccounts.zig");
pub const UserDataTasks = @import("./ApplicationModel/UserDataTasks.zig");
pub const VoiceCommands = @import("./ApplicationModel/VoiceCommands.zig");
pub const Wallet = @import("./ApplicationModel/Wallet.zig");
