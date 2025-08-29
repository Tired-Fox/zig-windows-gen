pub const CoreAppWindowPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetIdFromWindow(window: *AppWindow) core.HResult!i32 {
        const factory = @This().ICoreAppWindowPreviewStaticsCache.get();
        return try factory.GetIdFromWindow(window);
    }
    pub const NAME: []const u8 = "Windows.UI.Core.Preview.CoreAppWindowPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreAppWindowPreview.GUID;
    pub const IID: Guid = ICoreAppWindowPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreAppWindowPreview.SIGNATURE);
    var _ICoreAppWindowPreviewStaticsCache: FactoryCache(ICoreAppWindowPreviewStatics, RUNTIME_NAME) = .{};
};
pub const ICoreAppWindowPreview = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Core.Preview.ICoreAppWindowPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4f6e665-365e-5fde-87a5-9543c3a15aa8";
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
pub const ICoreAppWindowPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn GetIdFromWindow(self: *@This(), window: *AppWindow) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetIdFromWindow(@ptrCast(self), window, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.Preview.ICoreAppWindowPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33ac21be-423b-5db6-8a8e-4dc87353b75b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetIdFromWindow: *const fn(self: *anyopaque, window: *AppWindow, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ISystemNavigationCloseRequestedPreviewEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.Preview.ISystemNavigationCloseRequestedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83d00de1-cbe5-4f31-8414-361da046518f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ISystemNavigationManagerPreview = extern struct {
    vtable: *const VTable,
    pub fn addCloseRequested(self: *@This(), handler: *EventHandler(SystemNavigationCloseRequestedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CloseRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCloseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CloseRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.Preview.ISystemNavigationManagerPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec5f0488-6425-4777-a536-cb5634427f0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CloseRequested: *const fn(self: *anyopaque, handler: *EventHandler(SystemNavigationCloseRequestedPreviewEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CloseRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISystemNavigationManagerPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*SystemNavigationManagerPreview {
        var _r: *SystemNavigationManagerPreview = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Core.Preview.ISystemNavigationManagerPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e971360-df74-4bce-84cb-bd1181ac0a71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **SystemNavigationManagerPreview) callconv(.winapi) HRESULT,
    };
};
pub const SystemNavigationCloseRequestedPreviewEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ISystemNavigationCloseRequestedPreviewEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemNavigationCloseRequestedPreviewEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *ISystemNavigationCloseRequestedPreviewEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.Preview.SystemNavigationCloseRequestedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemNavigationCloseRequestedPreviewEventArgs.GUID;
    pub const IID: Guid = ISystemNavigationCloseRequestedPreviewEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemNavigationCloseRequestedPreviewEventArgs.SIGNATURE);
};
pub const SystemNavigationManagerPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addCloseRequested(self: *@This(), handler: *EventHandler(SystemNavigationCloseRequestedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISystemNavigationManagerPreview = @ptrCast(self);
        return try this.addCloseRequested(handler);
    }
    pub fn removeCloseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISystemNavigationManagerPreview = @ptrCast(self);
        return try this.removeCloseRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*SystemNavigationManagerPreview {
        const factory = @This().ISystemNavigationManagerPreviewStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Core.Preview.SystemNavigationManagerPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemNavigationManagerPreview.GUID;
    pub const IID: Guid = ISystemNavigationManagerPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemNavigationManagerPreview.SIGNATURE);
    var _ISystemNavigationManagerPreviewStaticsCache: FactoryCache(ISystemNavigationManagerPreviewStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const AppWindow = @import("../WindowManagement.zig").AppWindow;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const Deferral = @import("../../Foundation.zig").Deferral;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const EventHandler = @import("../../Foundation.zig").EventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
