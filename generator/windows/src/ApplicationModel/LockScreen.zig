pub const ILockApplicationHost = extern struct {
    vtable: *const VTable,
    pub fn RequestUnlock(self: *@This()) core.HResult!void {
        const _c = self.vtable.RequestUnlock(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUnlocking(self: *@This(), handler: *TypedEventHandler(LockApplicationHost,LockScreenUnlockingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Unlocking(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUnlocking(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Unlocking(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.ILockApplicationHost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38ee31ad-d94f-4e7c-81fa-4f4436506281";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestUnlock: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Unlocking: *const fn(self: *anyopaque, handler: *TypedEventHandler(LockApplicationHost,LockScreenUnlockingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Unlocking: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILockApplicationHostStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*LockApplicationHost {
        var _r: *LockApplicationHost = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.ILockApplicationHostStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f48fab8e-23d7-4e63-96a1-666ff52d3b2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **LockApplicationHost) callconv(.winapi) HRESULT,
    };
};
pub const ILockScreenBadge = extern struct {
    vtable: *const VTable,
    pub fn getLogo(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGlyph(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_Glyph(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumber(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Number(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutomationName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AutomationName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchApp(self: *@This()) core.HResult!void {
        const _c = self.vtable.LaunchApp(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.ILockScreenBadge";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e95105d9-2bff-4db0-9b4f-3824778b9c9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Logo: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        get_Glyph: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        get_Number: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_AutomationName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        LaunchApp: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ILockScreenInfo = extern struct {
    vtable: *const VTable,
    pub fn addLockScreenImageChanged(self: *@This(), handler: *TypedEventHandler(LockScreenInfo,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LockScreenImageChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLockScreenImageChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LockScreenImageChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLockScreenImage(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_LockScreenImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addBadgesChanged(self: *@This(), handler: *TypedEventHandler(LockScreenInfo,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BadgesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBadgesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BadgesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBadges(self: *@This()) core.HResult!*IVectorView(LockScreenBadge) {
        var _r: *IVectorView(LockScreenBadge) = undefined;
        const _c = self.vtable.get_Badges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDetailTextChanged(self: *@This(), handler: *TypedEventHandler(LockScreenInfo,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DetailTextChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDetailTextChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DetailTextChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDetailText(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_DetailText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAlarmIconChanged(self: *@This(), handler: *TypedEventHandler(LockScreenInfo,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AlarmIconChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAlarmIconChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AlarmIconChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlarmIcon(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_AlarmIcon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.ILockScreenInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f59aa65c-9711-4dc9-a630-95b6cb8cdad0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_LockScreenImageChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(LockScreenInfo,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LockScreenImageChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_LockScreenImage: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        add_BadgesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(LockScreenInfo,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BadgesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Badges: *const fn(self: *anyopaque, _r: **IVectorView(LockScreenBadge)) callconv(.winapi) HRESULT,
        add_DetailTextChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(LockScreenInfo,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DetailTextChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_DetailText: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        add_AlarmIconChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(LockScreenInfo,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AlarmIconChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_AlarmIcon: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
    };
};
pub const ILockScreenUnlockingDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.ILockScreenUnlockingDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e7d1ad6-5203-43e7-9bd6-7c3947d1e3fe";
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
pub const ILockScreenUnlockingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*LockScreenUnlockingDeferral {
        var _r: *LockScreenUnlockingDeferral = undefined;
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.ILockScreenUnlockingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44e6c007-75fb-4abb-9f8b-824748900c71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **LockScreenUnlockingDeferral) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const LockApplicationHost = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestUnlock(self: *@This()) core.HResult!void {
        const this: *ILockApplicationHost = @ptrCast(self);
        return try this.RequestUnlock();
    }
    pub fn addUnlocking(self: *@This(), handler: *TypedEventHandler(LockApplicationHost,LockScreenUnlockingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ILockApplicationHost = @ptrCast(self);
        return try this.addUnlocking(handler);
    }
    pub fn removeUnlocking(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILockApplicationHost = @ptrCast(self);
        return try this.removeUnlocking(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*LockApplicationHost {
        const _f = @This().ILockApplicationHostStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.LockApplicationHost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockApplicationHost.GUID;
    pub const IID: Guid = ILockApplicationHost.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockApplicationHost.SIGNATURE);
    var _ILockApplicationHostStaticsCache: FactoryCache(ILockApplicationHostStatics, RUNTIME_NAME) = .{};
};
pub const LockScreenBadge = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLogo(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *ILockScreenBadge = @ptrCast(self);
        return try this.getLogo();
    }
    pub fn getGlyph(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *ILockScreenBadge = @ptrCast(self);
        return try this.getGlyph();
    }
    pub fn getNumber(self: *@This()) core.HResult!*IReference(u32) {
        const this: *ILockScreenBadge = @ptrCast(self);
        return try this.getNumber();
    }
    pub fn getAutomationName(self: *@This()) core.HResult!HSTRING {
        const this: *ILockScreenBadge = @ptrCast(self);
        return try this.getAutomationName();
    }
    pub fn LaunchApp(self: *@This()) core.HResult!void {
        const this: *ILockScreenBadge = @ptrCast(self);
        return try this.LaunchApp();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.LockScreenBadge";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenBadge.GUID;
    pub const IID: Guid = ILockScreenBadge.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenBadge.SIGNATURE);
};
pub const LockScreenInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addLockScreenImageChanged(self: *@This(), handler: *TypedEventHandler(LockScreenInfo,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.addLockScreenImageChanged(handler);
    }
    pub fn removeLockScreenImageChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.removeLockScreenImageChanged(token);
    }
    pub fn getLockScreenImage(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.getLockScreenImage();
    }
    pub fn addBadgesChanged(self: *@This(), handler: *TypedEventHandler(LockScreenInfo,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.addBadgesChanged(handler);
    }
    pub fn removeBadgesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.removeBadgesChanged(token);
    }
    pub fn getBadges(self: *@This()) core.HResult!*IVectorView(LockScreenBadge) {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.getBadges();
    }
    pub fn addDetailTextChanged(self: *@This(), handler: *TypedEventHandler(LockScreenInfo,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.addDetailTextChanged(handler);
    }
    pub fn removeDetailTextChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.removeDetailTextChanged(token);
    }
    pub fn getDetailText(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.getDetailText();
    }
    pub fn addAlarmIconChanged(self: *@This(), handler: *TypedEventHandler(LockScreenInfo,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.addAlarmIconChanged(handler);
    }
    pub fn removeAlarmIconChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.removeAlarmIconChanged(token);
    }
    pub fn getAlarmIcon(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *ILockScreenInfo = @ptrCast(self);
        return try this.getAlarmIcon();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.LockScreenInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenInfo.GUID;
    pub const IID: Guid = ILockScreenInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenInfo.SIGNATURE);
};
pub const LockScreenUnlockingDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *ILockScreenUnlockingDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.LockScreenUnlockingDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenUnlockingDeferral.GUID;
    pub const IID: Guid = ILockScreenUnlockingDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenUnlockingDeferral.SIGNATURE);
};
pub const LockScreenUnlockingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*LockScreenUnlockingDeferral {
        const this: *ILockScreenUnlockingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *ILockScreenUnlockingEventArgs = @ptrCast(self);
        return try this.getDeadline();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.LockScreen.LockScreenUnlockingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenUnlockingEventArgs.GUID;
    pub const IID: Guid = ILockScreenUnlockingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenUnlockingEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const IReference = @import("../Foundation.zig").IReference;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const DateTime = @import("../Foundation.zig").DateTime;
const HSTRING = @import("../root.zig").HSTRING;
