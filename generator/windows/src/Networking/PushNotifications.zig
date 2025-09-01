pub const IPushNotificationChannel = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPushNotificationReceived(self: *@This(), handler: *TypedEventHandler(PushNotificationChannel,PushNotificationReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PushNotificationReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePushNotificationReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PushNotificationReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IPushNotificationChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b28102e-ef0b-4f39-9b8a-a3c194de7081";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExpirationTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_PushNotificationReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(PushNotificationChannel,PushNotificationReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PushNotificationReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPushNotificationChannelManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn CreatePushNotificationChannelForApplicationAsync(self: *@This()) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var _r: *IAsyncOperation(PushNotificationChannel) = undefined;
        const _c = self.vtable.CreatePushNotificationChannelForApplicationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePushNotificationChannelForApplicationAsyncWithApplicationId(self: *@This(), applicationId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var _r: *IAsyncOperation(PushNotificationChannel) = undefined;
        const _c = self.vtable.CreatePushNotificationChannelForApplicationAsyncWithApplicationId(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePushNotificationChannelForSecondaryTileAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var _r: *IAsyncOperation(PushNotificationChannel) = undefined;
        const _c = self.vtable.CreatePushNotificationChannelForSecondaryTileAsync(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4c45704-1182-42c7-8890-f563c4890dc4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePushNotificationChannelForApplicationAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PushNotificationChannel)) callconv(.winapi) HRESULT,
        CreatePushNotificationChannelForApplicationAsyncWithApplicationId: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **IAsyncOperation(PushNotificationChannel)) callconv(.winapi) HRESULT,
        CreatePushNotificationChannelForSecondaryTileAsync: *const fn(self: *anyopaque, tileId: HSTRING, _r: **IAsyncOperation(PushNotificationChannel)) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IPushNotificationChannelManagerForUser2 = extern struct {
    vtable: *const VTable,
    pub fn CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync(self: *@This(), appServerKey: *IBuffer, channelId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var _r: *IAsyncOperation(PushNotificationChannel) = undefined;
        const _c = self.vtable.CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync(@ptrCast(self), appServerKey, channelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithAppId(self: *@This(), appServerKey: *IBuffer, channelId: HSTRING, appId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var _r: *IAsyncOperation(PushNotificationChannel) = undefined;
        const _c = self.vtable.CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithAppId(@ptrCast(self), appServerKey, channelId, appId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c38b066a-7cc1-4dac-87fd-be6e920414a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync: *const fn(self: *anyopaque, appServerKey: *IBuffer, channelId: HSTRING, _r: **IAsyncOperation(PushNotificationChannel)) callconv(.winapi) HRESULT,
        CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithAppId: *const fn(self: *anyopaque, appServerKey: *IBuffer, channelId: HSTRING, appId: HSTRING, _r: **IAsyncOperation(PushNotificationChannel)) callconv(.winapi) HRESULT,
    };
};
pub const IPushNotificationChannelManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreatePushNotificationChannelForApplicationAsync(self: *@This()) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var _r: *IAsyncOperation(PushNotificationChannel) = undefined;
        const _c = self.vtable.CreatePushNotificationChannelForApplicationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePushNotificationChannelForApplicationAsyncWithApplicationId(self: *@This(), applicationId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var _r: *IAsyncOperation(PushNotificationChannel) = undefined;
        const _c = self.vtable.CreatePushNotificationChannelForApplicationAsyncWithApplicationId(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePushNotificationChannelForSecondaryTileAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var _r: *IAsyncOperation(PushNotificationChannel) = undefined;
        const _c = self.vtable.CreatePushNotificationChannelForSecondaryTileAsync(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IPushNotificationChannelManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8baf9b65-77a1-4588-bd19-861529a9dcf0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePushNotificationChannelForApplicationAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PushNotificationChannel)) callconv(.winapi) HRESULT,
        CreatePushNotificationChannelForApplicationAsyncWithApplicationId: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **IAsyncOperation(PushNotificationChannel)) callconv(.winapi) HRESULT,
        CreatePushNotificationChannelForSecondaryTileAsync: *const fn(self: *anyopaque, tileId: HSTRING, _r: **IAsyncOperation(PushNotificationChannel)) callconv(.winapi) HRESULT,
    };
};
pub const IPushNotificationChannelManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*PushNotificationChannelManagerForUser {
        var _r: *PushNotificationChannelManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IPushNotificationChannelManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b444a65d-a7e9-4b28-950e-f375a907f9df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **PushNotificationChannelManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IPushNotificationChannelManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*PushNotificationChannelManagerForUser {
        var _r: *PushNotificationChannelManagerForUser = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IPushNotificationChannelManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4701fefe-0ede-4a3f-ae78-bfa471496925";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **PushNotificationChannelManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IPushNotificationChannelManagerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn addChannelsRevoked(self: *@This(), handler: *EventHandler(PushNotificationChannelsRevokedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ChannelsRevoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChannelsRevoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ChannelsRevoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IPushNotificationChannelManagerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc540efb-7820-5a5b-9c01-b4757f774025";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ChannelsRevoked: *const fn(self: *anyopaque, handler: *EventHandler(PushNotificationChannelsRevokedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ChannelsRevoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPushNotificationChannelsRevokedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IPushNotificationChannelsRevokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20e1a24c-1a34-5beb-aae2-40c232c8c140";
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
pub const IPushNotificationReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Cancel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCancel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Cancel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNotificationType(self: *@This()) core.HResult!PushNotificationType {
        var _r: PushNotificationType = undefined;
        const _c = self.vtable.get_NotificationType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getToastNotification(self: *@This()) core.HResult!*ToastNotification {
        var _r: *ToastNotification = undefined;
        const _c = self.vtable.get_ToastNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTileNotification(self: *@This()) core.HResult!*TileNotification {
        var _r: *TileNotification = undefined;
        const _c = self.vtable.get_TileNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBadgeNotification(self: *@This()) core.HResult!*BadgeNotification {
        var _r: *BadgeNotification = undefined;
        const _c = self.vtable.get_BadgeNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawNotification(self: *@This()) core.HResult!*RawNotification {
        var _r: *RawNotification = undefined;
        const _c = self.vtable.get_RawNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1065e0c-36cd-484c-b935-0a99b753cf00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Cancel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Cancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_NotificationType: *const fn(self: *anyopaque, _r: *PushNotificationType) callconv(.winapi) HRESULT,
        get_ToastNotification: *const fn(self: *anyopaque, _r: **ToastNotification) callconv(.winapi) HRESULT,
        get_TileNotification: *const fn(self: *anyopaque, _r: **TileNotification) callconv(.winapi) HRESULT,
        get_BadgeNotification: *const fn(self: *anyopaque, _r: **BadgeNotification) callconv(.winapi) HRESULT,
        get_RawNotification: *const fn(self: *anyopaque, _r: **RawNotification) callconv(.winapi) HRESULT,
    };
};
pub const IRawNotification = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IRawNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a227281-3b79-42ac-9963-22ab00d4f0b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRawNotification2 = extern struct {
    vtable: *const VTable,
    pub fn getHeaders(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var _r: *IMapView(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Headers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChannelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ChannelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IRawNotification2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6d0cf19-0c6f-4cdd-9424-eec5be014d26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Headers: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        get_ChannelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRawNotification3 = extern struct {
    vtable: *const VTable,
    pub fn getContentBytes(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ContentBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.IRawNotification3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62737dde-8a73-424c-ab44-5635f40a96e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentBytes: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const PushNotificationChannel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!HSTRING {
        const this: *IPushNotificationChannel = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!DateTime {
        const this: *IPushNotificationChannel = @ptrCast(self);
        return try this.getExpirationTime();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const this: *IPushNotificationChannel = @ptrCast(self);
        return try this.Close();
    }
    pub fn addPushNotificationReceived(self: *@This(), handler: *TypedEventHandler(PushNotificationChannel,PushNotificationReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPushNotificationChannel = @ptrCast(self);
        return try this.addPushNotificationReceived(handler);
    }
    pub fn removePushNotificationReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPushNotificationChannel = @ptrCast(self);
        return try this.removePushNotificationReceived(token);
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.PushNotificationChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPushNotificationChannel.GUID;
    pub const IID: Guid = IPushNotificationChannel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPushNotificationChannel.SIGNATURE);
};
pub const PushNotificationChannelManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*PushNotificationChannelManagerForUser {
        const _f = @This().IPushNotificationChannelManagerStatics3Cache.get();
        return try _f.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*PushNotificationChannelManagerForUser {
        const _f = @This().IPushNotificationChannelManagerStatics2Cache.get();
        return try _f.GetForUser(user);
    }
    pub fn addChannelsRevoked(handler: *EventHandler(PushNotificationChannelsRevokedEventArgs)) core.HResult!EventRegistrationToken {
        const _f = @This().IPushNotificationChannelManagerStatics4Cache.get();
        return try _f.addChannelsRevoked(handler);
    }
    pub fn removeChannelsRevoked(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IPushNotificationChannelManagerStatics4Cache.get();
        return try _f.removeChannelsRevoked(token);
    }
    pub fn CreatePushNotificationChannelForApplicationAsync() core.HResult!*IAsyncOperation(PushNotificationChannel) {
        const _f = @This().IPushNotificationChannelManagerStaticsCache.get();
        return try _f.CreatePushNotificationChannelForApplicationAsync();
    }
    pub fn CreatePushNotificationChannelForApplicationAsyncWithApplicationId(applicationId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        const _f = @This().IPushNotificationChannelManagerStaticsCache.get();
        return try _f.CreatePushNotificationChannelForApplicationAsyncWithApplicationId(applicationId);
    }
    pub fn CreatePushNotificationChannelForSecondaryTileAsync(tileId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        const _f = @This().IPushNotificationChannelManagerStaticsCache.get();
        return try _f.CreatePushNotificationChannelForSecondaryTileAsync(tileId);
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.PushNotificationChannelManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPushNotificationChannelManagerStatics3Cache: FactoryCache(IPushNotificationChannelManagerStatics3, RUNTIME_NAME) = .{};
    var _IPushNotificationChannelManagerStatics2Cache: FactoryCache(IPushNotificationChannelManagerStatics2, RUNTIME_NAME) = .{};
    var _IPushNotificationChannelManagerStatics4Cache: FactoryCache(IPushNotificationChannelManagerStatics4, RUNTIME_NAME) = .{};
    var _IPushNotificationChannelManagerStaticsCache: FactoryCache(IPushNotificationChannelManagerStatics, RUNTIME_NAME) = .{};
};
pub const PushNotificationChannelManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreatePushNotificationChannelForApplicationAsync(self: *@This()) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        const this: *IPushNotificationChannelManagerForUser = @ptrCast(self);
        return try this.CreatePushNotificationChannelForApplicationAsync();
    }
    pub fn CreatePushNotificationChannelForApplicationAsyncWithApplicationId(self: *@This(), applicationId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        const this: *IPushNotificationChannelManagerForUser = @ptrCast(self);
        return try this.CreatePushNotificationChannelForApplicationAsyncWithApplicationId(applicationId);
    }
    pub fn CreatePushNotificationChannelForSecondaryTileAsync(self: *@This(), tileId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        const this: *IPushNotificationChannelManagerForUser = @ptrCast(self);
        return try this.CreatePushNotificationChannelForSecondaryTileAsync(tileId);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IPushNotificationChannelManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub fn CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync(self: *@This(), appServerKey: *IBuffer, channelId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var this: ?*IPushNotificationChannelManagerForUser2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPushNotificationChannelManagerForUser2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync(appServerKey, channelId);
    }
    pub fn CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithAppId(self: *@This(), appServerKey: *IBuffer, channelId: HSTRING, appId: HSTRING) core.HResult!*IAsyncOperation(PushNotificationChannel) {
        var this: ?*IPushNotificationChannelManagerForUser2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPushNotificationChannelManagerForUser2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithAppId(appServerKey, channelId, appId);
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.PushNotificationChannelManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPushNotificationChannelManagerForUser.GUID;
    pub const IID: Guid = IPushNotificationChannelManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPushNotificationChannelManagerForUser.SIGNATURE);
};
pub const PushNotificationChannelsRevokedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.PushNotificationChannelsRevokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPushNotificationChannelsRevokedEventArgs.GUID;
    pub const IID: Guid = IPushNotificationChannelsRevokedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPushNotificationChannelsRevokedEventArgs.SIGNATURE);
};
pub const PushNotificationReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const this: *IPushNotificationReceivedEventArgs = @ptrCast(self);
        return try this.putCancel(value);
    }
    pub fn getCancel(self: *@This()) core.HResult!bool {
        const this: *IPushNotificationReceivedEventArgs = @ptrCast(self);
        return try this.getCancel();
    }
    pub fn getNotificationType(self: *@This()) core.HResult!PushNotificationType {
        const this: *IPushNotificationReceivedEventArgs = @ptrCast(self);
        return try this.getNotificationType();
    }
    pub fn getToastNotification(self: *@This()) core.HResult!*ToastNotification {
        const this: *IPushNotificationReceivedEventArgs = @ptrCast(self);
        return try this.getToastNotification();
    }
    pub fn getTileNotification(self: *@This()) core.HResult!*TileNotification {
        const this: *IPushNotificationReceivedEventArgs = @ptrCast(self);
        return try this.getTileNotification();
    }
    pub fn getBadgeNotification(self: *@This()) core.HResult!*BadgeNotification {
        const this: *IPushNotificationReceivedEventArgs = @ptrCast(self);
        return try this.getBadgeNotification();
    }
    pub fn getRawNotification(self: *@This()) core.HResult!*RawNotification {
        const this: *IPushNotificationReceivedEventArgs = @ptrCast(self);
        return try this.getRawNotification();
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.PushNotificationReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPushNotificationReceivedEventArgs.GUID;
    pub const IID: Guid = IPushNotificationReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPushNotificationReceivedEventArgs.SIGNATURE);
};
pub const PushNotificationType = enum(i32) {
    Toast = 0,
    Tile = 1,
    Badge = 2,
    Raw = 3,
    TileFlyout = 4,
};
pub const RawNotification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!HSTRING {
        const this: *IRawNotification = @ptrCast(self);
        return try this.getContent();
    }
    pub fn getHeaders(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var this: ?*IRawNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRawNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHeaders();
    }
    pub fn getChannelId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IRawNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRawNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChannelId();
    }
    pub fn getContentBytes(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IRawNotification3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRawNotification3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentBytes();
    }
    pub const NAME: []const u8 = "Windows.Networking.PushNotifications.RawNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRawNotification.GUID;
    pub const IID: Guid = IRawNotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRawNotification.SIGNATURE);
};
const TileNotification = @import("../UI/Notifications.zig").TileNotification;
const Guid = @import("../root.zig").Guid;
const IUnknown = @import("../root.zig").IUnknown;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const DateTime = @import("../Foundation.zig").DateTime;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const ToastNotification = @import("../UI/Notifications.zig").ToastNotification;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const BadgeNotification = @import("../UI/Notifications.zig").BadgeNotification;
const User = @import("../System.zig").User;
const HSTRING = @import("../root.zig").HSTRING;
