pub const DevicePortalConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(DevicePortalConnection,DevicePortalConnectionClosedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDevicePortalConnection = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDevicePortalConnection = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn addRequestReceived(self: *@This(), handler: *TypedEventHandler(DevicePortalConnection,DevicePortalConnectionRequestReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDevicePortalConnection = @ptrCast(self);
        return try this.addRequestReceived(handler);
    }
    pub fn removeRequestReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDevicePortalConnection = @ptrCast(self);
        return try this.removeRequestReceived(token);
    }
    pub fn GetServerMessageWebSocketForRequest(self: *@This(), request: *HttpRequestMessage) core.HResult!*ServerMessageWebSocket {
        var this: ?*IDevicePortalWebSocketConnection = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePortalWebSocketConnection.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetServerMessageWebSocketForRequest(request);
    }
    pub fn GetServerMessageWebSocketForRequest(self: *@This(), request: *HttpRequestMessage, messageType: SocketMessageType, protocol: HSTRING) core.HResult!*ServerMessageWebSocket {
        var this: ?*IDevicePortalWebSocketConnection = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePortalWebSocketConnection.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetServerMessageWebSocketForRequest(request, messageType, protocol);
    }
    pub fn GetServerMessageWebSocketForRequest(self: *@This(), request: *HttpRequestMessage, messageType: SocketMessageType, protocol: HSTRING, outboundBufferSizeInBytes: u32, maxMessageSize: u32, receiveMode: MessageWebSocketReceiveMode) core.HResult!*ServerMessageWebSocket {
        var this: ?*IDevicePortalWebSocketConnection = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePortalWebSocketConnection.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetServerMessageWebSocketForRequest(request, messageType, protocol, outboundBufferSizeInBytes, maxMessageSize, receiveMode);
    }
    pub fn GetServerStreamWebSocketForRequest(self: *@This(), request: *HttpRequestMessage) core.HResult!*ServerStreamWebSocket {
        var this: ?*IDevicePortalWebSocketConnection = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePortalWebSocketConnection.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetServerStreamWebSocketForRequest(request);
    }
    pub fn GetServerStreamWebSocketForRequest(self: *@This(), request: *HttpRequestMessage, protocol: HSTRING, outboundBufferSizeInBytes: u32, noDelay: bool) core.HResult!*ServerStreamWebSocket {
        var this: ?*IDevicePortalWebSocketConnection = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePortalWebSocketConnection.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetServerStreamWebSocketForRequest(request, protocol, outboundBufferSizeInBytes, noDelay);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForAppServiceConnection(appServiceConnection: *AppServiceConnection) core.HResult!*DevicePortalConnection {
        const factory = @This().IDevicePortalConnectionStaticsCache.get();
        return try factory.GetForAppServiceConnection(appServiceConnection);
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DevicePortal.DevicePortalConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePortalConnection.GUID;
    pub const IID: Guid = IDevicePortalConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePortalConnection.SIGNATURE);
    var _IDevicePortalConnectionStaticsCache: FactoryCache(IDevicePortalConnectionStatics, RUNTIME_NAME) = .{};
};
pub const DevicePortalConnectionClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!DevicePortalConnectionClosedReason {
        const this: *IDevicePortalConnectionClosedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePortalConnectionClosedEventArgs.GUID;
    pub const IID: Guid = IDevicePortalConnectionClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePortalConnectionClosedEventArgs.SIGNATURE);
};
pub const DevicePortalConnectionClosedReason = enum(i32) {
    Unknown = 0,
    ResourceLimitsExceeded = 1,
    ProtocolError = 2,
    NotAuthorized = 3,
    UserNotPresent = 4,
    ServiceTerminated = 5,
};
pub const DevicePortalConnectionRequestReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        const this: *IDevicePortalConnectionRequestReceivedEventArgs = @ptrCast(self);
        return try this.getRequestMessage();
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IDevicePortalConnectionRequestReceivedEventArgs = @ptrCast(self);
        return try this.getResponseMessage();
    }
    pub fn getIsWebSocketUpgradeRequest(self: *@This()) core.HResult!bool {
        var this: ?*IDevicePortalWebSocketConnectionRequestReceivedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePortalWebSocketConnectionRequestReceivedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWebSocketUpgradeRequest();
    }
    pub fn getWebSocketProtocolsRequested(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var this: ?*IDevicePortalWebSocketConnectionRequestReceivedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePortalWebSocketConnectionRequestReceivedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWebSocketProtocolsRequested();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var this: ?*IDevicePortalWebSocketConnectionRequestReceivedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDevicePortalWebSocketConnectionRequestReceivedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionRequestReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDevicePortalConnectionRequestReceivedEventArgs.GUID;
    pub const IID: Guid = IDevicePortalConnectionRequestReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDevicePortalConnectionRequestReceivedEventArgs.SIGNATURE);
};
pub const IDevicePortalConnection = extern struct {
    vtable: *const VTable,
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(DevicePortalConnection,DevicePortalConnectionClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRequestReceived(self: *@This(), handler: *TypedEventHandler(DevicePortalConnection,DevicePortalConnectionRequestReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RequestReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRequestReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RequestReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DevicePortal.IDevicePortalConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f447f51-1198-4da1-8d54-bdef393e09b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(DevicePortalConnection,DevicePortalConnectionClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RequestReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(DevicePortalConnection,DevicePortalConnectionRequestReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RequestReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePortalConnectionClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!DevicePortalConnectionClosedReason {
        var _r: DevicePortalConnectionClosedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcf70e38-7032-428c-9f50-945c15a9f0cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *DevicePortalConnectionClosedReason) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePortalConnectionRequestReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestMessage(self: *@This()) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.get_RequestMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_ResponseMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionRequestReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64dae045-6fda-4459-9ebd-ecce22e38559";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestMessage: *const fn(self: *anyopaque, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
        get_ResponseMessage: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePortalConnectionStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForAppServiceConnection(self: *@This(), appServiceConnection: *AppServiceConnection) core.HResult!*DevicePortalConnection {
        var _r: *DevicePortalConnection = undefined;
        const _c = self.vtable.GetForAppServiceConnection(@ptrCast(self), appServiceConnection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4bbe31e7-e9b9-4645-8fed-a53eea0edbd6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForAppServiceConnection: *const fn(self: *anyopaque, appServiceConnection: *AppServiceConnection, _r: **DevicePortalConnection) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePortalWebSocketConnection = extern struct {
    vtable: *const VTable,
    pub fn GetServerMessageWebSocketForRequest(self: *@This(), request: *HttpRequestMessage) core.HResult!*ServerMessageWebSocket {
        var _r: *ServerMessageWebSocket = undefined;
        const _c = self.vtable.GetServerMessageWebSocketForRequest(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetServerMessageWebSocketForRequest(self: *@This(), request: *HttpRequestMessage, messageType: SocketMessageType, protocol: HSTRING) core.HResult!*ServerMessageWebSocket {
        var _r: *ServerMessageWebSocket = undefined;
        const _c = self.vtable.GetServerMessageWebSocketForRequest(@ptrCast(self), request, messageType, protocol, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetServerMessageWebSocketForRequest(self: *@This(), request: *HttpRequestMessage, messageType: SocketMessageType, protocol: HSTRING, outboundBufferSizeInBytes: u32, maxMessageSize: u32, receiveMode: MessageWebSocketReceiveMode) core.HResult!*ServerMessageWebSocket {
        var _r: *ServerMessageWebSocket = undefined;
        const _c = self.vtable.GetServerMessageWebSocketForRequest(@ptrCast(self), request, messageType, protocol, outboundBufferSizeInBytes, maxMessageSize, receiveMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetServerStreamWebSocketForRequest(self: *@This(), request: *HttpRequestMessage) core.HResult!*ServerStreamWebSocket {
        var _r: *ServerStreamWebSocket = undefined;
        const _c = self.vtable.GetServerStreamWebSocketForRequest(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetServerStreamWebSocketForRequest(self: *@This(), request: *HttpRequestMessage, protocol: HSTRING, outboundBufferSizeInBytes: u32, noDelay: bool) core.HResult!*ServerStreamWebSocket {
        var _r: *ServerStreamWebSocket = undefined;
        const _c = self.vtable.GetServerStreamWebSocketForRequest(@ptrCast(self), request, protocol, outboundBufferSizeInBytes, noDelay, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DevicePortal.IDevicePortalWebSocketConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67657920-d65a-42f0-aef4-787808098b7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetServerMessageWebSocketForRequest: *const fn(self: *anyopaque, request: *HttpRequestMessage, _r: **ServerMessageWebSocket) callconv(.winapi) HRESULT,
        GetServerMessageWebSocketForRequest: *const fn(self: *anyopaque, request: *HttpRequestMessage, messageType: SocketMessageType, protocol: HSTRING, _r: **ServerMessageWebSocket) callconv(.winapi) HRESULT,
        GetServerMessageWebSocketForRequest: *const fn(self: *anyopaque, request: *HttpRequestMessage, messageType: SocketMessageType, protocol: HSTRING, outboundBufferSizeInBytes: u32, maxMessageSize: u32, receiveMode: MessageWebSocketReceiveMode, _r: **ServerMessageWebSocket) callconv(.winapi) HRESULT,
        GetServerStreamWebSocketForRequest: *const fn(self: *anyopaque, request: *HttpRequestMessage, _r: **ServerStreamWebSocket) callconv(.winapi) HRESULT,
        GetServerStreamWebSocketForRequest: *const fn(self: *anyopaque, request: *HttpRequestMessage, protocol: HSTRING, outboundBufferSizeInBytes: u32, noDelay: bool, _r: **ServerStreamWebSocket) callconv(.winapi) HRESULT,
    };
};
pub const IDevicePortalWebSocketConnectionRequestReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsWebSocketUpgradeRequest(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWebSocketUpgradeRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWebSocketProtocolsRequested(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_WebSocketProtocolsRequested(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Diagnostics.DevicePortal.IDevicePortalWebSocketConnectionRequestReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79fdcaba-175c-4739-9f74-dda797c35b3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsWebSocketUpgradeRequest: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_WebSocketProtocolsRequested: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const MessageWebSocketReceiveMode = @import("../../Networking/Sockets.zig").MessageWebSocketReceiveMode;
const HttpResponseMessage = @import("../../Web/Http.zig").HttpResponseMessage;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const Deferral = @import("../../Foundation.zig").Deferral;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const ServerMessageWebSocket = @import("../../Networking/Sockets.zig").ServerMessageWebSocket;
const AppServiceConnection = @import("../../ApplicationModel/AppService.zig").AppServiceConnection;
const SocketMessageType = @import("../../Networking/Sockets.zig").SocketMessageType;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const HttpRequestMessage = @import("../../Web/Http.zig").HttpRequestMessage;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const ServerStreamWebSocket = @import("../../Networking/Sockets.zig").ServerStreamWebSocket;
const HSTRING = @import("../../root.zig").HSTRING;
