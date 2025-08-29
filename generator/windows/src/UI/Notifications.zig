pub const AdaptiveNotificationContentKind = enum(i32) {
    Text = 0,
};
pub const AdaptiveNotificationText = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IAdaptiveNotificationText = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAdaptiveNotificationText = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IAdaptiveNotificationText = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAdaptiveNotificationText = @ptrCast(self);
        return try this.putLanguage(value);
    }
    pub fn getKind(self: *@This()) core.HResult!AdaptiveNotificationContentKind {
        var this: ?*IAdaptiveNotificationContent = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveNotificationContent.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getHints(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var this: ?*IAdaptiveNotificationContent = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveNotificationContent.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHints();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAdaptiveNotificationText.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.AdaptiveNotificationText";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveNotificationText.GUID;
    pub const IID: Guid = IAdaptiveNotificationText.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveNotificationText.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BadgeNotification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        const this: *IBadgeNotification = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IBadgeNotification = @ptrCast(self);
        return try this.putExpirationTime(value);
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IBadgeNotification = @ptrCast(self);
        return try this.getExpirationTime();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateBadgeNotification(content: *XmlDocument) core.HResult!*BadgeNotification {
        const factory = @This().IBadgeNotificationFactoryCache.get();
        return try factory.CreateBadgeNotification(content);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.BadgeNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBadgeNotification.GUID;
    pub const IID: Guid = IBadgeNotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBadgeNotification.SIGNATURE);
    var _IBadgeNotificationFactoryCache: FactoryCache(IBadgeNotificationFactory, RUNTIME_NAME) = .{};
};
pub const BadgeTemplateType = enum(i32) {
    BadgeGlyph = 0,
    BadgeNumber = 1,
};
pub const BadgeUpdateManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateBadgeUpdaterForApplication() core.HResult!*BadgeUpdater {
        const factory = @This().IBadgeUpdateManagerStaticsCache.get();
        return try factory.CreateBadgeUpdaterForApplication();
    }
    pub fn CreateBadgeUpdaterForApplicationWithApplicationId(applicationId: HSTRING) core.HResult!*BadgeUpdater {
        const factory = @This().IBadgeUpdateManagerStaticsCache.get();
        return try factory.CreateBadgeUpdaterForApplicationWithApplicationId(applicationId);
    }
    pub fn CreateBadgeUpdaterForSecondaryTile(tileId: HSTRING) core.HResult!*BadgeUpdater {
        const factory = @This().IBadgeUpdateManagerStaticsCache.get();
        return try factory.CreateBadgeUpdaterForSecondaryTile(tileId);
    }
    pub fn GetTemplateContent(ty: BadgeTemplateType) core.HResult!*XmlDocument {
        const factory = @This().IBadgeUpdateManagerStaticsCache.get();
        return try factory.GetTemplateContent(ty);
    }
    pub fn GetForUser(user: *User) core.HResult!*BadgeUpdateManagerForUser {
        const factory = @This().IBadgeUpdateManagerStatics2Cache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.BadgeUpdateManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBadgeUpdateManagerStaticsCache: FactoryCache(IBadgeUpdateManagerStatics, RUNTIME_NAME) = .{};
    var _IBadgeUpdateManagerStatics2Cache: FactoryCache(IBadgeUpdateManagerStatics2, RUNTIME_NAME) = .{};
};
pub const BadgeUpdateManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateBadgeUpdaterForApplication(self: *@This()) core.HResult!*BadgeUpdater {
        const this: *IBadgeUpdateManagerForUser = @ptrCast(self);
        return try this.CreateBadgeUpdaterForApplication();
    }
    pub fn CreateBadgeUpdaterForApplication(self: *@This(), applicationId: HSTRING) core.HResult!*BadgeUpdater {
        const this: *IBadgeUpdateManagerForUser = @ptrCast(self);
        return try this.CreateBadgeUpdaterForApplication(applicationId);
    }
    pub fn CreateBadgeUpdaterForSecondaryTile(self: *@This(), tileId: HSTRING) core.HResult!*BadgeUpdater {
        const this: *IBadgeUpdateManagerForUser = @ptrCast(self);
        return try this.CreateBadgeUpdaterForSecondaryTile(tileId);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IBadgeUpdateManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.BadgeUpdateManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBadgeUpdateManagerForUser.GUID;
    pub const IID: Guid = IBadgeUpdateManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBadgeUpdateManagerForUser.SIGNATURE);
};
pub const BadgeUpdater = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Update(self: *@This(), notification: *BadgeNotification) core.HResult!void {
        const this: *IBadgeUpdater = @ptrCast(self);
        return try this.Update(notification);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IBadgeUpdater = @ptrCast(self);
        return try this.Clear();
    }
    pub fn StartPeriodicUpdate(self: *@This(), badgeContent: *Uri, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const this: *IBadgeUpdater = @ptrCast(self);
        return try this.StartPeriodicUpdate(badgeContent, requestedInterval);
    }
    pub fn StartPeriodicUpdateWithStartTimeWithRequestedInterval(self: *@This(), badgeContent: *Uri, startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const this: *IBadgeUpdater = @ptrCast(self);
        return try this.StartPeriodicUpdateWithStartTimeWithRequestedInterval(badgeContent, startTime, requestedInterval);
    }
    pub fn StopPeriodicUpdate(self: *@This()) core.HResult!void {
        const this: *IBadgeUpdater = @ptrCast(self);
        return try this.StopPeriodicUpdate();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.BadgeUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBadgeUpdater.GUID;
    pub const IID: Guid = IBadgeUpdater.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBadgeUpdater.SIGNATURE);
};
pub const IAdaptiveNotificationContent = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!AdaptiveNotificationContentKind {
        var _r: AdaptiveNotificationContentKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHints(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Hints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IAdaptiveNotificationContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb0dbe66-7448-448d-9db8-d78acd2abba9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *AdaptiveNotificationContentKind) callconv(.winapi) HRESULT,
        get_Hints: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveNotificationText = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Text(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Language(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IAdaptiveNotificationText";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46d4a3be-609a-4326-a40b-bfde872034a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Language: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBadgeNotification = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ExpirationTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IBadgeNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "075cb4ca-d08a-4e2f-9233-7e289c1f7722";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        put_ExpirationTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ExpirationTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IBadgeNotificationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateBadgeNotification(self: *@This(), content: *XmlDocument) core.HResult!*BadgeNotification {
        var _r: *BadgeNotification = undefined;
        const _c = self.vtable.CreateBadgeNotification(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IBadgeNotificationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "edf255ce-0618-4d59-948a-5a61040c52f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateBadgeNotification: *const fn(self: *anyopaque, content: *XmlDocument, _r: **BadgeNotification) callconv(.winapi) HRESULT,
    };
};
pub const IBadgeUpdateManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn CreateBadgeUpdaterForApplication(self: *@This()) core.HResult!*BadgeUpdater {
        var _r: *BadgeUpdater = undefined;
        const _c = self.vtable.CreateBadgeUpdaterForApplication(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBadgeUpdaterForApplication(self: *@This(), applicationId: HSTRING) core.HResult!*BadgeUpdater {
        var _r: *BadgeUpdater = undefined;
        const _c = self.vtable.CreateBadgeUpdaterForApplication(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBadgeUpdaterForSecondaryTile(self: *@This(), tileId: HSTRING) core.HResult!*BadgeUpdater {
        var _r: *BadgeUpdater = undefined;
        const _c = self.vtable.CreateBadgeUpdaterForSecondaryTile(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IBadgeUpdateManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "996b21bc-0386-44e5-ba8d-0c1077a62e92";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateBadgeUpdaterForApplication: *const fn(self: *anyopaque, _r: **BadgeUpdater) callconv(.winapi) HRESULT,
        CreateBadgeUpdaterForApplication: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **BadgeUpdater) callconv(.winapi) HRESULT,
        CreateBadgeUpdaterForSecondaryTile: *const fn(self: *anyopaque, tileId: HSTRING, _r: **BadgeUpdater) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IBadgeUpdateManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateBadgeUpdaterForApplication(self: *@This()) core.HResult!*BadgeUpdater {
        var _r: *BadgeUpdater = undefined;
        const _c = self.vtable.CreateBadgeUpdaterForApplication(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBadgeUpdaterForApplication(self: *@This(), applicationId: HSTRING) core.HResult!*BadgeUpdater {
        var _r: *BadgeUpdater = undefined;
        const _c = self.vtable.CreateBadgeUpdaterForApplication(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBadgeUpdaterForSecondaryTile(self: *@This(), tileId: HSTRING) core.HResult!*BadgeUpdater {
        var _r: *BadgeUpdater = undefined;
        const _c = self.vtable.CreateBadgeUpdaterForSecondaryTile(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTemplateContent(self: *@This(), ty: BadgeTemplateType) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.GetTemplateContent(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IBadgeUpdateManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33400faa-6dd5-4105-aebc-9b50fca492da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateBadgeUpdaterForApplication: *const fn(self: *anyopaque, _r: **BadgeUpdater) callconv(.winapi) HRESULT,
        CreateBadgeUpdaterForApplication: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **BadgeUpdater) callconv(.winapi) HRESULT,
        CreateBadgeUpdaterForSecondaryTile: *const fn(self: *anyopaque, tileId: HSTRING, _r: **BadgeUpdater) callconv(.winapi) HRESULT,
        GetTemplateContent: *const fn(self: *anyopaque, ty: BadgeTemplateType, _r: **XmlDocument) callconv(.winapi) HRESULT,
    };
};
pub const IBadgeUpdateManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*BadgeUpdateManagerForUser {
        var _r: *BadgeUpdateManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IBadgeUpdateManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "979a35ce-f940-48bf-94e8-ca244d400b41";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **BadgeUpdateManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IBadgeUpdater = extern struct {
    vtable: *const VTable,
    pub fn Update(self: *@This(), notification: *BadgeNotification) core.HResult!void {
        const _c = self.vtable.Update(@ptrCast(self), notification);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartPeriodicUpdate(self: *@This(), badgeContent: *Uri, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const _c = self.vtable.StartPeriodicUpdate(@ptrCast(self), badgeContent, requestedInterval);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartPeriodicUpdateWithStartTimeWithRequestedInterval(self: *@This(), badgeContent: *Uri, startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const _c = self.vtable.StartPeriodicUpdateWithStartTimeWithRequestedInterval(@ptrCast(self), badgeContent, startTime, requestedInterval);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopPeriodicUpdate(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopPeriodicUpdate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IBadgeUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5fa1fd4-7562-4f6c-bfa3-1b6ed2e57f2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Update: *const fn(self: *anyopaque, notification: *BadgeNotification) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartPeriodicUpdate: *const fn(self: *anyopaque, badgeContent: *Uri, requestedInterval: PeriodicUpdateRecurrence) callconv(.winapi) HRESULT,
        StartPeriodicUpdateWithStartTimeWithRequestedInterval: *const fn(self: *anyopaque, badgeContent: *Uri, startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) callconv(.winapi) HRESULT,
        StopPeriodicUpdate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IKnownAdaptiveNotificationHintsStatics = extern struct {
    vtable: *const VTable,
    pub fn getStyle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Style(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWrap(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Wrap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxLines(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MaxLines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinLines(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MinLines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextStacking(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TextStacking(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlign(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Align(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IKnownAdaptiveNotificationHintsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06206598-d496-497d-8692-4f7d7c2770df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Style: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Wrap: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MaxLines: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MinLines: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TextStacking: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Align: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownAdaptiveNotificationTextStylesStatics = extern struct {
    vtable: *const VTable,
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Caption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Body(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBase(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Base(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subtitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubheader(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subheader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeader(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Header(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitleNumeral(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TitleNumeral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubheaderNumeral(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SubheaderNumeral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaderNumeral(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HeaderNumeral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaptionSubtle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CaptionSubtle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBodySubtle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BodySubtle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBaseSubtle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BaseSubtle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubtitleSubtle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SubtitleSubtle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitleSubtle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TitleSubtle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubheaderSubtle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SubheaderSubtle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubheaderNumeralSubtle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SubheaderNumeralSubtle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaderSubtle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HeaderSubtle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaderNumeralSubtle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HeaderNumeralSubtle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IKnownAdaptiveNotificationTextStylesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "202192d7-8996-45aa-8ba1-d461d72c2a1b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Caption: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Body: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Base: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Subtitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Subheader: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Header: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TitleNumeral: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SubheaderNumeral: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HeaderNumeral: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CaptionSubtle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BodySubtle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BaseSubtle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SubtitleSubtle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TitleSubtle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SubheaderSubtle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SubheaderNumeralSubtle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HeaderSubtle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HeaderNumeralSubtle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownNotificationBindingsStatics = extern struct {
    vtable: *const VTable,
    pub fn getToastGeneric(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ToastGeneric(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IKnownNotificationBindingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79427bae-a8b7-4d58-89ea-76a7b7bccded";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ToastGeneric: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INotification = extern struct {
    vtable: *const VTable,
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ExpirationTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVisual(self: *@This()) core.HResult!*NotificationVisual {
        var _r: *NotificationVisual = undefined;
        const _c = self.vtable.get_Visual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVisual(self: *@This(), value: *NotificationVisual) core.HResult!void {
        const _c = self.vtable.put_Visual(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.INotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "108037fe-eb76-4f82-97bc-da07530a2e20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpirationTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_ExpirationTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Visual: *const fn(self: *anyopaque, _r: **NotificationVisual) callconv(.winapi) HRESULT,
        put_Visual: *const fn(self: *anyopaque, value: *NotificationVisual) callconv(.winapi) HRESULT,
    };
};
pub const INotificationBinding = extern struct {
    vtable: *const VTable,
    pub fn getTemplate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Template(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTemplate(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Template(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Language(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHints(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Hints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTextElements(self: *@This()) core.HResult!*IVectorView(AdaptiveNotificationText) {
        var _r: *IVectorView(AdaptiveNotificationText) = undefined;
        const _c = self.vtable.GetTextElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.INotificationBinding";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f29e4b85-0370-4ad3-b4ea-da9e35e7eabf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Template: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Template: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Language: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Hints: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        GetTextElements: *const fn(self: *anyopaque, _r: **IVectorView(AdaptiveNotificationText)) callconv(.winapi) HRESULT,
    };
};
pub const INotificationData = extern struct {
    vtable: *const VTable,
    pub fn getValues(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Values(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSequenceNumber(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SequenceNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSequenceNumber(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_SequenceNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.INotificationData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ffd2312-9d6a-4aaf-b6ac-ff17f0c1f280";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Values: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        get_SequenceNumber: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_SequenceNumber: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const INotificationDataFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateNotificationDataWithSequenceNumber(self: *@This(), initialValues: *IIterable(IKeyValuePair(HSTRING,HSTRING)), sequenceNumber: u32) core.HResult!*NotificationData {
        var _r: *NotificationData = undefined;
        const _c = self.vtable.CreateNotificationDataWithSequenceNumber(@ptrCast(self), initialValues, sequenceNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNotificationData(self: *@This(), initialValues: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*NotificationData {
        var _r: *NotificationData = undefined;
        const _c = self.vtable.CreateNotificationData(@ptrCast(self), initialValues, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.INotificationDataFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23c1e33a-1c10-46fb-8040-dec384621cf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateNotificationDataWithSequenceNumber: *const fn(self: *anyopaque, initialValues: *IIterable(IKeyValuePair(HSTRING,HSTRING)), sequenceNumber: u32, _r: **NotificationData) callconv(.winapi) HRESULT,
        CreateNotificationData: *const fn(self: *anyopaque, initialValues: *IIterable(IKeyValuePair(HSTRING,HSTRING)), _r: **NotificationData) callconv(.winapi) HRESULT,
    };
};
pub const INotificationVisual = extern struct {
    vtable: *const VTable,
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Language(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBindings(self: *@This()) core.HResult!*IVector(NotificationBinding) {
        var _r: *IVector(NotificationBinding) = undefined;
        const _c = self.vtable.get_Bindings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBinding(self: *@This(), templateName: HSTRING) core.HResult!*NotificationBinding {
        var _r: *NotificationBinding = undefined;
        const _c = self.vtable.GetBinding(@ptrCast(self), templateName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.INotificationVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68835b8e-aa56-4e11-86d3-5f9a6957bc5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Language: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Bindings: *const fn(self: *anyopaque, _r: **IVector(NotificationBinding)) callconv(.winapi) HRESULT,
        GetBinding: *const fn(self: *anyopaque, templateName: HSTRING, _r: **NotificationBinding) callconv(.winapi) HRESULT,
    };
};
pub const IScheduledTileNotification = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeliveryTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DeliveryTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ExpirationTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Tag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IScheduledTileNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        get_DeliveryTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_ExpirationTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ExpirationTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IScheduledTileNotificationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateScheduledTileNotification(self: *@This(), content: *XmlDocument, deliveryTime: DateTime) core.HResult!*ScheduledTileNotification {
        var _r: *ScheduledTileNotification = undefined;
        const _c = self.vtable.CreateScheduledTileNotification(@ptrCast(self), content, deliveryTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IScheduledTileNotificationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3383138a-98c0-4c3b-bbd6-4a633c7cfc29";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateScheduledTileNotification: *const fn(self: *anyopaque, content: *XmlDocument, deliveryTime: DateTime, _r: **ScheduledTileNotification) callconv(.winapi) HRESULT,
    };
};
pub const IScheduledToastNotification = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeliveryTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DeliveryTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSnoozeInterval(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_SnoozeInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaximumSnoozeCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaximumSnoozeCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IScheduledToastNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79f577f8-0de7-48cd-9740-9b370490c838";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        get_DeliveryTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_SnoozeInterval: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_MaximumSnoozeCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IScheduledToastNotification2 = extern struct {
    vtable: *const VTable,
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Tag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGroup(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Group(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Group(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuppressPopup(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SuppressPopup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuppressPopup(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SuppressPopup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IScheduledToastNotification2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a66ea09c-31b4-43b0-b5dd-7a40e85363b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Group: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Group: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SuppressPopup: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SuppressPopup: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IScheduledToastNotification3 = extern struct {
    vtable: *const VTable,
    pub fn getNotificationMirroring(self: *@This()) core.HResult!NotificationMirroring {
        var _r: NotificationMirroring = undefined;
        const _c = self.vtable.get_NotificationMirroring(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNotificationMirroring(self: *@This(), value: NotificationMirroring) core.HResult!void {
        const _c = self.vtable.put_NotificationMirroring(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub const NAME: []const u8 = "Windows.UI.Notifications.IScheduledToastNotification3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98429e8b-bd32-4a3b-9d15-22aea49462a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NotificationMirroring: *const fn(self: *anyopaque, _r: *NotificationMirroring) callconv(.winapi) HRESULT,
        put_NotificationMirroring: *const fn(self: *anyopaque, value: NotificationMirroring) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IScheduledToastNotification4 = extern struct {
    vtable: *const VTable,
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ExpirationTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IScheduledToastNotification4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d4761fd-bdef-4e4a-96be-0101369b58d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpirationTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_ExpirationTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IScheduledToastNotificationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateScheduledToastNotification(self: *@This(), content: *XmlDocument, deliveryTime: DateTime) core.HResult!*ScheduledToastNotification {
        var _r: *ScheduledToastNotification = undefined;
        const _c = self.vtable.CreateScheduledToastNotification(@ptrCast(self), content, deliveryTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateScheduledToastNotificationRecurring(self: *@This(), content: *XmlDocument, deliveryTime: DateTime, snoozeInterval: TimeSpan, maximumSnoozeCount: u32) core.HResult!*ScheduledToastNotification {
        var _r: *ScheduledToastNotification = undefined;
        const _c = self.vtable.CreateScheduledToastNotificationRecurring(@ptrCast(self), content, deliveryTime, snoozeInterval, maximumSnoozeCount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IScheduledToastNotificationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7bed191-0bb9-4189-8394-31761b476fd7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateScheduledToastNotification: *const fn(self: *anyopaque, content: *XmlDocument, deliveryTime: DateTime, _r: **ScheduledToastNotification) callconv(.winapi) HRESULT,
        CreateScheduledToastNotificationRecurring: *const fn(self: *anyopaque, content: *XmlDocument, deliveryTime: DateTime, snoozeInterval: TimeSpan, maximumSnoozeCount: u32, _r: **ScheduledToastNotification) callconv(.winapi) HRESULT,
    };
};
pub const IScheduledToastNotificationShowingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCancel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Cancel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Cancel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScheduledToastNotification(self: *@This()) core.HResult!*ScheduledToastNotification {
        var _r: *ScheduledToastNotification = undefined;
        const _c = self.vtable.get_ScheduledToastNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IScheduledToastNotificationShowingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6173f6b4-412a-5e2c-a6ed-a0209aef9a09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Cancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Cancel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ScheduledToastNotification: *const fn(self: *anyopaque, _r: **ScheduledToastNotification) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IShownTileNotification = extern struct {
    vtable: *const VTable,
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IShownTileNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "342d8988-5af2-481a-a6a3-f2fdc78de88e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITileFlyoutNotification = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ExpirationTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileFlyoutNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a53b261-c70c-42be-b2f3-f42aa97d34e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        put_ExpirationTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ExpirationTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const ITileFlyoutNotificationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateTileFlyoutNotification(self: *@This(), content: *XmlDocument) core.HResult!*TileFlyoutNotification {
        var _r: *TileFlyoutNotification = undefined;
        const _c = self.vtable.CreateTileFlyoutNotification(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileFlyoutNotificationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef556ff5-5226-4f2b-b278-88a35dfe569f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTileFlyoutNotification: *const fn(self: *anyopaque, content: *XmlDocument, _r: **TileFlyoutNotification) callconv(.winapi) HRESULT,
    };
};
pub const ITileFlyoutUpdateManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateTileFlyoutUpdaterForApplication(self: *@This()) core.HResult!*TileFlyoutUpdater {
        var _r: *TileFlyoutUpdater = undefined;
        const _c = self.vtable.CreateTileFlyoutUpdaterForApplication(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTileFlyoutUpdaterForApplication(self: *@This(), applicationId: HSTRING) core.HResult!*TileFlyoutUpdater {
        var _r: *TileFlyoutUpdater = undefined;
        const _c = self.vtable.CreateTileFlyoutUpdaterForApplication(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTileFlyoutUpdaterForSecondaryTile(self: *@This(), tileId: HSTRING) core.HResult!*TileFlyoutUpdater {
        var _r: *TileFlyoutUpdater = undefined;
        const _c = self.vtable.CreateTileFlyoutUpdaterForSecondaryTile(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTemplateContent(self: *@This(), ty: TileFlyoutTemplateType) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.GetTemplateContent(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileFlyoutUpdateManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04363b0b-1ac0-4b99-88e7-ada83e953d48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTileFlyoutUpdaterForApplication: *const fn(self: *anyopaque, _r: **TileFlyoutUpdater) callconv(.winapi) HRESULT,
        CreateTileFlyoutUpdaterForApplication: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **TileFlyoutUpdater) callconv(.winapi) HRESULT,
        CreateTileFlyoutUpdaterForSecondaryTile: *const fn(self: *anyopaque, tileId: HSTRING, _r: **TileFlyoutUpdater) callconv(.winapi) HRESULT,
        GetTemplateContent: *const fn(self: *anyopaque, ty: TileFlyoutTemplateType, _r: **XmlDocument) callconv(.winapi) HRESULT,
    };
};
pub const ITileFlyoutUpdater = extern struct {
    vtable: *const VTable,
    pub fn Update(self: *@This(), notification: *TileFlyoutNotification) core.HResult!void {
        const _c = self.vtable.Update(@ptrCast(self), notification);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartPeriodicUpdate(self: *@This(), tileFlyoutContent: *Uri, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const _c = self.vtable.StartPeriodicUpdate(@ptrCast(self), tileFlyoutContent, requestedInterval);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartPeriodicUpdateWithStartTimeWithRequestedInterval(self: *@This(), tileFlyoutContent: *Uri, startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const _c = self.vtable.StartPeriodicUpdateWithStartTimeWithRequestedInterval(@ptrCast(self), tileFlyoutContent, startTime, requestedInterval);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopPeriodicUpdate(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopPeriodicUpdate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSetting(self: *@This()) core.HResult!NotificationSetting {
        var _r: NotificationSetting = undefined;
        const _c = self.vtable.get_Setting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileFlyoutUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d40c76a-c465-4052-a740-5c2654c1a089";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Update: *const fn(self: *anyopaque, notification: *TileFlyoutNotification) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartPeriodicUpdate: *const fn(self: *anyopaque, tileFlyoutContent: *Uri, requestedInterval: PeriodicUpdateRecurrence) callconv(.winapi) HRESULT,
        StartPeriodicUpdateWithStartTimeWithRequestedInterval: *const fn(self: *anyopaque, tileFlyoutContent: *Uri, startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) callconv(.winapi) HRESULT,
        StopPeriodicUpdate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_Setting: *const fn(self: *anyopaque, _r: *NotificationSetting) callconv(.winapi) HRESULT,
    };
};
pub const ITileNotification = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ExpirationTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Tag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ebaec8fa-50ec-4c18-b4d0-3af02e5540ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        put_ExpirationTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ExpirationTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITileNotificationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateTileNotification(self: *@This(), content: *XmlDocument) core.HResult!*TileNotification {
        var _r: *TileNotification = undefined;
        const _c = self.vtable.CreateTileNotification(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileNotificationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6abdd6e-4928-46c8-bdbf-81a047dea0d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTileNotification: *const fn(self: *anyopaque, content: *XmlDocument, _r: **TileNotification) callconv(.winapi) HRESULT,
    };
};
pub const ITileUpdateManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn CreateTileUpdaterForApplicationForUser(self: *@This()) core.HResult!*TileUpdater {
        var _r: *TileUpdater = undefined;
        const _c = self.vtable.CreateTileUpdaterForApplicationForUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTileUpdaterForApplication(self: *@This(), applicationId: HSTRING) core.HResult!*TileUpdater {
        var _r: *TileUpdater = undefined;
        const _c = self.vtable.CreateTileUpdaterForApplication(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTileUpdaterForSecondaryTile(self: *@This(), tileId: HSTRING) core.HResult!*TileUpdater {
        var _r: *TileUpdater = undefined;
        const _c = self.vtable.CreateTileUpdaterForSecondaryTile(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileUpdateManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55141348-2ee2-4e2d-9cc1-216a20decc9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTileUpdaterForApplicationForUser: *const fn(self: *anyopaque, _r: **TileUpdater) callconv(.winapi) HRESULT,
        CreateTileUpdaterForApplication: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **TileUpdater) callconv(.winapi) HRESULT,
        CreateTileUpdaterForSecondaryTile: *const fn(self: *anyopaque, tileId: HSTRING, _r: **TileUpdater) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const ITileUpdateManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateTileUpdaterForApplication(self: *@This()) core.HResult!*TileUpdater {
        var _r: *TileUpdater = undefined;
        const _c = self.vtable.CreateTileUpdaterForApplication(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTileUpdaterForApplication(self: *@This(), applicationId: HSTRING) core.HResult!*TileUpdater {
        var _r: *TileUpdater = undefined;
        const _c = self.vtable.CreateTileUpdaterForApplication(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTileUpdaterForSecondaryTile(self: *@This(), tileId: HSTRING) core.HResult!*TileUpdater {
        var _r: *TileUpdater = undefined;
        const _c = self.vtable.CreateTileUpdaterForSecondaryTile(@ptrCast(self), tileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTemplateContent(self: *@This(), ty: TileTemplateType) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.GetTemplateContent(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileUpdateManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da159e5d-3ea9-4986-8d84-b09d5e12276d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTileUpdaterForApplication: *const fn(self: *anyopaque, _r: **TileUpdater) callconv(.winapi) HRESULT,
        CreateTileUpdaterForApplication: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **TileUpdater) callconv(.winapi) HRESULT,
        CreateTileUpdaterForSecondaryTile: *const fn(self: *anyopaque, tileId: HSTRING, _r: **TileUpdater) callconv(.winapi) HRESULT,
        GetTemplateContent: *const fn(self: *anyopaque, ty: TileTemplateType, _r: **XmlDocument) callconv(.winapi) HRESULT,
    };
};
pub const ITileUpdateManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*TileUpdateManagerForUser {
        var _r: *TileUpdateManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileUpdateManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "731c1ddc-8e14-4b7c-a34b-9d22de76c84d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **TileUpdateManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const ITileUpdater = extern struct {
    vtable: *const VTable,
    pub fn Update(self: *@This(), notification: *TileNotification) core.HResult!void {
        const _c = self.vtable.Update(@ptrCast(self), notification);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnableNotificationQueue(self: *@This(), enable: bool) core.HResult!void {
        const _c = self.vtable.EnableNotificationQueue(@ptrCast(self), enable);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSetting(self: *@This()) core.HResult!NotificationSetting {
        var _r: NotificationSetting = undefined;
        const _c = self.vtable.get_Setting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddToSchedule(self: *@This(), scheduledTile: *ScheduledTileNotification) core.HResult!void {
        const _c = self.vtable.AddToSchedule(@ptrCast(self), scheduledTile);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveFromSchedule(self: *@This(), scheduledTile: *ScheduledTileNotification) core.HResult!void {
        const _c = self.vtable.RemoveFromSchedule(@ptrCast(self), scheduledTile);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetScheduledTileNotifications(self: *@This()) core.HResult!*IVectorView(ScheduledTileNotification) {
        var _r: *IVectorView(ScheduledTileNotification) = undefined;
        const _c = self.vtable.GetScheduledTileNotifications(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartPeriodicUpdate(self: *@This(), tileContent: *Uri, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const _c = self.vtable.StartPeriodicUpdate(@ptrCast(self), tileContent, requestedInterval);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartPeriodicUpdateWithStartTimeWithRequestedInterval(self: *@This(), tileContent: *Uri, startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const _c = self.vtable.StartPeriodicUpdateWithStartTimeWithRequestedInterval(@ptrCast(self), tileContent, startTime, requestedInterval);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopPeriodicUpdate(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopPeriodicUpdate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartPeriodicUpdateBatch(self: *@This(), tileContents: *IIterable(Uri), requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const _c = self.vtable.StartPeriodicUpdateBatch(@ptrCast(self), tileContents, requestedInterval);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartPeriodicUpdateBatchWithStartTimeWithRequestedInterval(self: *@This(), tileContents: *IIterable(Uri), startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const _c = self.vtable.StartPeriodicUpdateBatchWithStartTimeWithRequestedInterval(@ptrCast(self), tileContents, startTime, requestedInterval);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0942a48b-1d91-44ec-9243-c1e821c29a20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Update: *const fn(self: *anyopaque, notification: *TileNotification) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        EnableNotificationQueue: *const fn(self: *anyopaque, enable: bool) callconv(.winapi) HRESULT,
        get_Setting: *const fn(self: *anyopaque, _r: *NotificationSetting) callconv(.winapi) HRESULT,
        AddToSchedule: *const fn(self: *anyopaque, scheduledTile: *ScheduledTileNotification) callconv(.winapi) HRESULT,
        RemoveFromSchedule: *const fn(self: *anyopaque, scheduledTile: *ScheduledTileNotification) callconv(.winapi) HRESULT,
        GetScheduledTileNotifications: *const fn(self: *anyopaque, _r: **IVectorView(ScheduledTileNotification)) callconv(.winapi) HRESULT,
        StartPeriodicUpdate: *const fn(self: *anyopaque, tileContent: *Uri, requestedInterval: PeriodicUpdateRecurrence) callconv(.winapi) HRESULT,
        StartPeriodicUpdateWithStartTimeWithRequestedInterval: *const fn(self: *anyopaque, tileContent: *Uri, startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) callconv(.winapi) HRESULT,
        StopPeriodicUpdate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartPeriodicUpdateBatch: *const fn(self: *anyopaque, tileContents: *IIterable(Uri), requestedInterval: PeriodicUpdateRecurrence) callconv(.winapi) HRESULT,
        StartPeriodicUpdateBatchWithStartTimeWithRequestedInterval: *const fn(self: *anyopaque, tileContents: *IIterable(Uri), startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) callconv(.winapi) HRESULT,
    };
};
pub const ITileUpdater2 = extern struct {
    vtable: *const VTable,
    pub fn EnableNotificationQueueForSquare150x150(self: *@This(), enable: bool) core.HResult!void {
        const _c = self.vtable.EnableNotificationQueueForSquare150x150(@ptrCast(self), enable);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnableNotificationQueueForWide310x150(self: *@This(), enable: bool) core.HResult!void {
        const _c = self.vtable.EnableNotificationQueueForWide310x150(@ptrCast(self), enable);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnableNotificationQueueForSquare310x310(self: *@This(), enable: bool) core.HResult!void {
        const _c = self.vtable.EnableNotificationQueueForSquare310x310(@ptrCast(self), enable);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ITileUpdater2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2266e12-15ee-43ed-83f5-65b352bb1a84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        EnableNotificationQueueForSquare150x150: *const fn(self: *anyopaque, enable: bool) callconv(.winapi) HRESULT,
        EnableNotificationQueueForWide310x150: *const fn(self: *anyopaque, enable: bool) callconv(.winapi) HRESULT,
        EnableNotificationQueueForSquare310x310: *const fn(self: *anyopaque, enable: bool) callconv(.winapi) HRESULT,
    };
};
pub const IToastActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3bf92f3-c197-436f-8265-0625824f8dac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IToastActivatedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getUserInput(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_UserInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastActivatedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab7da512-cc61-568e-81be-304ac31038fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserInput: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IToastCollection = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
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
    pub fn getLaunchArgs(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LaunchArgs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLaunchArgs(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LaunchArgs(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIcon(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Icon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIcon(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Icon(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a8bc3b0-e0be-4858-bc2a-89dfe0b32863";
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
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_LaunchArgs: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LaunchArgs: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Icon: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Icon: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IToastCollectionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), collectionId: HSTRING, displayName: HSTRING, launchArgs: HSTRING, iconUri: *Uri) core.HResult!*ToastCollection {
        var _r: *ToastCollection = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), collectionId, displayName, launchArgs, iconUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastCollectionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "164dd3d7-73c4-44f7-b4ff-fb6d4bf1f4c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, collectionId: HSTRING, displayName: HSTRING, launchArgs: HSTRING, iconUri: *Uri, _r: **ToastCollection) callconv(.winapi) HRESULT,
    };
};
pub const IToastCollectionManager = extern struct {
    vtable: *const VTable,
    pub fn SaveToastCollectionAsync(self: *@This(), collection: *ToastCollection) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveToastCollectionAsync(@ptrCast(self), collection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllToastCollectionsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ToastCollection)) {
        var _r: *IAsyncOperation(IVectorView(ToastCollection)) = undefined;
        const _c = self.vtable.FindAllToastCollectionsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetToastCollectionAsync(self: *@This(), collectionId: HSTRING) core.HResult!*IAsyncOperation(ToastCollection) {
        var _r: *IAsyncOperation(ToastCollection) = undefined;
        const _c = self.vtable.GetToastCollectionAsync(@ptrCast(self), collectionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveToastCollectionAsync(self: *@This(), collectionId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RemoveToastCollectionAsync(@ptrCast(self), collectionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveAllToastCollectionsAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RemoveAllToastCollectionsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastCollectionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a1821fe-179d-49bc-b79d-a527920d3665";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SaveToastCollectionAsync: *const fn(self: *anyopaque, collection: *ToastCollection, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        FindAllToastCollectionsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ToastCollection))) callconv(.winapi) HRESULT,
        GetToastCollectionAsync: *const fn(self: *anyopaque, collectionId: HSTRING, _r: **IAsyncOperation(ToastCollection)) callconv(.winapi) HRESULT,
        RemoveToastCollectionAsync: *const fn(self: *anyopaque, collectionId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RemoveAllToastCollectionsAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        get_AppId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IToastDismissedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!ToastDismissalReason {
        var _r: ToastDismissalReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastDismissedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f89d935-d9cb-4538-a0f0-ffe7659938f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *ToastDismissalReason) callconv(.winapi) HRESULT,
    };
};
pub const IToastFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35176862-cfd4-44f8-ad64-f500fd896c3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotification = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ExpirationTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ExpirationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDismissed(self: *@This(), handler: *TypedEventHandler(ToastNotification,ToastDismissedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Dismissed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Dismissed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(ToastNotification,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Activated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Activated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFailed(self: *@This(), handler: *TypedEventHandler(ToastNotification,ToastFailedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Failed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Failed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "997e2675-059e-4e60-8b06-1760917c8b80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        put_ExpirationTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ExpirationTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        add_Dismissed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ToastNotification,ToastDismissedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Dismissed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Activated: *const fn(self: *anyopaque, handler: *TypedEventHandler(ToastNotification,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Activated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Failed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ToastNotification,ToastFailedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Failed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotification2 = extern struct {
    vtable: *const VTable,
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Tag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGroup(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Group(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Group(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuppressPopup(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SuppressPopup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuppressPopup(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SuppressPopup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotification2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9dfb9fd1-143a-490e-90bf-b9fba7132de7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Group: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Group: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SuppressPopup: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SuppressPopup: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotification3 = extern struct {
    vtable: *const VTable,
    pub fn getNotificationMirroring(self: *@This()) core.HResult!NotificationMirroring {
        var _r: NotificationMirroring = undefined;
        const _c = self.vtable.get_NotificationMirroring(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNotificationMirroring(self: *@This(), value: NotificationMirroring) core.HResult!void {
        const _c = self.vtable.put_NotificationMirroring(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotification3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31e8aed8-8141-4f99-bc0a-c4ed21297d77";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NotificationMirroring: *const fn(self: *anyopaque, _r: *NotificationMirroring) callconv(.winapi) HRESULT,
        put_NotificationMirroring: *const fn(self: *anyopaque, value: NotificationMirroring) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotification4 = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*NotificationData {
        var _r: *NotificationData = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *NotificationData) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPriority(self: *@This()) core.HResult!ToastNotificationPriority {
        var _r: ToastNotificationPriority = undefined;
        const _c = self.vtable.get_Priority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPriority(self: *@This(), value: ToastNotificationPriority) core.HResult!void {
        const _c = self.vtable.put_Priority(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotification4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15154935-28ea-4727-88e9-c58680e2d118";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **NotificationData) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *NotificationData) callconv(.winapi) HRESULT,
        get_Priority: *const fn(self: *anyopaque, _r: *ToastNotificationPriority) callconv(.winapi) HRESULT,
        put_Priority: *const fn(self: *anyopaque, value: ToastNotificationPriority) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotification6 = extern struct {
    vtable: *const VTable,
    pub fn getExpiresOnReboot(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ExpiresOnReboot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpiresOnReboot(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ExpiresOnReboot(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotification6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43ebfe53-89ae-5c1e-a279-3aecfe9b6f54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpiresOnReboot: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ExpiresOnReboot: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationActionTriggerDetail = extern struct {
    vtable: *const VTable,
    pub fn getArgument(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Argument(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserInput(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_UserInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationActionTriggerDetail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9445135a-38f3-42f6-96aa-7955b0f03da2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Argument: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UserInput: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateToastNotification(self: *@This(), content: *XmlDocument) core.HResult!*ToastNotification {
        var _r: *ToastNotification = undefined;
        const _c = self.vtable.CreateToastNotification(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04124b20-82c6-4229-b109-fd9ed4662b53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateToastNotification: *const fn(self: *anyopaque, content: *XmlDocument, _r: **ToastNotification) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationHistory = extern struct {
    vtable: *const VTable,
    pub fn RemoveGroup(self: *@This(), group: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveGroup(@ptrCast(self), group);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveGroupWithApplicationId(self: *@This(), group: HSTRING, applicationId: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveGroupWithApplicationId(@ptrCast(self), group, applicationId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveWithApplicationId(self: *@This(), tag: HSTRING, group: HSTRING, applicationId: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveWithApplicationId(@ptrCast(self), tag, group, applicationId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveWithGroup(self: *@This(), tag: HSTRING, group: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveWithGroup(@ptrCast(self), tag, group);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Remove(self: *@This(), tag: HSTRING) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), tag);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This(), applicationId: HSTRING) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self), applicationId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationHistory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5caddc63-01d3-4c97-986f-0533483fee14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RemoveGroup: *const fn(self: *anyopaque, group: HSTRING) callconv(.winapi) HRESULT,
        RemoveGroupWithApplicationId: *const fn(self: *anyopaque, group: HSTRING, applicationId: HSTRING) callconv(.winapi) HRESULT,
        RemoveWithApplicationId: *const fn(self: *anyopaque, tag: HSTRING, group: HSTRING, applicationId: HSTRING) callconv(.winapi) HRESULT,
        RemoveWithGroup: *const fn(self: *anyopaque, tag: HSTRING, group: HSTRING) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, tag: HSTRING) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque, applicationId: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationHistory2 = extern struct {
    vtable: *const VTable,
    pub fn GetHistory(self: *@This()) core.HResult!*IVectorView(ToastNotification) {
        var _r: *IVectorView(ToastNotification) = undefined;
        const _c = self.vtable.GetHistory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHistory(self: *@This(), applicationId: HSTRING) core.HResult!*IVectorView(ToastNotification) {
        var _r: *IVectorView(ToastNotification) = undefined;
        const _c = self.vtable.GetHistory(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationHistory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3bc3d253-2f31-4092-9129-8ad5abf067da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetHistory: *const fn(self: *anyopaque, _r: **IVectorView(ToastNotification)) callconv(.winapi) HRESULT,
        GetHistory: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **IVectorView(ToastNotification)) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationHistoryChangedTriggerDetail = extern struct {
    vtable: *const VTable,
    pub fn getChangeType(self: *@This()) core.HResult!ToastHistoryChangedType {
        var _r: ToastHistoryChangedType = undefined;
        const _c = self.vtable.get_ChangeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationHistoryChangedTriggerDetail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db037ffa-0068-412c-9c83-267c37f65670";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeType: *const fn(self: *anyopaque, _r: *ToastHistoryChangedType) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationHistoryChangedTriggerDetail2 = extern struct {
    vtable: *const VTable,
    pub fn getCollectionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CollectionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationHistoryChangedTriggerDetail2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0b36e982-c871-49fb-babb-25bdbc4cc45b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CollectionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn CreateToastNotifier(self: *@This()) core.HResult!*ToastNotifier {
        var _r: *ToastNotifier = undefined;
        const _c = self.vtable.CreateToastNotifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateToastNotifier(self: *@This(), applicationId: HSTRING) core.HResult!*ToastNotifier {
        var _r: *ToastNotifier = undefined;
        const _c = self.vtable.CreateToastNotifier(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHistory(self: *@This()) core.HResult!*ToastNotificationHistory {
        var _r: *ToastNotificationHistory = undefined;
        const _c = self.vtable.get_History(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79ab57f6-43fe-487b-8a7f-99567200ae94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateToastNotifier: *const fn(self: *anyopaque, _r: **ToastNotifier) callconv(.winapi) HRESULT,
        CreateToastNotifier: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **ToastNotifier) callconv(.winapi) HRESULT,
        get_History: *const fn(self: *anyopaque, _r: **ToastNotificationHistory) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationManagerForUser2 = extern struct {
    vtable: *const VTable,
    pub fn GetToastNotifierForToastCollectionIdAsync(self: *@This(), collectionId: HSTRING) core.HResult!*IAsyncOperation(ToastNotifier) {
        var _r: *IAsyncOperation(ToastNotifier) = undefined;
        const _c = self.vtable.GetToastNotifierForToastCollectionIdAsync(@ptrCast(self), collectionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHistoryForToastCollectionIdAsync(self: *@This(), collectionId: HSTRING) core.HResult!*IAsyncOperation(ToastNotificationHistory) {
        var _r: *IAsyncOperation(ToastNotificationHistory) = undefined;
        const _c = self.vtable.GetHistoryForToastCollectionIdAsync(@ptrCast(self), collectionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetToastCollectionManager(self: *@This()) core.HResult!*ToastCollectionManager {
        var _r: *ToastCollectionManager = undefined;
        const _c = self.vtable.GetToastCollectionManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetToastCollectionManager(self: *@This(), appId: HSTRING) core.HResult!*ToastCollectionManager {
        var _r: *ToastCollectionManager = undefined;
        const _c = self.vtable.GetToastCollectionManager(@ptrCast(self), appId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationManagerForUser2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "679c64b7-81ab-42c2-8819-c958767753f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetToastNotifierForToastCollectionIdAsync: *const fn(self: *anyopaque, collectionId: HSTRING, _r: **IAsyncOperation(ToastNotifier)) callconv(.winapi) HRESULT,
        GetHistoryForToastCollectionIdAsync: *const fn(self: *anyopaque, collectionId: HSTRING, _r: **IAsyncOperation(ToastNotificationHistory)) callconv(.winapi) HRESULT,
        GetToastCollectionManager: *const fn(self: *anyopaque, _r: **ToastCollectionManager) callconv(.winapi) HRESULT,
        GetToastCollectionManager: *const fn(self: *anyopaque, appId: HSTRING, _r: **ToastCollectionManager) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationManagerForUser3 = extern struct {
    vtable: *const VTable,
    pub fn getNotificationMode(self: *@This()) core.HResult!ToastNotificationMode {
        var _r: ToastNotificationMode = undefined;
        const _c = self.vtable.get_NotificationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addNotificationModeChanged(self: *@This(), handler: *TypedEventHandler(ToastNotificationManagerForUser,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NotificationModeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNotificationModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NotificationModeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationManagerForUser3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3efcb176-6cc1-56dc-973b-251f7aacb1c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NotificationMode: *const fn(self: *anyopaque, _r: *ToastNotificationMode) callconv(.winapi) HRESULT,
        add_NotificationModeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ToastNotificationManagerForUser,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NotificationModeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateToastNotifier(self: *@This()) core.HResult!*ToastNotifier {
        var _r: *ToastNotifier = undefined;
        const _c = self.vtable.CreateToastNotifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateToastNotifier(self: *@This(), applicationId: HSTRING) core.HResult!*ToastNotifier {
        var _r: *ToastNotifier = undefined;
        const _c = self.vtable.CreateToastNotifier(@ptrCast(self), applicationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTemplateContent(self: *@This(), ty: ToastTemplateType) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.GetTemplateContent(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50ac103f-d235-4598-bbef-98fe4d1a3ad4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateToastNotifier: *const fn(self: *anyopaque, _r: **ToastNotifier) callconv(.winapi) HRESULT,
        CreateToastNotifier: *const fn(self: *anyopaque, applicationId: HSTRING, _r: **ToastNotifier) callconv(.winapi) HRESULT,
        GetTemplateContent: *const fn(self: *anyopaque, ty: ToastTemplateType, _r: **XmlDocument) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getHistory(self: *@This()) core.HResult!*ToastNotificationHistory {
        var _r: *ToastNotificationHistory = undefined;
        const _c = self.vtable.get_History(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ab93c52-0e48-4750-ba9d-1a4113981847";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_History: *const fn(self: *anyopaque, _r: **ToastNotificationHistory) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationManagerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*ToastNotificationManagerForUser {
        var _r: *ToastNotificationManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConfigureNotificationMirroring(self: *@This(), value: NotificationMirroring) core.HResult!void {
        const _c = self.vtable.ConfigureNotificationMirroring(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationManagerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f993fd3-e516-45fb-8130-398e93fa52c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **ToastNotificationManagerForUser) callconv(.winapi) HRESULT,
        ConfigureNotificationMirroring: *const fn(self: *anyopaque, value: NotificationMirroring) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotificationManagerStatics5 = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*ToastNotificationManagerForUser {
        var _r: *ToastNotificationManagerForUser = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotificationManagerStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6f5f569-d40d-407c-8989-88cab42cfd14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **ToastNotificationManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotifier = extern struct {
    vtable: *const VTable,
    pub fn Show(self: *@This(), notification: *ToastNotification) core.HResult!void {
        const _c = self.vtable.Show(@ptrCast(self), notification);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Hide(self: *@This(), notification: *ToastNotification) core.HResult!void {
        const _c = self.vtable.Hide(@ptrCast(self), notification);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSetting(self: *@This()) core.HResult!NotificationSetting {
        var _r: NotificationSetting = undefined;
        const _c = self.vtable.get_Setting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddToSchedule(self: *@This(), scheduledToast: *ScheduledToastNotification) core.HResult!void {
        const _c = self.vtable.AddToSchedule(@ptrCast(self), scheduledToast);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveFromSchedule(self: *@This(), scheduledToast: *ScheduledToastNotification) core.HResult!void {
        const _c = self.vtable.RemoveFromSchedule(@ptrCast(self), scheduledToast);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetScheduledToastNotifications(self: *@This()) core.HResult!*IVectorView(ScheduledToastNotification) {
        var _r: *IVectorView(ScheduledToastNotification) = undefined;
        const _c = self.vtable.GetScheduledToastNotifications(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75927b93-03f3-41ec-91d3-6e5bac1b38e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Show: *const fn(self: *anyopaque, notification: *ToastNotification) callconv(.winapi) HRESULT,
        Hide: *const fn(self: *anyopaque, notification: *ToastNotification) callconv(.winapi) HRESULT,
        get_Setting: *const fn(self: *anyopaque, _r: *NotificationSetting) callconv(.winapi) HRESULT,
        AddToSchedule: *const fn(self: *anyopaque, scheduledToast: *ScheduledToastNotification) callconv(.winapi) HRESULT,
        RemoveFromSchedule: *const fn(self: *anyopaque, scheduledToast: *ScheduledToastNotification) callconv(.winapi) HRESULT,
        GetScheduledToastNotifications: *const fn(self: *anyopaque, _r: **IVectorView(ScheduledToastNotification)) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotifier2 = extern struct {
    vtable: *const VTable,
    pub fn UpdateWithTagWithGroup(self: *@This(), data: *NotificationData, tag: HSTRING, group: HSTRING) core.HResult!NotificationUpdateResult {
        var _r: NotificationUpdateResult = undefined;
        const _c = self.vtable.UpdateWithTagWithGroup(@ptrCast(self), data, tag, group, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Update(self: *@This(), data: *NotificationData, tag: HSTRING) core.HResult!NotificationUpdateResult {
        var _r: NotificationUpdateResult = undefined;
        const _c = self.vtable.Update(@ptrCast(self), data, tag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotifier2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "354389c6-7c01-4bd5-9c20-604340cd2b74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UpdateWithTagWithGroup: *const fn(self: *anyopaque, data: *NotificationData, tag: HSTRING, group: HSTRING, _r: *NotificationUpdateResult) callconv(.winapi) HRESULT,
        Update: *const fn(self: *anyopaque, data: *NotificationData, tag: HSTRING, _r: *NotificationUpdateResult) callconv(.winapi) HRESULT,
    };
};
pub const IToastNotifier3 = extern struct {
    vtable: *const VTable,
    pub fn addScheduledToastNotificationShowing(self: *@This(), handler: *TypedEventHandler(ToastNotifier,ScheduledToastNotificationShowingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ScheduledToastNotificationShowing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScheduledToastNotificationShowing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ScheduledToastNotificationShowing(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IToastNotifier3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae75a04a-3b0c-51ad-b7e8-b08ab6052549";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ScheduledToastNotificationShowing: *const fn(self: *anyopaque, handler: *TypedEventHandler(ToastNotifier,ScheduledToastNotificationShowingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ScheduledToastNotificationShowing: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUserNotification = extern struct {
    vtable: *const VTable,
    pub fn getNotification(self: *@This()) core.HResult!*Notification {
        var _r: *Notification = undefined;
        const _c = self.vtable.get_Notification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppInfo(self: *@This()) core.HResult!*AppInfo {
        var _r: *AppInfo = undefined;
        const _c = self.vtable.get_AppInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCreationTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_CreationTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IUserNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "adf7e52f-4e53-42d5-9c33-eb5ea515b23e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Notification: *const fn(self: *anyopaque, _r: **Notification) callconv(.winapi) HRESULT,
        get_AppInfo: *const fn(self: *anyopaque, _r: **AppInfo) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CreationTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IUserNotificationChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getChangeKind(self: *@This()) core.HResult!UserNotificationChangedKind {
        var _r: UserNotificationChangedKind = undefined;
        const _c = self.vtable.get_ChangeKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserNotificationId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UserNotificationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.IUserNotificationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6bd6839-79cf-4b25-82c0-0ce1eef81f8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeKind: *const fn(self: *anyopaque, _r: *UserNotificationChangedKind) callconv(.winapi) HRESULT,
        get_UserNotificationId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const KnownAdaptiveNotificationHints = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Style() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationHintsStaticsCache.get();
        return try factory.getStyle();
    }
    pub fn get_Wrap() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationHintsStaticsCache.get();
        return try factory.getWrap();
    }
    pub fn get_MaxLines() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationHintsStaticsCache.get();
        return try factory.getMaxLines();
    }
    pub fn get_MinLines() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationHintsStaticsCache.get();
        return try factory.getMinLines();
    }
    pub fn get_TextStacking() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationHintsStaticsCache.get();
        return try factory.getTextStacking();
    }
    pub fn get_Align() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationHintsStaticsCache.get();
        return try factory.getAlign();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.KnownAdaptiveNotificationHints";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownAdaptiveNotificationHintsStaticsCache: FactoryCache(IKnownAdaptiveNotificationHintsStatics, RUNTIME_NAME) = .{};
};
pub const KnownAdaptiveNotificationTextStyles = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Caption() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getCaption();
    }
    pub fn get_Body() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getBody();
    }
    pub fn get_Base() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getBase();
    }
    pub fn get_Subtitle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getSubtitle();
    }
    pub fn get_Title() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getTitle();
    }
    pub fn get_Subheader() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getSubheader();
    }
    pub fn get_Header() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getHeader();
    }
    pub fn get_TitleNumeral() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getTitleNumeral();
    }
    pub fn get_SubheaderNumeral() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getSubheaderNumeral();
    }
    pub fn get_HeaderNumeral() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getHeaderNumeral();
    }
    pub fn get_CaptionSubtle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getCaptionSubtle();
    }
    pub fn get_BodySubtle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getBodySubtle();
    }
    pub fn get_BaseSubtle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getBaseSubtle();
    }
    pub fn get_SubtitleSubtle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getSubtitleSubtle();
    }
    pub fn get_TitleSubtle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getTitleSubtle();
    }
    pub fn get_SubheaderSubtle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getSubheaderSubtle();
    }
    pub fn get_SubheaderNumeralSubtle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getSubheaderNumeralSubtle();
    }
    pub fn get_HeaderSubtle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getHeaderSubtle();
    }
    pub fn get_HeaderNumeralSubtle() core.HResult!HSTRING {
        const factory = @This().IKnownAdaptiveNotificationTextStylesStaticsCache.get();
        return try factory.getHeaderNumeralSubtle();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.KnownAdaptiveNotificationTextStyles";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownAdaptiveNotificationTextStylesStaticsCache: FactoryCache(IKnownAdaptiveNotificationTextStylesStatics, RUNTIME_NAME) = .{};
};
pub const KnownNotificationBindings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ToastGeneric() core.HResult!HSTRING {
        const factory = @This().IKnownNotificationBindingsStaticsCache.get();
        return try factory.getToastGeneric();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.KnownNotificationBindings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownNotificationBindingsStaticsCache: FactoryCache(IKnownNotificationBindingsStatics, RUNTIME_NAME) = .{};
};
pub const Notification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *INotification = @ptrCast(self);
        return try this.getExpirationTime();
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *INotification = @ptrCast(self);
        return try this.putExpirationTime(value);
    }
    pub fn getVisual(self: *@This()) core.HResult!*NotificationVisual {
        const this: *INotification = @ptrCast(self);
        return try this.getVisual();
    }
    pub fn putVisual(self: *@This(), value: *NotificationVisual) core.HResult!void {
        const this: *INotification = @ptrCast(self);
        return try this.putVisual(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INotification.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.Notification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INotification.GUID;
    pub const IID: Guid = INotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INotification.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NotificationBinding = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTemplate(self: *@This()) core.HResult!HSTRING {
        const this: *INotificationBinding = @ptrCast(self);
        return try this.getTemplate();
    }
    pub fn putTemplate(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *INotificationBinding = @ptrCast(self);
        return try this.putTemplate(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *INotificationBinding = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *INotificationBinding = @ptrCast(self);
        return try this.putLanguage(value);
    }
    pub fn getHints(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *INotificationBinding = @ptrCast(self);
        return try this.getHints();
    }
    pub fn GetTextElements(self: *@This()) core.HResult!*IVectorView(AdaptiveNotificationText) {
        const this: *INotificationBinding = @ptrCast(self);
        return try this.GetTextElements();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.NotificationBinding";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INotificationBinding.GUID;
    pub const IID: Guid = INotificationBinding.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INotificationBinding.SIGNATURE);
};
pub const NotificationData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValues(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *INotificationData = @ptrCast(self);
        return try this.getValues();
    }
    pub fn getSequenceNumber(self: *@This()) core.HResult!u32 {
        const this: *INotificationData = @ptrCast(self);
        return try this.getSequenceNumber();
    }
    pub fn putSequenceNumber(self: *@This(), value: u32) core.HResult!void {
        const this: *INotificationData = @ptrCast(self);
        return try this.putSequenceNumber(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INotificationData.IID)));
    }
    pub fn CreateNotificationDataWithSequenceNumber(initialValues: *IIterable(IKeyValuePair(HSTRING,HSTRING)), sequenceNumber: u32) core.HResult!*NotificationData {
        const factory = @This().INotificationDataFactoryCache.get();
        return try factory.CreateNotificationDataWithSequenceNumber(initialValues, sequenceNumber);
    }
    pub fn CreateNotificationData(initialValues: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*NotificationData {
        const factory = @This().INotificationDataFactoryCache.get();
        return try factory.CreateNotificationData(initialValues);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.NotificationData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INotificationData.GUID;
    pub const IID: Guid = INotificationData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INotificationData.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _INotificationDataFactoryCache: FactoryCache(INotificationDataFactory, RUNTIME_NAME) = .{};
};
pub const NotificationKinds = enum(i32) {
    Unknown = 0,
    Toast = 1,
};
pub const NotificationMirroring = enum(i32) {
    Allowed = 0,
    Disabled = 1,
};
pub const NotificationSetting = enum(i32) {
    Enabled = 0,
    DisabledForApplication = 1,
    DisabledForUser = 2,
    DisabledByGroupPolicy = 3,
    DisabledByManifest = 4,
};
pub const NotificationUpdateResult = enum(i32) {
    Succeeded = 0,
    Failed = 1,
    NotificationNotFound = 2,
};
pub const NotificationVisual = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *INotificationVisual = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *INotificationVisual = @ptrCast(self);
        return try this.putLanguage(value);
    }
    pub fn getBindings(self: *@This()) core.HResult!*IVector(NotificationBinding) {
        const this: *INotificationVisual = @ptrCast(self);
        return try this.getBindings();
    }
    pub fn GetBinding(self: *@This(), templateName: HSTRING) core.HResult!*NotificationBinding {
        const this: *INotificationVisual = @ptrCast(self);
        return try this.GetBinding(templateName);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.NotificationVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INotificationVisual.GUID;
    pub const IID: Guid = INotificationVisual.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INotificationVisual.SIGNATURE);
};
pub const PeriodicUpdateRecurrence = enum(i32) {
    HalfHour = 0,
    Hour = 1,
    SixHours = 2,
    TwelveHours = 3,
    Daily = 4,
};
pub const ScheduledTileNotification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        const this: *IScheduledTileNotification = @ptrCast(self);
        return try this.getContent();
    }
    pub fn getDeliveryTime(self: *@This()) core.HResult!DateTime {
        const this: *IScheduledTileNotification = @ptrCast(self);
        return try this.getDeliveryTime();
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IScheduledTileNotification = @ptrCast(self);
        return try this.putExpirationTime(value);
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IScheduledTileNotification = @ptrCast(self);
        return try this.getExpirationTime();
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IScheduledTileNotification = @ptrCast(self);
        return try this.putTag(value);
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        const this: *IScheduledTileNotification = @ptrCast(self);
        return try this.getTag();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IScheduledTileNotification = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IScheduledTileNotification = @ptrCast(self);
        return try this.getId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateScheduledTileNotification(content: *XmlDocument, deliveryTime: DateTime) core.HResult!*ScheduledTileNotification {
        const factory = @This().IScheduledTileNotificationFactoryCache.get();
        return try factory.CreateScheduledTileNotification(content, deliveryTime);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ScheduledTileNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScheduledTileNotification.GUID;
    pub const IID: Guid = IScheduledTileNotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScheduledTileNotification.SIGNATURE);
    var _IScheduledTileNotificationFactoryCache: FactoryCache(IScheduledTileNotificationFactory, RUNTIME_NAME) = .{};
};
pub const ScheduledToastNotification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        const this: *IScheduledToastNotification = @ptrCast(self);
        return try this.getContent();
    }
    pub fn getDeliveryTime(self: *@This()) core.HResult!DateTime {
        const this: *IScheduledToastNotification = @ptrCast(self);
        return try this.getDeliveryTime();
    }
    pub fn getSnoozeInterval(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IScheduledToastNotification = @ptrCast(self);
        return try this.getSnoozeInterval();
    }
    pub fn getMaximumSnoozeCount(self: *@This()) core.HResult!u32 {
        const this: *IScheduledToastNotification = @ptrCast(self);
        return try this.getMaximumSnoozeCount();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IScheduledToastNotification = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IScheduledToastNotification = @ptrCast(self);
        return try this.getId();
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IScheduledToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTag(value);
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var this: ?*IScheduledToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTag();
    }
    pub fn putGroup(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IScheduledToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putGroup(value);
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var this: ?*IScheduledToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGroup();
    }
    pub fn putSuppressPopup(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IScheduledToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSuppressPopup(value);
    }
    pub fn getSuppressPopup(self: *@This()) core.HResult!bool {
        var this: ?*IScheduledToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSuppressPopup();
    }
    pub fn getNotificationMirroring(self: *@This()) core.HResult!NotificationMirroring {
        var this: ?*IScheduledToastNotification3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNotificationMirroring();
    }
    pub fn putNotificationMirroring(self: *@This(), value: NotificationMirroring) core.HResult!void {
        var this: ?*IScheduledToastNotification3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNotificationMirroring(value);
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IScheduledToastNotification3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IScheduledToastNotification3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRemoteId(value);
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var this: ?*IScheduledToastNotification4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpirationTime();
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        var this: ?*IScheduledToastNotification4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScheduledToastNotification4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putExpirationTime(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateScheduledToastNotification(content: *XmlDocument, deliveryTime: DateTime) core.HResult!*ScheduledToastNotification {
        const factory = @This().IScheduledToastNotificationFactoryCache.get();
        return try factory.CreateScheduledToastNotification(content, deliveryTime);
    }
    pub fn CreateScheduledToastNotificationRecurring(content: *XmlDocument, deliveryTime: DateTime, snoozeInterval: TimeSpan, maximumSnoozeCount: u32) core.HResult!*ScheduledToastNotification {
        const factory = @This().IScheduledToastNotificationFactoryCache.get();
        return try factory.CreateScheduledToastNotificationRecurring(content, deliveryTime, snoozeInterval, maximumSnoozeCount);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ScheduledToastNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScheduledToastNotification.GUID;
    pub const IID: Guid = IScheduledToastNotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScheduledToastNotification.SIGNATURE);
    var _IScheduledToastNotificationFactoryCache: FactoryCache(IScheduledToastNotificationFactory, RUNTIME_NAME) = .{};
};
pub const ScheduledToastNotificationShowingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCancel(self: *@This()) core.HResult!bool {
        const this: *IScheduledToastNotificationShowingEventArgs = @ptrCast(self);
        return try this.getCancel();
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const this: *IScheduledToastNotificationShowingEventArgs = @ptrCast(self);
        return try this.putCancel(value);
    }
    pub fn getScheduledToastNotification(self: *@This()) core.HResult!*ScheduledToastNotification {
        const this: *IScheduledToastNotificationShowingEventArgs = @ptrCast(self);
        return try this.getScheduledToastNotification();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IScheduledToastNotificationShowingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ScheduledToastNotificationShowingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScheduledToastNotificationShowingEventArgs.GUID;
    pub const IID: Guid = IScheduledToastNotificationShowingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScheduledToastNotificationShowingEventArgs.SIGNATURE);
};
pub const ShownTileNotification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        const this: *IShownTileNotification = @ptrCast(self);
        return try this.getArguments();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ShownTileNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShownTileNotification.GUID;
    pub const IID: Guid = IShownTileNotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShownTileNotification.SIGNATURE);
};
pub const TileFlyoutNotification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        const this: *ITileFlyoutNotification = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *ITileFlyoutNotification = @ptrCast(self);
        return try this.putExpirationTime(value);
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *ITileFlyoutNotification = @ptrCast(self);
        return try this.getExpirationTime();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateTileFlyoutNotification(content: *XmlDocument) core.HResult!*TileFlyoutNotification {
        const factory = @This().ITileFlyoutNotificationFactoryCache.get();
        return try factory.CreateTileFlyoutNotification(content);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.TileFlyoutNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITileFlyoutNotification.GUID;
    pub const IID: Guid = ITileFlyoutNotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITileFlyoutNotification.SIGNATURE);
    var _ITileFlyoutNotificationFactoryCache: FactoryCache(ITileFlyoutNotificationFactory, RUNTIME_NAME) = .{};
};
pub const TileFlyoutTemplateType = enum(i32) {
    TileFlyoutTemplate01 = 0,
};
pub const TileFlyoutUpdateManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateTileFlyoutUpdaterForApplication() core.HResult!*TileFlyoutUpdater {
        const factory = @This().ITileFlyoutUpdateManagerStaticsCache.get();
        return try factory.CreateTileFlyoutUpdaterForApplication();
    }
    pub fn CreateTileFlyoutUpdaterForApplicationWithApplicationId(applicationId: HSTRING) core.HResult!*TileFlyoutUpdater {
        const factory = @This().ITileFlyoutUpdateManagerStaticsCache.get();
        return try factory.CreateTileFlyoutUpdaterForApplicationWithApplicationId(applicationId);
    }
    pub fn CreateTileFlyoutUpdaterForSecondaryTile(tileId: HSTRING) core.HResult!*TileFlyoutUpdater {
        const factory = @This().ITileFlyoutUpdateManagerStaticsCache.get();
        return try factory.CreateTileFlyoutUpdaterForSecondaryTile(tileId);
    }
    pub fn GetTemplateContent(ty: TileFlyoutTemplateType) core.HResult!*XmlDocument {
        const factory = @This().ITileFlyoutUpdateManagerStaticsCache.get();
        return try factory.GetTemplateContent(ty);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.TileFlyoutUpdateManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ITileFlyoutUpdateManagerStaticsCache: FactoryCache(ITileFlyoutUpdateManagerStatics, RUNTIME_NAME) = .{};
};
pub const TileFlyoutUpdater = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Update(self: *@This(), notification: *TileFlyoutNotification) core.HResult!void {
        const this: *ITileFlyoutUpdater = @ptrCast(self);
        return try this.Update(notification);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *ITileFlyoutUpdater = @ptrCast(self);
        return try this.Clear();
    }
    pub fn StartPeriodicUpdate(self: *@This(), tileFlyoutContent: *Uri, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const this: *ITileFlyoutUpdater = @ptrCast(self);
        return try this.StartPeriodicUpdate(tileFlyoutContent, requestedInterval);
    }
    pub fn StartPeriodicUpdateWithStartTimeWithRequestedInterval(self: *@This(), tileFlyoutContent: *Uri, startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const this: *ITileFlyoutUpdater = @ptrCast(self);
        return try this.StartPeriodicUpdateWithStartTimeWithRequestedInterval(tileFlyoutContent, startTime, requestedInterval);
    }
    pub fn StopPeriodicUpdate(self: *@This()) core.HResult!void {
        const this: *ITileFlyoutUpdater = @ptrCast(self);
        return try this.StopPeriodicUpdate();
    }
    pub fn getSetting(self: *@This()) core.HResult!NotificationSetting {
        const this: *ITileFlyoutUpdater = @ptrCast(self);
        return try this.getSetting();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.TileFlyoutUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITileFlyoutUpdater.GUID;
    pub const IID: Guid = ITileFlyoutUpdater.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITileFlyoutUpdater.SIGNATURE);
};
pub const TileNotification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        const this: *ITileNotification = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *ITileNotification = @ptrCast(self);
        return try this.putExpirationTime(value);
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *ITileNotification = @ptrCast(self);
        return try this.getExpirationTime();
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITileNotification = @ptrCast(self);
        return try this.putTag(value);
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        const this: *ITileNotification = @ptrCast(self);
        return try this.getTag();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateTileNotification(content: *XmlDocument) core.HResult!*TileNotification {
        const factory = @This().ITileNotificationFactoryCache.get();
        return try factory.CreateTileNotification(content);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.TileNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITileNotification.GUID;
    pub const IID: Guid = ITileNotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITileNotification.SIGNATURE);
    var _ITileNotificationFactoryCache: FactoryCache(ITileNotificationFactory, RUNTIME_NAME) = .{};
};
pub const TileTemplateType = enum(i32) {
    TileSquareImage = 0,
    TileSquareBlock = 1,
    TileSquareText01 = 2,
    TileSquareText02 = 3,
    TileSquareText03 = 4,
    TileSquareText04 = 5,
    TileSquarePeekImageAndText01 = 6,
    TileSquarePeekImageAndText02 = 7,
    TileSquarePeekImageAndText03 = 8,
    TileSquarePeekImageAndText04 = 9,
    TileWideImage = 10,
    TileWideImageCollection = 11,
    TileWideImageAndText01 = 12,
    TileWideImageAndText02 = 13,
    TileWideBlockAndText01 = 14,
    TileWideBlockAndText02 = 15,
    TileWidePeekImageCollection01 = 16,
    TileWidePeekImageCollection02 = 17,
    TileWidePeekImageCollection03 = 18,
    TileWidePeekImageCollection04 = 19,
    TileWidePeekImageCollection05 = 20,
    TileWidePeekImageCollection06 = 21,
    TileWidePeekImageAndText01 = 22,
    TileWidePeekImageAndText02 = 23,
    TileWidePeekImage01 = 24,
    TileWidePeekImage02 = 25,
    TileWidePeekImage03 = 26,
    TileWidePeekImage04 = 27,
    TileWidePeekImage05 = 28,
    TileWidePeekImage06 = 29,
    TileWideSmallImageAndText01 = 30,
    TileWideSmallImageAndText02 = 31,
    TileWideSmallImageAndText03 = 32,
    TileWideSmallImageAndText04 = 33,
    TileWideSmallImageAndText05 = 34,
    TileWideText01 = 35,
    TileWideText02 = 36,
    TileWideText03 = 37,
    TileWideText04 = 38,
    TileWideText05 = 39,
    TileWideText06 = 40,
    TileWideText07 = 41,
    TileWideText08 = 42,
    TileWideText09 = 43,
    TileWideText10 = 44,
    TileWideText11 = 45,
    TileSquare150x150Image = 0,
    TileSquare150x150Block = 1,
    TileSquare150x150Text01 = 2,
    TileSquare150x150Text02 = 3,
    TileSquare150x150Text03 = 4,
    TileSquare150x150Text04 = 5,
    TileSquare150x150PeekImageAndText01 = 6,
    TileSquare150x150PeekImageAndText02 = 7,
    TileSquare150x150PeekImageAndText03 = 8,
    TileSquare150x150PeekImageAndText04 = 9,
    TileWide310x150Image = 10,
    TileWide310x150ImageCollection = 11,
    TileWide310x150ImageAndText01 = 12,
    TileWide310x150ImageAndText02 = 13,
    TileWide310x150BlockAndText01 = 14,
    TileWide310x150BlockAndText02 = 15,
    TileWide310x150PeekImageCollection01 = 16,
    TileWide310x150PeekImageCollection02 = 17,
    TileWide310x150PeekImageCollection03 = 18,
    TileWide310x150PeekImageCollection04 = 19,
    TileWide310x150PeekImageCollection05 = 20,
    TileWide310x150PeekImageCollection06 = 21,
    TileWide310x150PeekImageAndText01 = 22,
    TileWide310x150PeekImageAndText02 = 23,
    TileWide310x150PeekImage01 = 24,
    TileWide310x150PeekImage02 = 25,
    TileWide310x150PeekImage03 = 26,
    TileWide310x150PeekImage04 = 27,
    TileWide310x150PeekImage05 = 28,
    TileWide310x150PeekImage06 = 29,
    TileWide310x150SmallImageAndText01 = 30,
    TileWide310x150SmallImageAndText02 = 31,
    TileWide310x150SmallImageAndText03 = 32,
    TileWide310x150SmallImageAndText04 = 33,
    TileWide310x150SmallImageAndText05 = 34,
    TileWide310x150Text01 = 35,
    TileWide310x150Text02 = 36,
    TileWide310x150Text03 = 37,
    TileWide310x150Text04 = 38,
    TileWide310x150Text05 = 39,
    TileWide310x150Text06 = 40,
    TileWide310x150Text07 = 41,
    TileWide310x150Text08 = 42,
    TileWide310x150Text09 = 43,
    TileWide310x150Text10 = 44,
    TileWide310x150Text11 = 45,
    TileSquare310x310BlockAndText01 = 46,
    TileSquare310x310BlockAndText02 = 47,
    TileSquare310x310Image = 48,
    TileSquare310x310ImageAndText01 = 49,
    TileSquare310x310ImageAndText02 = 50,
    TileSquare310x310ImageAndTextOverlay01 = 51,
    TileSquare310x310ImageAndTextOverlay02 = 52,
    TileSquare310x310ImageAndTextOverlay03 = 53,
    TileSquare310x310ImageCollectionAndText01 = 54,
    TileSquare310x310ImageCollectionAndText02 = 55,
    TileSquare310x310ImageCollection = 56,
    TileSquare310x310SmallImagesAndTextList01 = 57,
    TileSquare310x310SmallImagesAndTextList02 = 58,
    TileSquare310x310SmallImagesAndTextList03 = 59,
    TileSquare310x310SmallImagesAndTextList04 = 60,
    TileSquare310x310Text01 = 61,
    TileSquare310x310Text02 = 62,
    TileSquare310x310Text03 = 63,
    TileSquare310x310Text04 = 64,
    TileSquare310x310Text05 = 65,
    TileSquare310x310Text06 = 66,
    TileSquare310x310Text07 = 67,
    TileSquare310x310Text08 = 68,
    TileSquare310x310TextList01 = 69,
    TileSquare310x310TextList02 = 70,
    TileSquare310x310TextList03 = 71,
    TileSquare310x310SmallImageAndText01 = 72,
    TileSquare310x310SmallImagesAndTextList05 = 73,
    TileSquare310x310Text09 = 74,
    TileSquare71x71IconWithBadge = 75,
    TileSquare150x150IconWithBadge = 76,
    TileWide310x150IconWithBadgeAndText = 77,
    TileSquare71x71Image = 78,
    TileTall150x310Image = 79,
};
pub const TileUpdateManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateTileUpdaterForApplication() core.HResult!*TileUpdater {
        const factory = @This().ITileUpdateManagerStaticsCache.get();
        return try factory.CreateTileUpdaterForApplication();
    }
    pub fn CreateTileUpdaterForApplicationWithApplicationId(applicationId: HSTRING) core.HResult!*TileUpdater {
        const factory = @This().ITileUpdateManagerStaticsCache.get();
        return try factory.CreateTileUpdaterForApplicationWithApplicationId(applicationId);
    }
    pub fn CreateTileUpdaterForSecondaryTile(tileId: HSTRING) core.HResult!*TileUpdater {
        const factory = @This().ITileUpdateManagerStaticsCache.get();
        return try factory.CreateTileUpdaterForSecondaryTile(tileId);
    }
    pub fn GetTemplateContent(ty: TileTemplateType) core.HResult!*XmlDocument {
        const factory = @This().ITileUpdateManagerStaticsCache.get();
        return try factory.GetTemplateContent(ty);
    }
    pub fn GetForUser(user: *User) core.HResult!*TileUpdateManagerForUser {
        const factory = @This().ITileUpdateManagerStatics2Cache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.TileUpdateManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ITileUpdateManagerStaticsCache: FactoryCache(ITileUpdateManagerStatics, RUNTIME_NAME) = .{};
    var _ITileUpdateManagerStatics2Cache: FactoryCache(ITileUpdateManagerStatics2, RUNTIME_NAME) = .{};
};
pub const TileUpdateManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateTileUpdaterForApplicationForUser(self: *@This()) core.HResult!*TileUpdater {
        const this: *ITileUpdateManagerForUser = @ptrCast(self);
        return try this.CreateTileUpdaterForApplicationForUser();
    }
    pub fn CreateTileUpdaterForApplication(self: *@This(), applicationId: HSTRING) core.HResult!*TileUpdater {
        const this: *ITileUpdateManagerForUser = @ptrCast(self);
        return try this.CreateTileUpdaterForApplication(applicationId);
    }
    pub fn CreateTileUpdaterForSecondaryTile(self: *@This(), tileId: HSTRING) core.HResult!*TileUpdater {
        const this: *ITileUpdateManagerForUser = @ptrCast(self);
        return try this.CreateTileUpdaterForSecondaryTile(tileId);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *ITileUpdateManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.TileUpdateManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITileUpdateManagerForUser.GUID;
    pub const IID: Guid = ITileUpdateManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITileUpdateManagerForUser.SIGNATURE);
};
pub const TileUpdater = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Update(self: *@This(), notification: *TileNotification) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.Update(notification);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.Clear();
    }
    pub fn EnableNotificationQueue(self: *@This(), enable: bool) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.EnableNotificationQueue(enable);
    }
    pub fn getSetting(self: *@This()) core.HResult!NotificationSetting {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.getSetting();
    }
    pub fn AddToSchedule(self: *@This(), scheduledTile: *ScheduledTileNotification) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.AddToSchedule(scheduledTile);
    }
    pub fn RemoveFromSchedule(self: *@This(), scheduledTile: *ScheduledTileNotification) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.RemoveFromSchedule(scheduledTile);
    }
    pub fn GetScheduledTileNotifications(self: *@This()) core.HResult!*IVectorView(ScheduledTileNotification) {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.GetScheduledTileNotifications();
    }
    pub fn StartPeriodicUpdate(self: *@This(), tileContent: *Uri, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.StartPeriodicUpdate(tileContent, requestedInterval);
    }
    pub fn StartPeriodicUpdateWithStartTimeWithRequestedInterval(self: *@This(), tileContent: *Uri, startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.StartPeriodicUpdateWithStartTimeWithRequestedInterval(tileContent, startTime, requestedInterval);
    }
    pub fn StopPeriodicUpdate(self: *@This()) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.StopPeriodicUpdate();
    }
    pub fn StartPeriodicUpdateBatch(self: *@This(), tileContents: *IIterable(Uri), requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.StartPeriodicUpdateBatch(tileContents, requestedInterval);
    }
    pub fn StartPeriodicUpdateBatchWithStartTimeWithRequestedInterval(self: *@This(), tileContents: *IIterable(Uri), startTime: DateTime, requestedInterval: PeriodicUpdateRecurrence) core.HResult!void {
        const this: *ITileUpdater = @ptrCast(self);
        return try this.StartPeriodicUpdateBatchWithStartTimeWithRequestedInterval(tileContents, startTime, requestedInterval);
    }
    pub fn EnableNotificationQueueForSquare150x150(self: *@This(), enable: bool) core.HResult!void {
        var this: ?*ITileUpdater2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITileUpdater2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableNotificationQueueForSquare150x150(enable);
    }
    pub fn EnableNotificationQueueForWide310x150(self: *@This(), enable: bool) core.HResult!void {
        var this: ?*ITileUpdater2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITileUpdater2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableNotificationQueueForWide310x150(enable);
    }
    pub fn EnableNotificationQueueForSquare310x310(self: *@This(), enable: bool) core.HResult!void {
        var this: ?*ITileUpdater2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITileUpdater2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableNotificationQueueForSquare310x310(enable);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.TileUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITileUpdater.GUID;
    pub const IID: Guid = ITileUpdater.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITileUpdater.SIGNATURE);
};
pub const ToastActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArguments(self: *@This()) core.HResult!HSTRING {
        const this: *IToastActivatedEventArgs = @ptrCast(self);
        return try this.getArguments();
    }
    pub fn getUserInput(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IToastActivatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastActivatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserInput();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastActivatedEventArgs.GUID;
    pub const IID: Guid = IToastActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastActivatedEventArgs.SIGNATURE);
};
pub const ToastCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IToastCollection = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IToastCollection = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IToastCollection = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getLaunchArgs(self: *@This()) core.HResult!HSTRING {
        const this: *IToastCollection = @ptrCast(self);
        return try this.getLaunchArgs();
    }
    pub fn putLaunchArgs(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IToastCollection = @ptrCast(self);
        return try this.putLaunchArgs(value);
    }
    pub fn getIcon(self: *@This()) core.HResult!*Uri {
        const this: *IToastCollection = @ptrCast(self);
        return try this.getIcon();
    }
    pub fn putIcon(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IToastCollection = @ptrCast(self);
        return try this.putIcon(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(collectionId: HSTRING, displayName: HSTRING, launchArgs: HSTRING, iconUri: *Uri) core.HResult!*ToastCollection {
        const factory = @This().IToastCollectionFactoryCache.get();
        return try factory.CreateInstance(collectionId, displayName, launchArgs, iconUri);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastCollection.GUID;
    pub const IID: Guid = IToastCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastCollection.SIGNATURE);
    var _IToastCollectionFactoryCache: FactoryCache(IToastCollectionFactory, RUNTIME_NAME) = .{};
};
pub const ToastCollectionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SaveToastCollectionAsync(self: *@This(), collection: *ToastCollection) core.HResult!*IAsyncAction {
        const this: *IToastCollectionManager = @ptrCast(self);
        return try this.SaveToastCollectionAsync(collection);
    }
    pub fn FindAllToastCollectionsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ToastCollection)) {
        const this: *IToastCollectionManager = @ptrCast(self);
        return try this.FindAllToastCollectionsAsync();
    }
    pub fn GetToastCollectionAsync(self: *@This(), collectionId: HSTRING) core.HResult!*IAsyncOperation(ToastCollection) {
        const this: *IToastCollectionManager = @ptrCast(self);
        return try this.GetToastCollectionAsync(collectionId);
    }
    pub fn RemoveToastCollectionAsync(self: *@This(), collectionId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IToastCollectionManager = @ptrCast(self);
        return try this.RemoveToastCollectionAsync(collectionId);
    }
    pub fn RemoveAllToastCollectionsAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IToastCollectionManager = @ptrCast(self);
        return try this.RemoveAllToastCollectionsAsync();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IToastCollectionManager = @ptrCast(self);
        return try this.getUser();
    }
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        const this: *IToastCollectionManager = @ptrCast(self);
        return try this.getAppId();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastCollectionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastCollectionManager.GUID;
    pub const IID: Guid = IToastCollectionManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastCollectionManager.SIGNATURE);
};
pub const ToastDismissalReason = enum(i32) {
    UserCanceled = 0,
    ApplicationHidden = 1,
    TimedOut = 2,
};
pub const ToastDismissedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!ToastDismissalReason {
        const this: *IToastDismissedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastDismissedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastDismissedEventArgs.GUID;
    pub const IID: Guid = IToastDismissedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastDismissedEventArgs.SIGNATURE);
};
pub const ToastFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IToastFailedEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastFailedEventArgs.GUID;
    pub const IID: Guid = IToastFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastFailedEventArgs.SIGNATURE);
};
pub const ToastHistoryChangedType = enum(i32) {
    Cleared = 0,
    Removed = 1,
    Expired = 2,
    Added = 3,
};
pub const ToastNotification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*XmlDocument {
        const this: *IToastNotification = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putExpirationTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IToastNotification = @ptrCast(self);
        return try this.putExpirationTime(value);
    }
    pub fn getExpirationTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IToastNotification = @ptrCast(self);
        return try this.getExpirationTime();
    }
    pub fn addDismissed(self: *@This(), handler: *TypedEventHandler(ToastNotification,ToastDismissedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IToastNotification = @ptrCast(self);
        return try this.addDismissed(handler);
    }
    pub fn removeDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IToastNotification = @ptrCast(self);
        return try this.removeDismissed(token);
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(ToastNotification,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IToastNotification = @ptrCast(self);
        return try this.addActivated(handler);
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IToastNotification = @ptrCast(self);
        return try this.removeActivated(token);
    }
    pub fn addFailed(self: *@This(), handler: *TypedEventHandler(ToastNotification,ToastFailedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IToastNotification = @ptrCast(self);
        return try this.addFailed(handler);
    }
    pub fn removeFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IToastNotification = @ptrCast(self);
        return try this.removeFailed(token);
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTag(value);
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var this: ?*IToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTag();
    }
    pub fn putGroup(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putGroup(value);
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var this: ?*IToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGroup();
    }
    pub fn putSuppressPopup(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSuppressPopup(value);
    }
    pub fn getSuppressPopup(self: *@This()) core.HResult!bool {
        var this: ?*IToastNotification2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSuppressPopup();
    }
    pub fn getNotificationMirroring(self: *@This()) core.HResult!NotificationMirroring {
        var this: ?*IToastNotification3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNotificationMirroring();
    }
    pub fn putNotificationMirroring(self: *@This(), value: NotificationMirroring) core.HResult!void {
        var this: ?*IToastNotification3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNotificationMirroring(value);
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IToastNotification3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IToastNotification3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRemoteId(value);
    }
    pub fn getData(self: *@This()) core.HResult!*NotificationData {
        var this: ?*IToastNotification4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getData();
    }
    pub fn putData(self: *@This(), value: *NotificationData) core.HResult!void {
        var this: ?*IToastNotification4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putData(value);
    }
    pub fn getPriority(self: *@This()) core.HResult!ToastNotificationPriority {
        var this: ?*IToastNotification4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPriority();
    }
    pub fn putPriority(self: *@This(), value: ToastNotificationPriority) core.HResult!void {
        var this: ?*IToastNotification4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPriority(value);
    }
    pub fn getExpiresOnReboot(self: *@This()) core.HResult!bool {
        var this: ?*IToastNotification6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpiresOnReboot();
    }
    pub fn putExpiresOnReboot(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IToastNotification6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotification6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putExpiresOnReboot(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateToastNotification(content: *XmlDocument) core.HResult!*ToastNotification {
        const factory = @This().IToastNotificationFactoryCache.get();
        return try factory.CreateToastNotification(content);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastNotification.GUID;
    pub const IID: Guid = IToastNotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastNotification.SIGNATURE);
    var _IToastNotificationFactoryCache: FactoryCache(IToastNotificationFactory, RUNTIME_NAME) = .{};
};
pub const ToastNotificationActionTriggerDetail = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArgument(self: *@This()) core.HResult!HSTRING {
        const this: *IToastNotificationActionTriggerDetail = @ptrCast(self);
        return try this.getArgument();
    }
    pub fn getUserInput(self: *@This()) core.HResult!*ValueSet {
        const this: *IToastNotificationActionTriggerDetail = @ptrCast(self);
        return try this.getUserInput();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastNotificationActionTriggerDetail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastNotificationActionTriggerDetail.GUID;
    pub const IID: Guid = IToastNotificationActionTriggerDetail.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastNotificationActionTriggerDetail.SIGNATURE);
};
pub const ToastNotificationHistory = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetHistory(self: *@This()) core.HResult!*IVectorView(ToastNotification) {
        var this: ?*IToastNotificationHistory2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationHistory2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetHistory();
    }
    pub fn GetHistory(self: *@This(), applicationId: HSTRING) core.HResult!*IVectorView(ToastNotification) {
        var this: ?*IToastNotificationHistory2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationHistory2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetHistory(applicationId);
    }
    pub fn RemoveGroup(self: *@This(), group: HSTRING) core.HResult!void {
        const this: *IToastNotificationHistory = @ptrCast(self);
        return try this.RemoveGroup(group);
    }
    pub fn RemoveGroupWithApplicationId(self: *@This(), group: HSTRING, applicationId: HSTRING) core.HResult!void {
        const this: *IToastNotificationHistory = @ptrCast(self);
        return try this.RemoveGroupWithApplicationId(group, applicationId);
    }
    pub fn RemoveWithApplicationId(self: *@This(), tag: HSTRING, group: HSTRING, applicationId: HSTRING) core.HResult!void {
        const this: *IToastNotificationHistory = @ptrCast(self);
        return try this.RemoveWithApplicationId(tag, group, applicationId);
    }
    pub fn RemoveWithGroup(self: *@This(), tag: HSTRING, group: HSTRING) core.HResult!void {
        const this: *IToastNotificationHistory = @ptrCast(self);
        return try this.RemoveWithGroup(tag, group);
    }
    pub fn Remove(self: *@This(), tag: HSTRING) core.HResult!void {
        const this: *IToastNotificationHistory = @ptrCast(self);
        return try this.Remove(tag);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IToastNotificationHistory = @ptrCast(self);
        return try this.Clear();
    }
    pub fn Clear(self: *@This(), applicationId: HSTRING) core.HResult!void {
        const this: *IToastNotificationHistory = @ptrCast(self);
        return try this.Clear(applicationId);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastNotificationHistory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastNotificationHistory.GUID;
    pub const IID: Guid = IToastNotificationHistory.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastNotificationHistory.SIGNATURE);
};
pub const ToastNotificationHistoryChangedTriggerDetail = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeType(self: *@This()) core.HResult!ToastHistoryChangedType {
        const this: *IToastNotificationHistoryChangedTriggerDetail = @ptrCast(self);
        return try this.getChangeType();
    }
    pub fn getCollectionId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IToastNotificationHistoryChangedTriggerDetail2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationHistoryChangedTriggerDetail2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCollectionId();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastNotificationHistoryChangedTriggerDetail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastNotificationHistoryChangedTriggerDetail.GUID;
    pub const IID: Guid = IToastNotificationHistoryChangedTriggerDetail.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastNotificationHistoryChangedTriggerDetail.SIGNATURE);
};
pub const ToastNotificationManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_History() core.HResult!*ToastNotificationHistory {
        const factory = @This().IToastNotificationManagerStatics2Cache.get();
        return try factory.getHistory();
    }
    pub fn GetDefault() core.HResult!*ToastNotificationManagerForUser {
        const factory = @This().IToastNotificationManagerStatics5Cache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*ToastNotificationManagerForUser {
        const factory = @This().IToastNotificationManagerStatics4Cache.get();
        return try factory.GetForUser(user);
    }
    pub fn ConfigureNotificationMirroring(value: NotificationMirroring) core.HResult!void {
        const factory = @This().IToastNotificationManagerStatics4Cache.get();
        return try factory.ConfigureNotificationMirroring(value);
    }
    pub fn CreateToastNotifier() core.HResult!*ToastNotifier {
        const factory = @This().IToastNotificationManagerStaticsCache.get();
        return try factory.CreateToastNotifier();
    }
    pub fn CreateToastNotifierWithApplicationId(applicationId: HSTRING) core.HResult!*ToastNotifier {
        const factory = @This().IToastNotificationManagerStaticsCache.get();
        return try factory.CreateToastNotifierWithApplicationId(applicationId);
    }
    pub fn GetTemplateContent(ty: ToastTemplateType) core.HResult!*XmlDocument {
        const factory = @This().IToastNotificationManagerStaticsCache.get();
        return try factory.GetTemplateContent(ty);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastNotificationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IToastNotificationManagerStatics2Cache: FactoryCache(IToastNotificationManagerStatics2, RUNTIME_NAME) = .{};
    var _IToastNotificationManagerStatics5Cache: FactoryCache(IToastNotificationManagerStatics5, RUNTIME_NAME) = .{};
    var _IToastNotificationManagerStatics4Cache: FactoryCache(IToastNotificationManagerStatics4, RUNTIME_NAME) = .{};
    var _IToastNotificationManagerStaticsCache: FactoryCache(IToastNotificationManagerStatics, RUNTIME_NAME) = .{};
};
pub const ToastNotificationManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateToastNotifier(self: *@This()) core.HResult!*ToastNotifier {
        const this: *IToastNotificationManagerForUser = @ptrCast(self);
        return try this.CreateToastNotifier();
    }
    pub fn CreateToastNotifier(self: *@This(), applicationId: HSTRING) core.HResult!*ToastNotifier {
        const this: *IToastNotificationManagerForUser = @ptrCast(self);
        return try this.CreateToastNotifier(applicationId);
    }
    pub fn getHistory(self: *@This()) core.HResult!*ToastNotificationHistory {
        const this: *IToastNotificationManagerForUser = @ptrCast(self);
        return try this.getHistory();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IToastNotificationManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub fn GetToastNotifierForToastCollectionIdAsync(self: *@This(), collectionId: HSTRING) core.HResult!*IAsyncOperation(ToastNotifier) {
        var this: ?*IToastNotificationManagerForUser2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationManagerForUser2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetToastNotifierForToastCollectionIdAsync(collectionId);
    }
    pub fn GetHistoryForToastCollectionIdAsync(self: *@This(), collectionId: HSTRING) core.HResult!*IAsyncOperation(ToastNotificationHistory) {
        var this: ?*IToastNotificationManagerForUser2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationManagerForUser2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetHistoryForToastCollectionIdAsync(collectionId);
    }
    pub fn GetToastCollectionManager(self: *@This()) core.HResult!*ToastCollectionManager {
        var this: ?*IToastNotificationManagerForUser2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationManagerForUser2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetToastCollectionManager();
    }
    pub fn GetToastCollectionManager(self: *@This(), appId: HSTRING) core.HResult!*ToastCollectionManager {
        var this: ?*IToastNotificationManagerForUser2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationManagerForUser2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetToastCollectionManager(appId);
    }
    pub fn getNotificationMode(self: *@This()) core.HResult!ToastNotificationMode {
        var this: ?*IToastNotificationManagerForUser3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationManagerForUser3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNotificationMode();
    }
    pub fn addNotificationModeChanged(self: *@This(), handler: *TypedEventHandler(ToastNotificationManagerForUser,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IToastNotificationManagerForUser3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationManagerForUser3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addNotificationModeChanged(handler);
    }
    pub fn removeNotificationModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IToastNotificationManagerForUser3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotificationManagerForUser3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeNotificationModeChanged(token);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastNotificationManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastNotificationManagerForUser.GUID;
    pub const IID: Guid = IToastNotificationManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastNotificationManagerForUser.SIGNATURE);
};
pub const ToastNotificationMode = enum(i32) {
    Unrestricted = 0,
    PriorityOnly = 1,
    AlarmsOnly = 2,
};
pub const ToastNotificationPriority = enum(i32) {
    Default = 0,
    High = 1,
};
pub const ToastNotifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Show(self: *@This(), notification: *ToastNotification) core.HResult!void {
        const this: *IToastNotifier = @ptrCast(self);
        return try this.Show(notification);
    }
    pub fn Hide(self: *@This(), notification: *ToastNotification) core.HResult!void {
        const this: *IToastNotifier = @ptrCast(self);
        return try this.Hide(notification);
    }
    pub fn getSetting(self: *@This()) core.HResult!NotificationSetting {
        const this: *IToastNotifier = @ptrCast(self);
        return try this.getSetting();
    }
    pub fn AddToSchedule(self: *@This(), scheduledToast: *ScheduledToastNotification) core.HResult!void {
        const this: *IToastNotifier = @ptrCast(self);
        return try this.AddToSchedule(scheduledToast);
    }
    pub fn RemoveFromSchedule(self: *@This(), scheduledToast: *ScheduledToastNotification) core.HResult!void {
        const this: *IToastNotifier = @ptrCast(self);
        return try this.RemoveFromSchedule(scheduledToast);
    }
    pub fn GetScheduledToastNotifications(self: *@This()) core.HResult!*IVectorView(ScheduledToastNotification) {
        const this: *IToastNotifier = @ptrCast(self);
        return try this.GetScheduledToastNotifications();
    }
    pub fn UpdateWithTagWithGroup(self: *@This(), data: *NotificationData, tag: HSTRING, group: HSTRING) core.HResult!NotificationUpdateResult {
        var this: ?*IToastNotifier2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotifier2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateWithTagWithGroup(data, tag, group);
    }
    pub fn Update(self: *@This(), data: *NotificationData, tag: HSTRING) core.HResult!NotificationUpdateResult {
        var this: ?*IToastNotifier2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotifier2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Update(data, tag);
    }
    pub fn addScheduledToastNotificationShowing(self: *@This(), handler: *TypedEventHandler(ToastNotifier,ScheduledToastNotificationShowingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IToastNotifier3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotifier3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addScheduledToastNotificationShowing(handler);
    }
    pub fn removeScheduledToastNotificationShowing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IToastNotifier3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToastNotifier3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeScheduledToastNotificationShowing(token);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.ToastNotifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToastNotifier.GUID;
    pub const IID: Guid = IToastNotifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToastNotifier.SIGNATURE);
};
pub const ToastTemplateType = enum(i32) {
    ToastImageAndText01 = 0,
    ToastImageAndText02 = 1,
    ToastImageAndText03 = 2,
    ToastImageAndText04 = 3,
    ToastText01 = 4,
    ToastText02 = 5,
    ToastText03 = 6,
    ToastText04 = 7,
};
pub const UserNotification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNotification(self: *@This()) core.HResult!*Notification {
        const this: *IUserNotification = @ptrCast(self);
        return try this.getNotification();
    }
    pub fn getAppInfo(self: *@This()) core.HResult!*AppInfo {
        const this: *IUserNotification = @ptrCast(self);
        return try this.getAppInfo();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IUserNotification = @ptrCast(self);
        return try this.getId();
    }
    pub fn getCreationTime(self: *@This()) core.HResult!DateTime {
        const this: *IUserNotification = @ptrCast(self);
        return try this.getCreationTime();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.UserNotification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserNotification.GUID;
    pub const IID: Guid = IUserNotification.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserNotification.SIGNATURE);
};
pub const UserNotificationChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeKind(self: *@This()) core.HResult!UserNotificationChangedKind {
        const this: *IUserNotificationChangedEventArgs = @ptrCast(self);
        return try this.getChangeKind();
    }
    pub fn getUserNotificationId(self: *@This()) core.HResult!u32 {
        const this: *IUserNotificationChangedEventArgs = @ptrCast(self);
        return try this.getUserNotificationId();
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.UserNotificationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserNotificationChangedEventArgs.GUID;
    pub const IID: Guid = IUserNotificationChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserNotificationChangedEventArgs.SIGNATURE);
};
pub const UserNotificationChangedKind = enum(i32) {
    Added = 0,
    Removed = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const XmlDocument = @import("../Data/Xml/Dom.zig").XmlDocument;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const AppInfo = @import("../ApplicationModel.zig").AppInfo;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const IMap = @import("../Foundation/Collections.zig").IMap;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const HResult = @import("../Foundation.zig").HResult;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const User = @import("../System.zig").User;
pub const Management = @import("./Notifications/Management.zig");
pub const Preview = @import("./Notifications/Preview.zig");
