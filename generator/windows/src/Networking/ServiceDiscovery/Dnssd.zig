pub const DnssdRegistrationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!DnssdRegistrationStatus {
        const this: *IDnssdRegistrationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getIPAddress(self: *@This()) core.HResult!*HostName {
        const this: *IDnssdRegistrationResult = @ptrCast(self);
        return try this.getIPAddress();
    }
    pub fn getHasInstanceNameChanged(self: *@This()) core.HResult!bool {
        const this: *IDnssdRegistrationResult = @ptrCast(self);
        return try this.getHasInstanceNameChanged();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDnssdRegistrationResult.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDnssdRegistrationResult.GUID;
    pub const IID: Guid = IDnssdRegistrationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDnssdRegistrationResult.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DnssdRegistrationStatus = enum(i32) {
    Success = 0,
    InvalidServiceName = 1,
    ServerError = 2,
    SecurityError = 3,
};
pub const DnssdServiceInstance = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDnssdServiceInstanceName(self: *@This()) core.HResult!HSTRING {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.getDnssdServiceInstanceName();
    }
    pub fn putDnssdServiceInstanceName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.putDnssdServiceInstanceName(value);
    }
    pub fn getHostName(self: *@This()) core.HResult!*HostName {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.getHostName();
    }
    pub fn putHostName(self: *@This(), value: *HostName) core.HResult!void {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.putHostName(value);
    }
    pub fn getPort(self: *@This()) core.HResult!u16 {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.getPort();
    }
    pub fn putPort(self: *@This(), value: u16) core.HResult!void {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.putPort(value);
    }
    pub fn getPriority(self: *@This()) core.HResult!u16 {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.getPriority();
    }
    pub fn putPriority(self: *@This(), value: u16) core.HResult!void {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.putPriority(value);
    }
    pub fn getWeight(self: *@This()) core.HResult!u16 {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.getWeight();
    }
    pub fn putWeight(self: *@This(), value: u16) core.HResult!void {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.putWeight(value);
    }
    pub fn getTextAttributes(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.getTextAttributes();
    }
    pub fn RegisterStreamSocketListenerAsync(self: *@This(), socket: *StreamSocketListener) core.HResult!*IAsyncOperation(DnssdRegistrationResult) {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.RegisterStreamSocketListenerAsync(socket);
    }
    pub fn RegisterStreamSocketListenerAsync(self: *@This(), socket: *StreamSocketListener, adapter: *NetworkAdapter) core.HResult!*IAsyncOperation(DnssdRegistrationResult) {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.RegisterStreamSocketListenerAsync(socket, adapter);
    }
    pub fn RegisterDatagramSocketAsync(self: *@This(), socket: *DatagramSocket) core.HResult!*IAsyncOperation(DnssdRegistrationResult) {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.RegisterDatagramSocketAsync(socket);
    }
    pub fn RegisterDatagramSocketAsync(self: *@This(), socket: *DatagramSocket, adapter: *NetworkAdapter) core.HResult!*IAsyncOperation(DnssdRegistrationResult) {
        const this: *IDnssdServiceInstance = @ptrCast(self);
        return try this.RegisterDatagramSocketAsync(socket, adapter);
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(dnssdServiceInstanceName: HSTRING, hostName: *HostName, port: u16) core.HResult!*DnssdServiceInstance {
        const factory = @This().IDnssdServiceInstanceFactoryCache.get();
        return try factory.Create(dnssdServiceInstanceName, hostName, port);
    }
    pub const NAME: []const u8 = "Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDnssdServiceInstance.GUID;
    pub const IID: Guid = IDnssdServiceInstance.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDnssdServiceInstance.SIGNATURE);
    var _IDnssdServiceInstanceFactoryCache: FactoryCache(IDnssdServiceInstanceFactory, RUNTIME_NAME) = .{};
};
pub const DnssdServiceInstanceCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*DnssdServiceInstance {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: *DnssdServiceInstance, index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]DnssdServiceInstance) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(DnssdServiceInstance) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstanceCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const DnssdServiceWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(DnssdServiceWatcher,DnssdServiceInstance)) core.HResult!EventRegistrationToken {
        const this: *IDnssdServiceWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDnssdServiceWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(DnssdServiceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDnssdServiceWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDnssdServiceWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(DnssdServiceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDnssdServiceWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDnssdServiceWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!DnssdServiceWatcherStatus {
        const this: *IDnssdServiceWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IDnssdServiceWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IDnssdServiceWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDnssdServiceWatcher.GUID;
    pub const IID: Guid = IDnssdServiceWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDnssdServiceWatcher.SIGNATURE);
};
pub const DnssdServiceWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const IDnssdRegistrationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!DnssdRegistrationStatus {
        var _r: DnssdRegistrationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIPAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_IPAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasInstanceNameChanged(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasInstanceNameChanged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.ServiceDiscovery.Dnssd.IDnssdRegistrationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d786ad2-e606-5350-73ea-7e97f066162f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DnssdRegistrationStatus) callconv(.winapi) HRESULT,
        get_IPAddress: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_HasInstanceNameChanged: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDnssdServiceInstance = extern struct {
    vtable: *const VTable,
    pub fn getDnssdServiceInstanceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DnssdServiceInstanceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDnssdServiceInstanceName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DnssdServiceInstanceName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_HostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHostName(self: *@This(), value: *HostName) core.HResult!void {
        const _c = self.vtable.put_HostName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPort(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Port(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPort(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.put_Port(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPriority(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Priority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPriority(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.put_Priority(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWeight(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Weight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWeight(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.put_Weight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextAttributes(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_TextAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterStreamSocketListenerAsync(self: *@This(), socket: *StreamSocketListener) core.HResult!*IAsyncOperation(DnssdRegistrationResult) {
        var _r: *IAsyncOperation(DnssdRegistrationResult) = undefined;
        const _c = self.vtable.RegisterStreamSocketListenerAsync(@ptrCast(self), socket, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterStreamSocketListenerAsync(self: *@This(), socket: *StreamSocketListener, adapter: *NetworkAdapter) core.HResult!*IAsyncOperation(DnssdRegistrationResult) {
        var _r: *IAsyncOperation(DnssdRegistrationResult) = undefined;
        const _c = self.vtable.RegisterStreamSocketListenerAsync(@ptrCast(self), socket, adapter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterDatagramSocketAsync(self: *@This(), socket: *DatagramSocket) core.HResult!*IAsyncOperation(DnssdRegistrationResult) {
        var _r: *IAsyncOperation(DnssdRegistrationResult) = undefined;
        const _c = self.vtable.RegisterDatagramSocketAsync(@ptrCast(self), socket, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterDatagramSocketAsync(self: *@This(), socket: *DatagramSocket, adapter: *NetworkAdapter) core.HResult!*IAsyncOperation(DnssdRegistrationResult) {
        var _r: *IAsyncOperation(DnssdRegistrationResult) = undefined;
        const _c = self.vtable.RegisterDatagramSocketAsync(@ptrCast(self), socket, adapter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e246db7e-98a5-4ca1-b9e4-c253d33c35ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DnssdServiceInstanceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DnssdServiceInstanceName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_HostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        put_HostName: *const fn(self: *anyopaque, value: *HostName) callconv(.winapi) HRESULT,
        get_Port: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        put_Port: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        get_Priority: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        put_Priority: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        get_Weight: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        put_Weight: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        get_TextAttributes: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        RegisterStreamSocketListenerAsync: *const fn(self: *anyopaque, socket: *StreamSocketListener, _r: **IAsyncOperation(DnssdRegistrationResult)) callconv(.winapi) HRESULT,
        RegisterStreamSocketListenerAsync: *const fn(self: *anyopaque, socket: *StreamSocketListener, adapter: *NetworkAdapter, _r: **IAsyncOperation(DnssdRegistrationResult)) callconv(.winapi) HRESULT,
        RegisterDatagramSocketAsync: *const fn(self: *anyopaque, socket: *DatagramSocket, _r: **IAsyncOperation(DnssdRegistrationResult)) callconv(.winapi) HRESULT,
        RegisterDatagramSocketAsync: *const fn(self: *anyopaque, socket: *DatagramSocket, adapter: *NetworkAdapter, _r: **IAsyncOperation(DnssdRegistrationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IDnssdServiceInstanceFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), dnssdServiceInstanceName: HSTRING, hostName: *HostName, port: u16) core.HResult!*DnssdServiceInstance {
        var _r: *DnssdServiceInstance = undefined;
        const _c = self.vtable.Create(@ptrCast(self), dnssdServiceInstanceName, hostName, port, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstanceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6cb061a1-c478-4331-9684-4af2186c0a2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, dnssdServiceInstanceName: HSTRING, hostName: *HostName, port: u16, _r: **DnssdServiceInstance) callconv(.winapi) HRESULT,
    };
};
pub const IDnssdServiceWatcher = extern struct {
    vtable: *const VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(DnssdServiceWatcher,DnssdServiceInstance)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(DnssdServiceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(DnssdServiceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!DnssdServiceWatcherStatus {
        var _r: DnssdServiceWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cc34d9c1-db7d-4b69-983d-c6f83f205682";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(DnssdServiceWatcher,DnssdServiceInstance), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(DnssdServiceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(DnssdServiceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DnssdServiceWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IMap = @import("../../Foundation/Collections.zig").IMap;
const IStringable = @import("../../Foundation.zig").IStringable;
const NetworkAdapter = @import("../Connectivity.zig").NetworkAdapter;
const DatagramSocket = @import("../Sockets.zig").DatagramSocket;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const StreamSocketListener = @import("../Sockets.zig").StreamSocketListener;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const HostName = @import("../../Networking.zig").HostName;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
