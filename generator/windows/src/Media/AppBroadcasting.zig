pub const AppBroadcastingMonitor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCurrentAppBroadcasting(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingMonitor = @ptrCast(self);
        return try this.getIsCurrentAppBroadcasting();
    }
    pub fn addIsCurrentAppBroadcastingChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastingMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastingMonitor = @ptrCast(self);
        return try this.addIsCurrentAppBroadcastingChanged(handler);
    }
    pub fn removeIsCurrentAppBroadcastingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastingMonitor = @ptrCast(self);
        return try this.removeIsCurrentAppBroadcastingChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppBroadcastingMonitor.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.AppBroadcasting.AppBroadcastingMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastingMonitor.GUID;
    pub const IID: Guid = IAppBroadcastingMonitor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastingMonitor.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AppBroadcastingStatus = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanStartBroadcast(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingStatus = @ptrCast(self);
        return try this.getCanStartBroadcast();
    }
    pub fn getDetails(self: *@This()) core.HResult!*AppBroadcastingStatusDetails {
        const this: *IAppBroadcastingStatus = @ptrCast(self);
        return try this.getDetails();
    }
    pub const NAME: []const u8 = "Windows.Media.AppBroadcasting.AppBroadcastingStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastingStatus.GUID;
    pub const IID: Guid = IAppBroadcastingStatus.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastingStatus.SIGNATURE);
};
pub const AppBroadcastingStatusDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsAnyAppBroadcasting(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingStatusDetails = @ptrCast(self);
        return try this.getIsAnyAppBroadcasting();
    }
    pub fn getIsCaptureResourceUnavailable(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingStatusDetails = @ptrCast(self);
        return try this.getIsCaptureResourceUnavailable();
    }
    pub fn getIsGameStreamInProgress(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingStatusDetails = @ptrCast(self);
        return try this.getIsGameStreamInProgress();
    }
    pub fn getIsGpuConstrained(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingStatusDetails = @ptrCast(self);
        return try this.getIsGpuConstrained();
    }
    pub fn getIsAppInactive(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingStatusDetails = @ptrCast(self);
        return try this.getIsAppInactive();
    }
    pub fn getIsBlockedForApp(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingStatusDetails = @ptrCast(self);
        return try this.getIsBlockedForApp();
    }
    pub fn getIsDisabledByUser(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingStatusDetails = @ptrCast(self);
        return try this.getIsDisabledByUser();
    }
    pub fn getIsDisabledBySystem(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastingStatusDetails = @ptrCast(self);
        return try this.getIsDisabledBySystem();
    }
    pub const NAME: []const u8 = "Windows.Media.AppBroadcasting.AppBroadcastingStatusDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastingStatusDetails.GUID;
    pub const IID: Guid = IAppBroadcastingStatusDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastingStatusDetails.SIGNATURE);
};
pub const AppBroadcastingUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetStatus(self: *@This()) core.HResult!*AppBroadcastingStatus {
        const this: *IAppBroadcastingUI = @ptrCast(self);
        return try this.GetStatus();
    }
    pub fn ShowBroadcastUI(self: *@This()) core.HResult!void {
        const this: *IAppBroadcastingUI = @ptrCast(self);
        return try this.ShowBroadcastUI();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*AppBroadcastingUI {
        const factory = @This().IAppBroadcastingUIStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*AppBroadcastingUI {
        const factory = @This().IAppBroadcastingUIStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Media.AppBroadcasting.AppBroadcastingUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastingUI.GUID;
    pub const IID: Guid = IAppBroadcastingUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastingUI.SIGNATURE);
    var _IAppBroadcastingUIStaticsCache: FactoryCache(IAppBroadcastingUIStatics, RUNTIME_NAME) = .{};
};
pub const IAppBroadcastingMonitor = extern struct {
    vtable: *const VTable,
    pub fn getIsCurrentAppBroadcasting(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCurrentAppBroadcasting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addIsCurrentAppBroadcastingChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastingMonitor,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsCurrentAppBroadcastingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsCurrentAppBroadcastingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsCurrentAppBroadcastingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.AppBroadcasting.IAppBroadcastingMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00f95a68-8907-48a0-b8ef-24d208137542";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCurrentAppBroadcasting: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_IsCurrentAppBroadcastingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastingMonitor,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsCurrentAppBroadcastingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastingStatus = extern struct {
    vtable: *const VTable,
    pub fn getCanStartBroadcast(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanStartBroadcast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDetails(self: *@This()) core.HResult!*AppBroadcastingStatusDetails {
        var _r: *AppBroadcastingStatusDetails = undefined;
        const _c = self.vtable.get_Details(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppBroadcasting.IAppBroadcastingStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1225e4df-03a1-42f8-8b80-c9228cd9cf2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanStartBroadcast: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Details: *const fn(self: *anyopaque, _r: **AppBroadcastingStatusDetails) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastingStatusDetails = extern struct {
    vtable: *const VTable,
    pub fn getIsAnyAppBroadcasting(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAnyAppBroadcasting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCaptureResourceUnavailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCaptureResourceUnavailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGameStreamInProgress(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGameStreamInProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGpuConstrained(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGpuConstrained(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAppInactive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAppInactive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBlockedForApp(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBlockedForApp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDisabledByUser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabledByUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDisabledBySystem(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabledBySystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppBroadcasting.IAppBroadcastingStatusDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "069dada4-b573-4e3c-8e19-1bafacd09713";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAnyAppBroadcasting: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCaptureResourceUnavailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsGameStreamInProgress: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsGpuConstrained: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsAppInactive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBlockedForApp: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDisabledByUser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDisabledBySystem: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastingUI = extern struct {
    vtable: *const VTable,
    pub fn GetStatus(self: *@This()) core.HResult!*AppBroadcastingStatus {
        var _r: *AppBroadcastingStatus = undefined;
        const _c = self.vtable.GetStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowBroadcastUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowBroadcastUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.AppBroadcasting.IAppBroadcastingUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e56f9f8f-ee99-4dca-a3c3-70af3db44f5f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatus: *const fn(self: *anyopaque, _r: **AppBroadcastingStatus) callconv(.winapi) HRESULT,
        ShowBroadcastUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastingUIStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*AppBroadcastingUI {
        var _r: *AppBroadcastingUI = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*AppBroadcastingUI {
        var _r: *AppBroadcastingUI = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppBroadcasting.IAppBroadcastingUIStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55a8a79d-23cb-4579-9c34-886fe02c045a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **AppBroadcastingUI) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **AppBroadcastingUI) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const User = @import("../System.zig").User;
const HSTRING = @import("../root.zig").HSTRING;
