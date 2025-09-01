pub const IRemoteTextConnection = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterThread(self: *@This(), threadId: u32) core.HResult!void {
        const _c = self.vtable.RegisterThread(@ptrCast(self), threadId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnregisterThread(self: *@This(), threadId: u32) core.HResult!void {
        const _c = self.vtable.UnregisterThread(@ptrCast(self), threadId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportDataReceived(self: *@This(), pduData: [*]u8) core.HResult!void {
        const _c = self.vtable.ReportDataReceived(@ptrCast(self), pduData);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Input.IRemoteTextConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e7bb02a-183e-5e66-b5e4-3e6e5c570cf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        RegisterThread: *const fn(self: *anyopaque, threadId: u32) callconv(.winapi) HRESULT,
        UnregisterThread: *const fn(self: *anyopaque, threadId: u32) callconv(.winapi) HRESULT,
        ReportDataReceived: *const fn(self: *anyopaque, pduData: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteTextConnection2 = extern struct {
    vtable: *const VTable,
    pub fn ReportPredictedKeyEvent(self: *@This(), scanCode: u16, attributes: RemoteKeyEventAttributes) core.HResult!void {
        const _c = self.vtable.ReportPredictedKeyEvent(@ptrCast(self), scanCode, attributes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Input.IRemoteTextConnection2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05f99345-84c8-56c5-934f-73ea00f8c2d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportPredictedKeyEvent: *const fn(self: *anyopaque, scanCode: u16, attributes: RemoteKeyEventAttributes) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteTextConnectionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), connectionId: *Guid, pduForwarder: *RemoteTextConnectionDataHandler) core.HResult!*RemoteTextConnection {
        var _r: *RemoteTextConnection = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), connectionId, pduForwarder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Input.IRemoteTextConnectionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88e075c2-0cae-596c-850f-78d345cd728b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, connectionId: *Guid, pduForwarder: *RemoteTextConnectionDataHandler, _r: **RemoteTextConnection) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteTextConnectionFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), connectionId: *Guid, pduForwarder: *RemoteTextConnectionDataHandler, options: RemoteTextConnectionOptions) core.HResult!*RemoteTextConnection {
        var _r: *RemoteTextConnection = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), connectionId, pduForwarder, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Input.IRemoteTextConnectionFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9425c7d9-ed9b-5d00-99cc-b0b8dc9e4c60";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, connectionId: *Guid, pduForwarder: *RemoteTextConnectionDataHandler, options: RemoteTextConnectionOptions, _r: **RemoteTextConnection) callconv(.winapi) HRESULT,
    };
};
pub const RemoteKeyEventAttributes = enum(i32) {
    None = 0,
    KeyUp = 1,
    Repeat = 2,
    Extended = 4,
    Extended1 = 8,
};
pub const RemoteTextConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IRemoteTextConnection = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IRemoteTextConnection = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn RegisterThread(self: *@This(), threadId: u32) core.HResult!void {
        const this: *IRemoteTextConnection = @ptrCast(self);
        return try this.RegisterThread(threadId);
    }
    pub fn UnregisterThread(self: *@This(), threadId: u32) core.HResult!void {
        const this: *IRemoteTextConnection = @ptrCast(self);
        return try this.UnregisterThread(threadId);
    }
    pub fn ReportDataReceived(self: *@This(), pduData: [*]u8) core.HResult!void {
        const this: *IRemoteTextConnection = @ptrCast(self);
        return try this.ReportDataReceived(pduData);
    }
    pub fn ReportPredictedKeyEvent(self: *@This(), scanCode: u16, attributes: RemoteKeyEventAttributes) core.HResult!void {
        var this: ?*IRemoteTextConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteTextConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportPredictedKeyEvent(scanCode, attributes);
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
    pub fn CreateInstance(connectionId: *Guid, pduForwarder: *RemoteTextConnectionDataHandler) core.HResult!*RemoteTextConnection {
        const _f = @This().IRemoteTextConnectionFactoryCache.get();
        return try _f.CreateInstance(connectionId, pduForwarder);
    }
    pub fn CreateInstanceWithOptions(connectionId: *Guid, pduForwarder: *RemoteTextConnectionDataHandler, options: RemoteTextConnectionOptions) core.HResult!*RemoteTextConnection {
        const _f = @This().IRemoteTextConnectionFactory2Cache.get();
        return try _f.CreateInstance(connectionId, pduForwarder, options);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Input.RemoteTextConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteTextConnection.GUID;
    pub const IID: Guid = IRemoteTextConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteTextConnection.SIGNATURE);
    var _IRemoteTextConnectionFactoryCache: FactoryCache(IRemoteTextConnectionFactory, RUNTIME_NAME) = .{};
    var _IRemoteTextConnectionFactory2Cache: FactoryCache(IRemoteTextConnectionFactory2, RUNTIME_NAME) = .{};
};
pub const RemoteTextConnectionDataHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, pduData: [*]u8) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, pduData: [*]u8) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, pduData: [*]u8) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, pduData);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.Input.RemoteTextConnectionDataHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "099ffbc8-8bcb-41b5-b056-57e77021bf1b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, pduData: [*]u8, _r: *bool) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const RemoteTextConnectionOptions = enum(i32) {
    None = 0,
    EnablePredictedKeyReporting = 1,
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IAgileObject = @import("../../root.zig").IAgileObject;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IClosable = @import("../../Foundation.zig").IClosable;
const HSTRING = @import("../../root.zig").HSTRING;
