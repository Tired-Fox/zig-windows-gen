pub const ControlChannelTrigger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getControlChannelTriggerId(self: *@This()) core.HResult!HSTRING {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.getControlChannelTriggerId();
    }
    pub fn getServerKeepAliveIntervalInMinutes(self: *@This()) core.HResult!u32 {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.getServerKeepAliveIntervalInMinutes();
    }
    pub fn putServerKeepAliveIntervalInMinutes(self: *@This(), value: u32) core.HResult!void {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.putServerKeepAliveIntervalInMinutes(value);
    }
    pub fn getCurrentKeepAliveIntervalInMinutes(self: *@This()) core.HResult!u32 {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.getCurrentKeepAliveIntervalInMinutes();
    }
    pub fn getTransportObject(self: *@This()) core.HResult!*IInspectable {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.getTransportObject();
    }
    pub fn getKeepAliveTrigger(self: *@This()) core.HResult!*IBackgroundTrigger {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.getKeepAliveTrigger();
    }
    pub fn getPushNotificationTrigger(self: *@This()) core.HResult!*IBackgroundTrigger {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.getPushNotificationTrigger();
    }
    pub fn UsingTransport(self: *@This(), transport: *IInspectable) core.HResult!void {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.UsingTransport(transport);
    }
    pub fn WaitForPushEnabled(self: *@This()) core.HResult!ControlChannelTriggerStatus {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.WaitForPushEnabled();
    }
    pub fn DecreaseNetworkKeepAliveInterval(self: *@This()) core.HResult!void {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.DecreaseNetworkKeepAliveInterval();
    }
    pub fn FlushTransport(self: *@This()) core.HResult!void {
        const this: *IControlChannelTrigger = @ptrCast(self);
        return try this.FlushTransport();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getIsWakeFromLowPowerSupported(self: *@This()) core.HResult!bool {
        var this: ?*IControlChannelTrigger2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IControlChannelTrigger2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWakeFromLowPowerSupported();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateControlChannelTrigger(channelId: HSTRING, serverKeepAliveIntervalInMinutes: u32) core.HResult!*ControlChannelTrigger {
        const factory = @This().IControlChannelTriggerFactoryCache.get();
        return try factory.CreateControlChannelTrigger(channelId, serverKeepAliveIntervalInMinutes);
    }
    pub fn CreateControlChannelTriggerEx(channelId: HSTRING, serverKeepAliveIntervalInMinutes: u32, resourceRequestType: ControlChannelTriggerResourceType) core.HResult!*ControlChannelTrigger {
        const factory = @This().IControlChannelTriggerFactoryCache.get();
        return try factory.CreateControlChannelTriggerEx(channelId, serverKeepAliveIntervalInMinutes, resourceRequestType);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ControlChannelTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IControlChannelTrigger.GUID;
    pub const IID: Guid = IControlChannelTrigger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IControlChannelTrigger.SIGNATURE);
    var _IControlChannelTriggerFactoryCache: FactoryCache(IControlChannelTriggerFactory, RUNTIME_NAME) = .{};
};
pub const ControlChannelTriggerResetReason = enum(i32) {
    FastUserSwitched = 0,
    LowPowerExit = 1,
    QuietHoursExit = 2,
    ApplicationRestart = 3,
};
pub const ControlChannelTriggerResourceType = enum(i32) {
    RequestSoftwareSlot = 0,
    RequestHardwareSlot = 1,
};
pub const IControlChannelTrigger = extern struct {
    vtable: *const VTable,
    pub fn getControlChannelTriggerId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ControlChannelTriggerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerKeepAliveIntervalInMinutes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ServerKeepAliveIntervalInMinutes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServerKeepAliveIntervalInMinutes(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ServerKeepAliveIntervalInMinutes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentKeepAliveIntervalInMinutes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CurrentKeepAliveIntervalInMinutes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportObject(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_TransportObject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeepAliveTrigger(self: *@This()) core.HResult!*IBackgroundTrigger {
        var _r: *IBackgroundTrigger = undefined;
        const _c = self.vtable.get_KeepAliveTrigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPushNotificationTrigger(self: *@This()) core.HResult!*IBackgroundTrigger {
        var _r: *IBackgroundTrigger = undefined;
        const _c = self.vtable.get_PushNotificationTrigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UsingTransport(self: *@This(), transport: *IInspectable) core.HResult!void {
        const _c = self.vtable.UsingTransport(@ptrCast(self), transport);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WaitForPushEnabled(self: *@This()) core.HResult!ControlChannelTriggerStatus {
        var _r: ControlChannelTriggerStatus = undefined;
        const _c = self.vtable.WaitForPushEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DecreaseNetworkKeepAliveInterval(self: *@This()) core.HResult!void {
        const _c = self.vtable.DecreaseNetworkKeepAliveInterval(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FlushTransport(self: *@This()) core.HResult!void {
        const _c = self.vtable.FlushTransport(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IControlChannelTrigger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d1431a7-ee96-40e8-a199-8703cd969ec3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ControlChannelTriggerId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServerKeepAliveIntervalInMinutes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ServerKeepAliveIntervalInMinutes: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CurrentKeepAliveIntervalInMinutes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TransportObject: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_KeepAliveTrigger: *const fn(self: *anyopaque, _r: **IBackgroundTrigger) callconv(.winapi) HRESULT,
        get_PushNotificationTrigger: *const fn(self: *anyopaque, _r: **IBackgroundTrigger) callconv(.winapi) HRESULT,
        UsingTransport: *const fn(self: *anyopaque, transport: *IInspectable) callconv(.winapi) HRESULT,
        WaitForPushEnabled: *const fn(self: *anyopaque, _r: *ControlChannelTriggerStatus) callconv(.winapi) HRESULT,
        DecreaseNetworkKeepAliveInterval: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        FlushTransport: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IControlChannelTrigger2 = extern struct {
    vtable: *const VTable,
    pub fn getIsWakeFromLowPowerSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWakeFromLowPowerSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IControlChannelTrigger2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af00d237-51be-4514-9725-3556e1879580";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsWakeFromLowPowerSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IControlChannelTriggerEventDetails = extern struct {
    vtable: *const VTable,
    pub fn getControlChannelTrigger(self: *@This()) core.HResult!*ControlChannelTrigger {
        var _r: *ControlChannelTrigger = undefined;
        const _c = self.vtable.get_ControlChannelTrigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IControlChannelTriggerEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b36e047-89bb-4236-96ac-71d012bb4869";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ControlChannelTrigger: *const fn(self: *anyopaque, _r: **ControlChannelTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IControlChannelTriggerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateControlChannelTrigger(self: *@This(), channelId: HSTRING, serverKeepAliveIntervalInMinutes: u32) core.HResult!*ControlChannelTrigger {
        var _r: *ControlChannelTrigger = undefined;
        const _c = self.vtable.CreateControlChannelTrigger(@ptrCast(self), channelId, serverKeepAliveIntervalInMinutes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateControlChannelTriggerEx(self: *@This(), channelId: HSTRING, serverKeepAliveIntervalInMinutes: u32, resourceRequestType: ControlChannelTriggerResourceType) core.HResult!*ControlChannelTrigger {
        var _r: *ControlChannelTrigger = undefined;
        const _c = self.vtable.CreateControlChannelTriggerEx(@ptrCast(self), channelId, serverKeepAliveIntervalInMinutes, resourceRequestType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IControlChannelTriggerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da4b7cf0-8d71-446f-88c3-b95184a2d6cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateControlChannelTrigger: *const fn(self: *anyopaque, channelId: HSTRING, serverKeepAliveIntervalInMinutes: u32, _r: **ControlChannelTrigger) callconv(.winapi) HRESULT,
        CreateControlChannelTriggerEx: *const fn(self: *anyopaque, channelId: HSTRING, serverKeepAliveIntervalInMinutes: u32, resourceRequestType: ControlChannelTriggerResourceType, _r: **ControlChannelTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IControlChannelTriggerResetEventDetails = extern struct {
    vtable: *const VTable,
    pub fn getResetReason(self: *@This()) core.HResult!ControlChannelTriggerResetReason {
        var _r: ControlChannelTriggerResetReason = undefined;
        const _c = self.vtable.get_ResetReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareSlotReset(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HardwareSlotReset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSoftwareSlotReset(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SoftwareSlotReset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IControlChannelTriggerResetEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6851038e-8ec4-42fe-9bb2-21e91b7bfcb1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResetReason: *const fn(self: *anyopaque, _r: *ControlChannelTriggerResetReason) callconv(.winapi) HRESULT,
        get_HardwareSlotReset: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SoftwareSlotReset: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const BandwidthStatistics = extern struct {
    OutboundBitsPerSecond: u64,
    InboundBitsPerSecond: u64,
    OutboundBitsPerSecondInstability: u64,
    InboundBitsPerSecondInstability: u64,
    OutboundBandwidthPeaked: bool,
    InboundBandwidthPeaked: bool,
};
pub const ControlChannelTriggerStatus = enum(i32) {
    HardwareSlotRequested = 0,
    SoftwareSlotAllocated = 1,
    HardwareSlotAllocated = 2,
    PolicyError = 3,
    SystemError = 4,
    TransportDisconnected = 5,
    ServiceUnavailable = 6,
};
pub const DatagramSocket = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getControl(self: *@This()) core.HResult!*DatagramSocketControl {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.getControl();
    }
    pub fn getInformation(self: *@This()) core.HResult!*DatagramSocketInformation {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.getInformation();
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.getOutputStream();
    }
    pub fn ConnectAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncAction {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.ConnectAsync(remoteHostName, remoteServiceName);
    }
    pub fn ConnectAsync(self: *@This(), endpointPair: *EndpointPair) core.HResult!*IAsyncAction {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.ConnectAsync(endpointPair);
    }
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IDatagramSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BindServiceNameAsync(localServiceName);
    }
    pub fn BindEndpointAsync(self: *@This(), localHostName: *HostName, localServiceName: HSTRING) core.HResult!*IAsyncAction {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.BindEndpointAsync(localHostName, localServiceName);
    }
    pub fn JoinMulticastGroup(self: *@This(), host: *HostName) core.HResult!void {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.JoinMulticastGroup(host);
    }
    pub fn GetOutputStreamAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncOperation(IOutputStream) {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.GetOutputStreamAsync(remoteHostName, remoteServiceName);
    }
    pub fn GetOutputStreamAsync(self: *@This(), endpointPair: *EndpointPair) core.HResult!*IAsyncOperation(IOutputStream) {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.GetOutputStreamAsync(endpointPair);
    }
    pub fn addMessageReceived(self: *@This(), eventHandler: *TypedEventHandler(DatagramSocket,DatagramSocketMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.addMessageReceived(eventHandler);
    }
    pub fn removeMessageReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IDatagramSocket = @ptrCast(self);
        return try this.removeMessageReceived(eventCookie);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING, adapter: *NetworkAdapter) core.HResult!*IAsyncAction {
        var this: ?*IDatagramSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BindServiceNameAsync(localServiceName, adapter);
    }
    pub fn CancelIOAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IDatagramSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CancelIOAsync();
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid) core.HResult!void {
        var this: ?*IDatagramSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableTransferOwnership(taskId);
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid, connectedStandbyAction: SocketActivityConnectedStandbyAction) core.HResult!void {
        var this: ?*IDatagramSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableTransferOwnership(taskId, connectedStandbyAction);
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING) core.HResult!void {
        var this: ?*IDatagramSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TransferOwnership(socketId);
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext) core.HResult!void {
        var this: ?*IDatagramSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TransferOwnership(socketId, data);
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext, keepAliveTime: TimeSpan) core.HResult!void {
        var this: ?*IDatagramSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TransferOwnership(socketId, data, keepAliveTime);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDatagramSocket.IID)));
    }
    pub fn GetEndpointPairsAsync(remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncOperation(IVectorView(EndpointPair)) {
        const factory = @This().IDatagramSocketStaticsCache.get();
        return try factory.GetEndpointPairsAsync(remoteHostName, remoteServiceName);
    }
    pub fn GetEndpointPairsAsync(remoteHostName: *HostName, remoteServiceName: HSTRING, sortOptions: HostNameSortOptions) core.HResult!*IAsyncOperation(IVectorView(EndpointPair)) {
        const factory = @This().IDatagramSocketStaticsCache.get();
        return try factory.GetEndpointPairsAsync(remoteHostName, remoteServiceName, sortOptions);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.DatagramSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDatagramSocket.GUID;
    pub const IID: Guid = IDatagramSocket.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDatagramSocket.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDatagramSocketStaticsCache: FactoryCache(IDatagramSocketStatics, RUNTIME_NAME) = .{};
};
pub const DatagramSocketControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQualityOfService(self: *@This()) core.HResult!SocketQualityOfService {
        const this: *IDatagramSocketControl = @ptrCast(self);
        return try this.getQualityOfService();
    }
    pub fn putQualityOfService(self: *@This(), value: SocketQualityOfService) core.HResult!void {
        const this: *IDatagramSocketControl = @ptrCast(self);
        return try this.putQualityOfService(value);
    }
    pub fn getOutboundUnicastHopLimit(self: *@This()) core.HResult!u8 {
        const this: *IDatagramSocketControl = @ptrCast(self);
        return try this.getOutboundUnicastHopLimit();
    }
    pub fn putOutboundUnicastHopLimit(self: *@This(), value: u8) core.HResult!void {
        const this: *IDatagramSocketControl = @ptrCast(self);
        return try this.putOutboundUnicastHopLimit(value);
    }
    pub fn getInboundBufferSizeInBytes(self: *@This()) core.HResult!u32 {
        var this: ?*IDatagramSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInboundBufferSizeInBytes();
    }
    pub fn putInboundBufferSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IDatagramSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInboundBufferSizeInBytes(value);
    }
    pub fn getDontFragment(self: *@This()) core.HResult!bool {
        var this: ?*IDatagramSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDontFragment();
    }
    pub fn putDontFragment(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDatagramSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDontFragment(value);
    }
    pub fn getMulticastOnly(self: *@This()) core.HResult!bool {
        var this: ?*IDatagramSocketControl3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocketControl3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMulticastOnly();
    }
    pub fn putMulticastOnly(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDatagramSocketControl3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDatagramSocketControl3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMulticastOnly(value);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.DatagramSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDatagramSocketControl.GUID;
    pub const IID: Guid = IDatagramSocketControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDatagramSocketControl.SIGNATURE);
};
pub const DatagramSocketInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        const this: *IDatagramSocketInformation = @ptrCast(self);
        return try this.getLocalAddress();
    }
    pub fn getLocalPort(self: *@This()) core.HResult!HSTRING {
        const this: *IDatagramSocketInformation = @ptrCast(self);
        return try this.getLocalPort();
    }
    pub fn getRemoteAddress(self: *@This()) core.HResult!*HostName {
        const this: *IDatagramSocketInformation = @ptrCast(self);
        return try this.getRemoteAddress();
    }
    pub fn getRemotePort(self: *@This()) core.HResult!HSTRING {
        const this: *IDatagramSocketInformation = @ptrCast(self);
        return try this.getRemotePort();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.DatagramSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDatagramSocketInformation.GUID;
    pub const IID: Guid = IDatagramSocketInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDatagramSocketInformation.SIGNATURE);
};
pub const DatagramSocketMessageReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteAddress(self: *@This()) core.HResult!*HostName {
        const this: *IDatagramSocketMessageReceivedEventArgs = @ptrCast(self);
        return try this.getRemoteAddress();
    }
    pub fn getRemotePort(self: *@This()) core.HResult!HSTRING {
        const this: *IDatagramSocketMessageReceivedEventArgs = @ptrCast(self);
        return try this.getRemotePort();
    }
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        const this: *IDatagramSocketMessageReceivedEventArgs = @ptrCast(self);
        return try this.getLocalAddress();
    }
    pub fn GetDataReader(self: *@This()) core.HResult!*DataReader {
        const this: *IDatagramSocketMessageReceivedEventArgs = @ptrCast(self);
        return try this.GetDataReader();
    }
    pub fn GetDataStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IDatagramSocketMessageReceivedEventArgs = @ptrCast(self);
        return try this.GetDataStream();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.DatagramSocketMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDatagramSocketMessageReceivedEventArgs.GUID;
    pub const IID: Guid = IDatagramSocketMessageReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDatagramSocketMessageReceivedEventArgs.SIGNATURE);
};
pub const IDatagramSocket = extern struct {
    vtable: *const VTable,
    pub fn getControl(self: *@This()) core.HResult!*DatagramSocketControl {
        var _r: *DatagramSocketControl = undefined;
        const _c = self.vtable.get_Control(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInformation(self: *@This()) core.HResult!*DatagramSocketInformation {
        var _r: *DatagramSocketInformation = undefined;
        const _c = self.vtable.get_Information(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_OutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), remoteHostName, remoteServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), endpointPair: *EndpointPair) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), endpointPair, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.BindServiceNameAsync(@ptrCast(self), localServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BindEndpointAsync(self: *@This(), localHostName: *HostName, localServiceName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.BindEndpointAsync(@ptrCast(self), localHostName, localServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn JoinMulticastGroup(self: *@This(), host: *HostName) core.HResult!void {
        const _c = self.vtable.JoinMulticastGroup(@ptrCast(self), host);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetOutputStreamAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncOperation(IOutputStream) {
        var _r: *IAsyncOperation(IOutputStream) = undefined;
        const _c = self.vtable.GetOutputStreamAsync(@ptrCast(self), remoteHostName, remoteServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOutputStreamAsync(self: *@This(), endpointPair: *EndpointPair) core.HResult!*IAsyncOperation(IOutputStream) {
        var _r: *IAsyncOperation(IOutputStream) = undefined;
        const _c = self.vtable.GetOutputStreamAsync(@ptrCast(self), endpointPair, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMessageReceived(self: *@This(), eventHandler: *TypedEventHandler(DatagramSocket,DatagramSocketMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageReceived(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageReceived(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IDatagramSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7fe25bbb-c3bc-4677-8446-ca28a465a3af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Control: *const fn(self: *anyopaque, _r: **DatagramSocketControl) callconv(.winapi) HRESULT,
        get_Information: *const fn(self: *anyopaque, _r: **DatagramSocketInformation) callconv(.winapi) HRESULT,
        get_OutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, remoteHostName: *HostName, remoteServiceName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, endpointPair: *EndpointPair, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        BindServiceNameAsync: *const fn(self: *anyopaque, localServiceName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        BindEndpointAsync: *const fn(self: *anyopaque, localHostName: *HostName, localServiceName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        JoinMulticastGroup: *const fn(self: *anyopaque, host: *HostName) callconv(.winapi) HRESULT,
        GetOutputStreamAsync: *const fn(self: *anyopaque, remoteHostName: *HostName, remoteServiceName: HSTRING, _r: **IAsyncOperation(IOutputStream)) callconv(.winapi) HRESULT,
        GetOutputStreamAsync: *const fn(self: *anyopaque, endpointPair: *EndpointPair, _r: **IAsyncOperation(IOutputStream)) callconv(.winapi) HRESULT,
        add_MessageReceived: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(DatagramSocket,DatagramSocketMessageReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageReceived: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDatagramSocket2 = extern struct {
    vtable: *const VTable,
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING, adapter: *NetworkAdapter) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.BindServiceNameAsync(@ptrCast(self), localServiceName, adapter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IDatagramSocket2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d83ba354-9a9d-4185-a20a-1424c9c2a7cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        BindServiceNameAsync: *const fn(self: *anyopaque, localServiceName: HSTRING, adapter: *NetworkAdapter, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IDatagramSocket3 = extern struct {
    vtable: *const VTable,
    pub fn CancelIOAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CancelIOAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid) core.HResult!void {
        const _c = self.vtable.EnableTransferOwnership(@ptrCast(self), taskId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid, connectedStandbyAction: SocketActivityConnectedStandbyAction) core.HResult!void {
        const _c = self.vtable.EnableTransferOwnership(@ptrCast(self), taskId, connectedStandbyAction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING) core.HResult!void {
        const _c = self.vtable.TransferOwnership(@ptrCast(self), socketId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext) core.HResult!void {
        const _c = self.vtable.TransferOwnership(@ptrCast(self), socketId, data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext, keepAliveTime: TimeSpan) core.HResult!void {
        const _c = self.vtable.TransferOwnership(@ptrCast(self), socketId, data, keepAliveTime);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IDatagramSocket3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "37544f09-ab92-4306-9ac1-0c381283d9c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CancelIOAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        EnableTransferOwnership: *const fn(self: *anyopaque, taskId: *Guid) callconv(.winapi) HRESULT,
        EnableTransferOwnership: *const fn(self: *anyopaque, taskId: *Guid, connectedStandbyAction: SocketActivityConnectedStandbyAction) callconv(.winapi) HRESULT,
        TransferOwnership: *const fn(self: *anyopaque, socketId: HSTRING) callconv(.winapi) HRESULT,
        TransferOwnership: *const fn(self: *anyopaque, socketId: HSTRING, data: *SocketActivityContext) callconv(.winapi) HRESULT,
        TransferOwnership: *const fn(self: *anyopaque, socketId: HSTRING, data: *SocketActivityContext, keepAliveTime: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IDatagramSocketControl = extern struct {
    vtable: *const VTable,
    pub fn getQualityOfService(self: *@This()) core.HResult!SocketQualityOfService {
        var _r: SocketQualityOfService = undefined;
        const _c = self.vtable.get_QualityOfService(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQualityOfService(self: *@This(), value: SocketQualityOfService) core.HResult!void {
        const _c = self.vtable.put_QualityOfService(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutboundUnicastHopLimit(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_OutboundUnicastHopLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutboundUnicastHopLimit(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_OutboundUnicastHopLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IDatagramSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52ac3f2e-349a-4135-bb58-b79b2647d390";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QualityOfService: *const fn(self: *anyopaque, _r: *SocketQualityOfService) callconv(.winapi) HRESULT,
        put_QualityOfService: *const fn(self: *anyopaque, value: SocketQualityOfService) callconv(.winapi) HRESULT,
        get_OutboundUnicastHopLimit: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_OutboundUnicastHopLimit: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
    };
};
pub const IDatagramSocketControl2 = extern struct {
    vtable: *const VTable,
    pub fn getInboundBufferSizeInBytes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_InboundBufferSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInboundBufferSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_InboundBufferSizeInBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDontFragment(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DontFragment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDontFragment(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DontFragment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IDatagramSocketControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33ead5c2-979c-4415-82a1-3cfaf646c192";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InboundBufferSizeInBytes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_InboundBufferSizeInBytes: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DontFragment: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DontFragment: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDatagramSocketControl3 = extern struct {
    vtable: *const VTable,
    pub fn getMulticastOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_MulticastOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMulticastOnly(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_MulticastOnly(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IDatagramSocketControl3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4eb8256-1f6d-4598-9b57-d42a001df349";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MulticastOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_MulticastOnly: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDatagramSocketInformation = extern struct {
    vtable: *const VTable,
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_LocalAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalPort(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalPort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_RemoteAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemotePort(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemotePort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IDatagramSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f1a569a-55fb-48cd-9706-7a974f7b1585";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_LocalPort: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemoteAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_RemotePort: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDatagramSocketMessageReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRemoteAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_RemoteAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemotePort(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemotePort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_LocalAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDataReader(self: *@This()) core.HResult!*DataReader {
        var _r: *DataReader = undefined;
        const _c = self.vtable.GetDataReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDataStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.GetDataStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IDatagramSocketMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e2ddca2-1712-4ce4-b179-8c652c6d107e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_RemotePort: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LocalAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        GetDataReader: *const fn(self: *anyopaque, _r: **DataReader) callconv(.winapi) HRESULT,
        GetDataStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
    };
};
pub const IDatagramSocketStatics = extern struct {
    vtable: *const VTable,
    pub fn GetEndpointPairsAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncOperation(IVectorView(EndpointPair)) {
        var _r: *IAsyncOperation(IVectorView(EndpointPair)) = undefined;
        const _c = self.vtable.GetEndpointPairsAsync(@ptrCast(self), remoteHostName, remoteServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEndpointPairsAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING, sortOptions: HostNameSortOptions) core.HResult!*IAsyncOperation(IVectorView(EndpointPair)) {
        var _r: *IAsyncOperation(IVectorView(EndpointPair)) = undefined;
        const _c = self.vtable.GetEndpointPairsAsync(@ptrCast(self), remoteHostName, remoteServiceName, sortOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IDatagramSocketStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9c62aee-1494-4a21-bb7e-8589fc751d9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetEndpointPairsAsync: *const fn(self: *anyopaque, remoteHostName: *HostName, remoteServiceName: HSTRING, _r: **IAsyncOperation(IVectorView(EndpointPair))) callconv(.winapi) HRESULT,
        GetEndpointPairsAsync: *const fn(self: *anyopaque, remoteHostName: *HostName, remoteServiceName: HSTRING, sortOptions: HostNameSortOptions, _r: **IAsyncOperation(IVectorView(EndpointPair))) callconv(.winapi) HRESULT,
    };
};
pub const IMessageWebSocket = extern struct {
    vtable: *const VTable,
    pub fn getControl(self: *@This()) core.HResult!*MessageWebSocketControl {
        var _r: *MessageWebSocketControl = undefined;
        const _c = self.vtable.get_Control(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInformation(self: *@This()) core.HResult!*MessageWebSocketInformation {
        var _r: *MessageWebSocketInformation = undefined;
        const _c = self.vtable.get_Information(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMessageReceived(self: *@This(), eventHandler: *TypedEventHandler(MessageWebSocket,MessageWebSocketMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageReceived(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageReceived(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IMessageWebSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33727d08-34d5-4746-ad7b-8dde5bc2ef88";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Control: *const fn(self: *anyopaque, _r: **MessageWebSocketControl) callconv(.winapi) HRESULT,
        get_Information: *const fn(self: *anyopaque, _r: **MessageWebSocketInformation) callconv(.winapi) HRESULT,
        add_MessageReceived: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(MessageWebSocket,MessageWebSocketMessageReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageReceived: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMessageWebSocket2 = extern struct {
    vtable: *const VTable,
    pub fn addServerCustomValidationRequested(self: *@This(), eventHandler: *TypedEventHandler(MessageWebSocket,WebSocketServerCustomValidationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ServerCustomValidationRequested(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeServerCustomValidationRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ServerCustomValidationRequested(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IMessageWebSocket2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bed0cee7-f9c8-440a-9ad5-737281d9742e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ServerCustomValidationRequested: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(MessageWebSocket,WebSocketServerCustomValidationRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ServerCustomValidationRequested: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMessageWebSocket3 = extern struct {
    vtable: *const VTable,
    pub fn SendNonfinalFrameAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var _r: *IAsyncOperationWithProgress(u32,u32) = undefined;
        const _c = self.vtable.SendNonfinalFrameAsync(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendFinalFrameAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var _r: *IAsyncOperationWithProgress(u32,u32) = undefined;
        const _c = self.vtable.SendFinalFrameAsync(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IMessageWebSocket3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59d9defb-71af-4349-8487-911fcf681597";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendNonfinalFrameAsync: *const fn(self: *anyopaque, data: *IBuffer, _r: **IAsyncOperationWithProgress(u32,u32)) callconv(.winapi) HRESULT,
        SendFinalFrameAsync: *const fn(self: *anyopaque, data: *IBuffer, _r: **IAsyncOperationWithProgress(u32,u32)) callconv(.winapi) HRESULT,
    };
};
pub const IMessageWebSocketControl = extern struct {
    vtable: *const VTable,
    pub fn getMaxMessageSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxMessageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxMessageSize(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxMessageSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMessageType(self: *@This()) core.HResult!SocketMessageType {
        var _r: SocketMessageType = undefined;
        const _c = self.vtable.get_MessageType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMessageType(self: *@This(), value: SocketMessageType) core.HResult!void {
        const _c = self.vtable.put_MessageType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IMessageWebSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8118388a-c629-4f0a-80fb-81fc05538862";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxMessageSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxMessageSize: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MessageType: *const fn(self: *anyopaque, _r: *SocketMessageType) callconv(.winapi) HRESULT,
        put_MessageType: *const fn(self: *anyopaque, value: SocketMessageType) callconv(.winapi) HRESULT,
    };
};
pub const IMessageWebSocketControl2 = extern struct {
    vtable: *const VTable,
    pub fn getDesiredUnsolicitedPongInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DesiredUnsolicitedPongInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredUnsolicitedPongInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DesiredUnsolicitedPongInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActualUnsolicitedPongInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ActualUnsolicitedPongInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceiveMode(self: *@This()) core.HResult!MessageWebSocketReceiveMode {
        var _r: MessageWebSocketReceiveMode = undefined;
        const _c = self.vtable.get_ReceiveMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReceiveMode(self: *@This(), value: MessageWebSocketReceiveMode) core.HResult!void {
        const _c = self.vtable.put_ReceiveMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClientCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_ClientCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClientCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        const _c = self.vtable.put_ClientCertificate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IMessageWebSocketControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e30fd791-080c-400a-a712-27dfa9e744d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredUnsolicitedPongInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_DesiredUnsolicitedPongInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_ActualUnsolicitedPongInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_ReceiveMode: *const fn(self: *anyopaque, _r: *MessageWebSocketReceiveMode) callconv(.winapi) HRESULT,
        put_ReceiveMode: *const fn(self: *anyopaque, value: MessageWebSocketReceiveMode) callconv(.winapi) HRESULT,
        get_ClientCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        put_ClientCertificate: *const fn(self: *anyopaque, value: *Certificate) callconv(.winapi) HRESULT,
    };
};
pub const IMessageWebSocketMessageReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMessageType(self: *@This()) core.HResult!SocketMessageType {
        var _r: SocketMessageType = undefined;
        const _c = self.vtable.get_MessageType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDataReader(self: *@This()) core.HResult!*DataReader {
        var _r: *DataReader = undefined;
        const _c = self.vtable.GetDataReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDataStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.GetDataStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IMessageWebSocketMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "478c22ac-4c4b-42ed-9ed7-1ef9f94fa3d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MessageType: *const fn(self: *anyopaque, _r: *SocketMessageType) callconv(.winapi) HRESULT,
        GetDataReader: *const fn(self: *anyopaque, _r: **DataReader) callconv(.winapi) HRESULT,
        GetDataStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
    };
};
pub const IMessageWebSocketMessageReceivedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsMessageComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMessageComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IMessageWebSocketMessageReceivedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89ce06fd-dd6f-4a07-87f9-f9eb4d89d83d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsMessageComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IServerMessageWebSocket = extern struct {
    vtable: *const VTable,
    pub fn addMessageReceived(self: *@This(), value: *TypedEventHandler(ServerMessageWebSocket,MessageWebSocketMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageReceived(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getControl(self: *@This()) core.HResult!*ServerMessageWebSocketControl {
        var _r: *ServerMessageWebSocketControl = undefined;
        const _c = self.vtable.get_Control(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInformation(self: *@This()) core.HResult!*ServerMessageWebSocketInformation {
        var _r: *ServerMessageWebSocketInformation = undefined;
        const _c = self.vtable.get_Information(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_OutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addClosed(self: *@This(), value: *TypedEventHandler(ServerMessageWebSocket,WebSocketClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This(), code: u16, reason: HSTRING) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self), code, reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IServerMessageWebSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3ac9240-813b-5efd-7e11-ae2305fc77f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_MessageReceived: *const fn(self: *anyopaque, value: *TypedEventHandler(ServerMessageWebSocket,MessageWebSocketMessageReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Control: *const fn(self: *anyopaque, _r: **ServerMessageWebSocketControl) callconv(.winapi) HRESULT,
        get_Information: *const fn(self: *anyopaque, _r: **ServerMessageWebSocketInformation) callconv(.winapi) HRESULT,
        get_OutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, value: *TypedEventHandler(ServerMessageWebSocket,WebSocketClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque, code: u16, reason: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IServerMessageWebSocketControl = extern struct {
    vtable: *const VTable,
    pub fn getMessageType(self: *@This()) core.HResult!SocketMessageType {
        var _r: SocketMessageType = undefined;
        const _c = self.vtable.get_MessageType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMessageType(self: *@This(), value: SocketMessageType) core.HResult!void {
        const _c = self.vtable.put_MessageType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IServerMessageWebSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69c2f051-1c1f-587a-4519-2181610192b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MessageType: *const fn(self: *anyopaque, _r: *SocketMessageType) callconv(.winapi) HRESULT,
        put_MessageType: *const fn(self: *anyopaque, value: SocketMessageType) callconv(.winapi) HRESULT,
    };
};
pub const IServerMessageWebSocketInformation = extern struct {
    vtable: *const VTable,
    pub fn getBandwidthStatistics(self: *@This()) core.HResult!BandwidthStatistics {
        var _r: BandwidthStatistics = undefined;
        const _c = self.vtable.get_BandwidthStatistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocol(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Protocol(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_LocalAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IServerMessageWebSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc32b45f-4448-5505-6cc9-09afa8915f5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BandwidthStatistics: *const fn(self: *anyopaque, _r: *BandwidthStatistics) callconv(.winapi) HRESULT,
        get_Protocol: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LocalAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
    };
};
pub const IServerStreamWebSocket = extern struct {
    vtable: *const VTable,
    pub fn getInformation(self: *@This()) core.HResult!*ServerStreamWebSocketInformation {
        var _r: *ServerStreamWebSocketInformation = undefined;
        const _c = self.vtable.get_Information(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.get_InputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_OutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addClosed(self: *@This(), value: *TypedEventHandler(ServerStreamWebSocket,WebSocketClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This(), code: u16, reason: HSTRING) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self), code, reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IServerStreamWebSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ced5bbf-74f6-55e4-79df-9132680dfee8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Information: *const fn(self: *anyopaque, _r: **ServerStreamWebSocketInformation) callconv(.winapi) HRESULT,
        get_InputStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
        get_OutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, value: *TypedEventHandler(ServerStreamWebSocket,WebSocketClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque, code: u16, reason: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IServerStreamWebSocketInformation = extern struct {
    vtable: *const VTable,
    pub fn getBandwidthStatistics(self: *@This()) core.HResult!BandwidthStatistics {
        var _r: BandwidthStatistics = undefined;
        const _c = self.vtable.get_BandwidthStatistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocol(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Protocol(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_LocalAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IServerStreamWebSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc32b45f-4448-5505-6cc9-09aba8915f5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BandwidthStatistics: *const fn(self: *anyopaque, _r: *BandwidthStatistics) callconv(.winapi) HRESULT,
        get_Protocol: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LocalAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
    };
};
pub const ISocketActivityContext = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ISocketActivityContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43b04d64-4c85-4396-a637-1d973f6ebd49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISocketActivityContextFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), data: *IBuffer) core.HResult!*SocketActivityContext {
        var _r: *SocketActivityContext = undefined;
        const _c = self.vtable.Create(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ISocketActivityContextFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b99fc3c3-088c-4388-83ae-2525138e049a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, data: *IBuffer, _r: **SocketActivityContext) callconv(.winapi) HRESULT,
    };
};
pub const ISocketActivityInformation = extern struct {
    vtable: *const VTable,
    pub fn getTaskId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TaskId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSocketKind(self: *@This()) core.HResult!SocketActivityKind {
        var _r: SocketActivityKind = undefined;
        const _c = self.vtable.get_SocketKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContext(self: *@This()) core.HResult!*SocketActivityContext {
        var _r: *SocketActivityContext = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDatagramSocket(self: *@This()) core.HResult!*DatagramSocket {
        var _r: *DatagramSocket = undefined;
        const _c = self.vtable.get_DatagramSocket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreamSocket(self: *@This()) core.HResult!*StreamSocket {
        var _r: *StreamSocket = undefined;
        const _c = self.vtable.get_StreamSocket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreamSocketListener(self: *@This()) core.HResult!*StreamSocketListener {
        var _r: *StreamSocketListener = undefined;
        const _c = self.vtable.get_StreamSocketListener(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ISocketActivityInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d8a42e4-a87e-4b74-9968-185b2511defe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TaskId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SocketKind: *const fn(self: *anyopaque, _r: *SocketActivityKind) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: **SocketActivityContext) callconv(.winapi) HRESULT,
        get_DatagramSocket: *const fn(self: *anyopaque, _r: **DatagramSocket) callconv(.winapi) HRESULT,
        get_StreamSocket: *const fn(self: *anyopaque, _r: **StreamSocket) callconv(.winapi) HRESULT,
        get_StreamSocketListener: *const fn(self: *anyopaque, _r: **StreamSocketListener) callconv(.winapi) HRESULT,
    };
};
pub const ISocketActivityInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn getAllSockets(self: *@This()) core.HResult!*IMapView(HSTRING,SocketActivityInformation) {
        var _r: *IMapView(HSTRING,SocketActivityInformation) = undefined;
        const _c = self.vtable.get_AllSockets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ISocketActivityInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8570b47a-7e7d-4736-8041-1327a6543c56";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllSockets: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,SocketActivityInformation)) callconv(.winapi) HRESULT,
    };
};
pub const ISocketActivityTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!SocketActivityTriggerReason {
        var _r: SocketActivityTriggerReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSocketInformation(self: *@This()) core.HResult!*SocketActivityInformation {
        var _r: *SocketActivityInformation = undefined;
        const _c = self.vtable.get_SocketInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ISocketActivityTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45f406a7-fc9f-4f81-acad-355fef51e67b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *SocketActivityTriggerReason) callconv(.winapi) HRESULT,
        get_SocketInformation: *const fn(self: *anyopaque, _r: **SocketActivityInformation) callconv(.winapi) HRESULT,
    };
};
pub const ISocketErrorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetStatus(self: *@This(), hresult: i32) core.HResult!SocketErrorStatus {
        var _r: SocketErrorStatus = undefined;
        const _c = self.vtable.GetStatus(@ptrCast(self), hresult, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ISocketErrorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "828337f4-7d56-4d8e-b7b4-a07dd7c1bca9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatus: *const fn(self: *anyopaque, hresult: i32, _r: *SocketErrorStatus) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocket = extern struct {
    vtable: *const VTable,
    pub fn getControl(self: *@This()) core.HResult!*StreamSocketControl {
        var _r: *StreamSocketControl = undefined;
        const _c = self.vtable.get_Control(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInformation(self: *@This()) core.HResult!*StreamSocketInformation {
        var _r: *StreamSocketInformation = undefined;
        const _c = self.vtable.get_Information(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.get_InputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_OutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), endpointPair: *EndpointPair) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), endpointPair, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), remoteHostName, remoteServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), endpointPair: *EndpointPair, protectionLevel: SocketProtectionLevel) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), endpointPair, protectionLevel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING, protectionLevel: SocketProtectionLevel) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), remoteHostName, remoteServiceName, protectionLevel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpgradeToSslAsync(self: *@This(), protectionLevel: SocketProtectionLevel, validationHostName: *HostName) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpgradeToSslAsync(@ptrCast(self), protectionLevel, validationHostName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69a22cf3-fc7b-4857-af38-f6e7de6a5b49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Control: *const fn(self: *anyopaque, _r: **StreamSocketControl) callconv(.winapi) HRESULT,
        get_Information: *const fn(self: *anyopaque, _r: **StreamSocketInformation) callconv(.winapi) HRESULT,
        get_InputStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
        get_OutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, endpointPair: *EndpointPair, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, remoteHostName: *HostName, remoteServiceName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, endpointPair: *EndpointPair, protectionLevel: SocketProtectionLevel, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, remoteHostName: *HostName, remoteServiceName: HSTRING, protectionLevel: SocketProtectionLevel, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UpgradeToSslAsync: *const fn(self: *anyopaque, protectionLevel: SocketProtectionLevel, validationHostName: *HostName, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocket2 = extern struct {
    vtable: *const VTable,
    pub fn ConnectAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING, protectionLevel: SocketProtectionLevel, adapter: *NetworkAdapter) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), remoteHostName, remoteServiceName, protectionLevel, adapter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocket2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29d0e575-f314-4d09-adf0-0fbd967fbd9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, remoteHostName: *HostName, remoteServiceName: HSTRING, protectionLevel: SocketProtectionLevel, adapter: *NetworkAdapter, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocket3 = extern struct {
    vtable: *const VTable,
    pub fn CancelIOAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CancelIOAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid) core.HResult!void {
        const _c = self.vtable.EnableTransferOwnership(@ptrCast(self), taskId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid, connectedStandbyAction: SocketActivityConnectedStandbyAction) core.HResult!void {
        const _c = self.vtable.EnableTransferOwnership(@ptrCast(self), taskId, connectedStandbyAction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING) core.HResult!void {
        const _c = self.vtable.TransferOwnership(@ptrCast(self), socketId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext) core.HResult!void {
        const _c = self.vtable.TransferOwnership(@ptrCast(self), socketId, data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext, keepAliveTime: TimeSpan) core.HResult!void {
        const _c = self.vtable.TransferOwnership(@ptrCast(self), socketId, data, keepAliveTime);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocket3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f430b00-9d28-4854-bac3-2301941ec223";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CancelIOAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        EnableTransferOwnership: *const fn(self: *anyopaque, taskId: *Guid) callconv(.winapi) HRESULT,
        EnableTransferOwnership: *const fn(self: *anyopaque, taskId: *Guid, connectedStandbyAction: SocketActivityConnectedStandbyAction) callconv(.winapi) HRESULT,
        TransferOwnership: *const fn(self: *anyopaque, socketId: HSTRING) callconv(.winapi) HRESULT,
        TransferOwnership: *const fn(self: *anyopaque, socketId: HSTRING, data: *SocketActivityContext) callconv(.winapi) HRESULT,
        TransferOwnership: *const fn(self: *anyopaque, socketId: HSTRING, data: *SocketActivityContext, keepAliveTime: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketControl = extern struct {
    vtable: *const VTable,
    pub fn getNoDelay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NoDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNoDelay(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_NoDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeepAlive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_KeepAlive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeepAlive(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_KeepAlive(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutboundBufferSizeInBytes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OutboundBufferSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutboundBufferSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_OutboundBufferSizeInBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getQualityOfService(self: *@This()) core.HResult!SocketQualityOfService {
        var _r: SocketQualityOfService = undefined;
        const _c = self.vtable.get_QualityOfService(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQualityOfService(self: *@This(), value: SocketQualityOfService) core.HResult!void {
        const _c = self.vtable.put_QualityOfService(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutboundUnicastHopLimit(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_OutboundUnicastHopLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutboundUnicastHopLimit(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_OutboundUnicastHopLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe25adf1-92ab-4af3-9992-0f4c85e36cc4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NoDelay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_NoDelay: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_KeepAlive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_KeepAlive: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_OutboundBufferSizeInBytes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_OutboundBufferSizeInBytes: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_QualityOfService: *const fn(self: *anyopaque, _r: *SocketQualityOfService) callconv(.winapi) HRESULT,
        put_QualityOfService: *const fn(self: *anyopaque, value: SocketQualityOfService) callconv(.winapi) HRESULT,
        get_OutboundUnicastHopLimit: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_OutboundUnicastHopLimit: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketControl2 = extern struct {
    vtable: *const VTable,
    pub fn getIgnorableServerCertificateErrors(self: *@This()) core.HResult!*IVector(ChainValidationResult) {
        var _r: *IVector(ChainValidationResult) = undefined;
        const _c = self.vtable.get_IgnorableServerCertificateErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2d09a56-060f-44c1-b8e2-1fbf60bd62c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IgnorableServerCertificateErrors: *const fn(self: *anyopaque, _r: **IVector(ChainValidationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketControl3 = extern struct {
    vtable: *const VTable,
    pub fn getSerializeConnectionAttempts(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SerializeConnectionAttempts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSerializeConnectionAttempts(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SerializeConnectionAttempts(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClientCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_ClientCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClientCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        const _c = self.vtable.put_ClientCertificate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketControl3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c56a444c-4e74-403e-894c-b31cae5c7342";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SerializeConnectionAttempts: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SerializeConnectionAttempts: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ClientCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        put_ClientCertificate: *const fn(self: *anyopaque, value: *Certificate) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketControl4 = extern struct {
    vtable: *const VTable,
    pub fn getMinProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        var _r: SocketProtectionLevel = undefined;
        const _c = self.vtable.get_MinProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinProtectionLevel(self: *@This(), value: SocketProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_MinProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketControl4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "964e2b3d-ec27-4888-b3ce-c74b418423ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinProtectionLevel: *const fn(self: *anyopaque, _r: *SocketProtectionLevel) callconv(.winapi) HRESULT,
        put_MinProtectionLevel: *const fn(self: *anyopaque, value: SocketProtectionLevel) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketInformation = extern struct {
    vtable: *const VTable,
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_LocalAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalPort(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalPort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_RemoteHostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_RemoteAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemotePort(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemotePort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoundTripTimeStatistics(self: *@This()) core.HResult!RoundTripTimeStatistics {
        var _r: RoundTripTimeStatistics = undefined;
        const _c = self.vtable.get_RoundTripTimeStatistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBandwidthStatistics(self: *@This()) core.HResult!BandwidthStatistics {
        var _r: BandwidthStatistics = undefined;
        const _c = self.vtable.get_BandwidthStatistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        var _r: SocketProtectionLevel = undefined;
        const _c = self.vtable.get_ProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionKey(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_SessionKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b80ae30-5e68-4205-88f0-dc85d2e25ded";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_LocalPort: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemoteHostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_RemoteAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_RemoteServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemotePort: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RoundTripTimeStatistics: *const fn(self: *anyopaque, _r: *RoundTripTimeStatistics) callconv(.winapi) HRESULT,
        get_BandwidthStatistics: *const fn(self: *anyopaque, _r: *BandwidthStatistics) callconv(.winapi) HRESULT,
        get_ProtectionLevel: *const fn(self: *anyopaque, _r: *SocketProtectionLevel) callconv(.winapi) HRESULT,
        get_SessionKey: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketInformation2 = extern struct {
    vtable: *const VTable,
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        var _r: SocketSslErrorSeverity = undefined;
        const _c = self.vtable.get_ServerCertificateErrorSeverity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        var _r: *IVectorView(ChainValidationResult) = undefined;
        const _c = self.vtable.get_ServerCertificateErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_ServerCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.get_ServerIntermediateCertificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketInformation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12c28452-4bdc-4ee4-976a-cf130e9d92e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServerCertificateErrorSeverity: *const fn(self: *anyopaque, _r: *SocketSslErrorSeverity) callconv(.winapi) HRESULT,
        get_ServerCertificateErrors: *const fn(self: *anyopaque, _r: **IVectorView(ChainValidationResult)) callconv(.winapi) HRESULT,
        get_ServerCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        get_ServerIntermediateCertificates: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketListener = extern struct {
    vtable: *const VTable,
    pub fn getControl(self: *@This()) core.HResult!*StreamSocketListenerControl {
        var _r: *StreamSocketListenerControl = undefined;
        const _c = self.vtable.get_Control(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInformation(self: *@This()) core.HResult!*StreamSocketListenerInformation {
        var _r: *StreamSocketListenerInformation = undefined;
        const _c = self.vtable.get_Information(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.BindServiceNameAsync(@ptrCast(self), localServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BindEndpointAsync(self: *@This(), localHostName: *HostName, localServiceName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.BindEndpointAsync(@ptrCast(self), localHostName, localServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addConnectionReceived(self: *@This(), eventHandler: *TypedEventHandler(StreamSocketListener,StreamSocketListenerConnectionReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionReceived(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionReceived(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff513437-df9f-4df0-bf82-0ec5d7b35aae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Control: *const fn(self: *anyopaque, _r: **StreamSocketListenerControl) callconv(.winapi) HRESULT,
        get_Information: *const fn(self: *anyopaque, _r: **StreamSocketListenerInformation) callconv(.winapi) HRESULT,
        BindServiceNameAsync: *const fn(self: *anyopaque, localServiceName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        BindEndpointAsync: *const fn(self: *anyopaque, localHostName: *HostName, localServiceName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_ConnectionReceived: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(StreamSocketListener,StreamSocketListenerConnectionReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionReceived: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketListener2 = extern struct {
    vtable: *const VTable,
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING, protectionLevel: SocketProtectionLevel) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.BindServiceNameAsync(@ptrCast(self), localServiceName, protectionLevel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING, protectionLevel: SocketProtectionLevel, adapter: *NetworkAdapter) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.BindServiceNameAsync(@ptrCast(self), localServiceName, protectionLevel, adapter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketListener2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "658dc13e-bb3e-4458-b232-ed1088694b98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        BindServiceNameAsync: *const fn(self: *anyopaque, localServiceName: HSTRING, protectionLevel: SocketProtectionLevel, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        BindServiceNameAsync: *const fn(self: *anyopaque, localServiceName: HSTRING, protectionLevel: SocketProtectionLevel, adapter: *NetworkAdapter, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketListener3 = extern struct {
    vtable: *const VTable,
    pub fn CancelIOAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CancelIOAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid) core.HResult!void {
        const _c = self.vtable.EnableTransferOwnership(@ptrCast(self), taskId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid, connectedStandbyAction: SocketActivityConnectedStandbyAction) core.HResult!void {
        const _c = self.vtable.EnableTransferOwnership(@ptrCast(self), taskId, connectedStandbyAction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING) core.HResult!void {
        const _c = self.vtable.TransferOwnership(@ptrCast(self), socketId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext) core.HResult!void {
        const _c = self.vtable.TransferOwnership(@ptrCast(self), socketId, data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketListener3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4798201c-bdf8-4919-8542-28d450e74507";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CancelIOAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        EnableTransferOwnership: *const fn(self: *anyopaque, taskId: *Guid) callconv(.winapi) HRESULT,
        EnableTransferOwnership: *const fn(self: *anyopaque, taskId: *Guid, connectedStandbyAction: SocketActivityConnectedStandbyAction) callconv(.winapi) HRESULT,
        TransferOwnership: *const fn(self: *anyopaque, socketId: HSTRING) callconv(.winapi) HRESULT,
        TransferOwnership: *const fn(self: *anyopaque, socketId: HSTRING, data: *SocketActivityContext) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketListenerConnectionReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSocket(self: *@This()) core.HResult!*StreamSocket {
        var _r: *StreamSocket = undefined;
        const _c = self.vtable.get_Socket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketListenerConnectionReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c472ea9-373f-447b-85b1-ddd4548803ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Socket: *const fn(self: *anyopaque, _r: **StreamSocket) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketListenerControl = extern struct {
    vtable: *const VTable,
    pub fn getQualityOfService(self: *@This()) core.HResult!SocketQualityOfService {
        var _r: SocketQualityOfService = undefined;
        const _c = self.vtable.get_QualityOfService(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQualityOfService(self: *@This(), value: SocketQualityOfService) core.HResult!void {
        const _c = self.vtable.put_QualityOfService(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketListenerControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20d8c576-8d8a-4dba-9722-a16c4d984980";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QualityOfService: *const fn(self: *anyopaque, _r: *SocketQualityOfService) callconv(.winapi) HRESULT,
        put_QualityOfService: *const fn(self: *anyopaque, value: SocketQualityOfService) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketListenerControl2 = extern struct {
    vtable: *const VTable,
    pub fn getNoDelay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NoDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNoDelay(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_NoDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeepAlive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_KeepAlive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeepAlive(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_KeepAlive(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutboundBufferSizeInBytes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OutboundBufferSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutboundBufferSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_OutboundBufferSizeInBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutboundUnicastHopLimit(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_OutboundUnicastHopLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutboundUnicastHopLimit(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_OutboundUnicastHopLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketListenerControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "948bb665-2c3e-404b-b8b0-8eb249a2b0a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NoDelay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_NoDelay: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_KeepAlive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_KeepAlive: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_OutboundBufferSizeInBytes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_OutboundBufferSizeInBytes: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_OutboundUnicastHopLimit: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_OutboundUnicastHopLimit: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketListenerInformation = extern struct {
    vtable: *const VTable,
    pub fn getLocalPort(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalPort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketListenerInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e62ba82f-a63a-430b-bf62-29e93e5633b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalPort: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStreamSocketStatics = extern struct {
    vtable: *const VTable,
    pub fn GetEndpointPairsAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncOperation(IVectorView(EndpointPair)) {
        var _r: *IAsyncOperation(IVectorView(EndpointPair)) = undefined;
        const _c = self.vtable.GetEndpointPairsAsync(@ptrCast(self), remoteHostName, remoteServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEndpointPairsAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING, sortOptions: HostNameSortOptions) core.HResult!*IAsyncOperation(IVectorView(EndpointPair)) {
        var _r: *IAsyncOperation(IVectorView(EndpointPair)) = undefined;
        const _c = self.vtable.GetEndpointPairsAsync(@ptrCast(self), remoteHostName, remoteServiceName, sortOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamSocketStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a420bc4a-6e2e-4af5-b556-355ae0cd4f29";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetEndpointPairsAsync: *const fn(self: *anyopaque, remoteHostName: *HostName, remoteServiceName: HSTRING, _r: **IAsyncOperation(IVectorView(EndpointPair))) callconv(.winapi) HRESULT,
        GetEndpointPairsAsync: *const fn(self: *anyopaque, remoteHostName: *HostName, remoteServiceName: HSTRING, sortOptions: HostNameSortOptions, _r: **IAsyncOperation(IVectorView(EndpointPair))) callconv(.winapi) HRESULT,
    };
};
pub const IStreamWebSocket = extern struct {
    vtable: *const VTable,
    pub fn getControl(self: *@This()) core.HResult!*StreamWebSocketControl {
        var _r: *StreamWebSocketControl = undefined;
        const _c = self.vtable.get_Control(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInformation(self: *@This()) core.HResult!*StreamWebSocketInformation {
        var _r: *StreamWebSocketInformation = undefined;
        const _c = self.vtable.get_Information(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.get_InputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamWebSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd4a49d8-b289-45bb-97eb-c7525205a843";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Control: *const fn(self: *anyopaque, _r: **StreamWebSocketControl) callconv(.winapi) HRESULT,
        get_Information: *const fn(self: *anyopaque, _r: **StreamWebSocketInformation) callconv(.winapi) HRESULT,
        get_InputStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
    };
};
pub const IStreamWebSocket2 = extern struct {
    vtable: *const VTable,
    pub fn addServerCustomValidationRequested(self: *@This(), eventHandler: *TypedEventHandler(StreamWebSocket,WebSocketServerCustomValidationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ServerCustomValidationRequested(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeServerCustomValidationRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ServerCustomValidationRequested(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamWebSocket2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa4d08cb-93f5-4678-8236-57cce5417ed5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ServerCustomValidationRequested: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(StreamWebSocket,WebSocketServerCustomValidationRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ServerCustomValidationRequested: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IStreamWebSocketControl = extern struct {
    vtable: *const VTable,
    pub fn getNoDelay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NoDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNoDelay(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_NoDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamWebSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4f478b1-a45a-48db-953a-645b7d964c07";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NoDelay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_NoDelay: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IStreamWebSocketControl2 = extern struct {
    vtable: *const VTable,
    pub fn getDesiredUnsolicitedPongInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DesiredUnsolicitedPongInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredUnsolicitedPongInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DesiredUnsolicitedPongInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActualUnsolicitedPongInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ActualUnsolicitedPongInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClientCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_ClientCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClientCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        const _c = self.vtable.put_ClientCertificate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IStreamWebSocketControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "215d9f7e-fa58-40da-9f11-a48dafe95037";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredUnsolicitedPongInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_DesiredUnsolicitedPongInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_ActualUnsolicitedPongInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_ClientCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        put_ClientCertificate: *const fn(self: *anyopaque, value: *Certificate) callconv(.winapi) HRESULT,
    };
};
pub const IWebSocket = extern struct {
    vtable: *const VTable,
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var _r: *IOutputStream = undefined;
        const _c = self.vtable.get_OutputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        const _c = self.vtable.SetRequestHeader(@ptrCast(self), headerName, headerValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosed(self: *@This(), eventHandler: *TypedEventHandler(IWebSocket,WebSocketClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This(), code: u16, reason: HSTRING) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self), code, reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IWebSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f877396f-99b1-4e18-bc08-850c9adf156e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OutputStream: *const fn(self: *anyopaque, _r: **IOutputStream) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetRequestHeader: *const fn(self: *anyopaque, headerName: HSTRING, headerValue: HSTRING) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(IWebSocket,WebSocketClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque, code: u16, reason: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebSocketClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCode(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Code(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReason(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IWebSocketClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ceb78d07-d0a8-4703-a091-c8c2c0915bc3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Code: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebSocketControl = extern struct {
    vtable: *const VTable,
    pub fn getOutboundBufferSizeInBytes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OutboundBufferSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutboundBufferSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_OutboundBufferSizeInBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_ServerCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_ServerCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_ProxyCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProxyCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_ProxyCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportedProtocols(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedProtocols(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IWebSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ec4bdc3-d9a5-455a-9811-de24d45337e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OutboundBufferSizeInBytes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_OutboundBufferSizeInBytes: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ServerCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_ServerCredential: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
        get_ProxyCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_ProxyCredential: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
        get_SupportedProtocols: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IWebSocketControl2 = extern struct {
    vtable: *const VTable,
    pub fn getIgnorableServerCertificateErrors(self: *@This()) core.HResult!*IVector(ChainValidationResult) {
        var _r: *IVector(ChainValidationResult) = undefined;
        const _c = self.vtable.get_IgnorableServerCertificateErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IWebSocketControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79c3be03-f2ca-461e-af4e-9665bc2d0620";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IgnorableServerCertificateErrors: *const fn(self: *anyopaque, _r: **IVector(ChainValidationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IWebSocketErrorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetStatus(self: *@This(), hresult: i32) core.HResult!WebErrorStatus {
        var _r: WebErrorStatus = undefined;
        const _c = self.vtable.GetStatus(@ptrCast(self), hresult, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IWebSocketErrorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27cdf35b-1f61-4709-8e02-61283ada4e9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatus: *const fn(self: *anyopaque, hresult: i32, _r: *WebErrorStatus) callconv(.winapi) HRESULT,
    };
};
pub const IWebSocketInformation = extern struct {
    vtable: *const VTable,
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_LocalAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBandwidthStatistics(self: *@This()) core.HResult!BandwidthStatistics {
        var _r: BandwidthStatistics = undefined;
        const _c = self.vtable.get_BandwidthStatistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocol(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Protocol(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IWebSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e01e316-c92a-47a5-b25f-07847639d181";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_BandwidthStatistics: *const fn(self: *anyopaque, _r: *BandwidthStatistics) callconv(.winapi) HRESULT,
        get_Protocol: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebSocketInformation2 = extern struct {
    vtable: *const VTable,
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_ServerCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        var _r: SocketSslErrorSeverity = undefined;
        const _c = self.vtable.get_ServerCertificateErrorSeverity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        var _r: *IVectorView(ChainValidationResult) = undefined;
        const _c = self.vtable.get_ServerCertificateErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.get_ServerIntermediateCertificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IWebSocketInformation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce1d39ce-a1b7-4d43-8269-8d5b981bd47a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServerCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        get_ServerCertificateErrorSeverity: *const fn(self: *anyopaque, _r: *SocketSslErrorSeverity) callconv(.winapi) HRESULT,
        get_ServerCertificateErrors: *const fn(self: *anyopaque, _r: **IVectorView(ChainValidationResult)) callconv(.winapi) HRESULT,
        get_ServerIntermediateCertificates: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
    };
};
pub const IWebSocketServerCustomValidationRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_ServerCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        var _r: SocketSslErrorSeverity = undefined;
        const _c = self.vtable.get_ServerCertificateErrorSeverity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        var _r: *IVectorView(ChainValidationResult) = undefined;
        const _c = self.vtable.get_ServerCertificateErrors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.get_ServerIntermediateCertificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Reject(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reject(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.IWebSocketServerCustomValidationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ffeffe48-022a-4ab7-8b36-e10af4640e6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServerCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        get_ServerCertificateErrorSeverity: *const fn(self: *anyopaque, _r: *SocketSslErrorSeverity) callconv(.winapi) HRESULT,
        get_ServerCertificateErrors: *const fn(self: *anyopaque, _r: **IVectorView(ChainValidationResult)) callconv(.winapi) HRESULT,
        get_ServerIntermediateCertificates: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
        Reject: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const MessageWebSocket = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getControl(self: *@This()) core.HResult!*MessageWebSocketControl {
        const this: *IMessageWebSocket = @ptrCast(self);
        return try this.getControl();
    }
    pub fn getInformation(self: *@This()) core.HResult!*MessageWebSocketInformation {
        const this: *IMessageWebSocket = @ptrCast(self);
        return try this.getInformation();
    }
    pub fn addMessageReceived(self: *@This(), eventHandler: *TypedEventHandler(MessageWebSocket,MessageWebSocketMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMessageWebSocket = @ptrCast(self);
        return try this.addMessageReceived(eventHandler);
    }
    pub fn removeMessageReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IMessageWebSocket = @ptrCast(self);
        return try this.removeMessageReceived(eventCookie);
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutputStream();
    }
    pub fn ConnectAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncAction {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(uri);
    }
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetRequestHeader(headerName, headerValue);
    }
    pub fn addClosed(self: *@This(), eventHandler: *TypedEventHandler(IWebSocket,WebSocketClosedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosed(eventHandler);
    }
    pub fn removeClosed(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosed(eventCookie);
    }
    pub fn Close(self: *@This(), code: u16, reason: HSTRING) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close(code, reason);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn addServerCustomValidationRequested(self: *@This(), eventHandler: *TypedEventHandler(MessageWebSocket,WebSocketServerCustomValidationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMessageWebSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addServerCustomValidationRequested(eventHandler);
    }
    pub fn removeServerCustomValidationRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IMessageWebSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeServerCustomValidationRequested(eventCookie);
    }
    pub fn SendNonfinalFrameAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IMessageWebSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SendNonfinalFrameAsync(data);
    }
    pub fn SendFinalFrameAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IMessageWebSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SendFinalFrameAsync(data);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMessageWebSocket.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.MessageWebSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMessageWebSocket.GUID;
    pub const IID: Guid = IMessageWebSocket.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMessageWebSocket.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MessageWebSocketControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxMessageSize(self: *@This()) core.HResult!u32 {
        const this: *IMessageWebSocketControl = @ptrCast(self);
        return try this.getMaxMessageSize();
    }
    pub fn putMaxMessageSize(self: *@This(), value: u32) core.HResult!void {
        const this: *IMessageWebSocketControl = @ptrCast(self);
        return try this.putMaxMessageSize(value);
    }
    pub fn getMessageType(self: *@This()) core.HResult!SocketMessageType {
        const this: *IMessageWebSocketControl = @ptrCast(self);
        return try this.getMessageType();
    }
    pub fn putMessageType(self: *@This(), value: SocketMessageType) core.HResult!void {
        const this: *IMessageWebSocketControl = @ptrCast(self);
        return try this.putMessageType(value);
    }
    pub fn getOutboundBufferSizeInBytes(self: *@This()) core.HResult!u32 {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutboundBufferSizeInBytes();
    }
    pub fn putOutboundBufferSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutboundBufferSizeInBytes(value);
    }
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCredential();
    }
    pub fn putServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putServerCredential(value);
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProxyCredential();
    }
    pub fn putProxyCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProxyCredential(value);
    }
    pub fn getSupportedProtocols(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedProtocols();
    }
    pub fn getIgnorableServerCertificateErrors(self: *@This()) core.HResult!*IVector(ChainValidationResult) {
        var this: ?*IWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIgnorableServerCertificateErrors();
    }
    pub fn getDesiredUnsolicitedPongInterval(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMessageWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredUnsolicitedPongInterval();
    }
    pub fn putDesiredUnsolicitedPongInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMessageWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredUnsolicitedPongInterval(value);
    }
    pub fn getActualUnsolicitedPongInterval(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMessageWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActualUnsolicitedPongInterval();
    }
    pub fn getReceiveMode(self: *@This()) core.HResult!MessageWebSocketReceiveMode {
        var this: ?*IMessageWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReceiveMode();
    }
    pub fn putReceiveMode(self: *@This(), value: MessageWebSocketReceiveMode) core.HResult!void {
        var this: ?*IMessageWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReceiveMode(value);
    }
    pub fn getClientCertificate(self: *@This()) core.HResult!*Certificate {
        var this: ?*IMessageWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getClientCertificate();
    }
    pub fn putClientCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        var this: ?*IMessageWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putClientCertificate(value);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.MessageWebSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMessageWebSocketControl.GUID;
    pub const IID: Guid = IMessageWebSocketControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMessageWebSocketControl.SIGNATURE);
};
pub const MessageWebSocketInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        const this: *IWebSocketInformation = @ptrCast(self);
        return try this.getLocalAddress();
    }
    pub fn getBandwidthStatistics(self: *@This()) core.HResult!BandwidthStatistics {
        const this: *IWebSocketInformation = @ptrCast(self);
        return try this.getBandwidthStatistics();
    }
    pub fn getProtocol(self: *@This()) core.HResult!HSTRING {
        const this: *IWebSocketInformation = @ptrCast(self);
        return try this.getProtocol();
    }
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        var this: ?*IWebSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCertificate();
    }
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        var this: ?*IWebSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCertificateErrorSeverity();
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        var this: ?*IWebSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCertificateErrors();
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var this: ?*IWebSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerIntermediateCertificates();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.MessageWebSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebSocketInformation.GUID;
    pub const IID: Guid = IWebSocketInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebSocketInformation.SIGNATURE);
};
pub const MessageWebSocketMessageReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessageType(self: *@This()) core.HResult!SocketMessageType {
        const this: *IMessageWebSocketMessageReceivedEventArgs = @ptrCast(self);
        return try this.getMessageType();
    }
    pub fn GetDataReader(self: *@This()) core.HResult!*DataReader {
        const this: *IMessageWebSocketMessageReceivedEventArgs = @ptrCast(self);
        return try this.GetDataReader();
    }
    pub fn GetDataStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IMessageWebSocketMessageReceivedEventArgs = @ptrCast(self);
        return try this.GetDataStream();
    }
    pub fn getIsMessageComplete(self: *@This()) core.HResult!bool {
        var this: ?*IMessageWebSocketMessageReceivedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMessageWebSocketMessageReceivedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsMessageComplete();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.MessageWebSocketMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMessageWebSocketMessageReceivedEventArgs.GUID;
    pub const IID: Guid = IMessageWebSocketMessageReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMessageWebSocketMessageReceivedEventArgs.SIGNATURE);
};
pub const MessageWebSocketReceiveMode = enum(i32) {
    FullMessage = 0,
    PartialMessage = 1,
};
pub const RoundTripTimeStatistics = extern struct {
    Variance: u32,
    Max: u32,
    Min: u32,
    Sum: u32,
};
pub const ServerMessageWebSocket = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMessageReceived(self: *@This(), value: *TypedEventHandler(ServerMessageWebSocket,MessageWebSocketMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IServerMessageWebSocket = @ptrCast(self);
        return try this.addMessageReceived(value);
    }
    pub fn removeMessageReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IServerMessageWebSocket = @ptrCast(self);
        return try this.removeMessageReceived(token);
    }
    pub fn getControl(self: *@This()) core.HResult!*ServerMessageWebSocketControl {
        const this: *IServerMessageWebSocket = @ptrCast(self);
        return try this.getControl();
    }
    pub fn getInformation(self: *@This()) core.HResult!*ServerMessageWebSocketInformation {
        const this: *IServerMessageWebSocket = @ptrCast(self);
        return try this.getInformation();
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IServerMessageWebSocket = @ptrCast(self);
        return try this.getOutputStream();
    }
    pub fn addClosed(self: *@This(), value: *TypedEventHandler(ServerMessageWebSocket,WebSocketClosedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IServerMessageWebSocket = @ptrCast(self);
        return try this.addClosed(value);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IServerMessageWebSocket = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn Close(self: *@This(), code: u16, reason: HSTRING) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close(code, reason);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ServerMessageWebSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IServerMessageWebSocket.GUID;
    pub const IID: Guid = IServerMessageWebSocket.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IServerMessageWebSocket.SIGNATURE);
};
pub const ServerMessageWebSocketControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessageType(self: *@This()) core.HResult!SocketMessageType {
        const this: *IServerMessageWebSocketControl = @ptrCast(self);
        return try this.getMessageType();
    }
    pub fn putMessageType(self: *@This(), value: SocketMessageType) core.HResult!void {
        const this: *IServerMessageWebSocketControl = @ptrCast(self);
        return try this.putMessageType(value);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ServerMessageWebSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IServerMessageWebSocketControl.GUID;
    pub const IID: Guid = IServerMessageWebSocketControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IServerMessageWebSocketControl.SIGNATURE);
};
pub const ServerMessageWebSocketInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBandwidthStatistics(self: *@This()) core.HResult!BandwidthStatistics {
        const this: *IServerMessageWebSocketInformation = @ptrCast(self);
        return try this.getBandwidthStatistics();
    }
    pub fn getProtocol(self: *@This()) core.HResult!HSTRING {
        const this: *IServerMessageWebSocketInformation = @ptrCast(self);
        return try this.getProtocol();
    }
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        const this: *IServerMessageWebSocketInformation = @ptrCast(self);
        return try this.getLocalAddress();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ServerMessageWebSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IServerMessageWebSocketInformation.GUID;
    pub const IID: Guid = IServerMessageWebSocketInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IServerMessageWebSocketInformation.SIGNATURE);
};
pub const ServerStreamWebSocket = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInformation(self: *@This()) core.HResult!*ServerStreamWebSocketInformation {
        const this: *IServerStreamWebSocket = @ptrCast(self);
        return try this.getInformation();
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IServerStreamWebSocket = @ptrCast(self);
        return try this.getInputStream();
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IServerStreamWebSocket = @ptrCast(self);
        return try this.getOutputStream();
    }
    pub fn addClosed(self: *@This(), value: *TypedEventHandler(ServerStreamWebSocket,WebSocketClosedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IServerStreamWebSocket = @ptrCast(self);
        return try this.addClosed(value);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IServerStreamWebSocket = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn Close(self: *@This(), code: u16, reason: HSTRING) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close(code, reason);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ServerStreamWebSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IServerStreamWebSocket.GUID;
    pub const IID: Guid = IServerStreamWebSocket.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IServerStreamWebSocket.SIGNATURE);
};
pub const ServerStreamWebSocketInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBandwidthStatistics(self: *@This()) core.HResult!BandwidthStatistics {
        const this: *IServerStreamWebSocketInformation = @ptrCast(self);
        return try this.getBandwidthStatistics();
    }
    pub fn getProtocol(self: *@This()) core.HResult!HSTRING {
        const this: *IServerStreamWebSocketInformation = @ptrCast(self);
        return try this.getProtocol();
    }
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        const this: *IServerStreamWebSocketInformation = @ptrCast(self);
        return try this.getLocalAddress();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.ServerStreamWebSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IServerStreamWebSocketInformation.GUID;
    pub const IID: Guid = IServerStreamWebSocketInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IServerStreamWebSocketInformation.SIGNATURE);
};
pub const SocketActivityConnectedStandbyAction = enum(i32) {
    DoNotWake = 0,
    Wake = 1,
};
pub const SocketActivityContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *ISocketActivityContext = @ptrCast(self);
        return try this.getData();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(data: *IBuffer) core.HResult!*SocketActivityContext {
        const factory = @This().ISocketActivityContextFactoryCache.get();
        return try factory.Create(data);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.SocketActivityContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocketActivityContext.GUID;
    pub const IID: Guid = ISocketActivityContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocketActivityContext.SIGNATURE);
    var _ISocketActivityContextFactoryCache: FactoryCache(ISocketActivityContextFactory, RUNTIME_NAME) = .{};
};
pub const SocketActivityInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTaskId(self: *@This()) core.HResult!*Guid {
        const this: *ISocketActivityInformation = @ptrCast(self);
        return try this.getTaskId();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ISocketActivityInformation = @ptrCast(self);
        return try this.getId();
    }
    pub fn getSocketKind(self: *@This()) core.HResult!SocketActivityKind {
        const this: *ISocketActivityInformation = @ptrCast(self);
        return try this.getSocketKind();
    }
    pub fn getContext(self: *@This()) core.HResult!*SocketActivityContext {
        const this: *ISocketActivityInformation = @ptrCast(self);
        return try this.getContext();
    }
    pub fn getDatagramSocket(self: *@This()) core.HResult!*DatagramSocket {
        const this: *ISocketActivityInformation = @ptrCast(self);
        return try this.getDatagramSocket();
    }
    pub fn getStreamSocket(self: *@This()) core.HResult!*StreamSocket {
        const this: *ISocketActivityInformation = @ptrCast(self);
        return try this.getStreamSocket();
    }
    pub fn getStreamSocketListener(self: *@This()) core.HResult!*StreamSocketListener {
        const this: *ISocketActivityInformation = @ptrCast(self);
        return try this.getStreamSocketListener();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAllSockets() core.HResult!*IMapView(HSTRING,SocketActivityInformation) {
        const factory = @This().ISocketActivityInformationStaticsCache.get();
        return try factory.getAllSockets();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.SocketActivityInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocketActivityInformation.GUID;
    pub const IID: Guid = ISocketActivityInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocketActivityInformation.SIGNATURE);
    var _ISocketActivityInformationStaticsCache: FactoryCache(ISocketActivityInformationStatics, RUNTIME_NAME) = .{};
};
pub const SocketActivityKind = enum(i32) {
    None = 0,
    StreamSocketListener = 1,
    DatagramSocket = 2,
    StreamSocket = 3,
};
pub const SocketActivityTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!SocketActivityTriggerReason {
        const this: *ISocketActivityTriggerDetails = @ptrCast(self);
        return try this.getReason();
    }
    pub fn getSocketInformation(self: *@This()) core.HResult!*SocketActivityInformation {
        const this: *ISocketActivityTriggerDetails = @ptrCast(self);
        return try this.getSocketInformation();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.SocketActivityTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISocketActivityTriggerDetails.GUID;
    pub const IID: Guid = ISocketActivityTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISocketActivityTriggerDetails.SIGNATURE);
};
pub const SocketActivityTriggerReason = enum(i32) {
    None = 0,
    SocketActivity = 1,
    ConnectionAccepted = 2,
    KeepAliveTimerExpired = 3,
    SocketClosed = 4,
};
pub const SocketError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetStatus(hresult: i32) core.HResult!SocketErrorStatus {
        const factory = @This().ISocketErrorStaticsCache.get();
        return try factory.GetStatus(hresult);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.SocketError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISocketErrorStaticsCache: FactoryCache(ISocketErrorStatics, RUNTIME_NAME) = .{};
};
pub const SocketErrorStatus = enum(i32) {
    Unknown = 0,
    OperationAborted = 1,
    HttpInvalidServerResponse = 2,
    ConnectionTimedOut = 3,
    AddressFamilyNotSupported = 4,
    SocketTypeNotSupported = 5,
    HostNotFound = 6,
    NoDataRecordOfRequestedType = 7,
    NonAuthoritativeHostNotFound = 8,
    ClassTypeNotFound = 9,
    AddressAlreadyInUse = 10,
    CannotAssignRequestedAddress = 11,
    ConnectionRefused = 12,
    NetworkIsUnreachable = 13,
    UnreachableHost = 14,
    NetworkIsDown = 15,
    NetworkDroppedConnectionOnReset = 16,
    SoftwareCausedConnectionAbort = 17,
    ConnectionResetByPeer = 18,
    HostIsDown = 19,
    NoAddressesFound = 20,
    TooManyOpenFiles = 21,
    MessageTooLong = 22,
    CertificateExpired = 23,
    CertificateUntrustedRoot = 24,
    CertificateCommonNameIsIncorrect = 25,
    CertificateWrongUsage = 26,
    CertificateRevoked = 27,
    CertificateNoRevocationCheck = 28,
    CertificateRevocationServerOffline = 29,
    CertificateIsInvalid = 30,
};
pub const SocketMessageType = enum(i32) {
    Binary = 0,
    Utf8 = 1,
};
pub const SocketProtectionLevel = enum(i32) {
    PlainSocket = 0,
    Ssl = 1,
    SslAllowNullEncryption = 2,
    BluetoothEncryptionAllowNullAuthentication = 3,
    BluetoothEncryptionWithAuthentication = 4,
    Ssl3AllowWeakEncryption = 5,
    Tls10 = 6,
    Tls11 = 7,
    Tls12 = 8,
    Unspecified = 9,
    Tls13 = 10,
};
pub const SocketQualityOfService = enum(i32) {
    Normal = 0,
    LowLatency = 1,
};
pub const SocketSslErrorSeverity = enum(i32) {
    None = 0,
    Ignorable = 1,
    Fatal = 2,
};
pub const StreamSocket = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getControl(self: *@This()) core.HResult!*StreamSocketControl {
        const this: *IStreamSocket = @ptrCast(self);
        return try this.getControl();
    }
    pub fn getInformation(self: *@This()) core.HResult!*StreamSocketInformation {
        const this: *IStreamSocket = @ptrCast(self);
        return try this.getInformation();
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IStreamSocket = @ptrCast(self);
        return try this.getInputStream();
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        const this: *IStreamSocket = @ptrCast(self);
        return try this.getOutputStream();
    }
    pub fn ConnectAsync(self: *@This(), endpointPair: *EndpointPair) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(endpointPair);
    }
    pub fn ConnectAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(remoteHostName, remoteServiceName);
    }
    pub fn ConnectAsync(self: *@This(), endpointPair: *EndpointPair, protectionLevel: SocketProtectionLevel) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(endpointPair, protectionLevel);
    }
    pub fn ConnectAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING, protectionLevel: SocketProtectionLevel) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(remoteHostName, remoteServiceName, protectionLevel);
    }
    pub fn UpgradeToSslAsync(self: *@This(), protectionLevel: SocketProtectionLevel, validationHostName: *HostName) core.HResult!*IAsyncAction {
        const this: *IStreamSocket = @ptrCast(self);
        return try this.UpgradeToSslAsync(protectionLevel, validationHostName);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ConnectAsync(self: *@This(), remoteHostName: *HostName, remoteServiceName: HSTRING, protectionLevel: SocketProtectionLevel, adapter: *NetworkAdapter) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(remoteHostName, remoteServiceName, protectionLevel, adapter);
    }
    pub fn CancelIOAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CancelIOAsync();
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid) core.HResult!void {
        var this: ?*IStreamSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableTransferOwnership(taskId);
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid, connectedStandbyAction: SocketActivityConnectedStandbyAction) core.HResult!void {
        var this: ?*IStreamSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableTransferOwnership(taskId, connectedStandbyAction);
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING) core.HResult!void {
        var this: ?*IStreamSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TransferOwnership(socketId);
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext) core.HResult!void {
        var this: ?*IStreamSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TransferOwnership(socketId, data);
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext, keepAliveTime: TimeSpan) core.HResult!void {
        var this: ?*IStreamSocket3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocket3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TransferOwnership(socketId, data, keepAliveTime);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStreamSocket.IID)));
    }
    pub fn GetEndpointPairsAsync(remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*IAsyncOperation(IVectorView(EndpointPair)) {
        const factory = @This().IStreamSocketStaticsCache.get();
        return try factory.GetEndpointPairsAsync(remoteHostName, remoteServiceName);
    }
    pub fn GetEndpointPairsAsync(remoteHostName: *HostName, remoteServiceName: HSTRING, sortOptions: HostNameSortOptions) core.HResult!*IAsyncOperation(IVectorView(EndpointPair)) {
        const factory = @This().IStreamSocketStaticsCache.get();
        return try factory.GetEndpointPairsAsync(remoteHostName, remoteServiceName, sortOptions);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamSocket.GUID;
    pub const IID: Guid = IStreamSocket.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamSocket.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IStreamSocketStaticsCache: FactoryCache(IStreamSocketStatics, RUNTIME_NAME) = .{};
};
pub const StreamSocketControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNoDelay(self: *@This()) core.HResult!bool {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.getNoDelay();
    }
    pub fn putNoDelay(self: *@This(), value: bool) core.HResult!void {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.putNoDelay(value);
    }
    pub fn getKeepAlive(self: *@This()) core.HResult!bool {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.getKeepAlive();
    }
    pub fn putKeepAlive(self: *@This(), value: bool) core.HResult!void {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.putKeepAlive(value);
    }
    pub fn getOutboundBufferSizeInBytes(self: *@This()) core.HResult!u32 {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.getOutboundBufferSizeInBytes();
    }
    pub fn putOutboundBufferSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.putOutboundBufferSizeInBytes(value);
    }
    pub fn getQualityOfService(self: *@This()) core.HResult!SocketQualityOfService {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.getQualityOfService();
    }
    pub fn putQualityOfService(self: *@This(), value: SocketQualityOfService) core.HResult!void {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.putQualityOfService(value);
    }
    pub fn getOutboundUnicastHopLimit(self: *@This()) core.HResult!u8 {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.getOutboundUnicastHopLimit();
    }
    pub fn putOutboundUnicastHopLimit(self: *@This(), value: u8) core.HResult!void {
        const this: *IStreamSocketControl = @ptrCast(self);
        return try this.putOutboundUnicastHopLimit(value);
    }
    pub fn getIgnorableServerCertificateErrors(self: *@This()) core.HResult!*IVector(ChainValidationResult) {
        var this: ?*IStreamSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIgnorableServerCertificateErrors();
    }
    pub fn getSerializeConnectionAttempts(self: *@This()) core.HResult!bool {
        var this: ?*IStreamSocketControl3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketControl3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSerializeConnectionAttempts();
    }
    pub fn putSerializeConnectionAttempts(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IStreamSocketControl3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketControl3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSerializeConnectionAttempts(value);
    }
    pub fn getClientCertificate(self: *@This()) core.HResult!*Certificate {
        var this: ?*IStreamSocketControl3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketControl3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getClientCertificate();
    }
    pub fn putClientCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        var this: ?*IStreamSocketControl3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketControl3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putClientCertificate(value);
    }
    pub fn getMinProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        var this: ?*IStreamSocketControl4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketControl4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinProtectionLevel();
    }
    pub fn putMinProtectionLevel(self: *@This(), value: SocketProtectionLevel) core.HResult!void {
        var this: ?*IStreamSocketControl4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketControl4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMinProtectionLevel(value);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamSocketControl.GUID;
    pub const IID: Guid = IStreamSocketControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamSocketControl.SIGNATURE);
};
pub const StreamSocketInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getLocalAddress();
    }
    pub fn getLocalPort(self: *@This()) core.HResult!HSTRING {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getLocalPort();
    }
    pub fn getRemoteHostName(self: *@This()) core.HResult!*HostName {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getRemoteHostName();
    }
    pub fn getRemoteAddress(self: *@This()) core.HResult!*HostName {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getRemoteAddress();
    }
    pub fn getRemoteServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getRemoteServiceName();
    }
    pub fn getRemotePort(self: *@This()) core.HResult!HSTRING {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getRemotePort();
    }
    pub fn getRoundTripTimeStatistics(self: *@This()) core.HResult!RoundTripTimeStatistics {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getRoundTripTimeStatistics();
    }
    pub fn getBandwidthStatistics(self: *@This()) core.HResult!BandwidthStatistics {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getBandwidthStatistics();
    }
    pub fn getProtectionLevel(self: *@This()) core.HResult!SocketProtectionLevel {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getProtectionLevel();
    }
    pub fn getSessionKey(self: *@This()) core.HResult!*IBuffer {
        const this: *IStreamSocketInformation = @ptrCast(self);
        return try this.getSessionKey();
    }
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        var this: ?*IStreamSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCertificateErrorSeverity();
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        var this: ?*IStreamSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCertificateErrors();
    }
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        var this: ?*IStreamSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCertificate();
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var this: ?*IStreamSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerIntermediateCertificates();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamSocketInformation.GUID;
    pub const IID: Guid = IStreamSocketInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamSocketInformation.SIGNATURE);
};
pub const StreamSocketListener = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getControl(self: *@This()) core.HResult!*StreamSocketListenerControl {
        const this: *IStreamSocketListener = @ptrCast(self);
        return try this.getControl();
    }
    pub fn getInformation(self: *@This()) core.HResult!*StreamSocketListenerInformation {
        const this: *IStreamSocketListener = @ptrCast(self);
        return try this.getInformation();
    }
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocketListener2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListener2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BindServiceNameAsync(localServiceName);
    }
    pub fn BindEndpointAsync(self: *@This(), localHostName: *HostName, localServiceName: HSTRING) core.HResult!*IAsyncAction {
        const this: *IStreamSocketListener = @ptrCast(self);
        return try this.BindEndpointAsync(localHostName, localServiceName);
    }
    pub fn addConnectionReceived(self: *@This(), eventHandler: *TypedEventHandler(StreamSocketListener,StreamSocketListenerConnectionReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IStreamSocketListener = @ptrCast(self);
        return try this.addConnectionReceived(eventHandler);
    }
    pub fn removeConnectionReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IStreamSocketListener = @ptrCast(self);
        return try this.removeConnectionReceived(eventCookie);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING, protectionLevel: SocketProtectionLevel) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocketListener2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListener2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BindServiceNameAsync(localServiceName, protectionLevel);
    }
    pub fn BindServiceNameAsync(self: *@This(), localServiceName: HSTRING, protectionLevel: SocketProtectionLevel, adapter: *NetworkAdapter) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocketListener2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListener2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BindServiceNameAsync(localServiceName, protectionLevel, adapter);
    }
    pub fn CancelIOAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStreamSocketListener3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListener3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CancelIOAsync();
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid) core.HResult!void {
        var this: ?*IStreamSocketListener3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListener3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableTransferOwnership(taskId);
    }
    pub fn EnableTransferOwnership(self: *@This(), taskId: *Guid, connectedStandbyAction: SocketActivityConnectedStandbyAction) core.HResult!void {
        var this: ?*IStreamSocketListener3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListener3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableTransferOwnership(taskId, connectedStandbyAction);
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING) core.HResult!void {
        var this: ?*IStreamSocketListener3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListener3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TransferOwnership(socketId);
    }
    pub fn TransferOwnership(self: *@This(), socketId: HSTRING, data: *SocketActivityContext) core.HResult!void {
        var this: ?*IStreamSocketListener3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListener3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TransferOwnership(socketId, data);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStreamSocketListener.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamSocketListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamSocketListener.GUID;
    pub const IID: Guid = IStreamSocketListener.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamSocketListener.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StreamSocketListenerConnectionReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSocket(self: *@This()) core.HResult!*StreamSocket {
        const this: *IStreamSocketListenerConnectionReceivedEventArgs = @ptrCast(self);
        return try this.getSocket();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamSocketListenerConnectionReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamSocketListenerConnectionReceivedEventArgs.GUID;
    pub const IID: Guid = IStreamSocketListenerConnectionReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamSocketListenerConnectionReceivedEventArgs.SIGNATURE);
};
pub const StreamSocketListenerControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQualityOfService(self: *@This()) core.HResult!SocketQualityOfService {
        const this: *IStreamSocketListenerControl = @ptrCast(self);
        return try this.getQualityOfService();
    }
    pub fn putQualityOfService(self: *@This(), value: SocketQualityOfService) core.HResult!void {
        const this: *IStreamSocketListenerControl = @ptrCast(self);
        return try this.putQualityOfService(value);
    }
    pub fn getNoDelay(self: *@This()) core.HResult!bool {
        var this: ?*IStreamSocketListenerControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListenerControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNoDelay();
    }
    pub fn putNoDelay(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IStreamSocketListenerControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListenerControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNoDelay(value);
    }
    pub fn getKeepAlive(self: *@This()) core.HResult!bool {
        var this: ?*IStreamSocketListenerControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListenerControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeepAlive();
    }
    pub fn putKeepAlive(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IStreamSocketListenerControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListenerControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeepAlive(value);
    }
    pub fn getOutboundBufferSizeInBytes(self: *@This()) core.HResult!u32 {
        var this: ?*IStreamSocketListenerControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListenerControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutboundBufferSizeInBytes();
    }
    pub fn putOutboundBufferSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IStreamSocketListenerControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListenerControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutboundBufferSizeInBytes(value);
    }
    pub fn getOutboundUnicastHopLimit(self: *@This()) core.HResult!u8 {
        var this: ?*IStreamSocketListenerControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListenerControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutboundUnicastHopLimit();
    }
    pub fn putOutboundUnicastHopLimit(self: *@This(), value: u8) core.HResult!void {
        var this: ?*IStreamSocketListenerControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamSocketListenerControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutboundUnicastHopLimit(value);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamSocketListenerControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamSocketListenerControl.GUID;
    pub const IID: Guid = IStreamSocketListenerControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamSocketListenerControl.SIGNATURE);
};
pub const StreamSocketListenerInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalPort(self: *@This()) core.HResult!HSTRING {
        const this: *IStreamSocketListenerInformation = @ptrCast(self);
        return try this.getLocalPort();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamSocketListenerInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamSocketListenerInformation.GUID;
    pub const IID: Guid = IStreamSocketListenerInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamSocketListenerInformation.SIGNATURE);
};
pub const StreamWebSocket = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getControl(self: *@This()) core.HResult!*StreamWebSocketControl {
        const this: *IStreamWebSocket = @ptrCast(self);
        return try this.getControl();
    }
    pub fn getInformation(self: *@This()) core.HResult!*StreamWebSocketInformation {
        const this: *IStreamWebSocket = @ptrCast(self);
        return try this.getInformation();
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IStreamWebSocket = @ptrCast(self);
        return try this.getInputStream();
    }
    pub fn getOutputStream(self: *@This()) core.HResult!*IOutputStream {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutputStream();
    }
    pub fn ConnectAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncAction {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConnectAsync(uri);
    }
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetRequestHeader(headerName, headerValue);
    }
    pub fn addClosed(self: *@This(), eventHandler: *TypedEventHandler(IWebSocket,WebSocketClosedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosed(eventHandler);
    }
    pub fn removeClosed(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IWebSocket = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocket.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosed(eventCookie);
    }
    pub fn Close(self: *@This(), code: u16, reason: HSTRING) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close(code, reason);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn addServerCustomValidationRequested(self: *@This(), eventHandler: *TypedEventHandler(StreamWebSocket,WebSocketServerCustomValidationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IStreamWebSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamWebSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addServerCustomValidationRequested(eventHandler);
    }
    pub fn removeServerCustomValidationRequested(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IStreamWebSocket2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamWebSocket2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeServerCustomValidationRequested(eventCookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStreamWebSocket.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamWebSocket";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamWebSocket.GUID;
    pub const IID: Guid = IStreamWebSocket.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamWebSocket.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StreamWebSocketControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNoDelay(self: *@This()) core.HResult!bool {
        const this: *IStreamWebSocketControl = @ptrCast(self);
        return try this.getNoDelay();
    }
    pub fn putNoDelay(self: *@This(), value: bool) core.HResult!void {
        const this: *IStreamWebSocketControl = @ptrCast(self);
        return try this.putNoDelay(value);
    }
    pub fn getOutboundBufferSizeInBytes(self: *@This()) core.HResult!u32 {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutboundBufferSizeInBytes();
    }
    pub fn putOutboundBufferSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutboundBufferSizeInBytes(value);
    }
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCredential();
    }
    pub fn putServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putServerCredential(value);
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProxyCredential();
    }
    pub fn putProxyCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProxyCredential(value);
    }
    pub fn getSupportedProtocols(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IWebSocketControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedProtocols();
    }
    pub fn getIgnorableServerCertificateErrors(self: *@This()) core.HResult!*IVector(ChainValidationResult) {
        var this: ?*IWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIgnorableServerCertificateErrors();
    }
    pub fn getDesiredUnsolicitedPongInterval(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IStreamWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredUnsolicitedPongInterval();
    }
    pub fn putDesiredUnsolicitedPongInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IStreamWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredUnsolicitedPongInterval(value);
    }
    pub fn getActualUnsolicitedPongInterval(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IStreamWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActualUnsolicitedPongInterval();
    }
    pub fn getClientCertificate(self: *@This()) core.HResult!*Certificate {
        var this: ?*IStreamWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getClientCertificate();
    }
    pub fn putClientCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        var this: ?*IStreamWebSocketControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamWebSocketControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putClientCertificate(value);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamWebSocketControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreamWebSocketControl.GUID;
    pub const IID: Guid = IStreamWebSocketControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreamWebSocketControl.SIGNATURE);
};
pub const StreamWebSocketInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalAddress(self: *@This()) core.HResult!*HostName {
        const this: *IWebSocketInformation = @ptrCast(self);
        return try this.getLocalAddress();
    }
    pub fn getBandwidthStatistics(self: *@This()) core.HResult!BandwidthStatistics {
        const this: *IWebSocketInformation = @ptrCast(self);
        return try this.getBandwidthStatistics();
    }
    pub fn getProtocol(self: *@This()) core.HResult!HSTRING {
        const this: *IWebSocketInformation = @ptrCast(self);
        return try this.getProtocol();
    }
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        var this: ?*IWebSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCertificate();
    }
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        var this: ?*IWebSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCertificateErrorSeverity();
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        var this: ?*IWebSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCertificateErrors();
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var this: ?*IWebSocketInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebSocketInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerIntermediateCertificates();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.StreamWebSocketInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebSocketInformation.GUID;
    pub const IID: Guid = IWebSocketInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebSocketInformation.SIGNATURE);
};
pub const WebSocketClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCode(self: *@This()) core.HResult!u16 {
        const this: *IWebSocketClosedEventArgs = @ptrCast(self);
        return try this.getCode();
    }
    pub fn getReason(self: *@This()) core.HResult!HSTRING {
        const this: *IWebSocketClosedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.WebSocketClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebSocketClosedEventArgs.GUID;
    pub const IID: Guid = IWebSocketClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebSocketClosedEventArgs.SIGNATURE);
};
pub const WebSocketError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetStatus(hresult: i32) core.HResult!WebErrorStatus {
        const factory = @This().IWebSocketErrorStaticsCache.get();
        return try factory.GetStatus(hresult);
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.WebSocketError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWebSocketErrorStaticsCache: FactoryCache(IWebSocketErrorStatics, RUNTIME_NAME) = .{};
};
pub const WebSocketKeepAlive = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Run(self: *@This(), taskInstance: *IBackgroundTaskInstance) core.HResult!void {
        const this: *IBackgroundTask = @ptrCast(self);
        return try this.Run(taskInstance);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTask.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.WebSocketKeepAlive";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTask.GUID;
    pub const IID: Guid = IBackgroundTask.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTask.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WebSocketServerCustomValidationRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServerCertificate(self: *@This()) core.HResult!*Certificate {
        const this: *IWebSocketServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.getServerCertificate();
    }
    pub fn getServerCertificateErrorSeverity(self: *@This()) core.HResult!SocketSslErrorSeverity {
        const this: *IWebSocketServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.getServerCertificateErrorSeverity();
    }
    pub fn getServerCertificateErrors(self: *@This()) core.HResult!*IVectorView(ChainValidationResult) {
        const this: *IWebSocketServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.getServerCertificateErrors();
    }
    pub fn getServerIntermediateCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        const this: *IWebSocketServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.getServerIntermediateCertificates();
    }
    pub fn Reject(self: *@This()) core.HResult!void {
        const this: *IWebSocketServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.Reject();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IWebSocketServerCustomValidationRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebSocketServerCustomValidationRequestedEventArgs.GUID;
    pub const IID: Guid = IWebSocketServerCustomValidationRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebSocketServerCustomValidationRequestedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const NetworkAdapter = @import("./Connectivity.zig").NetworkAdapter;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const IBackgroundTaskInstance = @import("../ApplicationModel/Background.zig").IBackgroundTaskInstance;
const IClosable = @import("../Foundation.zig").IClosable;
const HostNameSortOptions = @import("../Networking.zig").HostNameSortOptions;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const HostName = @import("../Networking.zig").HostName;
const EndpointPair = @import("../Networking.zig").EndpointPair;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Certificate = @import("../Security/Cryptography/Certificates.zig").Certificate;
const ChainValidationResult = @import("../Security/Cryptography/Certificates.zig").ChainValidationResult;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const WebErrorStatus = @import("../Web.zig").WebErrorStatus;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IBackgroundTrigger = @import("../ApplicationModel/Background.zig").IBackgroundTrigger;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const DataReader = @import("../Storage/Streams.zig").DataReader;
const IBackgroundTask = @import("../ApplicationModel/Background.zig").IBackgroundTask;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
