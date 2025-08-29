pub const IUserDataTaskDataProviderConnection = extern struct {
    vtable: *const VTable,
    pub fn addCreateOrUpdateTaskRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListCreateOrUpdateTaskRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CreateOrUpdateTaskRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCreateOrUpdateTaskRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CreateOrUpdateTaskRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSyncRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListSyncManagerSyncRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SyncRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSyncRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SyncRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSkipOccurrenceRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListSkipOccurrenceRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SkipOccurrenceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSkipOccurrenceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SkipOccurrenceRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompleteTaskRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListCompleteTaskRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CompleteTaskRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleteTaskRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CompleteTaskRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDeleteTaskRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListDeleteTaskRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DeleteTaskRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDeleteTaskRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DeleteTaskRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskDataProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ff39d1d-a447-428b-afe9-e5402bdeb041";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CreateOrUpdateTaskRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListCreateOrUpdateTaskRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CreateOrUpdateTaskRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SyncRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListSyncManagerSyncRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SyncRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SkipOccurrenceRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListSkipOccurrenceRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SkipOccurrenceRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CompleteTaskRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListCompleteTaskRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CompleteTaskRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DeleteTaskRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListDeleteTaskRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DeleteTaskRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskDataProviderTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*UserDataTaskDataProviderConnection {
        var _r: *UserDataTaskDataProviderConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskDataProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae273202-b1c9-453e-afc5-b30af3bd217d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **UserDataTaskDataProviderConnection) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListCompleteTaskRequest = extern struct {
    vtable: *const VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This(), completedTaskId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), completedTaskId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f65e14a3-1a42-49da-8552-2873e52c55eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TaskId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, completedTaskId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListCompleteTaskRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListCompleteTaskRequest {
        var _r: *UserDataTaskListCompleteTaskRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d77c393d-4cf2-48ad-87fd-963f0eaa7a95";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **UserDataTaskListCompleteTaskRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListCreateOrUpdateTaskRequest = extern struct {
    vtable: *const VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTask(self: *@This()) core.HResult!*UserDataTask {
        var _r: *UserDataTask = undefined;
        const _c = self.vtable.get_Task(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This(), createdOrUpdatedUserDataTask: *UserDataTask) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), createdOrUpdatedUserDataTask, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2133772c-55c2-4300-8279-04326e07cce4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Task: *const fn(self: *anyopaque, _r: **UserDataTask) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, createdOrUpdatedUserDataTask: *UserDataTask, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListCreateOrUpdateTaskRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListCreateOrUpdateTaskRequest {
        var _r: *UserDataTaskListCreateOrUpdateTaskRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12c55a52-e378-419b-ae38-a5e9e604476e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **UserDataTaskListCreateOrUpdateTaskRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListDeleteTaskRequest = extern struct {
    vtable: *const VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b863c68-7657-4f3d-b074-d47ec8df07e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TaskId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListDeleteTaskRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListDeleteTaskRequest {
        var _r: *UserDataTaskListDeleteTaskRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6063dad9-f562-4145-8efe-d50078c92b7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **UserDataTaskListDeleteTaskRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListSkipOccurrenceRequest = extern struct {
    vtable: *const VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab87e34d-1cd3-431c-9f58-089aa4338d85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TaskId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListSkipOccurrenceRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListSkipOccurrenceRequest {
        var _r: *UserDataTaskListSkipOccurrenceRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a3b924a-cc2f-4e7b-aacd-a5b9d29cfa4e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **UserDataTaskListSkipOccurrenceRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListSyncManagerSyncRequest = extern struct {
    vtable: *const VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaskListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSyncManagerSyncRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40a73807-7590-4149-ae19-b211431a9f48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataTaskListSyncManagerSyncRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListSyncManagerSyncRequest {
        var _r: *UserDataTaskListSyncManagerSyncRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSyncManagerSyncRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ead1c12-768e-43bd-8385-5cdc351ffdea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **UserDataTaskListSyncManagerSyncRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const UserDataTaskDataProviderConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addCreateOrUpdateTaskRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListCreateOrUpdateTaskRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.addCreateOrUpdateTaskRequested(handler);
    }
    pub fn removeCreateOrUpdateTaskRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.removeCreateOrUpdateTaskRequested(token);
    }
    pub fn addSyncRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListSyncManagerSyncRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.addSyncRequested(handler);
    }
    pub fn removeSyncRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.removeSyncRequested(token);
    }
    pub fn addSkipOccurrenceRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListSkipOccurrenceRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.addSkipOccurrenceRequested(handler);
    }
    pub fn removeSkipOccurrenceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.removeSkipOccurrenceRequested(token);
    }
    pub fn addCompleteTaskRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListCompleteTaskRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.addCompleteTaskRequested(handler);
    }
    pub fn removeCompleteTaskRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.removeCompleteTaskRequested(token);
    }
    pub fn addDeleteTaskRequested(self: *@This(), handler: *TypedEventHandler(UserDataTaskDataProviderConnection,UserDataTaskListDeleteTaskRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.addDeleteTaskRequested(handler);
    }
    pub fn removeDeleteTaskRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.removeDeleteTaskRequested(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IUserDataTaskDataProviderConnection = @ptrCast(self);
        return try this.Start();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskDataProviderConnection.GUID;
    pub const IID: Guid = IUserDataTaskDataProviderConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskDataProviderConnection.SIGNATURE);
};
pub const UserDataTaskDataProviderTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*UserDataTaskDataProviderConnection {
        const this: *IUserDataTaskDataProviderTriggerDetails = @ptrCast(self);
        return try this.getConnection();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskDataProviderTriggerDetails.GUID;
    pub const IID: Guid = IUserDataTaskDataProviderTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskDataProviderTriggerDetails.SIGNATURE);
};
pub const UserDataTaskListCompleteTaskRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskListCompleteTaskRequest = @ptrCast(self);
        return try this.getTaskListId();
    }
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskListCompleteTaskRequest = @ptrCast(self);
        return try this.getTaskId();
    }
    pub fn ReportCompletedAsync(self: *@This(), completedTaskId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListCompleteTaskRequest = @ptrCast(self);
        return try this.ReportCompletedAsync(completedTaskId);
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListCompleteTaskRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListCompleteTaskRequest.GUID;
    pub const IID: Guid = IUserDataTaskListCompleteTaskRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListCompleteTaskRequest.SIGNATURE);
};
pub const UserDataTaskListCompleteTaskRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListCompleteTaskRequest {
        const this: *IUserDataTaskListCompleteTaskRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IUserDataTaskListCompleteTaskRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListCompleteTaskRequestEventArgs.GUID;
    pub const IID: Guid = IUserDataTaskListCompleteTaskRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListCompleteTaskRequestEventArgs.SIGNATURE);
};
pub const UserDataTaskListCreateOrUpdateTaskRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskListCreateOrUpdateTaskRequest = @ptrCast(self);
        return try this.getTaskListId();
    }
    pub fn getTask(self: *@This()) core.HResult!*UserDataTask {
        const this: *IUserDataTaskListCreateOrUpdateTaskRequest = @ptrCast(self);
        return try this.getTask();
    }
    pub fn ReportCompletedAsync(self: *@This(), createdOrUpdatedUserDataTask: *UserDataTask) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListCreateOrUpdateTaskRequest = @ptrCast(self);
        return try this.ReportCompletedAsync(createdOrUpdatedUserDataTask);
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListCreateOrUpdateTaskRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListCreateOrUpdateTaskRequest.GUID;
    pub const IID: Guid = IUserDataTaskListCreateOrUpdateTaskRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListCreateOrUpdateTaskRequest.SIGNATURE);
};
pub const UserDataTaskListCreateOrUpdateTaskRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListCreateOrUpdateTaskRequest {
        const this: *IUserDataTaskListCreateOrUpdateTaskRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IUserDataTaskListCreateOrUpdateTaskRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListCreateOrUpdateTaskRequestEventArgs.GUID;
    pub const IID: Guid = IUserDataTaskListCreateOrUpdateTaskRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListCreateOrUpdateTaskRequestEventArgs.SIGNATURE);
};
pub const UserDataTaskListDeleteTaskRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskListDeleteTaskRequest = @ptrCast(self);
        return try this.getTaskListId();
    }
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskListDeleteTaskRequest = @ptrCast(self);
        return try this.getTaskId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListDeleteTaskRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListDeleteTaskRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListDeleteTaskRequest.GUID;
    pub const IID: Guid = IUserDataTaskListDeleteTaskRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListDeleteTaskRequest.SIGNATURE);
};
pub const UserDataTaskListDeleteTaskRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListDeleteTaskRequest {
        const this: *IUserDataTaskListDeleteTaskRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IUserDataTaskListDeleteTaskRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListDeleteTaskRequestEventArgs.GUID;
    pub const IID: Guid = IUserDataTaskListDeleteTaskRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListDeleteTaskRequestEventArgs.SIGNATURE);
};
pub const UserDataTaskListSkipOccurrenceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskListSkipOccurrenceRequest = @ptrCast(self);
        return try this.getTaskListId();
    }
    pub fn getTaskId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskListSkipOccurrenceRequest = @ptrCast(self);
        return try this.getTaskId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListSkipOccurrenceRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListSkipOccurrenceRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListSkipOccurrenceRequest.GUID;
    pub const IID: Guid = IUserDataTaskListSkipOccurrenceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListSkipOccurrenceRequest.SIGNATURE);
};
pub const UserDataTaskListSkipOccurrenceRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListSkipOccurrenceRequest {
        const this: *IUserDataTaskListSkipOccurrenceRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IUserDataTaskListSkipOccurrenceRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListSkipOccurrenceRequestEventArgs.GUID;
    pub const IID: Guid = IUserDataTaskListSkipOccurrenceRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListSkipOccurrenceRequestEventArgs.SIGNATURE);
};
pub const UserDataTaskListSyncManagerSyncRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskListId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataTaskListSyncManagerSyncRequest = @ptrCast(self);
        return try this.getTaskListId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListSyncManagerSyncRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataTaskListSyncManagerSyncRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListSyncManagerSyncRequest.GUID;
    pub const IID: Guid = IUserDataTaskListSyncManagerSyncRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListSyncManagerSyncRequest.SIGNATURE);
};
pub const UserDataTaskListSyncManagerSyncRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserDataTaskListSyncManagerSyncRequest {
        const this: *IUserDataTaskListSyncManagerSyncRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IUserDataTaskListSyncManagerSyncRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataTaskListSyncManagerSyncRequestEventArgs.GUID;
    pub const IID: Guid = IUserDataTaskListSyncManagerSyncRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataTaskListSyncManagerSyncRequestEventArgs.SIGNATURE);
};
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const UserDataTask = @import("../UserDataTasks.zig").UserDataTask;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
