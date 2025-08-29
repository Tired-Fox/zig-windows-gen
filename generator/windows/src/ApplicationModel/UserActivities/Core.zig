pub const CoreUserActivityManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateUserActivitySessionInBackground(activity: *UserActivity) core.HResult!*UserActivitySession {
        const factory = @This().ICoreUserActivityManagerStaticsCache.get();
        return try factory.CreateUserActivitySessionInBackground(activity);
    }
    pub fn DeleteUserActivitySessionsInTimeRangeAsync(channel: *UserActivityChannel, startTime: DateTime, endTime: DateTime) core.HResult!*IAsyncAction {
        const factory = @This().ICoreUserActivityManagerStaticsCache.get();
        return try factory.DeleteUserActivitySessionsInTimeRangeAsync(channel, startTime, endTime);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.Core.CoreUserActivityManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICoreUserActivityManagerStaticsCache: FactoryCache(ICoreUserActivityManagerStatics, RUNTIME_NAME) = .{};
};
pub const ICoreUserActivityManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateUserActivitySessionInBackground(self: *@This(), activity: *UserActivity) core.HResult!*UserActivitySession {
        var _r: *UserActivitySession = undefined;
        const _c = self.vtable.CreateUserActivitySessionInBackground(@ptrCast(self), activity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteUserActivitySessionsInTimeRangeAsync(self: *@This(), channel: *UserActivityChannel, startTime: DateTime, endTime: DateTime) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteUserActivitySessionsInTimeRangeAsync(@ptrCast(self), channel, startTime, endTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserActivities.Core.ICoreUserActivityManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca3adb02-a4be-4d4d-bfa8-6795f4264efb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateUserActivitySessionInBackground: *const fn(self: *anyopaque, activity: *UserActivity, _r: **UserActivitySession) callconv(.winapi) HRESULT,
        DeleteUserActivitySessionsInTimeRangeAsync: *const fn(self: *anyopaque, channel: *UserActivityChannel, startTime: DateTime, endTime: DateTime, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const UserActivityChannel = @import("../UserActivities.zig").UserActivityChannel;
const UserActivitySession = @import("../UserActivities.zig").UserActivitySession;
const UserActivity = @import("../UserActivities.zig").UserActivity;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const DateTime = @import("../../Foundation.zig").DateTime;
const HSTRING = @import("../../root.zig").HSTRING;
