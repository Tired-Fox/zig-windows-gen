pub const IPerformLocalActionRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAction(self: *@This()) core.HResult!RemoteDesktopLocalAction {
        var _r: RemoteDesktopLocalAction = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.IPerformLocalActionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59359f4f-0862-53a3-a3b3-c932fb718cdc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *RemoteDesktopLocalAction) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteDesktopConnectionInfo = extern struct {
    vtable: *const VTable,
    pub fn SetConnectionStatus(self: *@This(), value: RemoteDesktopConnectionStatus) core.HResult!void {
        const _c = self.vtable.SetConnectionStatus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SwitchToLocalSession(self: *@This()) core.HResult!void {
        const _c = self.vtable.SwitchToLocalSession(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.IRemoteDesktopConnectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68bd69d6-6dea-543b-b737-f347919f5093";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetConnectionStatus: *const fn(self: *anyopaque, value: RemoteDesktopConnectionStatus) callconv(.winapi) HRESULT,
        SwitchToLocalSession: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteDesktopConnectionInfo2 = extern struct {
    vtable: *const VTable,
    pub fn PerformLocalActionFromRemote(self: *@This(), action: RemoteDesktopLocalAction) core.HResult!void {
        const _c = self.vtable.PerformLocalActionFromRemote(@ptrCast(self), action);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.IRemoteDesktopConnectionInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "871c0b26-23bf-5d3c-bc35-a85c405e25e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PerformLocalActionFromRemote: *const fn(self: *anyopaque, action: RemoteDesktopLocalAction) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteDesktopConnectionInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForLaunchUri(self: *@This(), launchUri: *Uri, windowId: WindowId) core.HResult!*RemoteDesktopConnectionInfo {
        var _r: *RemoteDesktopConnectionInfo = undefined;
        const _c = self.vtable.GetForLaunchUri(@ptrCast(self), launchUri, windowId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.IRemoteDesktopConnectionInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a7dc5a1-3368-5a75-bb78-807df7ebc439";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForLaunchUri: *const fn(self: *anyopaque, launchUri: *Uri, windowId: WindowId, _r: **RemoteDesktopConnectionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteDesktopConnectionRemoteInfo = extern struct {
    vtable: *const VTable,
    pub fn ReportSwitched(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportSwitched(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSwitchToLocalSessionRequested(self: *@This(), handler: *TypedEventHandler(RemoteDesktopConnectionRemoteInfo,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SwitchToLocalSessionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSwitchToLocalSessionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SwitchToLocalSessionRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPerformLocalActionRequested(self: *@This(), handler: *TypedEventHandler(RemoteDesktopConnectionRemoteInfo,PerformLocalActionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PerformLocalActionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePerformLocalActionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PerformLocalActionRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.IRemoteDesktopConnectionRemoteInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a3dfa7e-a7ab-547e-9a6a-4c565bbb8d71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportSwitched: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_SwitchToLocalSessionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteDesktopConnectionRemoteInfo,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SwitchToLocalSessionRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PerformLocalActionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteDesktopConnectionRemoteInfo,PerformLocalActionRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PerformLocalActionRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteDesktopConnectionRemoteInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSwitchSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSwitchSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForLaunchUri(self: *@This(), launchUri: *Uri) core.HResult!*RemoteDesktopConnectionRemoteInfo {
        var _r: *RemoteDesktopConnectionRemoteInfo = undefined;
        const _c = self.vtable.GetForLaunchUri(@ptrCast(self), launchUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.IRemoteDesktopConnectionRemoteInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b590e64a-e4c9-53e8-b83d-a0db3676246a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSwitchSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetForLaunchUri: *const fn(self: *anyopaque, launchUri: *Uri, _r: **RemoteDesktopConnectionRemoteInfo) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteDesktopInfo = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.IRemoteDesktopInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d185bb25-2f1e-5098-b9e0-f46d6358c5c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteDesktopInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), id: HSTRING, displayName: HSTRING) core.HResult!*RemoteDesktopInfo {
        var _r: *RemoteDesktopInfo = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), id, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.IRemoteDesktopInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad0e8d58-b56f-5a8b-b419-8002ee0c5ee9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, id: HSTRING, displayName: HSTRING, _r: **RemoteDesktopInfo) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteDesktopRegistrarStatics = extern struct {
    vtable: *const VTable,
    pub fn getDesktopInfos(self: *@This()) core.HResult!*IVector(RemoteDesktopInfo) {
        var _r: *IVector(RemoteDesktopInfo) = undefined;
        const _c = self.vtable.get_DesktopInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSwitchToLocalSessionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSwitchToLocalSessionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.IRemoteDesktopRegistrarStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "687c2750-46d9-5de3-8dc3-84a9202cecfb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesktopInfos: *const fn(self: *anyopaque, _r: **IVector(RemoteDesktopInfo)) callconv(.winapi) HRESULT,
        IsSwitchToLocalSessionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const PerformLocalActionRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAction(self: *@This()) core.HResult!RemoteDesktopLocalAction {
        const this: *IPerformLocalActionRequestedEventArgs = @ptrCast(self);
        return try this.getAction();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.PerformLocalActionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerformLocalActionRequestedEventArgs.GUID;
    pub const IID: Guid = IPerformLocalActionRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerformLocalActionRequestedEventArgs.SIGNATURE);
};
pub const RemoteDesktopConnectionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetConnectionStatus(self: *@This(), value: RemoteDesktopConnectionStatus) core.HResult!void {
        const this: *IRemoteDesktopConnectionInfo = @ptrCast(self);
        return try this.SetConnectionStatus(value);
    }
    pub fn SwitchToLocalSession(self: *@This()) core.HResult!void {
        const this: *IRemoteDesktopConnectionInfo = @ptrCast(self);
        return try this.SwitchToLocalSession();
    }
    pub fn PerformLocalActionFromRemote(self: *@This(), action: RemoteDesktopLocalAction) core.HResult!void {
        var this: ?*IRemoteDesktopConnectionInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteDesktopConnectionInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PerformLocalActionFromRemote(action);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForLaunchUri(launchUri: *Uri, windowId: WindowId) core.HResult!*RemoteDesktopConnectionInfo {
        const _f = @This().IRemoteDesktopConnectionInfoStaticsCache.get();
        return try _f.GetForLaunchUri(launchUri, windowId);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.RemoteDesktopConnectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteDesktopConnectionInfo.GUID;
    pub const IID: Guid = IRemoteDesktopConnectionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteDesktopConnectionInfo.SIGNATURE);
    var _IRemoteDesktopConnectionInfoStaticsCache: FactoryCache(IRemoteDesktopConnectionInfoStatics, RUNTIME_NAME) = .{};
};
pub const RemoteDesktopConnectionRemoteInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReportSwitched(self: *@This()) core.HResult!void {
        const this: *IRemoteDesktopConnectionRemoteInfo = @ptrCast(self);
        return try this.ReportSwitched();
    }
    pub fn addSwitchToLocalSessionRequested(self: *@This(), handler: *TypedEventHandler(RemoteDesktopConnectionRemoteInfo,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IRemoteDesktopConnectionRemoteInfo = @ptrCast(self);
        return try this.addSwitchToLocalSessionRequested(handler);
    }
    pub fn removeSwitchToLocalSessionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteDesktopConnectionRemoteInfo = @ptrCast(self);
        return try this.removeSwitchToLocalSessionRequested(token);
    }
    pub fn addPerformLocalActionRequested(self: *@This(), handler: *TypedEventHandler(RemoteDesktopConnectionRemoteInfo,PerformLocalActionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteDesktopConnectionRemoteInfo = @ptrCast(self);
        return try this.addPerformLocalActionRequested(handler);
    }
    pub fn removePerformLocalActionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteDesktopConnectionRemoteInfo = @ptrCast(self);
        return try this.removePerformLocalActionRequested(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSwitchSupported() core.HResult!bool {
        const _f = @This().IRemoteDesktopConnectionRemoteInfoStaticsCache.get();
        return try _f.IsSwitchSupported();
    }
    pub fn GetForLaunchUri(launchUri: *Uri) core.HResult!*RemoteDesktopConnectionRemoteInfo {
        const _f = @This().IRemoteDesktopConnectionRemoteInfoStaticsCache.get();
        return try _f.GetForLaunchUri(launchUri);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.RemoteDesktopConnectionRemoteInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteDesktopConnectionRemoteInfo.GUID;
    pub const IID: Guid = IRemoteDesktopConnectionRemoteInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteDesktopConnectionRemoteInfo.SIGNATURE);
    var _IRemoteDesktopConnectionRemoteInfoStaticsCache: FactoryCache(IRemoteDesktopConnectionRemoteInfoStatics, RUNTIME_NAME) = .{};
};
pub const RemoteDesktopConnectionStatus = enum(i32) {
    Connecting = 0,
    Connected = 1,
    UserInputNeeded = 2,
    Disconnected = 3,
};
pub const RemoteDesktopInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteDesktopInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteDesktopInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(id: HSTRING, displayName: HSTRING) core.HResult!*RemoteDesktopInfo {
        const _f = @This().IRemoteDesktopInfoFactoryCache.get();
        return try _f.CreateInstance(id, displayName);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.RemoteDesktopInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteDesktopInfo.GUID;
    pub const IID: Guid = IRemoteDesktopInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteDesktopInfo.SIGNATURE);
    var _IRemoteDesktopInfoFactoryCache: FactoryCache(IRemoteDesktopInfoFactory, RUNTIME_NAME) = .{};
};
pub const RemoteDesktopLocalAction = enum(i32) {
    ShowBluetoothSettings = 0,
    ShowSystemSoundSettings = 1,
    ShowSystemDisplaySettings = 2,
    ShowSystemAccountSettings = 3,
    ShowLocalSettings = 4,
};
pub const RemoteDesktopRegistrar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getDesktopInfos() core.HResult!*IVector(RemoteDesktopInfo) {
        const _f = @This().IRemoteDesktopRegistrarStaticsCache.get();
        return try _f.getDesktopInfos();
    }
    pub fn IsSwitchToLocalSessionEnabled() core.HResult!bool {
        const _f = @This().IRemoteDesktopRegistrarStaticsCache.get();
        return try _f.IsSwitchToLocalSessionEnabled();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Provider.RemoteDesktopRegistrar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IRemoteDesktopRegistrarStaticsCache: FactoryCache(IRemoteDesktopRegistrarStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const WindowId = @import("../../UI.zig").WindowId;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const Uri = @import("../../Foundation.zig").Uri;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const IClosable = @import("../../Foundation.zig").IClosable;
