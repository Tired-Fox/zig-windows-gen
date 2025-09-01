pub const AgentProvisioningProgressReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!DeploymentAgentProgressState {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.getState();
    }
    pub fn putState(self: *@This(), value: DeploymentAgentProgressState) core.HResult!void {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getProgressPercentage(self: *@This()) core.HResult!f64 {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.getProgressPercentage();
    }
    pub fn putProgressPercentage(self: *@This(), value: f64) core.HResult!void {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.putProgressPercentage(value);
    }
    pub fn getEstimatedTimeRemaining(self: *@This()) core.HResult!TimeSpan {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.getEstimatedTimeRemaining();
    }
    pub fn putEstimatedTimeRemaining(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.putEstimatedTimeRemaining(value);
    }
    pub fn getDisplayProgress(self: *@This()) core.HResult!HSTRING {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.getDisplayProgress();
    }
    pub fn putDisplayProgress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.putDisplayProgress(value);
    }
    pub fn getDisplayProgressSecondary(self: *@This()) core.HResult!HSTRING {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.getDisplayProgressSecondary();
    }
    pub fn putDisplayProgressSecondary(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.putDisplayProgressSecondary(value);
    }
    pub fn getBatches(self: *@This()) core.HResult!*IVector(DeploymentWorkloadBatch) {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.getBatches();
    }
    pub fn getCurrentBatchIndex(self: *@This()) core.HResult!u32 {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.getCurrentBatchIndex();
    }
    pub fn putCurrentBatchIndex(self: *@This(), value: u32) core.HResult!void {
        const this: *IAgentProvisioningProgressReport = @ptrCast(self);
        return try this.putCurrentBatchIndex(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAgentProvisioningProgressReport.IID)));
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.AgentProvisioningProgressReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAgentProvisioningProgressReport.GUID;
    pub const IID: Guid = IAgentProvisioningProgressReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAgentProvisioningProgressReport.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DeploymentAgentProgressState = enum(i32) {
    NotStarted = 0,
    Initializing = 1,
    InProgress = 2,
    Completed = 3,
    ErrorOccurred = 4,
    RebootRequired = 5,
    Canceled = 6,
};
pub const DeploymentSessionConnectionChange = enum(i32) {
    NoChange = 0,
    HostConnectionLost = 1,
    HostConnectionRestored = 2,
    AgentConnectionLost = 3,
    AgentConnectionRestored = 4,
    InternetConnectionLost = 5,
    InternetConnectionRestored = 6,
};
pub const DeploymentSessionConnectionChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentSessionConnectionChangedEventArgs = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn getChange(self: *@This()) core.HResult!DeploymentSessionConnectionChange {
        const this: *IDeploymentSessionConnectionChangedEventArgs = @ptrCast(self);
        return try this.getChange();
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.DeploymentSessionConnectionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeploymentSessionConnectionChangedEventArgs.GUID;
    pub const IID: Guid = IDeploymentSessionConnectionChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeploymentSessionConnectionChangedEventArgs.SIGNATURE);
};
pub const DeploymentSessionHeartbeatRequested = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, eventArgs: *DeploymentSessionHeartbeatRequestedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, eventArgs: *DeploymentSessionHeartbeatRequestedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, eventArgs: *DeploymentSessionHeartbeatRequestedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, eventArgs);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.DeploymentSessionHeartbeatRequested";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c94a770b-5b05-4595-9e69-79070484377e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, eventArgs: *DeploymentSessionHeartbeatRequestedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DeploymentSessionHeartbeatRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IDeploymentSessionHeartbeatRequestedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDeploymentSessionHeartbeatRequestedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.DeploymentSessionHeartbeatRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeploymentSessionHeartbeatRequestedEventArgs.GUID;
    pub const IID: Guid = IDeploymentSessionHeartbeatRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeploymentSessionHeartbeatRequestedEventArgs.SIGNATURE);
};
pub const DeploymentSessionStateChange = enum(i32) {
    NoChange = 0,
    CancelRequestedByUser = 1,
    RetryRequestedByUser = 2,
};
pub const DeploymentSessionStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentSessionStateChangedEventArgs = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn getChange(self: *@This()) core.HResult!DeploymentSessionStateChange {
        const this: *IDeploymentSessionStateChangedEventArgs = @ptrCast(self);
        return try this.getChange();
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.DeploymentSessionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeploymentSessionStateChangedEventArgs.GUID;
    pub const IID: Guid = IDeploymentSessionStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeploymentSessionStateChangedEventArgs.SIGNATURE);
};
pub const DeploymentWorkload = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getDisplayFriendlyName();
    }
    pub fn putDisplayFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.putDisplayFriendlyName(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn putStartTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.putStartTime(value);
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getEndTime();
    }
    pub fn putEndTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.putEndTime(value);
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn putErrorCode(self: *@This(), value: u32) core.HResult!void {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.putErrorCode(value);
    }
    pub fn getErrorMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getErrorMessage();
    }
    pub fn putErrorMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.putErrorMessage(value);
    }
    pub fn getPossibleCause(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getPossibleCause();
    }
    pub fn putPossibleCause(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.putPossibleCause(value);
    }
    pub fn getPossibleResolution(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getPossibleResolution();
    }
    pub fn putPossibleResolution(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.putPossibleResolution(value);
    }
    pub fn getState(self: *@This()) core.HResult!DeploymentWorkloadState {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getState();
    }
    pub fn putState(self: *@This(), value: DeploymentWorkloadState) core.HResult!void {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getStateDetails(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.getStateDetails();
    }
    pub fn putStateDetails(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeploymentWorkload = @ptrCast(self);
        return try this.putStateDetails(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(id: HSTRING) core.HResult!*DeploymentWorkload {
        const _f = @This().IDeploymentWorkloadFactoryCache.get();
        return try _f.CreateInstance(id);
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.DeploymentWorkload";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeploymentWorkload.GUID;
    pub const IID: Guid = IDeploymentWorkload.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeploymentWorkload.SIGNATURE);
    var _IDeploymentWorkloadFactoryCache: FactoryCache(IDeploymentWorkloadFactory, RUNTIME_NAME) = .{};
};
pub const DeploymentWorkloadBatch = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IDeploymentWorkloadBatch = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayCategoryTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IDeploymentWorkloadBatch = @ptrCast(self);
        return try this.getDisplayCategoryTitle();
    }
    pub fn putDisplayCategoryTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeploymentWorkloadBatch = @ptrCast(self);
        return try this.putDisplayCategoryTitle(value);
    }
    pub fn getBatchWorkloads(self: *@This()) core.HResult!*IVector(DeploymentWorkload) {
        const this: *IDeploymentWorkloadBatch = @ptrCast(self);
        return try this.getBatchWorkloads();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(id: u32) core.HResult!*DeploymentWorkloadBatch {
        const _f = @This().IDeploymentWorkloadBatchFactoryCache.get();
        return try _f.CreateInstance(id);
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.DeploymentWorkloadBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeploymentWorkloadBatch.GUID;
    pub const IID: Guid = IDeploymentWorkloadBatch.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeploymentWorkloadBatch.SIGNATURE);
    var _IDeploymentWorkloadBatchFactoryCache: FactoryCache(IDeploymentWorkloadBatchFactory, RUNTIME_NAME) = .{};
};
pub const DeploymentWorkloadState = enum(i32) {
    NotStarted = 0,
    InProgress = 1,
    Completed = 2,
    Failed = 3,
    Canceled = 4,
    Skipped = 5,
    Uninstalled = 6,
    RebootRequired = 7,
};
pub const DevicePreparationExecutionContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        const this: *IDevicePreparationExecutionContext = @ptrCast(self);
        return try this.getContext();
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.DevicePreparationExecutionContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePreparationExecutionContext.GUID;
    pub const IID: Guid = IDevicePreparationExecutionContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePreparationExecutionContext.SIGNATURE);
};
pub const IAgentProvisioningProgressReport = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!DeploymentAgentProgressState {
        var _r: DeploymentAgentProgressState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putState(self: *@This(), value: DeploymentAgentProgressState) core.HResult!void {
        const _c = self.vtable.put_State(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProgressPercentage(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ProgressPercentage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProgressPercentage(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ProgressPercentage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEstimatedTimeRemaining(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_EstimatedTimeRemaining(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEstimatedTimeRemaining(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_EstimatedTimeRemaining(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayProgress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayProgress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayProgress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayProgressSecondary(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayProgressSecondary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayProgressSecondary(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayProgressSecondary(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBatches(self: *@This()) core.HResult!*IVector(DeploymentWorkloadBatch) {
        var _r: *IVector(DeploymentWorkloadBatch) = undefined;
        const _c = self.vtable.get_Batches(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentBatchIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CurrentBatchIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurrentBatchIndex(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CurrentBatchIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IAgentProvisioningProgressReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5097398a-70cc-5181-a7af-d31c167323d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *DeploymentAgentProgressState) callconv(.winapi) HRESULT,
        put_State: *const fn(self: *anyopaque, value: DeploymentAgentProgressState) callconv(.winapi) HRESULT,
        get_ProgressPercentage: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ProgressPercentage: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_EstimatedTimeRemaining: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_EstimatedTimeRemaining: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_DisplayProgress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayProgress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayProgressSecondary: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayProgressSecondary: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Batches: *const fn(self: *anyopaque, _r: **IVector(DeploymentWorkloadBatch)) callconv(.winapi) HRESULT,
        get_CurrentBatchIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CurrentBatchIndex: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IDeploymentSessionConnectionChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChange(self: *@This()) core.HResult!DeploymentSessionConnectionChange {
        var _r: DeploymentSessionConnectionChange = undefined;
        const _c = self.vtable.get_Change(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IDeploymentSessionConnectionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d40c631-6e4b-5d59-92f8-0de54c2a3c6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Change: *const fn(self: *anyopaque, _r: *DeploymentSessionConnectionChange) callconv(.winapi) HRESULT,
    };
};
pub const IDeploymentSessionHeartbeatRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IDeploymentSessionHeartbeatRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09d81fa0-1036-58e6-b63b-fe343c45005f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDeploymentSessionStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChange(self: *@This()) core.HResult!DeploymentSessionStateChange {
        var _r: DeploymentSessionStateChange = undefined;
        const _c = self.vtable.get_Change(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IDeploymentSessionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbd3b7f3-88cb-5703-b8a5-0218de8fed81";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Change: *const fn(self: *anyopaque, _r: *DeploymentSessionStateChange) callconv(.winapi) HRESULT,
    };
};
pub const IDeploymentWorkload = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayFriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayFriendlyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_EndTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_EndTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putErrorCode(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ErrorCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getErrorMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ErrorMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putErrorMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ErrorMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPossibleCause(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PossibleCause(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPossibleCause(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PossibleCause(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPossibleResolution(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PossibleResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPossibleResolution(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PossibleResolution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!DeploymentWorkloadState {
        var _r: DeploymentWorkloadState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putState(self: *@This(), value: DeploymentWorkloadState) core.HResult!void {
        const _c = self.vtable.put_State(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStateDetails(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StateDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStateDetails(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_StateDetails(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IDeploymentWorkload";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1cefd3d4-456c-50d1-9312-cc5c818fc12e";
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
        get_DisplayFriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayFriendlyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_EndTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_EndTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ErrorCode: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ErrorMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ErrorMessage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PossibleCause: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PossibleCause: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PossibleResolution: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PossibleResolution: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *DeploymentWorkloadState) callconv(.winapi) HRESULT,
        put_State: *const fn(self: *anyopaque, value: DeploymentWorkloadState) callconv(.winapi) HRESULT,
        get_StateDetails: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_StateDetails: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDeploymentWorkloadBatch = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayCategoryTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayCategoryTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayCategoryTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayCategoryTitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBatchWorkloads(self: *@This()) core.HResult!*IVector(DeploymentWorkload) {
        var _r: *IVector(DeploymentWorkload) = undefined;
        const _c = self.vtable.get_BatchWorkloads(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IDeploymentWorkloadBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e56e3df-b9c0-5fee-ba3f-e89d800a9bf2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DisplayCategoryTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayCategoryTitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_BatchWorkloads: *const fn(self: *anyopaque, _r: **IVector(DeploymentWorkload)) callconv(.winapi) HRESULT,
    };
};
pub const IDeploymentWorkloadBatchFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), id: u32) core.HResult!*DeploymentWorkloadBatch {
        var _r: *DeploymentWorkloadBatch = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IDeploymentWorkloadBatchFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0209697-9560-5a05-bdf6-f1af535cb0d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, id: u32, _r: **DeploymentWorkloadBatch) callconv(.winapi) HRESULT,
    };
};
pub const IDeploymentWorkloadFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), id: HSTRING) core.HResult!*DeploymentWorkload {
        var _r: *DeploymentWorkload = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IDeploymentWorkloadFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41426c72-22a3-5339-bdf1-51268169aa61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, id: HSTRING, _r: **DeploymentWorkload) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePreparationExecutionContext = extern struct {
    vtable: *const VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IDevicePreparationExecutionContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "084f221b-2484-5e81-a4e7-83f6caf19dc4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMachineProvisioningProgressReporter = extern struct {
    vtable: *const VTable,
    pub fn getSessionId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionConnection(self: *@This()) core.HResult!DeploymentSessionConnectionChange {
        var _r: DeploymentSessionConnectionChange = undefined;
        const _c = self.vtable.get_SessionConnection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionState(self: *@This()) core.HResult!DeploymentSessionStateChange {
        var _r: DeploymentSessionStateChange = undefined;
        const _c = self.vtable.get_SessionState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSessionStateChanged(self: *@This(), handler: *TypedEventHandler(MachineProvisioningProgressReporter,DeploymentSessionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SessionStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSessionStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SessionStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSessionConnectionChanged(self: *@This(), handler: *TypedEventHandler(MachineProvisioningProgressReporter,DeploymentSessionConnectionChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SessionConnectionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSessionConnectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SessionConnectionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportProgress(self: *@This(), updateReport: *AgentProvisioningProgressReport) core.HResult!void {
        const _c = self.vtable.ReportProgress(@ptrCast(self), updateReport);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDevicePreparationExecutionContextAsync(self: *@This()) core.HResult!*IAsyncOperation(DevicePreparationExecutionContext) {
        var _r: *IAsyncOperation(DevicePreparationExecutionContext) = undefined;
        const _c = self.vtable.GetDevicePreparationExecutionContextAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IMachineProvisioningProgressReporter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ebd8677f-dfd2-59da-ac3d-753ee1667cbb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SessionConnection: *const fn(self: *anyopaque, _r: *DeploymentSessionConnectionChange) callconv(.winapi) HRESULT,
        get_SessionState: *const fn(self: *anyopaque, _r: *DeploymentSessionStateChange) callconv(.winapi) HRESULT,
        add_SessionStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MachineProvisioningProgressReporter,DeploymentSessionStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SessionStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SessionConnectionChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MachineProvisioningProgressReporter,DeploymentSessionConnectionChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SessionConnectionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        ReportProgress: *const fn(self: *anyopaque, updateReport: *AgentProvisioningProgressReport) callconv(.winapi) HRESULT,
        GetDevicePreparationExecutionContextAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DevicePreparationExecutionContext)) callconv(.winapi) HRESULT,
    };
};
pub const IMachineProvisioningProgressReporterStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForLaunchUri(self: *@This(), launchUri: *Uri, heartbeatHandler: *DeploymentSessionHeartbeatRequested) core.HResult!*MachineProvisioningProgressReporter {
        var _r: *MachineProvisioningProgressReporter = undefined;
        const _c = self.vtable.GetForLaunchUri(@ptrCast(self), launchUri, heartbeatHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.IMachineProvisioningProgressReporterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77682c17-5da3-51fc-a042-c7b53458ddb5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForLaunchUri: *const fn(self: *anyopaque, launchUri: *Uri, heartbeatHandler: *DeploymentSessionHeartbeatRequested, _r: **MachineProvisioningProgressReporter) callconv(.winapi) HRESULT,
    };
};
pub const MachineProvisioningProgressReporter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionId(self: *@This()) core.HResult!*Guid {
        const this: *IMachineProvisioningProgressReporter = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn getSessionConnection(self: *@This()) core.HResult!DeploymentSessionConnectionChange {
        const this: *IMachineProvisioningProgressReporter = @ptrCast(self);
        return try this.getSessionConnection();
    }
    pub fn getSessionState(self: *@This()) core.HResult!DeploymentSessionStateChange {
        const this: *IMachineProvisioningProgressReporter = @ptrCast(self);
        return try this.getSessionState();
    }
    pub fn addSessionStateChanged(self: *@This(), handler: *TypedEventHandler(MachineProvisioningProgressReporter,DeploymentSessionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMachineProvisioningProgressReporter = @ptrCast(self);
        return try this.addSessionStateChanged(handler);
    }
    pub fn removeSessionStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMachineProvisioningProgressReporter = @ptrCast(self);
        return try this.removeSessionStateChanged(token);
    }
    pub fn addSessionConnectionChanged(self: *@This(), handler: *TypedEventHandler(MachineProvisioningProgressReporter,DeploymentSessionConnectionChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMachineProvisioningProgressReporter = @ptrCast(self);
        return try this.addSessionConnectionChanged(handler);
    }
    pub fn removeSessionConnectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMachineProvisioningProgressReporter = @ptrCast(self);
        return try this.removeSessionConnectionChanged(token);
    }
    pub fn ReportProgress(self: *@This(), updateReport: *AgentProvisioningProgressReport) core.HResult!void {
        const this: *IMachineProvisioningProgressReporter = @ptrCast(self);
        return try this.ReportProgress(updateReport);
    }
    pub fn GetDevicePreparationExecutionContextAsync(self: *@This()) core.HResult!*IAsyncOperation(DevicePreparationExecutionContext) {
        const this: *IMachineProvisioningProgressReporter = @ptrCast(self);
        return try this.GetDevicePreparationExecutionContextAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForLaunchUri(launchUri: *Uri, heartbeatHandler: *DeploymentSessionHeartbeatRequested) core.HResult!*MachineProvisioningProgressReporter {
        const _f = @This().IMachineProvisioningProgressReporterStaticsCache.get();
        return try _f.GetForLaunchUri(launchUri, heartbeatHandler);
    }
    pub const NAME: []const u8 = "Windows.Management.Setup.MachineProvisioningProgressReporter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMachineProvisioningProgressReporter.GUID;
    pub const IID: Guid = IMachineProvisioningProgressReporter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMachineProvisioningProgressReporter.SIGNATURE);
    var _IMachineProvisioningProgressReporterStaticsCache: FactoryCache(IMachineProvisioningProgressReporterStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVector = @import("../Foundation/Collections.zig").IVector;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IAgileObject = @import("../root.zig").IAgileObject;
const IReference = @import("../Foundation.zig").IReference;
const Uri = @import("../Foundation.zig").Uri;
const DateTime = @import("../Foundation.zig").DateTime;
const HRESULT = @import("../root.zig").HRESULT;
const FactoryCache = @import("../core.zig").FactoryCache;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
