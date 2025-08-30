pub const ConnectionRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPeerInformation(self: *@This()) core.HResult!*PeerInformation {
        const this: *IConnectionRequestedEventArgs = @ptrCast(self);
        return try this.getPeerInformation();
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.ConnectionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConnectionRequestedEventArgs.GUID;
    pub const IID: Guid = IConnectionRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConnectionRequestedEventArgs.SIGNATURE);
};
pub const DeviceArrivedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *ProximityDevice) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *ProximityDevice) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *ProximityDevice) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.DeviceArrivedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efa9da69-f6e1-49c9-a49e-8e0fc58fb911";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *ProximityDevice) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DeviceDepartedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *ProximityDevice) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *ProximityDevice) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *ProximityDevice) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.DeviceDepartedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efa9da69-f6e2-49c9-a49e-8e0fc58fb911";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *ProximityDevice) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const IConnectionRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPeerInformation(self: *@This()) core.HResult!*PeerInformation {
        var _r: *PeerInformation = undefined;
        const _c = self.vtable.get_PeerInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IConnectionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb6891ae-4f1e-4c66-bd0d-46924a942e08";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PeerInformation: *const fn(self: *anyopaque, _r: **PeerInformation) callconv(.winapi) HRESULT,
    };
};
pub const IPeerFinderStatics = extern struct {
    vtable: *const VTable,
    pub fn getAllowBluetooth(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowBluetooth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowBluetooth(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowBluetooth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowInfrastructure(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowInfrastructure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowInfrastructure(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowInfrastructure(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowWiFiDirect(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowWiFiDirect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowWiFiDirect(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowWiFiDirect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn getSupportedDiscoveryTypes(self: *@This()) core.HResult!PeerDiscoveryTypes {
        var _r: PeerDiscoveryTypes = undefined;
        const _c = self.vtable.get_SupportedDiscoveryTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlternateIdentities(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_AlternateIdentities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This(), peerMessage: HSTRING) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self), peerMessage);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTriggeredConnectionStateChanged(self: *@This(), handler: *TypedEventHandler(IInspectable,TriggeredConnectionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TriggeredConnectionStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTriggeredConnectionStateChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TriggeredConnectionStateChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addConnectionRequested(self: *@This(), handler: *TypedEventHandler(IInspectable,ConnectionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindAllPeersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PeerInformation)) {
        var _r: *IAsyncOperation(IVectorView(PeerInformation)) = undefined;
        const _c = self.vtable.FindAllPeersAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This(), peerInformation: *PeerInformation) core.HResult!*IAsyncOperation(StreamSocket) {
        var _r: *IAsyncOperation(StreamSocket) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), peerInformation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IPeerFinderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "914b3b61-f6e1-47c4-a14c-148a1903d0c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowBluetooth: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowBluetooth: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowInfrastructure: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowInfrastructure: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowWiFiDirect: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowWiFiDirect: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SupportedDiscoveryTypes: *const fn(self: *anyopaque, _r: *PeerDiscoveryTypes) callconv(.winapi) HRESULT,
        get_AlternateIdentities: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque, peerMessage: HSTRING) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_TriggeredConnectionStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,TriggeredConnectionStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TriggeredConnectionStateChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ConnectionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,ConnectionRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        FindAllPeersAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(PeerInformation))) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, peerInformation: *PeerInformation, _r: **IAsyncOperation(StreamSocket)) callconv(.winapi) HRESULT,
    };
};
pub const IPeerFinderStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getRole(self: *@This()) core.HResult!PeerRole {
        var _r: PeerRole = undefined;
        const _c = self.vtable.get_Role(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRole(self: *@This(), value: PeerRole) core.HResult!void {
        const _c = self.vtable.put_Role(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDiscoveryData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_DiscoveryData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDiscoveryData(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_DiscoveryData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateWatcher(self: *@This()) core.HResult!*PeerWatcher {
        var _r: *PeerWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IPeerFinderStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6e73c65-fdd0-4b0b-9312-866408935d82";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Role: *const fn(self: *anyopaque, _r: *PeerRole) callconv(.winapi) HRESULT,
        put_Role: *const fn(self: *anyopaque, value: PeerRole) callconv(.winapi) HRESULT,
        get_DiscoveryData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_DiscoveryData: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **PeerWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IPeerInformation = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IPeerInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20024f08-9fff-45f4-b6e9-408b2ebef373";
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
    };
};
pub const IPeerInformation3 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDiscoveryData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_DiscoveryData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IPeerInformation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b20f612a-dbd0-40f8-95bd-2d4209c7836f";
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
        get_DiscoveryData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IPeerInformationWithHostAndService = extern struct {
    vtable: *const VTable,
    pub fn getHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_HostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IPeerInformationWithHostAndService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ecc7ccad-1b70-4e8b-92db-bbe781419308";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_ServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPeerWatcher = extern struct {
    vtable: *const VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(PeerWatcher,PeerInformation)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(PeerWatcher,PeerInformation)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(PeerWatcher,PeerInformation)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PeerWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PeerWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!PeerWatcherStatus {
        var _r: PeerWatcherStatus = undefined;
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
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IPeerWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3cee21f8-2fa6-4679-9691-03c94a420f34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(PeerWatcher,PeerInformation), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(PeerWatcher,PeerInformation), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(PeerWatcher,PeerInformation), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(PeerWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(PeerWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PeerWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IProximityDevice = extern struct {
    vtable: *const VTable,
    pub fn SubscribeForMessage(self: *@This(), messageType: HSTRING, messageReceivedHandler: *MessageReceivedHandler) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.SubscribeForMessage(@ptrCast(self), messageType, messageReceivedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PublishMessage(self: *@This(), messageType: HSTRING, message: HSTRING) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.PublishMessage(@ptrCast(self), messageType, message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PublishMessageWithMessageWithMessageTransmittedHandler(self: *@This(), messageType: HSTRING, message: HSTRING, messageTransmittedHandler: *MessageTransmittedHandler) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.PublishMessageWithMessageWithMessageTransmittedHandler(@ptrCast(self), messageType, message, messageTransmittedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PublishBinaryMessage(self: *@This(), messageType: HSTRING, message: *IBuffer) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.PublishBinaryMessage(@ptrCast(self), messageType, message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PublishBinaryMessageWithMessageWithMessageTransmittedHandler(self: *@This(), messageType: HSTRING, message: *IBuffer, messageTransmittedHandler: *MessageTransmittedHandler) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.PublishBinaryMessageWithMessageWithMessageTransmittedHandler(@ptrCast(self), messageType, message, messageTransmittedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PublishUriMessage(self: *@This(), message: *Uri) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.PublishUriMessage(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PublishUriMessageWithMessageTransmittedHandler(self: *@This(), message: *Uri, messageTransmittedHandler: *MessageTransmittedHandler) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.PublishUriMessageWithMessageTransmittedHandler(@ptrCast(self), message, messageTransmittedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopSubscribingForMessage(self: *@This(), subscriptionId: i64) core.HResult!void {
        const _c = self.vtable.StopSubscribingForMessage(@ptrCast(self), subscriptionId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopPublishingMessage(self: *@This(), messageId: i64) core.HResult!void {
        const _c = self.vtable.StopPublishingMessage(@ptrCast(self), messageId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDeviceArrived(self: *@This(), arrivedHandler: *DeviceArrivedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DeviceArrived(@ptrCast(self), arrivedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDeviceArrived(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DeviceArrived(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDeviceDeparted(self: *@This(), departedHandler: *DeviceDepartedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DeviceDeparted(@ptrCast(self), departedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDeviceDeparted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DeviceDeparted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxMessageBytes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxMessageBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitsPerSecond(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BitsPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IProximityDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efa8a552-f6e1-4329-a0fc-ab6b0fd28262";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SubscribeForMessage: *const fn(self: *anyopaque, messageType: HSTRING, messageReceivedHandler: *MessageReceivedHandler, _r: *i64) callconv(.winapi) HRESULT,
        PublishMessage: *const fn(self: *anyopaque, messageType: HSTRING, message: HSTRING, _r: *i64) callconv(.winapi) HRESULT,
        PublishMessageWithMessageWithMessageTransmittedHandler: *const fn(self: *anyopaque, messageType: HSTRING, message: HSTRING, messageTransmittedHandler: *MessageTransmittedHandler, _r: *i64) callconv(.winapi) HRESULT,
        PublishBinaryMessage: *const fn(self: *anyopaque, messageType: HSTRING, message: *IBuffer, _r: *i64) callconv(.winapi) HRESULT,
        PublishBinaryMessageWithMessageWithMessageTransmittedHandler: *const fn(self: *anyopaque, messageType: HSTRING, message: *IBuffer, messageTransmittedHandler: *MessageTransmittedHandler, _r: *i64) callconv(.winapi) HRESULT,
        PublishUriMessage: *const fn(self: *anyopaque, message: *Uri, _r: *i64) callconv(.winapi) HRESULT,
        PublishUriMessageWithMessageTransmittedHandler: *const fn(self: *anyopaque, message: *Uri, messageTransmittedHandler: *MessageTransmittedHandler, _r: *i64) callconv(.winapi) HRESULT,
        StopSubscribingForMessage: *const fn(self: *anyopaque, subscriptionId: i64) callconv(.winapi) HRESULT,
        StopPublishingMessage: *const fn(self: *anyopaque, messageId: i64) callconv(.winapi) HRESULT,
        add_DeviceArrived: *const fn(self: *anyopaque, arrivedHandler: *DeviceArrivedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DeviceArrived: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DeviceDeparted: *const fn(self: *anyopaque, departedHandler: *DeviceDepartedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DeviceDeparted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_MaxMessageBytes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_BitsPerSecond: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IProximityDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefault(self: *@This()) core.HResult!*ProximityDevice {
        var _r: *ProximityDevice = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromId(self: *@This(), deviceId: HSTRING) core.HResult!*ProximityDevice {
        var _r: *ProximityDevice = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IProximityDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "914ba01d-f6e1-47c4-a14c-148a1903d0c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **ProximityDevice) callconv(.winapi) HRESULT,
        FromId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **ProximityDevice) callconv(.winapi) HRESULT,
    };
};
pub const IProximityMessage = extern struct {
    vtable: *const VTable,
    pub fn getMessageType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MessageType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubscriptionId(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_SubscriptionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DataAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.IProximityMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efab0782-f6e1-4675-a045-d8e320c24808";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MessageType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SubscriptionId: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_DataAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITriggeredConnectionStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!TriggeredConnectState {
        var _r: TriggeredConnectState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSocket(self: *@This()) core.HResult!*StreamSocket {
        var _r: *StreamSocket = undefined;
        const _c = self.vtable.get_Socket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.ITriggeredConnectionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6a780ad-f6e1-4d54-96e2-33f620bca88a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *TriggeredConnectState) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Socket: *const fn(self: *anyopaque, _r: **StreamSocket) callconv(.winapi) HRESULT,
    };
};
pub const MessageReceivedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *ProximityDevice, message: *ProximityMessage) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *ProximityDevice, message: *ProximityMessage) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *ProximityDevice, message: *ProximityMessage) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, message);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.MessageReceivedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efab0782-f6e2-4675-a045-d8e320c24808";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *ProximityDevice, message: *ProximityMessage) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const MessageTransmittedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *ProximityDevice, messageId: i64) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *ProximityDevice, messageId: i64) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *ProximityDevice, messageId: i64) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, messageId);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.MessageTransmittedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efaa0b4a-f6e2-4d7d-856c-78fc8efc021e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *ProximityDevice, messageId: i64) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const PeerDiscoveryTypes = enum(i32) {
    None = 0,
    Browse = 1,
    Triggered = 2,
};
pub const PeerFinder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Role() core.HResult!PeerRole {
        const factory = @This().IPeerFinderStatics2Cache.get();
        return try factory.getRole();
    }
    pub fn put_Role(value: PeerRole) core.HResult!void {
        const factory = @This().IPeerFinderStatics2Cache.get();
        return try factory.putRole(value);
    }
    pub fn get_DiscoveryData() core.HResult!*IBuffer {
        const factory = @This().IPeerFinderStatics2Cache.get();
        return try factory.getDiscoveryData();
    }
    pub fn put_DiscoveryData(value: *IBuffer) core.HResult!void {
        const factory = @This().IPeerFinderStatics2Cache.get();
        return try factory.putDiscoveryData(value);
    }
    pub fn CreateWatcher() core.HResult!*PeerWatcher {
        const factory = @This().IPeerFinderStatics2Cache.get();
        return try factory.CreateWatcher();
    }
    pub fn get_AllowBluetooth() core.HResult!bool {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.getAllowBluetooth();
    }
    pub fn put_AllowBluetooth(value: bool) core.HResult!void {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.putAllowBluetooth(value);
    }
    pub fn get_AllowInfrastructure() core.HResult!bool {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.getAllowInfrastructure();
    }
    pub fn put_AllowInfrastructure(value: bool) core.HResult!void {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.putAllowInfrastructure(value);
    }
    pub fn get_AllowWiFiDirect() core.HResult!bool {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.getAllowWiFiDirect();
    }
    pub fn put_AllowWiFiDirect(value: bool) core.HResult!void {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.putAllowWiFiDirect(value);
    }
    pub fn get_DisplayName() core.HResult!HSTRING {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.getDisplayName();
    }
    pub fn put_DisplayName(value: HSTRING) core.HResult!void {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.putDisplayName(value);
    }
    pub fn get_SupportedDiscoveryTypes() core.HResult!PeerDiscoveryTypes {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.getSupportedDiscoveryTypes();
    }
    pub fn get_AlternateIdentities() core.HResult!*IMap(HSTRING,HSTRING) {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.getAlternateIdentities();
    }
    pub fn Start() core.HResult!void {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.Start();
    }
    pub fn StartWithPeerMessage(peerMessage: HSTRING) core.HResult!void {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.StartWithPeerMessage(peerMessage);
    }
    pub fn Stop() core.HResult!void {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.Stop();
    }
    pub fn add_TriggeredConnectionStateChanged(handler: *TypedEventHandler(IInspectable,TriggeredConnectionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.addTriggeredConnectionStateChanged(handler);
    }
    pub fn remove_TriggeredConnectionStateChanged(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.removeTriggeredConnectionStateChanged(cookie);
    }
    pub fn add_ConnectionRequested(handler: *TypedEventHandler(IInspectable,ConnectionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.addConnectionRequested(handler);
    }
    pub fn remove_ConnectionRequested(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.removeConnectionRequested(cookie);
    }
    pub fn FindAllPeersAsync() core.HResult!*IAsyncOperation(IVectorView(PeerInformation)) {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.FindAllPeersAsync();
    }
    pub fn ConnectAsync(peerInformation: *PeerInformation) core.HResult!*IAsyncOperation(StreamSocket) {
        const factory = @This().IPeerFinderStaticsCache.get();
        return try factory.ConnectAsync(peerInformation);
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.PeerFinder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPeerFinderStatics2Cache: FactoryCache(IPeerFinderStatics2, RUNTIME_NAME) = .{};
    var _IPeerFinderStaticsCache: FactoryCache(IPeerFinderStatics, RUNTIME_NAME) = .{};
};
pub const PeerInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPeerInformation = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPeerInformation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPeerInformation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getDiscoveryData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IPeerInformation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPeerInformation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDiscoveryData();
    }
    pub fn getHostName(self: *@This()) core.HResult!*HostName {
        var this: ?*IPeerInformationWithHostAndService = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPeerInformationWithHostAndService.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHostName();
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPeerInformationWithHostAndService = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPeerInformationWithHostAndService.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServiceName();
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.PeerInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPeerInformation.GUID;
    pub const IID: Guid = IPeerInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPeerInformation.SIGNATURE);
};
pub const PeerRole = enum(i32) {
    Peer = 0,
    Host = 1,
    Client = 2,
};
pub const PeerWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(PeerWatcher,PeerInformation)) core.HResult!EventRegistrationToken {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(PeerWatcher,PeerInformation)) core.HResult!EventRegistrationToken {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(PeerWatcher,PeerInformation)) core.HResult!EventRegistrationToken {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PeerWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PeerWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!PeerWatcherStatus {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IPeerWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.PeerWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPeerWatcher.GUID;
    pub const IID: Guid = IPeerWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPeerWatcher.SIGNATURE);
};
pub const PeerWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const ProximityDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SubscribeForMessage(self: *@This(), messageType: HSTRING, messageReceivedHandler: *MessageReceivedHandler) core.HResult!i64 {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.SubscribeForMessage(messageType, messageReceivedHandler);
    }
    pub fn PublishMessage(self: *@This(), messageType: HSTRING, message: HSTRING) core.HResult!i64 {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.PublishMessage(messageType, message);
    }
    pub fn PublishMessageWithMessageTransmittedHandler(self: *@This(), messageType: HSTRING, message: HSTRING, messageTransmittedHandler: *MessageTransmittedHandler) core.HResult!i64 {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.PublishMessageWithMessageTransmittedHandler(messageType, message, messageTransmittedHandler);
    }
    pub fn PublishBinaryMessage(self: *@This(), messageType: HSTRING, message: *IBuffer) core.HResult!i64 {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.PublishBinaryMessage(messageType, message);
    }
    pub fn PublishBinaryMessageWithMessageTransmittedHandler(self: *@This(), messageType: HSTRING, message: *IBuffer, messageTransmittedHandler: *MessageTransmittedHandler) core.HResult!i64 {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.PublishBinaryMessageWithMessageTransmittedHandler(messageType, message, messageTransmittedHandler);
    }
    pub fn PublishUriMessage(self: *@This(), message: *Uri) core.HResult!i64 {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.PublishUriMessage(message);
    }
    pub fn PublishUriMessageWithMessageTransmittedHandler(self: *@This(), message: *Uri, messageTransmittedHandler: *MessageTransmittedHandler) core.HResult!i64 {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.PublishUriMessageWithMessageTransmittedHandler(message, messageTransmittedHandler);
    }
    pub fn StopSubscribingForMessage(self: *@This(), subscriptionId: i64) core.HResult!void {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.StopSubscribingForMessage(subscriptionId);
    }
    pub fn StopPublishingMessage(self: *@This(), messageId: i64) core.HResult!void {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.StopPublishingMessage(messageId);
    }
    pub fn addDeviceArrived(self: *@This(), arrivedHandler: *DeviceArrivedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.addDeviceArrived(arrivedHandler);
    }
    pub fn removeDeviceArrived(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.removeDeviceArrived(cookie);
    }
    pub fn addDeviceDeparted(self: *@This(), departedHandler: *DeviceDepartedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.addDeviceDeparted(departedHandler);
    }
    pub fn removeDeviceDeparted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.removeDeviceDeparted(cookie);
    }
    pub fn getMaxMessageBytes(self: *@This()) core.HResult!u32 {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.getMaxMessageBytes();
    }
    pub fn getBitsPerSecond(self: *@This()) core.HResult!u64 {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.getBitsPerSecond();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IProximityDevice = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IProximityDeviceStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDefault() core.HResult!*ProximityDevice {
        const factory = @This().IProximityDeviceStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn FromId(deviceId: HSTRING) core.HResult!*ProximityDevice {
        const factory = @This().IProximityDeviceStaticsCache.get();
        return try factory.FromId(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.ProximityDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProximityDevice.GUID;
    pub const IID: Guid = IProximityDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProximityDevice.SIGNATURE);
    var _IProximityDeviceStaticsCache: FactoryCache(IProximityDeviceStatics, RUNTIME_NAME) = .{};
};
pub const ProximityMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessageType(self: *@This()) core.HResult!HSTRING {
        const this: *IProximityMessage = @ptrCast(self);
        return try this.getMessageType();
    }
    pub fn getSubscriptionId(self: *@This()) core.HResult!i64 {
        const this: *IProximityMessage = @ptrCast(self);
        return try this.getSubscriptionId();
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IProximityMessage = @ptrCast(self);
        return try this.getData();
    }
    pub fn getDataAsString(self: *@This()) core.HResult!HSTRING {
        const this: *IProximityMessage = @ptrCast(self);
        return try this.getDataAsString();
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.ProximityMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProximityMessage.GUID;
    pub const IID: Guid = IProximityMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProximityMessage.SIGNATURE);
};
pub const TriggeredConnectState = enum(i32) {
    PeerFound = 0,
    Listening = 1,
    Connecting = 2,
    Completed = 3,
    Canceled = 4,
    Failed = 5,
};
pub const TriggeredConnectionStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!TriggeredConnectState {
        const this: *ITriggeredConnectionStateChangedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *ITriggeredConnectionStateChangedEventArgs = @ptrCast(self);
        return try this.getId();
    }
    pub fn getSocket(self: *@This()) core.HResult!*StreamSocket {
        const this: *ITriggeredConnectionStateChangedEventArgs = @ptrCast(self);
        return try this.getSocket();
    }
    pub const NAME: []const u8 = "Windows.Networking.Proximity.TriggeredConnectionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITriggeredConnectionStateChangedEventArgs.GUID;
    pub const IID: Guid = ITriggeredConnectionStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITriggeredConnectionStateChangedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAgileObject = @import("../root.zig").IAgileObject;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IMap = @import("../Foundation/Collections.zig").IMap;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const HostName = @import("../Networking.zig").HostName;
const StreamSocket = @import("./Sockets.zig").StreamSocket;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
