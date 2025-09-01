pub const GameChatMessageReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        const this: *IGameChatMessageReceivedEventArgs = @ptrCast(self);
        return try this.getAppId();
    }
    pub fn getAppDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IGameChatMessageReceivedEventArgs = @ptrCast(self);
        return try this.getAppDisplayName();
    }
    pub fn getSenderName(self: *@This()) core.HResult!HSTRING {
        const this: *IGameChatMessageReceivedEventArgs = @ptrCast(self);
        return try this.getSenderName();
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IGameChatMessageReceivedEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn getOrigin(self: *@This()) core.HResult!GameChatMessageOrigin {
        const this: *IGameChatMessageReceivedEventArgs = @ptrCast(self);
        return try this.getOrigin();
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.GameChatMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameChatMessageReceivedEventArgs.GUID;
    pub const IID: Guid = IGameChatMessageReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameChatMessageReceivedEventArgs.SIGNATURE);
};
pub const GameChatOverlayMessageSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMessageReceived(self: *@This(), handler: *TypedEventHandler(GameChatOverlayMessageSource,GameChatMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGameChatOverlayMessageSource = @ptrCast(self);
        return try this.addMessageReceived(handler);
    }
    pub fn removeMessageReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGameChatOverlayMessageSource = @ptrCast(self);
        return try this.removeMessageReceived(token);
    }
    pub fn SetDelayBeforeClosingAfterMessageReceived(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IGameChatOverlayMessageSource = @ptrCast(self);
        return try this.SetDelayBeforeClosingAfterMessageReceived(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGameChatOverlayMessageSource.IID)));
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.GameChatOverlayMessageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameChatOverlayMessageSource.GUID;
    pub const IID: Guid = IGameChatOverlayMessageSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameChatOverlayMessageSource.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IGameChatMessageReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSenderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SenderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrigin(self: *@This()) core.HResult!GameChatMessageOrigin {
        var _r: GameChatMessageOrigin = undefined;
        const _c = self.vtable.get_Origin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.IGameChatMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a28201f1-3fb9-4e42-a403-7afce2023b1e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SenderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Origin: *const fn(self: *anyopaque, _r: *GameChatMessageOrigin) callconv(.winapi) HRESULT,
    };
};
pub const IGameChatOverlayMessageSource = extern struct {
    vtable: *const VTable,
    pub fn addMessageReceived(self: *@This(), handler: *TypedEventHandler(GameChatOverlayMessageSource,GameChatMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetDelayBeforeClosingAfterMessageReceived(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.SetDelayBeforeClosingAfterMessageReceived(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.IGameChatOverlayMessageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e177397-59fb-4f4f-8e9a-80acf817743c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_MessageReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(GameChatOverlayMessageSource,GameChatMessageReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SetDelayBeforeClosingAfterMessageReceived: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const GameUIProviderActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGameUIArgs(self: *@This()) core.HResult!*ValueSet {
        const this: *IGameUIProviderActivatedEventArgs = @ptrCast(self);
        return try this.getGameUIArgs();
    }
    pub fn ReportCompleted(self: *@This(), results: *ValueSet) core.HResult!void {
        const this: *IGameUIProviderActivatedEventArgs = @ptrCast(self);
        return try this.ReportCompleted(results);
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.GameUIProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameUIProviderActivatedEventArgs.GUID;
    pub const IID: Guid = IGameUIProviderActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameUIProviderActivatedEventArgs.SIGNATURE);
};
pub const IGameUIProviderActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getGameUIArgs(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_GameUIArgs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompleted(self: *@This(), results: *ValueSet) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self), results);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.IGameUIProviderActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7b3203e-caf7-4ded-bbd2-47de43bb6dd5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GameUIArgs: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque, results: *ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const GameBar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn addVisibilityChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().IGameBarStaticsCache.get();
        return try _f.addVisibilityChanged(handler);
    }
    pub fn removeVisibilityChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IGameBarStaticsCache.get();
        return try _f.removeVisibilityChanged(token);
    }
    pub fn addIsInputRedirectedChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().IGameBarStaticsCache.get();
        return try _f.addIsInputRedirectedChanged(handler);
    }
    pub fn removeIsInputRedirectedChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IGameBarStaticsCache.get();
        return try _f.removeIsInputRedirectedChanged(token);
    }
    pub fn getVisible() core.HResult!bool {
        const _f = @This().IGameBarStaticsCache.get();
        return try _f.getVisible();
    }
    pub fn getIsInputRedirected() core.HResult!bool {
        const _f = @This().IGameBarStaticsCache.get();
        return try _f.getIsInputRedirected();
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.GameBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGameBarStaticsCache: FactoryCache(IGameBarStatics, RUNTIME_NAME) = .{};
};
pub const GameChatMessageOrigin = enum(i32) {
    Voice = 0,
    Text = 1,
};
pub const GameChatOverlay = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredPosition(self: *@This()) core.HResult!GameChatOverlayPosition {
        const this: *IGameChatOverlay = @ptrCast(self);
        return try this.getDesiredPosition();
    }
    pub fn putDesiredPosition(self: *@This(), value: GameChatOverlayPosition) core.HResult!void {
        const this: *IGameChatOverlay = @ptrCast(self);
        return try this.putDesiredPosition(value);
    }
    pub fn AddMessage(self: *@This(), sender: HSTRING, message: HSTRING, origin: GameChatMessageOrigin) core.HResult!void {
        const this: *IGameChatOverlay = @ptrCast(self);
        return try this.AddMessage(sender, message, origin);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*GameChatOverlay {
        const _f = @This().IGameChatOverlayStaticsCache.get();
        return try _f.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.GameChatOverlay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameChatOverlay.GUID;
    pub const IID: Guid = IGameChatOverlay.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameChatOverlay.SIGNATURE);
    var _IGameChatOverlayStaticsCache: FactoryCache(IGameChatOverlayStatics, RUNTIME_NAME) = .{};
};
pub const GameChatOverlayPosition = enum(i32) {
    BottomCenter = 0,
    BottomLeft = 1,
    BottomRight = 2,
    MiddleRight = 3,
    MiddleLeft = 4,
    TopCenter = 5,
    TopLeft = 6,
    TopRight = 7,
};
pub const IGameBarStatics = extern struct {
    vtable: *const VTable,
    pub fn addVisibilityChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VisibilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVisibilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VisibilityChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addIsInputRedirectedChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsInputRedirectedChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsInputRedirectedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsInputRedirectedChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInputRedirected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInputRedirected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.IGameBarStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1db9a292-cc78-4173-be45-b61e67283ea7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_VisibilityChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VisibilityChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_IsInputRedirectedChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsInputRedirectedChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsInputRedirected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGameChatOverlay = extern struct {
    vtable: *const VTable,
    pub fn getDesiredPosition(self: *@This()) core.HResult!GameChatOverlayPosition {
        var _r: GameChatOverlayPosition = undefined;
        const _c = self.vtable.get_DesiredPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredPosition(self: *@This(), value: GameChatOverlayPosition) core.HResult!void {
        const _c = self.vtable.put_DesiredPosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddMessage(self: *@This(), sender: HSTRING, message: HSTRING, origin: GameChatMessageOrigin) core.HResult!void {
        const _c = self.vtable.AddMessage(@ptrCast(self), sender, message, origin);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.IGameChatOverlay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbc64865-f6fc-4a48-ae07-03ac6ed43704";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredPosition: *const fn(self: *anyopaque, _r: *GameChatOverlayPosition) callconv(.winapi) HRESULT,
        put_DesiredPosition: *const fn(self: *anyopaque, value: GameChatOverlayPosition) callconv(.winapi) HRESULT,
        AddMessage: *const fn(self: *anyopaque, sender: HSTRING, message: HSTRING, origin: GameChatMessageOrigin) callconv(.winapi) HRESULT,
    };
};
pub const IGameChatOverlayStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*GameChatOverlay {
        var _r: *GameChatOverlay = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.UI.IGameChatOverlayStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89acf614-7867-49f7-9687-25d9dbf444d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **GameChatOverlay) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const SplashScreen = @import("../ApplicationModel/Activation.zig").SplashScreen;
const IActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IActivatedEventArgs;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const ApplicationExecutionState = @import("../ApplicationModel/Activation.zig").ApplicationExecutionState;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const ActivationKind = @import("../ApplicationModel/Activation.zig").ActivationKind;
const HSTRING = @import("../root.zig").HSTRING;
