pub const ISystemUpdateItem = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!SystemUpdateItemState {
        var _r: SystemUpdateItemState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRevision(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Revision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDownloadProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DownloadProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstallProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_InstallProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Update.ISystemUpdateItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "779740eb-5624-519e-a8e2-09e9173b3fb7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *SystemUpdateItemState) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Revision: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DownloadProgress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_InstallProgress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const ISystemUpdateLastErrorInfo = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!SystemUpdateManagerState {
        var _r: SystemUpdateManagerState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInteractive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInteractive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Update.ISystemUpdateLastErrorInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ee887f7-8a44-5b6e-bd07-7aece4116ea9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *SystemUpdateManagerState) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_IsInteractive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISystemUpdateManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!SystemUpdateManagerState {
        var _r: SystemUpdateManagerState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStateChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDownloadProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DownloadProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstallProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_InstallProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserActiveHoursStart(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_UserActiveHoursStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserActiveHoursEnd(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_UserActiveHoursEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserActiveHoursMax(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_UserActiveHoursMax(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetUserActiveHours(self: *@This(), start: TimeSpan, end: TimeSpan) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetUserActiveHours(@ptrCast(self), start, end, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastUpdateCheckTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastUpdateCheckTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastUpdateInstallTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastUpdateInstallTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastErrorInfo(self: *@This()) core.HResult!*SystemUpdateLastErrorInfo {
        var _r: *SystemUpdateLastErrorInfo = undefined;
        const _c = self.vtable.get_LastErrorInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAutomaticRebootBlockIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.GetAutomaticRebootBlockIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BlockAutomaticRebootAsync(self: *@This(), lockId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.BlockAutomaticRebootAsync(@ptrCast(self), lockId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnblockAutomaticRebootAsync(self: *@This(), lockId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.UnblockAutomaticRebootAsync(@ptrCast(self), lockId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUpdateItems(self: *@This()) core.HResult!*IVectorView(SystemUpdateItem) {
        var _r: *IVectorView(SystemUpdateItem) = undefined;
        const _c = self.vtable.GetUpdateItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttentionRequiredReason(self: *@This()) core.HResult!SystemUpdateAttentionRequiredReason {
        var _r: SystemUpdateAttentionRequiredReason = undefined;
        const _c = self.vtable.get_AttentionRequiredReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetFlightRing(self: *@This(), flightRing: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.SetFlightRing(@ptrCast(self), flightRing, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFlightRing(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetFlightRing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartInstall(self: *@This(), action: SystemUpdateStartInstallAction) core.HResult!void {
        const _c = self.vtable.StartInstall(@ptrCast(self), action);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RebootToCompleteInstall(self: *@This()) core.HResult!void {
        const _c = self.vtable.RebootToCompleteInstall(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartCancelUpdates(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartCancelUpdates(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Update.ISystemUpdateManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2d3fcef-2971-51be-b41a-8bd703bb701a";
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
        get_State: *const fn(self: *anyopaque, _r: *SystemUpdateManagerState) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_DownloadProgress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_InstallProgress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_UserActiveHoursStart: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_UserActiveHoursEnd: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_UserActiveHoursMax: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        TrySetUserActiveHours: *const fn(self: *anyopaque, start: TimeSpan, end: TimeSpan, _r: *bool) callconv(.winapi) HRESULT,
        get_LastUpdateCheckTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_LastUpdateInstallTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_LastErrorInfo: *const fn(self: *anyopaque, _r: **SystemUpdateLastErrorInfo) callconv(.winapi) HRESULT,
        GetAutomaticRebootBlockIds: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        BlockAutomaticRebootAsync: *const fn(self: *anyopaque, lockId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        UnblockAutomaticRebootAsync: *const fn(self: *anyopaque, lockId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        GetUpdateItems: *const fn(self: *anyopaque, _r: **IVectorView(SystemUpdateItem)) callconv(.winapi) HRESULT,
        get_AttentionRequiredReason: *const fn(self: *anyopaque, _r: *SystemUpdateAttentionRequiredReason) callconv(.winapi) HRESULT,
        SetFlightRing: *const fn(self: *anyopaque, flightRing: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        GetFlightRing: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        StartInstall: *const fn(self: *anyopaque, action: SystemUpdateStartInstallAction) callconv(.winapi) HRESULT,
        RebootToCompleteInstall: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartCancelUpdates: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const SystemUpdateAttentionRequiredReason = enum(i32) {
    None = 0,
    NetworkRequired = 1,
    InsufficientDiskSpace = 2,
    InsufficientBattery = 3,
    UpdateBlocked = 4,
};
pub const SystemUpdateItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!SystemUpdateItemState {
        const this: *ISystemUpdateItem = @ptrCast(self);
        return try this.getState();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemUpdateItem = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemUpdateItem = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemUpdateItem = @ptrCast(self);
        return try this.getId();
    }
    pub fn getRevision(self: *@This()) core.HResult!u32 {
        const this: *ISystemUpdateItem = @ptrCast(self);
        return try this.getRevision();
    }
    pub fn getDownloadProgress(self: *@This()) core.HResult!f64 {
        const this: *ISystemUpdateItem = @ptrCast(self);
        return try this.getDownloadProgress();
    }
    pub fn getInstallProgress(self: *@This()) core.HResult!f64 {
        const this: *ISystemUpdateItem = @ptrCast(self);
        return try this.getInstallProgress();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *ISystemUpdateItem = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.System.Update.SystemUpdateItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemUpdateItem.GUID;
    pub const IID: Guid = ISystemUpdateItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemUpdateItem.SIGNATURE);
};
pub const SystemUpdateItemState = enum(i32) {
    NotStarted = 0,
    Initializing = 1,
    Preparing = 2,
    Calculating = 3,
    Downloading = 4,
    Installing = 5,
    Completed = 6,
    RebootRequired = 7,
    Error = 8,
};
pub const SystemUpdateLastErrorInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!SystemUpdateManagerState {
        const this: *ISystemUpdateLastErrorInfo = @ptrCast(self);
        return try this.getState();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *ISystemUpdateLastErrorInfo = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getIsInteractive(self: *@This()) core.HResult!bool {
        const this: *ISystemUpdateLastErrorInfo = @ptrCast(self);
        return try this.getIsInteractive();
    }
    pub const NAME: []const u8 = "Windows.System.Update.SystemUpdateLastErrorInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemUpdateLastErrorInfo.GUID;
    pub const IID: Guid = ISystemUpdateLastErrorInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemUpdateLastErrorInfo.SIGNATURE);
};
pub const SystemUpdateManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupported() core.HResult!bool {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.IsSupported();
    }
    pub fn getState() core.HResult!SystemUpdateManagerState {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getState();
    }
    pub fn addStateChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.addStateChanged(handler);
    }
    pub fn removeStateChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.removeStateChanged(token);
    }
    pub fn getDownloadProgress() core.HResult!f64 {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getDownloadProgress();
    }
    pub fn getInstallProgress() core.HResult!f64 {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getInstallProgress();
    }
    pub fn getUserActiveHoursStart() core.HResult!TimeSpan {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getUserActiveHoursStart();
    }
    pub fn getUserActiveHoursEnd() core.HResult!TimeSpan {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getUserActiveHoursEnd();
    }
    pub fn getUserActiveHoursMax() core.HResult!i32 {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getUserActiveHoursMax();
    }
    pub fn TrySetUserActiveHours(start: TimeSpan, end: TimeSpan) core.HResult!bool {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.TrySetUserActiveHours(start, end);
    }
    pub fn getLastUpdateCheckTime() core.HResult!DateTime {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getLastUpdateCheckTime();
    }
    pub fn getLastUpdateInstallTime() core.HResult!DateTime {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getLastUpdateInstallTime();
    }
    pub fn getLastErrorInfo() core.HResult!*SystemUpdateLastErrorInfo {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getLastErrorInfo();
    }
    pub fn GetAutomaticRebootBlockIds() core.HResult!*IVectorView(HSTRING) {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.GetAutomaticRebootBlockIds();
    }
    pub fn BlockAutomaticRebootAsync(lockId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.BlockAutomaticRebootAsync(lockId);
    }
    pub fn UnblockAutomaticRebootAsync(lockId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.UnblockAutomaticRebootAsync(lockId);
    }
    pub fn getExtendedError() core.HResult!HResult {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getExtendedError();
    }
    pub fn GetUpdateItems() core.HResult!*IVectorView(SystemUpdateItem) {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.GetUpdateItems();
    }
    pub fn getAttentionRequiredReason() core.HResult!SystemUpdateAttentionRequiredReason {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.getAttentionRequiredReason();
    }
    pub fn SetFlightRing(flightRing: HSTRING) core.HResult!bool {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.SetFlightRing(flightRing);
    }
    pub fn GetFlightRing() core.HResult!HSTRING {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.GetFlightRing();
    }
    pub fn StartInstall(action: SystemUpdateStartInstallAction) core.HResult!void {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.StartInstall(action);
    }
    pub fn RebootToCompleteInstall() core.HResult!void {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.RebootToCompleteInstall();
    }
    pub fn StartCancelUpdates() core.HResult!void {
        const _f = @This().ISystemUpdateManagerStaticsCache.get();
        return try _f.StartCancelUpdates();
    }
    pub const NAME: []const u8 = "Windows.System.Update.SystemUpdateManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISystemUpdateManagerStaticsCache: FactoryCache(ISystemUpdateManagerStatics, RUNTIME_NAME) = .{};
};
pub const SystemUpdateManagerState = enum(i32) {
    Idle = 0,
    Detecting = 1,
    ReadyToDownload = 2,
    Downloading = 3,
    ReadyToInstall = 4,
    Installing = 5,
    RebootRequired = 6,
    ReadyToFinalize = 7,
    Finalizing = 8,
    Completed = 9,
    AttentionRequired = 10,
    Error = 11,
};
pub const SystemUpdateStartInstallAction = enum(i32) {
    UpToReboot = 0,
    AllowReboot = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const DateTime = @import("../Foundation.zig").DateTime;
const HResult = @import("../Foundation.zig").HResult;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HSTRING = @import("../root.zig").HSTRING;
