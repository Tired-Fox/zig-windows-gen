pub const IUserNotificationListener = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(UserNotificationListenerAccessStatus) {
        var _r: *IAsyncOperation(UserNotificationListenerAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccessStatus(self: *@This()) core.HResult!UserNotificationListenerAccessStatus {
        var _r: UserNotificationListenerAccessStatus = undefined;
        const _c = self.vtable.GetAccessStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addNotificationChanged(self: *@This(), handler: *TypedEventHandler(UserNotificationListener,UserNotificationChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NotificationChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNotificationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NotificationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetNotificationsAsync(self: *@This(), kinds: NotificationKinds) core.HResult!*IAsyncOperation(IVectorView(UserNotification)) {
        var _r: *IAsyncOperation(IVectorView(UserNotification)) = undefined;
        const _c = self.vtable.GetNotificationsAsync(@ptrCast(self), kinds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNotification(self: *@This(), notificationId: u32) core.HResult!*UserNotification {
        var _r: *UserNotification = undefined;
        const _c = self.vtable.GetNotification(@ptrCast(self), notificationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearNotifications(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearNotifications(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveNotification(self: *@This(), notificationId: u32) core.HResult!void {
        const _c = self.vtable.RemoveNotification(@ptrCast(self), notificationId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.Management.IUserNotificationListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62553e41-8a06-4cef-8215-6033a5be4b03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(UserNotificationListenerAccessStatus)) callconv(.winapi) HRESULT,
        GetAccessStatus: *const fn(self: *anyopaque, _r: *UserNotificationListenerAccessStatus) callconv(.winapi) HRESULT,
        add_NotificationChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserNotificationListener,UserNotificationChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NotificationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetNotificationsAsync: *const fn(self: *anyopaque, kinds: NotificationKinds, _r: **IAsyncOperation(IVectorView(UserNotification))) callconv(.winapi) HRESULT,
        GetNotification: *const fn(self: *anyopaque, notificationId: u32, _r: **UserNotification) callconv(.winapi) HRESULT,
        ClearNotifications: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RemoveNotification: *const fn(self: *anyopaque, notificationId: u32) callconv(.winapi) HRESULT,
    };
};
pub const IUserNotificationListenerStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*UserNotificationListener {
        var _r: *UserNotificationListener = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.Management.IUserNotificationListenerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff6123cf-4386-4aa3-b73d-b804e5b63b23";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **UserNotificationListener) callconv(.winapi) HRESULT,
    };
};
pub const UserNotificationListener = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(UserNotificationListenerAccessStatus) {
        const this: *IUserNotificationListener = @ptrCast(self);
        return try this.RequestAccessAsync();
    }
    pub fn GetAccessStatus(self: *@This()) core.HResult!UserNotificationListenerAccessStatus {
        const this: *IUserNotificationListener = @ptrCast(self);
        return try this.GetAccessStatus();
    }
    pub fn addNotificationChanged(self: *@This(), handler: *TypedEventHandler(UserNotificationListener,UserNotificationChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IUserNotificationListener = @ptrCast(self);
        return try this.addNotificationChanged(handler);
    }
    pub fn removeNotificationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IUserNotificationListener = @ptrCast(self);
        return try this.removeNotificationChanged(token);
    }
    pub fn GetNotificationsAsync(self: *@This(), kinds: NotificationKinds) core.HResult!*IAsyncOperation(IVectorView(UserNotification)) {
        const this: *IUserNotificationListener = @ptrCast(self);
        return try this.GetNotificationsAsync(kinds);
    }
    pub fn GetNotification(self: *@This(), notificationId: u32) core.HResult!*UserNotification {
        const this: *IUserNotificationListener = @ptrCast(self);
        return try this.GetNotification(notificationId);
    }
    pub fn ClearNotifications(self: *@This()) core.HResult!void {
        const this: *IUserNotificationListener = @ptrCast(self);
        return try this.ClearNotifications();
    }
    pub fn RemoveNotification(self: *@This(), notificationId: u32) core.HResult!void {
        const this: *IUserNotificationListener = @ptrCast(self);
        return try this.RemoveNotification(notificationId);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*UserNotificationListener {
        const factory = @This().IUserNotificationListenerStaticsCache.get();
        return try factory.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.Management.UserNotificationListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserNotificationListener.GUID;
    pub const IID: Guid = IUserNotificationListener.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserNotificationListener.SIGNATURE);
    var _IUserNotificationListenerStaticsCache: FactoryCache(IUserNotificationListenerStatics, RUNTIME_NAME) = .{};
};
pub const UserNotificationListenerAccessStatus = enum(i32) {
    Unspecified = 0,
    Allowed = 1,
    Denied = 2,
};
const UserNotification = @import("../Notifications.zig").UserNotification;
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const UserNotificationChangedEventArgs = @import("../Notifications.zig").UserNotificationChangedEventArgs;
const NotificationKinds = @import("../Notifications.zig").NotificationKinds;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
