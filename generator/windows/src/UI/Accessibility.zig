pub const IScreenReaderPositionChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getScreenPositionInRawPixels(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ScreenPositionInRawPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReadingText(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadingText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Accessibility.IScreenReaderPositionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "557eb5e5-54d0-5ccd-9fc5-ed33357f8a9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ScreenPositionInRawPixels: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_IsReadingText: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IScreenReaderService = extern struct {
    vtable: *const VTable,
    pub fn getCurrentScreenReaderPosition(self: *@This()) core.HResult!*ScreenReaderPositionChangedEventArgs {
        var _r: *ScreenReaderPositionChangedEventArgs = undefined;
        const _c = self.vtable.get_CurrentScreenReaderPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addScreenReaderPositionChanged(self: *@This(), handler: *TypedEventHandler(ScreenReaderService,ScreenReaderPositionChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ScreenReaderPositionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScreenReaderPositionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ScreenReaderPositionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Accessibility.IScreenReaderService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19475427-eac0-50d3-bdd9-9b487a226256";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentScreenReaderPosition: *const fn(self: *anyopaque, _r: **ScreenReaderPositionChangedEventArgs) callconv(.winapi) HRESULT,
        add_ScreenReaderPositionChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ScreenReaderService,ScreenReaderPositionChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ScreenReaderPositionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ScreenReaderPositionChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getScreenPositionInRawPixels(self: *@This()) core.HResult!Rect {
        const this: *IScreenReaderPositionChangedEventArgs = @ptrCast(self);
        return try this.getScreenPositionInRawPixels();
    }
    pub fn getIsReadingText(self: *@This()) core.HResult!bool {
        const this: *IScreenReaderPositionChangedEventArgs = @ptrCast(self);
        return try this.getIsReadingText();
    }
    pub const NAME: []const u8 = "Windows.UI.Accessibility.ScreenReaderPositionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScreenReaderPositionChangedEventArgs.GUID;
    pub const IID: Guid = IScreenReaderPositionChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScreenReaderPositionChangedEventArgs.SIGNATURE);
};
pub const ScreenReaderService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrentScreenReaderPosition(self: *@This()) core.HResult!*ScreenReaderPositionChangedEventArgs {
        const this: *IScreenReaderService = @ptrCast(self);
        return try this.getCurrentScreenReaderPosition();
    }
    pub fn addScreenReaderPositionChanged(self: *@This(), handler: *TypedEventHandler(ScreenReaderService,ScreenReaderPositionChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IScreenReaderService = @ptrCast(self);
        return try this.addScreenReaderPositionChanged(handler);
    }
    pub fn removeScreenReaderPositionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IScreenReaderService = @ptrCast(self);
        return try this.removeScreenReaderPositionChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IScreenReaderService.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Accessibility.ScreenReaderService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScreenReaderService.GUID;
    pub const IID: Guid = IScreenReaderService.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScreenReaderService.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
