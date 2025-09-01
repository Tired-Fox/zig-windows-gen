pub const IUserActivity = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!UserActivityState {
        var _r: UserActivityState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivityId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisualElements(self: *@This()) core.HResult!*UserActivityVisualElements {
        var _r: *UserActivityVisualElements = undefined;
        const _c = self.vtable.get_VisualElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ContentUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ContentUri(@ptrCast(self), value);
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
    pub fn getActivationUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ActivationUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putActivationUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ActivationUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentInfo(self: *@This()) core.HResult!*IUserActivityContentInfo {
        var _r: *IUserActivityContentInfo = undefined;
        const _c = self.vtable.get_ContentInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentInfo(self: *@This(), value: *IUserActivityContentInfo) core.HResult!void {
        const _c = self.vtable.put_ContentInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSession(self: *@This()) core.HResult!*UserActivitySession {
        var _r: *UserActivitySession = undefined;
        const _c = self.vtable.CreateSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc103e9e-2cab-4d36-aea2-b4bb556cef0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *UserActivityState) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VisualElements: *const fn(self: *anyopaque, _r: **UserActivityVisualElements) callconv(.winapi) HRESULT,
        get_ContentUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ContentUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_FallbackUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ActivationUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ActivationUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ContentInfo: *const fn(self: *anyopaque, _r: **IUserActivityContentInfo) callconv(.winapi) HRESULT,
        put_ContentInfo: *const fn(self: *anyopaque, value: *IUserActivityContentInfo) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CreateSession: *const fn(self: *anyopaque, _r: **UserActivitySession) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivity2 = extern struct {
    vtable: *const VTable,
    pub fn ToJson(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ToJson(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivity2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9dc40c62-08c4-47ac-aa9c-2bb2221c55fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ToJson: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivity3 = extern struct {
    vtable: *const VTable,
    pub fn getIsRoamable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRoamable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRoamable(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRoamable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivity3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7697744-e1a2-5147-8e06-55f1eeef271c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRoamable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRoamable: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityAttribution = extern struct {
    vtable: *const VTable,
    pub fn getIconUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_IconUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIconUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_IconUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlternateText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlternateText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlternateText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AlternateText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAddImageQuery(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AddImageQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAddImageQuery(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AddImageQuery(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityAttribution";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34a5c8b5-86dd-4aec-a491-6a4faea5d22e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IconUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_IconUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_AlternateText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AlternateText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AddImageQuery: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AddImageQuery: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityAttributionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithUri(self: *@This(), iconUri: *Uri) core.HResult!*UserActivityAttribution {
        var _r: *UserActivityAttribution = undefined;
        const _c = self.vtable.CreateWithUri(@ptrCast(self), iconUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityAttributionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e62bd252-c566-4f42-9974-916c4d76377e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithUri: *const fn(self: *anyopaque, iconUri: *Uri, _r: **UserActivityAttribution) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityChannel = extern struct {
    vtable: *const VTable,
    pub fn GetOrCreateUserActivityAsync(self: *@This(), activityId: HSTRING) core.HResult!*IAsyncOperation(UserActivity) {
        var _r: *IAsyncOperation(UserActivity) = undefined;
        const _c = self.vtable.GetOrCreateUserActivityAsync(@ptrCast(self), activityId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteActivityAsync(self: *@This(), activityId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteActivityAsync(@ptrCast(self), activityId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAllActivitiesAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAllActivitiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bac0f8b8-a0e4-483b-b948-9cbabd06070c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetOrCreateUserActivityAsync: *const fn(self: *anyopaque, activityId: HSTRING, _r: **IAsyncOperation(UserActivity)) callconv(.winapi) HRESULT,
        DeleteActivityAsync: *const fn(self: *anyopaque, activityId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAllActivitiesAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityChannel2 = extern struct {
    vtable: *const VTable,
    pub fn GetRecentUserActivitiesAsync(self: *@This(), maxUniqueActivities: i32) core.HResult!*IAsyncOperation(IVector(UserActivitySessionHistoryItem)) {
        var _r: *IAsyncOperation(IVector(UserActivitySessionHistoryItem)) = undefined;
        const _c = self.vtable.GetRecentUserActivitiesAsync(@ptrCast(self), maxUniqueActivities, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSessionHistoryItemsForUserActivityAsync(self: *@This(), activityId: HSTRING, startTime: DateTime) core.HResult!*IAsyncOperation(IVector(UserActivitySessionHistoryItem)) {
        var _r: *IAsyncOperation(IVector(UserActivitySessionHistoryItem)) = undefined;
        const _c = self.vtable.GetSessionHistoryItemsForUserActivityAsync(@ptrCast(self), activityId, startTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityChannel2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1698e35b-eb7e-4ea0-bf17-a459e8be706c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetRecentUserActivitiesAsync: *const fn(self: *anyopaque, maxUniqueActivities: i32, _r: **IAsyncOperation(IVector(UserActivitySessionHistoryItem))) callconv(.winapi) HRESULT,
        GetSessionHistoryItemsForUserActivityAsync: *const fn(self: *anyopaque, activityId: HSTRING, startTime: DateTime, _r: **IAsyncOperation(IVector(UserActivitySessionHistoryItem))) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityChannelStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*UserActivityChannel {
        var _r: *UserActivityChannel = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityChannelStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8c005ab-198d-4d80-abb2-c9775ec4a729";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **UserActivityChannel) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityChannelStatics2 = extern struct {
    vtable: *const VTable,
    pub fn DisableAutoSessionCreation(self: *@This()) core.HResult!void {
        const _c = self.vtable.DisableAutoSessionCreation(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryGetForWebAccount(self: *@This(), account: *WebAccount) core.HResult!*UserActivityChannel {
        var _r: *UserActivityChannel = undefined;
        const _c = self.vtable.TryGetForWebAccount(@ptrCast(self), account, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityChannelStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e87de30-aa4f-4624-9ad0-d40f3ba0317c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DisableAutoSessionCreation: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        TryGetForWebAccount: *const fn(self: *anyopaque, account: *WebAccount, _r: **UserActivityChannel) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityChannelStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*UserActivityChannel {
        var _r: *UserActivityChannel = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityChannelStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53bc4ddb-bbdf-5984-802a-5305874e205c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **UserActivityChannel) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityContentInfo = extern struct {
    vtable: *const VTable,
    pub fn ToJson(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ToJson(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityContentInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b399e5ad-137f-409d-822d-e1af27ce08dc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ToJson: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityContentInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn FromJson(self: *@This(), value: HSTRING) core.HResult!*UserActivityContentInfo {
        var _r: *UserActivityContentInfo = undefined;
        const _c = self.vtable.FromJson(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityContentInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9988c34b-0386-4bc9-968a-8200b004144f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromJson: *const fn(self: *anyopaque, value: HSTRING, _r: **UserActivityContentInfo) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithActivityId(self: *@This(), activityId: HSTRING) core.HResult!*UserActivity {
        var _r: *UserActivity = undefined;
        const _c = self.vtable.CreateWithActivityId(@ptrCast(self), activityId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c385758-361d-4a67-8a3b-34ca2978f9a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithActivityId: *const fn(self: *anyopaque, activityId: HSTRING, _r: **UserActivity) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityRequest = extern struct {
    vtable: *const VTable,
    pub fn SetUserActivity(self: *@This(), activity: *UserActivity) core.HResult!void {
        const _c = self.vtable.SetUserActivity(@ptrCast(self), activity);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0ef6355-cf35-4ff0-8833-50cb4b72e06d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetUserActivity: *const fn(self: *anyopaque, activity: *UserActivity) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityRequestManager = extern struct {
    vtable: *const VTable,
    pub fn addUserActivityRequested(self: *@This(), handler: *TypedEventHandler(UserActivityRequestManager,UserActivityRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UserActivityRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUserActivityRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UserActivityRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityRequestManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c30be4e-903d-48d6-82d4-4043ed57791b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_UserActivityRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserActivityRequestManager,UserActivityRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UserActivityRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityRequestManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*UserActivityRequestManager {
        var _r: *UserActivityRequestManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityRequestManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0392df1-224a-432c-81e5-0c76b4c4cefa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **UserActivityRequestManager) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserActivityRequest {
        var _r: *UserActivityRequest = undefined;
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4cc7a4c-8229-4cfd-a3bc-c61d318575a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **UserActivityRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivitySession = extern struct {
    vtable: *const VTable,
    pub fn getActivityId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ActivityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivitySession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae434d78-24fa-44a3-ad48-6eda61aa1924";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivityId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivitySessionHistoryItem = extern struct {
    vtable: *const VTable,
    pub fn getUserActivity(self: *@This()) core.HResult!*UserActivity {
        var _r: *UserActivity = undefined;
        const _c = self.vtable.get_UserActivity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_EndTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivitySessionHistoryItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8d59bd3-3e5d-49fd-98d7-6da97521e255";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserActivity: *const fn(self: *anyopaque, _r: **UserActivity) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_EndTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityStatics = extern struct {
    vtable: *const VTable,
    pub fn TryParseFromJson(self: *@This(), json: HSTRING) core.HResult!*UserActivity {
        var _r: *UserActivity = undefined;
        const _c = self.vtable.TryParseFromJson(@ptrCast(self), json, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParseFromJsonArray(self: *@This(), json: HSTRING) core.HResult!*IVector(UserActivity) {
        var _r: *IVector(UserActivity) = undefined;
        const _c = self.vtable.TryParseFromJsonArray(@ptrCast(self), json, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ToJsonArray(self: *@This(), activities: *IIterable(UserActivity)) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ToJsonArray(@ptrCast(self), activities, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c8fd333-0e09-47f6-9ac7-95cf5c39367b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryParseFromJson: *const fn(self: *anyopaque, json: HSTRING, _r: **UserActivity) callconv(.winapi) HRESULT,
        TryParseFromJsonArray: *const fn(self: *anyopaque, json: HSTRING, _r: **IVector(UserActivity)) callconv(.winapi) HRESULT,
        ToJsonArray: *const fn(self: *anyopaque, activities: *IIterable(UserActivity), _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityVisualElements = extern struct {
    vtable: *const VTable,
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_BackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAttribution(self: *@This()) core.HResult!*UserActivityAttribution {
        var _r: *UserActivityAttribution = undefined;
        const _c = self.vtable.get_Attribution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAttribution(self: *@This(), value: *UserActivityAttribution) core.HResult!void {
        const _c = self.vtable.put_Attribution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putContent(self: *@This(), value: *IAdaptiveCard) core.HResult!void {
        const _c = self.vtable.put_Content(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContent(self: *@This()) core.HResult!*IAdaptiveCard {
        var _r: *IAdaptiveCard = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityVisualElements";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94757513-262f-49ef-bbbf-9b75d2e85250";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_BackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Attribution: *const fn(self: *anyopaque, _r: **UserActivityAttribution) callconv(.winapi) HRESULT,
        put_Attribution: *const fn(self: *anyopaque, value: *UserActivityAttribution) callconv(.winapi) HRESULT,
        put_Content: *const fn(self: *anyopaque, value: *IAdaptiveCard) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **IAdaptiveCard) callconv(.winapi) HRESULT,
    };
};
pub const IUserActivityVisualElements2 = extern struct {
    vtable: *const VTable,
    pub fn getAttributionDisplayText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AttributionDisplayText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAttributionDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AttributionDisplayText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.IUserActivityVisualElements2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "caae7fc7-3eef-4359-825c-9d51b9220de3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AttributionDisplayText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AttributionDisplayText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const UserActivity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!UserActivityState {
        const this: *IUserActivity = @ptrCast(self);
        return try this.getState();
    }
    pub fn getActivityId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserActivity = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn getVisualElements(self: *@This()) core.HResult!*UserActivityVisualElements {
        const this: *IUserActivity = @ptrCast(self);
        return try this.getVisualElements();
    }
    pub fn getContentUri(self: *@This()) core.HResult!*Uri {
        const this: *IUserActivity = @ptrCast(self);
        return try this.getContentUri();
    }
    pub fn putContentUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IUserActivity = @ptrCast(self);
        return try this.putContentUri(value);
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        const this: *IUserActivity = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn putContentType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUserActivity = @ptrCast(self);
        return try this.putContentType(value);
    }
    pub fn getFallbackUri(self: *@This()) core.HResult!*Uri {
        const this: *IUserActivity = @ptrCast(self);
        return try this.getFallbackUri();
    }
    pub fn putFallbackUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IUserActivity = @ptrCast(self);
        return try this.putFallbackUri(value);
    }
    pub fn getActivationUri(self: *@This()) core.HResult!*Uri {
        const this: *IUserActivity = @ptrCast(self);
        return try this.getActivationUri();
    }
    pub fn putActivationUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IUserActivity = @ptrCast(self);
        return try this.putActivationUri(value);
    }
    pub fn getContentInfo(self: *@This()) core.HResult!*IUserActivityContentInfo {
        const this: *IUserActivity = @ptrCast(self);
        return try this.getContentInfo();
    }
    pub fn putContentInfo(self: *@This(), value: *IUserActivityContentInfo) core.HResult!void {
        const this: *IUserActivity = @ptrCast(self);
        return try this.putContentInfo(value);
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserActivity = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn CreateSession(self: *@This()) core.HResult!*UserActivitySession {
        const this: *IUserActivity = @ptrCast(self);
        return try this.CreateSession();
    }
    pub fn ToJson(self: *@This()) core.HResult!HSTRING {
        var this: ?*IUserActivity2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserActivity2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToJson();
    }
    pub fn getIsRoamable(self: *@This()) core.HResult!bool {
        var this: ?*IUserActivity3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserActivity3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRoamable();
    }
    pub fn putIsRoamable(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IUserActivity3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserActivity3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsRoamable(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithActivityId(activityId: HSTRING) core.HResult!*UserActivity {
        const _f = @This().IUserActivityFactoryCache.get();
        return try _f.CreateWithActivityId(activityId);
    }
    pub fn TryParseFromJson(json: HSTRING) core.HResult!*UserActivity {
        const _f = @This().IUserActivityStaticsCache.get();
        return try _f.TryParseFromJson(json);
    }
    pub fn TryParseFromJsonArray(json: HSTRING) core.HResult!*IVector(UserActivity) {
        const _f = @This().IUserActivityStaticsCache.get();
        return try _f.TryParseFromJsonArray(json);
    }
    pub fn ToJsonArray(activities: *IIterable(UserActivity)) core.HResult!HSTRING {
        const _f = @This().IUserActivityStaticsCache.get();
        return try _f.ToJsonArray(activities);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivity.GUID;
    pub const IID: Guid = IUserActivity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivity.SIGNATURE);
    var _IUserActivityFactoryCache: FactoryCache(IUserActivityFactory, RUNTIME_NAME) = .{};
    var _IUserActivityStaticsCache: FactoryCache(IUserActivityStatics, RUNTIME_NAME) = .{};
};
pub const UserActivityAttribution = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIconUri(self: *@This()) core.HResult!*Uri {
        const this: *IUserActivityAttribution = @ptrCast(self);
        return try this.getIconUri();
    }
    pub fn putIconUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IUserActivityAttribution = @ptrCast(self);
        return try this.putIconUri(value);
    }
    pub fn getAlternateText(self: *@This()) core.HResult!HSTRING {
        const this: *IUserActivityAttribution = @ptrCast(self);
        return try this.getAlternateText();
    }
    pub fn putAlternateText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUserActivityAttribution = @ptrCast(self);
        return try this.putAlternateText(value);
    }
    pub fn getAddImageQuery(self: *@This()) core.HResult!bool {
        const this: *IUserActivityAttribution = @ptrCast(self);
        return try this.getAddImageQuery();
    }
    pub fn putAddImageQuery(self: *@This(), value: bool) core.HResult!void {
        const this: *IUserActivityAttribution = @ptrCast(self);
        return try this.putAddImageQuery(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUserActivityAttribution.IID)));
    }
    pub fn CreateWithUri(iconUri: *Uri) core.HResult!*UserActivityAttribution {
        const _f = @This().IUserActivityAttributionFactoryCache.get();
        return try _f.CreateWithUri(iconUri);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivityAttribution";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivityAttribution.GUID;
    pub const IID: Guid = IUserActivityAttribution.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivityAttribution.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IUserActivityAttributionFactoryCache: FactoryCache(IUserActivityAttributionFactory, RUNTIME_NAME) = .{};
};
pub const UserActivityChannel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetOrCreateUserActivityAsync(self: *@This(), activityId: HSTRING) core.HResult!*IAsyncOperation(UserActivity) {
        const this: *IUserActivityChannel = @ptrCast(self);
        return try this.GetOrCreateUserActivityAsync(activityId);
    }
    pub fn DeleteActivityAsync(self: *@This(), activityId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IUserActivityChannel = @ptrCast(self);
        return try this.DeleteActivityAsync(activityId);
    }
    pub fn DeleteAllActivitiesAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserActivityChannel = @ptrCast(self);
        return try this.DeleteAllActivitiesAsync();
    }
    pub fn GetRecentUserActivitiesAsync(self: *@This(), maxUniqueActivities: i32) core.HResult!*IAsyncOperation(IVector(UserActivitySessionHistoryItem)) {
        var this: ?*IUserActivityChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserActivityChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRecentUserActivitiesAsync(maxUniqueActivities);
    }
    pub fn GetSessionHistoryItemsForUserActivityAsync(self: *@This(), activityId: HSTRING, startTime: DateTime) core.HResult!*IAsyncOperation(IVector(UserActivitySessionHistoryItem)) {
        var this: ?*IUserActivityChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserActivityChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSessionHistoryItemsForUserActivityAsync(activityId, startTime);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForUser(user: *User) core.HResult!*UserActivityChannel {
        const _f = @This().IUserActivityChannelStatics3Cache.get();
        return try _f.GetForUser(user);
    }
    pub fn GetDefault() core.HResult!*UserActivityChannel {
        const _f = @This().IUserActivityChannelStaticsCache.get();
        return try _f.GetDefault();
    }
    pub fn DisableAutoSessionCreation() core.HResult!void {
        const _f = @This().IUserActivityChannelStatics2Cache.get();
        return try _f.DisableAutoSessionCreation();
    }
    pub fn TryGetForWebAccount(account: *WebAccount) core.HResult!*UserActivityChannel {
        const _f = @This().IUserActivityChannelStatics2Cache.get();
        return try _f.TryGetForWebAccount(account);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivityChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivityChannel.GUID;
    pub const IID: Guid = IUserActivityChannel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivityChannel.SIGNATURE);
    var _IUserActivityChannelStatics3Cache: FactoryCache(IUserActivityChannelStatics3, RUNTIME_NAME) = .{};
    var _IUserActivityChannelStaticsCache: FactoryCache(IUserActivityChannelStatics, RUNTIME_NAME) = .{};
    var _IUserActivityChannelStatics2Cache: FactoryCache(IUserActivityChannelStatics2, RUNTIME_NAME) = .{};
};
pub const UserActivityContentInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ToJson(self: *@This()) core.HResult!HSTRING {
        const this: *IUserActivityContentInfo = @ptrCast(self);
        return try this.ToJson();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromJson(value: HSTRING) core.HResult!*UserActivityContentInfo {
        const _f = @This().IUserActivityContentInfoStaticsCache.get();
        return try _f.FromJson(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivityContentInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivityContentInfo.GUID;
    pub const IID: Guid = IUserActivityContentInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivityContentInfo.SIGNATURE);
    var _IUserActivityContentInfoStaticsCache: FactoryCache(IUserActivityContentInfoStatics, RUNTIME_NAME) = .{};
};
pub const UserActivityRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetUserActivity(self: *@This(), activity: *UserActivity) core.HResult!void {
        const this: *IUserActivityRequest = @ptrCast(self);
        return try this.SetUserActivity(activity);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivityRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivityRequest.GUID;
    pub const IID: Guid = IUserActivityRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivityRequest.SIGNATURE);
};
pub const UserActivityRequestManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addUserActivityRequested(self: *@This(), handler: *TypedEventHandler(UserActivityRequestManager,UserActivityRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserActivityRequestManager = @ptrCast(self);
        return try this.addUserActivityRequested(handler);
    }
    pub fn removeUserActivityRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserActivityRequestManager = @ptrCast(self);
        return try this.removeUserActivityRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*UserActivityRequestManager {
        const _f = @This().IUserActivityRequestManagerStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivityRequestManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivityRequestManager.GUID;
    pub const IID: Guid = IUserActivityRequestManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivityRequestManager.SIGNATURE);
    var _IUserActivityRequestManagerStaticsCache: FactoryCache(IUserActivityRequestManagerStatics, RUNTIME_NAME) = .{};
};
pub const UserActivityRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*UserActivityRequest {
        const this: *IUserActivityRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IUserActivityRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivityRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivityRequestedEventArgs.GUID;
    pub const IID: Guid = IUserActivityRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivityRequestedEventArgs.SIGNATURE);
};
pub const UserActivitySession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivityId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserActivitySession = @ptrCast(self);
        return try this.getActivityId();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivitySession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivitySession.GUID;
    pub const IID: Guid = IUserActivitySession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivitySession.SIGNATURE);
};
pub const UserActivitySessionHistoryItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUserActivity(self: *@This()) core.HResult!*UserActivity {
        const this: *IUserActivitySessionHistoryItem = @ptrCast(self);
        return try this.getUserActivity();
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IUserActivitySessionHistoryItem = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IUserActivitySessionHistoryItem = @ptrCast(self);
        return try this.getEndTime();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivitySessionHistoryItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivitySessionHistoryItem.GUID;
    pub const IID: Guid = IUserActivitySessionHistoryItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivitySessionHistoryItem.SIGNATURE);
};
pub const UserActivityState = enum(i32) {
    New = 0,
    Published = 1,
};
pub const UserActivityVisualElements = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.getDisplayText();
    }
    pub fn putDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.putDisplayText(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.putBackgroundColor(value);
    }
    pub fn getAttribution(self: *@This()) core.HResult!*UserActivityAttribution {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.getAttribution();
    }
    pub fn putAttribution(self: *@This(), value: *UserActivityAttribution) core.HResult!void {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.putAttribution(value);
    }
    pub fn putContent(self: *@This(), value: *IAdaptiveCard) core.HResult!void {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.putContent(value);
    }
    pub fn getContent(self: *@This()) core.HResult!*IAdaptiveCard {
        const this: *IUserActivityVisualElements = @ptrCast(self);
        return try this.getContent();
    }
    pub fn getAttributionDisplayText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IUserActivityVisualElements2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserActivityVisualElements2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributionDisplayText();
    }
    pub fn putAttributionDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IUserActivityVisualElements2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserActivityVisualElements2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAttributionDisplayText(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.UserActivityVisualElements";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserActivityVisualElements.GUID;
    pub const IID: Guid = IUserActivityVisualElements.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserActivityVisualElements.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const WebAccount = @import("../Security/Credentials.zig").WebAccount;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAdaptiveCard = @import("../UI/Shell.zig").IAdaptiveCard;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const User = @import("../System.zig").User;
pub const Core = @import("./UserActivities/Core.zig");
