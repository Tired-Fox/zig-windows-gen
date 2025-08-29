pub const IUserDataTask = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompletedDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_CompletedDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompletedDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_CompletedDate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDetails(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Details(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDetails(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Details(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDetailsKind(self: *@This()) core.HResult!UserDataTaskDetailsKind {
        var _r: UserDataTaskDetailsKind = undefined;
        const _c = self.vtable.get_DetailsKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDetailsKind(self: *@This(), value: UserDataTaskDetailsKind) core.HResult!void {
        const _c = self.vtable.put_DetailsKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDueDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_DueDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDueDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_DueDate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKind(self: *@This()) core.HResult!UserDataTaskKind {
        var _r: UserDataTaskKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPriority(self: *@This()) core.HResult!UserDataTaskPriority {
        var _r: UserDataTaskPriority = undefined;
        const _c = self.vtable.get_Priority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPriority(self: *@This(), value: UserDataTaskPriority) core.HResult!void {
        const _c = self.vtable.put_Priority(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRecurrenceProperties(self: *@This()) core.HResult!*UserDataTaskRecurrenceProperties {
        var _r: *UserDataTaskRecurrenceProperties = undefined;
        const _c = self.vtable.get_RecurrenceProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRecurrenceProperties(self: *@This(), value: *UserDataTaskRecurrenceProperties) core.HResult!void {
        const _c = self.vtable.put_RecurrenceProperties(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRegenerationProperties(self: *@This()) core.HResult!*UserDataTaskRegenerationProperties {
        var _r: *UserDataTaskRegenerationProperties = undefined;
        const _c = self.vtable.get_RegenerationProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRegenerationProperties(self: *@This(), value: *UserDataTaskRegenerationProperties) core.HResult!void {
        const _c = self.vtable.put_RegenerationProperties(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReminder(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Reminder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReminder(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_Reminder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSensitivity(self: *@This()) core.HResult!UserDataTaskSensitivity {
        var _r: UserDataTaskSensitivity = undefined;
        const _c = self.vtable.get_Sensitivity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSensitivity(self: *@This(), value: UserDataTaskSensitivity) core.HResult!void {
        const _c = self.vtable.put_Sensitivity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subject(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_StartDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_StartDate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c6585d1-e0d4-4f99-aee2-bc2d5ddadf4c";
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
        get_ListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CompletedDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_CompletedDate: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Details: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Details: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DetailsKind: *const fn(self: *anyopaque, _r: *UserDataTaskDetailsKind) callconv(.winapi) HRESULT,
        put_DetailsKind: *const fn(self: *anyopaque, value: UserDataTaskDetailsKind) callconv(.winapi) HRESULT,
        get_DueDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_DueDate: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *UserDataTaskKind) callconv(.winapi) HRESULT,
        get_Priority: *const fn(self: *anyopaque, _r: *UserDataTaskPriority) callconv(.winapi) HRESULT,
        put_Priority: *const fn(self: *anyopaque, value: UserDataTaskPriority) callconv(.winapi) HRESULT,
        get_RecurrenceProperties: *const fn(self: *anyopaque, _r: **UserDataTaskRecurrenceProperties) callconv(.winapi) HRESULT,
        put_RecurrenceProperties: *const fn(self: *anyopaque, value: *UserDataTaskRecurrenceProperties) callconv(.winapi) HRESULT,
        get_RegenerationProperties: *const fn(self: *anyopaque, _r: **UserDataTaskRegenerationProperties) callconv(.winapi) HRESULT,
        put_RegenerationProperties: *const fn(self: *anyopaque, value: *UserDataTaskRegenerationProperties) callconv(.winapi) HRESULT,
        get_Reminder: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Reminder: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Sensitivity: *const fn(self: *anyopaque, _r: *UserDataTaskSensitivity) callconv(.winapi) HRESULT,
        put_Sensitivity: *const fn(self: *anyopaque, value: UserDataTaskSensitivity) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subject: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_StartDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_StartDate: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskBatch = extern struct {
    vtable: *const VTable,
    pub fn getTasks(self: *@This()) core.HResult!*IVectorView(UserDataTask) {
        var _r: *IVectorView(UserDataTask) = undefined;
        const _c = self.vtable.get_Tasks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "382da5fe-20b5-431c-8f42-a5d292ec930c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Tasks: *const fn(self: *anyopaque, _r: **IVectorView(UserDataTask)) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskList = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDataAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!UserDataTaskListOtherAppReadAccess {
        var _r: UserDataTaskListOtherAppReadAccess = undefined;
        const _c = self.vtable.get_OtherAppReadAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: UserDataTaskListOtherAppReadAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppReadAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOtherAppWriteAccess(self: *@This()) core.HResult!UserDataTaskListOtherAppWriteAccess {
        var _r: UserDataTaskListOtherAppWriteAccess = undefined;
        const _c = self.vtable.get_OtherAppWriteAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppWriteAccess(self: *@This(), value: UserDataTaskListOtherAppWriteAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppWriteAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLimitedWriteOperations(self: *@This()) core.HResult!*UserDataTaskListLimitedWriteOperations {
        var _r: *UserDataTaskListLimitedWriteOperations = undefined;
        const _c = self.vtable.get_LimitedWriteOperations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSyncManager(self: *@This()) core.HResult!*UserDataTaskListSyncManager {
        var _r: *UserDataTaskListSyncManager = undefined;
        const _c = self.vtable.get_SyncManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterSyncManagerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RegisterSyncManagerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTaskReader(self: *@This()) core.HResult!*UserDataTaskReader {
        var _r: *UserDataTaskReader = undefined;
        const _c = self.vtable.GetTaskReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTaskReader(self: *@This(), options: *UserDataTaskQueryOptions) core.HResult!*UserDataTaskReader {
        var _r: *UserDataTaskReader = undefined;
        const _c = self.vtable.GetTaskReader(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTaskAsync(self: *@This(), userDataTask: HSTRING) core.HResult!*IAsyncOperation(UserDataTask) {
        var _r: *IAsyncOperation(UserDataTask) = undefined;
        const _c = self.vtable.GetTaskAsync(@ptrCast(self), userDataTask, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveTaskAsync(self: *@This(), userDataTask: *UserDataTask) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveTaskAsync(@ptrCast(self), userDataTask, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteTaskAsync(self: *@This(), userDataTaskId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteTaskAsync(@ptrCast(self), userDataTaskId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49412e39-7c1d-4df1-bed3-314b7cbf5e4e";
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
        get_UserDataAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SourceDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OtherAppReadAccess: *const fn(self: *anyopaque, _r: *UserDataTaskListOtherAppReadAccess) callconv(.winapi) HRESULT,
        put_OtherAppReadAccess: *const fn(self: *anyopaque, value: UserDataTaskListOtherAppReadAccess) callconv(.winapi) HRESULT,
        get_OtherAppWriteAccess: *const fn(self: *anyopaque, _r: *UserDataTaskListOtherAppWriteAccess) callconv(.winapi) HRESULT,
        put_OtherAppWriteAccess: *const fn(self: *anyopaque, value: UserDataTaskListOtherAppWriteAccess) callconv(.winapi) HRESULT,
        get_LimitedWriteOperations: *const fn(self: *anyopaque, _r: **UserDataTaskListLimitedWriteOperations) callconv(.winapi) HRESULT,
        get_SyncManager: *const fn(self: *anyopaque, _r: **UserDataTaskListSyncManager) callconv(.winapi) HRESULT,
        RegisterSyncManagerAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetTaskReader: *const fn(self: *anyopaque, _r: **UserDataTaskReader) callconv(.winapi) HRESULT,
        GetTaskReader: *const fn(self: *anyopaque, options: *UserDataTaskQueryOptions, _r: **UserDataTaskReader) callconv(.winapi) HRESULT,
        GetTaskAsync: *const fn(self: *anyopaque, userDataTask: HSTRING, _r: **IAsyncOperation(UserDataTask)) callconv(.winapi) HRESULT,
        SaveTaskAsync: *const fn(self: *anyopaque, userDataTask: *UserDataTask, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteTaskAsync: *const fn(self: *anyopaque, userDataTaskId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListLimitedWriteOperations = extern struct {
    vtable: *const VTable,
    pub fn TryCompleteTaskAsync(self: *@This(), userDataTaskId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.TryCompleteTaskAsync(@ptrCast(self), userDataTaskId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateOrUpdateTaskAsync(self: *@This(), userDataTask: *UserDataTask) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryCreateOrUpdateTaskAsync(@ptrCast(self), userDataTask, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDeleteTaskAsync(self: *@This(), userDataTaskId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDeleteTaskAsync(@ptrCast(self), userDataTaskId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySkipOccurrenceAsync(self: *@This(), userDataTaskId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySkipOccurrenceAsync(@ptrCast(self), userDataTaskId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskListLimitedWriteOperations";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7aa267f2-6078-4183-919e-4f29f19cfae9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCompleteTaskAsync: *const fn(self: *anyopaque, userDataTaskId: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        TryCreateOrUpdateTaskAsync: *const fn(self: *anyopaque, userDataTask: *UserDataTask, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDeleteTaskAsync: *const fn(self: *anyopaque, userDataTaskId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySkipOccurrenceAsync: *const fn(self: *anyopaque, userDataTaskId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListSyncManager = extern struct {
    vtable: *const VTable,
    pub fn getLastAttemptedSyncTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastAttemptedSyncTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLastAttemptedSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LastAttemptedSyncTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLastSuccessfulSyncTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastSuccessfulSyncTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLastSuccessfulSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LastSuccessfulSyncTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!UserDataTaskListSyncStatus {
        var _r: UserDataTaskListSyncStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStatus(self: *@This(), value: UserDataTaskListSyncStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SyncAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SyncAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSyncStatusChanged(self: *@This(), handler: *TypedEventHandler(UserDataTaskListSyncManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SyncStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSyncStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SyncStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e591a95-1dcf-469f-93ec-ba48bb553c6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LastAttemptedSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_LastAttemptedSyncTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_LastSuccessfulSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_LastSuccessfulSyncTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *UserDataTaskListSyncStatus) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: UserDataTaskListSyncStatus) callconv(.winapi) HRESULT,
        SyncAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_SyncStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserDataTaskListSyncManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SyncStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskManager = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This(), accessType: UserDataTaskStoreAccessType) core.HResult!*IAsyncOperation(UserDataTaskStore) {
        var _r: *IAsyncOperation(UserDataTaskStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), accessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8451c914-e60b-48a9-9211-7fb8a56cb84c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, accessType: UserDataTaskStoreAccessType, _r: **IAsyncOperation(UserDataTaskStore)) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*UserDataTaskManager {
        var _r: *UserDataTaskManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*UserDataTaskManager {
        var _r: *UserDataTaskManager = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b35539f8-c502-47fc-a81e-100883719d55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **UserDataTaskManager) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **UserDataTaskManager) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskQueryOptions = extern struct {
    vtable: *const VTable,
    pub fn getSortProperty(self: *@This()) core.HResult!UserDataTaskQuerySortProperty {
        var _r: UserDataTaskQuerySortProperty = undefined;
        const _c = self.vtable.get_SortProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSortProperty(self: *@This(), value: UserDataTaskQuerySortProperty) core.HResult!void {
        const _c = self.vtable.put_SortProperty(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKind(self: *@This()) core.HResult!UserDataTaskQueryKind {
        var _r: UserDataTaskQueryKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: UserDataTaskQueryKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "959f27ed-909a-4d30-8c1b-331d8fe667e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SortProperty: *const fn(self: *anyopaque, _r: *UserDataTaskQuerySortProperty) callconv(.winapi) HRESULT,
        put_SortProperty: *const fn(self: *anyopaque, value: UserDataTaskQuerySortProperty) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *UserDataTaskQueryKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: UserDataTaskQueryKind) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(UserDataTaskBatch) {
        var _r: *IAsyncOperation(UserDataTaskBatch) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03e688b1-4ccf-4500-883b-e76290cfed63";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(UserDataTaskBatch)) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskRecurrenceProperties = extern struct {
    vtable: *const VTable,
    pub fn getUnit(self: *@This()) core.HResult!UserDataTaskRecurrenceUnit {
        var _r: UserDataTaskRecurrenceUnit = undefined;
        const _c = self.vtable.get_Unit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnit(self: *@This(), value: UserDataTaskRecurrenceUnit) core.HResult!void {
        const _c = self.vtable.put_Unit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOccurrences(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_Occurrences(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOccurrences(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_Occurrences(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUntil(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Until(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUntil(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_Until(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInterval(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Interval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterval(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Interval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDaysOfWeek(self: *@This()) core.HResult!*IReference(UserDataTaskDaysOfWeek) {
        var _r: *IReference(UserDataTaskDaysOfWeek) = undefined;
        const _c = self.vtable.get_DaysOfWeek(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDaysOfWeek(self: *@This(), value: *IReference(UserDataTaskDaysOfWeek)) core.HResult!void {
        const _c = self.vtable.put_DaysOfWeek(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWeekOfMonth(self: *@This()) core.HResult!*IReference(UserDataTaskWeekOfMonth) {
        var _r: *IReference(UserDataTaskWeekOfMonth) = undefined;
        const _c = self.vtable.get_WeekOfMonth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWeekOfMonth(self: *@This(), value: *IReference(UserDataTaskWeekOfMonth)) core.HResult!void {
        const _c = self.vtable.put_WeekOfMonth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMonth(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_Month(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMonth(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_Month(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDay(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_Day(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDay(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_Day(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73df80b0-27c6-40ce-b149-9cd41485a69e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Unit: *const fn(self: *anyopaque, _r: *UserDataTaskRecurrenceUnit) callconv(.winapi) HRESULT,
        put_Unit: *const fn(self: *anyopaque, value: UserDataTaskRecurrenceUnit) callconv(.winapi) HRESULT,
        get_Occurrences: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_Occurrences: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_Until: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Until: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Interval: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Interval: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_DaysOfWeek: *const fn(self: *anyopaque, _r: **IReference(UserDataTaskDaysOfWeek)) callconv(.winapi) HRESULT,
        put_DaysOfWeek: *const fn(self: *anyopaque, value: *IReference(UserDataTaskDaysOfWeek)) callconv(.winapi) HRESULT,
        get_WeekOfMonth: *const fn(self: *anyopaque, _r: **IReference(UserDataTaskWeekOfMonth)) callconv(.winapi) HRESULT,
        put_WeekOfMonth: *const fn(self: *anyopaque, value: *IReference(UserDataTaskWeekOfMonth)) callconv(.winapi) HRESULT,
        get_Month: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_Month: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_Day: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_Day: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskRegenerationProperties = extern struct {
    vtable: *const VTable,
    pub fn getUnit(self: *@This()) core.HResult!UserDataTaskRegenerationUnit {
        var _r: UserDataTaskRegenerationUnit = undefined;
        const _c = self.vtable.get_Unit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnit(self: *@This(), value: UserDataTaskRegenerationUnit) core.HResult!void {
        const _c = self.vtable.put_Unit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOccurrences(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_Occurrences(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOccurrences(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_Occurrences(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUntil(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Until(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUntil(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_Until(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInterval(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Interval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterval(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Interval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92ab0007-090e-4704-bb5c-84fc0b0d9c31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Unit: *const fn(self: *anyopaque, _r: *UserDataTaskRegenerationUnit) callconv(.winapi) HRESULT,
        put_Unit: *const fn(self: *anyopaque, value: UserDataTaskRegenerationUnit) callconv(.winapi) HRESULT,
        get_Occurrences: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_Occurrences: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_Until: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Until: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Interval: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Interval: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskStore = extern struct {
    vtable: *const VTable,
    pub fn CreateListAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(UserDataTaskList) {
        var _r: *IAsyncOperation(UserDataTaskList) = undefined;
        const _c = self.vtable.CreateListAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateListAsyncWithUserDataAccountId(self: *@This(), name: HSTRING, userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(UserDataTaskList) {
        var _r: *IAsyncOperation(UserDataTaskList) = undefined;
        const _c = self.vtable.CreateListAsyncWithUserDataAccountId(@ptrCast(self), name, userDataAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(UserDataTaskList)) {
        var _r: *IAsyncOperation(IVectorView(UserDataTaskList)) = undefined;
        const _c = self.vtable.FindListsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetListAsync(self: *@This(), taskListId: HSTRING) core.HResult!*IAsyncOperation(UserDataTaskList) {
        var _r: *IAsyncOperation(UserDataTaskList) = undefined;
        const _c = self.vtable.GetListAsync(@ptrCast(self), taskListId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.IUserDataTaskStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f06a9cb0-f1db-45ba-8a62-086004c0213d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateListAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(UserDataTaskList)) callconv(.winapi) HRESULT,
        CreateListAsyncWithUserDataAccountId: *const fn(self: *anyopaque, name: HSTRING, userDataAccountId: HSTRING, _r: **IAsyncOperation(UserDataTaskList)) callconv(.winapi) HRESULT,
        FindListsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(UserDataTaskList))) callconv(.winapi) HRESULT,
        GetListAsync: *const fn(self: *anyopaque, taskListId: HSTRING, _r: **IAsyncOperation(UserDataTaskList)) callconv(.winapi) HRESULT,
    };
};
pub const UserDataTask = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getId();
    }
    pub fn getListId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getListId();
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putRemoteId(value);
    }
    pub fn getCompletedDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getCompletedDate();
    }
    pub fn putCompletedDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putCompletedDate(value);
    }
    pub fn getDetails(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getDetails();
    }
    pub fn putDetails(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putDetails(value);
    }
    pub fn getDetailsKind(self: *@This()) core.HResult!UserDataTaskDetailsKind {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getDetailsKind();
    }
    pub fn putDetailsKind(self: *@This(), value: UserDataTaskDetailsKind) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putDetailsKind(value);
    }
    pub fn getDueDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getDueDate();
    }
    pub fn putDueDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putDueDate(value);
    }
    pub fn getKind(self: *@This()) core.HResult!UserDataTaskKind {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getPriority(self: *@This()) core.HResult!UserDataTaskPriority {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getPriority();
    }
    pub fn putPriority(self: *@This(), value: UserDataTaskPriority) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putPriority(value);
    }
    pub fn getRecurrenceProperties(self: *@This()) core.HResult!*UserDataTaskRecurrenceProperties {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getRecurrenceProperties();
    }
    pub fn putRecurrenceProperties(self: *@This(), value: *UserDataTaskRecurrenceProperties) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putRecurrenceProperties(value);
    }
    pub fn getRegenerationProperties(self: *@This()) core.HResult!*UserDataTaskRegenerationProperties {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getRegenerationProperties();
    }
    pub fn putRegenerationProperties(self: *@This(), value: *UserDataTaskRegenerationProperties) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putRegenerationProperties(value);
    }
    pub fn getReminder(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getReminder();
    }
    pub fn putReminder(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putReminder(value);
    }
    pub fn getSensitivity(self: *@This()) core.HResult!UserDataTaskSensitivity {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getSensitivity();
    }
    pub fn putSensitivity(self: *@This(), value: UserDataTaskSensitivity) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putSensitivity(value);
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putSubject(value);
    }
    pub fn getStartDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.getStartDate();
    }
    pub fn putStartDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IUserDataTask = @ptrCast(self);
        return try this.putStartDate(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUserDataTask.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTask.GUID;
    pub const IID: Guid = IUserDataTask.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTask.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UserDataTaskBatch = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTasks(self: *@This()) core.HResult!*IVectorView(UserDataTask) {
        const this: *IUserDataTaskBatch = @ptrCast(self);
        return try this.getTasks();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskBatch.GUID;
    pub const IID: Guid = IUserDataTaskBatch.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskBatch.SIGNATURE);
};
pub const UserDataTaskDaysOfWeek = enum(i32) {
    None = 0,
    Sunday = 1,
    Monday = 2,
    Tuesday = 4,
    Wednesday = 8,
    Thursday = 16,
    Friday = 32,
    Saturday = 64,
};
pub const UserDataTaskDetailsKind = enum(i32) {
    PlainText = 0,
    Html = 1,
};
pub const UserDataTaskKind = enum(i32) {
    Single = 0,
    Recurring = 1,
    Regenerating = 2,
};
pub const UserDataTaskList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.getId();
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.getUserDataAccountId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.getSourceDisplayName();
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!UserDataTaskListOtherAppReadAccess {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.getOtherAppReadAccess();
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: UserDataTaskListOtherAppReadAccess) core.HResult!void {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.putOtherAppReadAccess(value);
    }
    pub fn getOtherAppWriteAccess(self: *@This()) core.HResult!UserDataTaskListOtherAppWriteAccess {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.getOtherAppWriteAccess();
    }
    pub fn putOtherAppWriteAccess(self: *@This(), value: UserDataTaskListOtherAppWriteAccess) core.HResult!void {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.putOtherAppWriteAccess(value);
    }
    pub fn getLimitedWriteOperations(self: *@This()) core.HResult!*UserDataTaskListLimitedWriteOperations {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.getLimitedWriteOperations();
    }
    pub fn getSyncManager(self: *@This()) core.HResult!*UserDataTaskListSyncManager {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.getSyncManager();
    }
    pub fn RegisterSyncManagerAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.RegisterSyncManagerAsync();
    }
    pub fn GetTaskReader(self: *@This()) core.HResult!*UserDataTaskReader {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.GetTaskReader();
    }
    pub fn GetTaskReader(self: *@This(), options: *UserDataTaskQueryOptions) core.HResult!*UserDataTaskReader {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.GetTaskReader(options);
    }
    pub fn GetTaskAsync(self: *@This(), userDataTask: HSTRING) core.HResult!*IAsyncOperation(UserDataTask) {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.GetTaskAsync(userDataTask);
    }
    pub fn SaveTaskAsync(self: *@This(), userDataTask: *UserDataTask) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.SaveTaskAsync(userDataTask);
    }
    pub fn DeleteTaskAsync(self: *@This(), userDataTaskId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.DeleteTaskAsync(userDataTaskId);
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.DeleteAsync();
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskList = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskList.GUID;
    pub const IID: Guid = IUserDataTaskList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskList.SIGNATURE);
};
pub const UserDataTaskListLimitedWriteOperations = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TryCompleteTaskAsync(self: *@This(), userDataTaskId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IUserDataTaskListLimitedWriteOperations = @ptrCast(self);
        return try this.TryCompleteTaskAsync(userDataTaskId);
    }
    pub fn TryCreateOrUpdateTaskAsync(self: *@This(), userDataTask: *UserDataTask) core.HResult!*IAsyncOperation(bool) {
        const this: *IUserDataTaskListLimitedWriteOperations = @ptrCast(self);
        return try this.TryCreateOrUpdateTaskAsync(userDataTask);
    }
    pub fn TryDeleteTaskAsync(self: *@This(), userDataTaskId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IUserDataTaskListLimitedWriteOperations = @ptrCast(self);
        return try this.TryDeleteTaskAsync(userDataTaskId);
    }
    pub fn TrySkipOccurrenceAsync(self: *@This(), userDataTaskId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IUserDataTaskListLimitedWriteOperations = @ptrCast(self);
        return try this.TrySkipOccurrenceAsync(userDataTaskId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskListLimitedWriteOperations";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListLimitedWriteOperations.GUID;
    pub const IID: Guid = IUserDataTaskListLimitedWriteOperations.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListLimitedWriteOperations.SIGNATURE);
};
pub const UserDataTaskListOtherAppReadAccess = enum(i32) {
    Full = 0,
    SystemOnly = 1,
    None = 2,
};
pub const UserDataTaskListOtherAppWriteAccess = enum(i32) {
    Limited = 0,
    None = 1,
};
pub const UserDataTaskListSyncManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLastAttemptedSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IUserDataTaskListSyncManager = @ptrCast(self);
        return try this.getLastAttemptedSyncTime();
    }
    pub fn putLastAttemptedSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IUserDataTaskListSyncManager = @ptrCast(self);
        return try this.putLastAttemptedSyncTime(value);
    }
    pub fn getLastSuccessfulSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IUserDataTaskListSyncManager = @ptrCast(self);
        return try this.getLastSuccessfulSyncTime();
    }
    pub fn putLastSuccessfulSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IUserDataTaskListSyncManager = @ptrCast(self);
        return try this.putLastSuccessfulSyncTime(value);
    }
    pub fn getStatus(self: *@This()) core.HResult!UserDataTaskListSyncStatus {
        const this: *IUserDataTaskListSyncManager = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn putStatus(self: *@This(), value: UserDataTaskListSyncStatus) core.HResult!void {
        const this: *IUserDataTaskListSyncManager = @ptrCast(self);
        return try this.putStatus(value);
    }
    pub fn SyncAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IUserDataTaskListSyncManager = @ptrCast(self);
        return try this.SyncAsync();
    }
    pub fn addSyncStatusChanged(self: *@This(), handler: *TypedEventHandler(UserDataTaskListSyncManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IUserDataTaskListSyncManager = @ptrCast(self);
        return try this.addSyncStatusChanged(handler);
    }
    pub fn removeSyncStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserDataTaskListSyncManager = @ptrCast(self);
        return try this.removeSyncStatusChanged(token);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListSyncManager.GUID;
    pub const IID: Guid = IUserDataTaskListSyncManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListSyncManager.SIGNATURE);
};
pub const UserDataTaskListSyncStatus = enum(i32) {
    Idle = 0,
    Syncing = 1,
    UpToDate = 2,
    AuthenticationError = 3,
    PolicyError = 4,
    UnknownError = 5,
};
pub const UserDataTaskManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestStoreAsync(self: *@This(), accessType: UserDataTaskStoreAccessType) core.HResult!*IAsyncOperation(UserDataTaskStore) {
        const this: *IUserDataTaskManager = @ptrCast(self);
        return try this.RequestStoreAsync(accessType);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IUserDataTaskManager = @ptrCast(self);
        return try this.getUser();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*UserDataTaskManager {
        const factory = @This().IUserDataTaskManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*UserDataTaskManager {
        const factory = @This().IUserDataTaskManagerStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskManager.GUID;
    pub const IID: Guid = IUserDataTaskManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskManager.SIGNATURE);
    var _IUserDataTaskManagerStaticsCache: FactoryCache(IUserDataTaskManagerStatics, RUNTIME_NAME) = .{};
};
pub const UserDataTaskPriority = enum(i32) {
    Normal = 0,
    Low = -1,
    High = 1,
};
pub const UserDataTaskQueryKind = enum(i32) {
    All = 0,
    Incomplete = 1,
    Complete = 2,
};
pub const UserDataTaskQueryOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSortProperty(self: *@This()) core.HResult!UserDataTaskQuerySortProperty {
        const this: *IUserDataTaskQueryOptions = @ptrCast(self);
        return try this.getSortProperty();
    }
    pub fn putSortProperty(self: *@This(), value: UserDataTaskQuerySortProperty) core.HResult!void {
        const this: *IUserDataTaskQueryOptions = @ptrCast(self);
        return try this.putSortProperty(value);
    }
    pub fn getKind(self: *@This()) core.HResult!UserDataTaskQueryKind {
        const this: *IUserDataTaskQueryOptions = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: UserDataTaskQueryKind) core.HResult!void {
        const this: *IUserDataTaskQueryOptions = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUserDataTaskQueryOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskQueryOptions.GUID;
    pub const IID: Guid = IUserDataTaskQueryOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskQueryOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UserDataTaskQuerySortProperty = enum(i32) {
    DueDate = 0,
};
pub const UserDataTaskReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(UserDataTaskBatch) {
        const this: *IUserDataTaskReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskReader.GUID;
    pub const IID: Guid = IUserDataTaskReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskReader.SIGNATURE);
};
pub const UserDataTaskRecurrenceProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnit(self: *@This()) core.HResult!UserDataTaskRecurrenceUnit {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.getUnit();
    }
    pub fn putUnit(self: *@This(), value: UserDataTaskRecurrenceUnit) core.HResult!void {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.putUnit(value);
    }
    pub fn getOccurrences(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.getOccurrences();
    }
    pub fn putOccurrences(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.putOccurrences(value);
    }
    pub fn getUntil(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.getUntil();
    }
    pub fn putUntil(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.putUntil(value);
    }
    pub fn getInterval(self: *@This()) core.HResult!i32 {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.getInterval();
    }
    pub fn putInterval(self: *@This(), value: i32) core.HResult!void {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.putInterval(value);
    }
    pub fn getDaysOfWeek(self: *@This()) core.HResult!*IReference(UserDataTaskDaysOfWeek) {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.getDaysOfWeek();
    }
    pub fn putDaysOfWeek(self: *@This(), value: *IReference(UserDataTaskDaysOfWeek)) core.HResult!void {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.putDaysOfWeek(value);
    }
    pub fn getWeekOfMonth(self: *@This()) core.HResult!*IReference(UserDataTaskWeekOfMonth) {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.getWeekOfMonth();
    }
    pub fn putWeekOfMonth(self: *@This(), value: *IReference(UserDataTaskWeekOfMonth)) core.HResult!void {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.putWeekOfMonth(value);
    }
    pub fn getMonth(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.getMonth();
    }
    pub fn putMonth(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.putMonth(value);
    }
    pub fn getDay(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.getDay();
    }
    pub fn putDay(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IUserDataTaskRecurrenceProperties = @ptrCast(self);
        return try this.putDay(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUserDataTaskRecurrenceProperties.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskRecurrenceProperties.GUID;
    pub const IID: Guid = IUserDataTaskRecurrenceProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskRecurrenceProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UserDataTaskRecurrenceUnit = enum(i32) {
    Daily = 0,
    Weekly = 1,
    Monthly = 2,
    MonthlyOnDay = 3,
    Yearly = 4,
    YearlyOnDay = 5,
};
pub const UserDataTaskRegenerationProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnit(self: *@This()) core.HResult!UserDataTaskRegenerationUnit {
        const this: *IUserDataTaskRegenerationProperties = @ptrCast(self);
        return try this.getUnit();
    }
    pub fn putUnit(self: *@This(), value: UserDataTaskRegenerationUnit) core.HResult!void {
        const this: *IUserDataTaskRegenerationProperties = @ptrCast(self);
        return try this.putUnit(value);
    }
    pub fn getOccurrences(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IUserDataTaskRegenerationProperties = @ptrCast(self);
        return try this.getOccurrences();
    }
    pub fn putOccurrences(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IUserDataTaskRegenerationProperties = @ptrCast(self);
        return try this.putOccurrences(value);
    }
    pub fn getUntil(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IUserDataTaskRegenerationProperties = @ptrCast(self);
        return try this.getUntil();
    }
    pub fn putUntil(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IUserDataTaskRegenerationProperties = @ptrCast(self);
        return try this.putUntil(value);
    }
    pub fn getInterval(self: *@This()) core.HResult!i32 {
        const this: *IUserDataTaskRegenerationProperties = @ptrCast(self);
        return try this.getInterval();
    }
    pub fn putInterval(self: *@This(), value: i32) core.HResult!void {
        const this: *IUserDataTaskRegenerationProperties = @ptrCast(self);
        return try this.putInterval(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUserDataTaskRegenerationProperties.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskRegenerationProperties.GUID;
    pub const IID: Guid = IUserDataTaskRegenerationProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskRegenerationProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UserDataTaskRegenerationUnit = enum(i32) {
    Daily = 0,
    Weekly = 1,
    Monthly = 2,
    Yearly = 4,
};
pub const UserDataTaskSensitivity = enum(i32) {
    Public = 0,
    Private = 1,
};
pub const UserDataTaskStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateListAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(UserDataTaskList) {
        const this: *IUserDataTaskStore = @ptrCast(self);
        return try this.CreateListAsync(name);
    }
    pub fn CreateListAsyncWithUserDataAccountId(self: *@This(), name: HSTRING, userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(UserDataTaskList) {
        const this: *IUserDataTaskStore = @ptrCast(self);
        return try this.CreateListAsyncWithUserDataAccountId(name, userDataAccountId);
    }
    pub fn FindListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(UserDataTaskList)) {
        const this: *IUserDataTaskStore = @ptrCast(self);
        return try this.FindListsAsync();
    }
    pub fn GetListAsync(self: *@This(), taskListId: HSTRING) core.HResult!*IAsyncOperation(UserDataTaskList) {
        const this: *IUserDataTaskStore = @ptrCast(self);
        return try this.GetListAsync(taskListId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.UserDataTaskStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskStore.GUID;
    pub const IID: Guid = IUserDataTaskStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskStore.SIGNATURE);
};
pub const UserDataTaskStoreAccessType = enum(i32) {
    AppTasksReadWrite = 0,
    AllTasksLimitedReadWrite = 1,
};
pub const UserDataTaskWeekOfMonth = enum(i32) {
    First = 0,
    Second = 1,
    Third = 2,
    Fourth = 3,
    Last = 4,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const User = @import("../System.zig").User;
pub const DataProvider = @import("./UserDataTasks/DataProvider.zig");
