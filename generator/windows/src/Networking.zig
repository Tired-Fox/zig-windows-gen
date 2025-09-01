pub const DomainNameType = enum(i32) {
    Suffix = 0,
    FullyQualified = 1,
};
pub const EndpointPair = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalHostName(self: *@This()) core.HResult!*HostName {
        const this: *IEndpointPair = @ptrCast(self);
        return try this.getLocalHostName();
    }
    pub fn putLocalHostName(self: *@This(), value: *HostName) core.HResult!void {
        const this: *IEndpointPair = @ptrCast(self);
        return try this.putLocalHostName(value);
    }
    pub fn getLocalServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IEndpointPair = @ptrCast(self);
        return try this.getLocalServiceName();
    }
    pub fn putLocalServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEndpointPair = @ptrCast(self);
        return try this.putLocalServiceName(value);
    }
    pub fn getRemoteHostName(self: *@This()) core.HResult!*HostName {
        const this: *IEndpointPair = @ptrCast(self);
        return try this.getRemoteHostName();
    }
    pub fn putRemoteHostName(self: *@This(), value: *HostName) core.HResult!void {
        const this: *IEndpointPair = @ptrCast(self);
        return try this.putRemoteHostName(value);
    }
    pub fn getRemoteServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IEndpointPair = @ptrCast(self);
        return try this.getRemoteServiceName();
    }
    pub fn putRemoteServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEndpointPair = @ptrCast(self);
        return try this.putRemoteServiceName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateEndpointPair(localHostName: *HostName, localServiceName: HSTRING, remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*EndpointPair {
        const _f = @This().IEndpointPairFactoryCache.get();
        return try _f.CreateEndpointPair(localHostName, localServiceName, remoteHostName, remoteServiceName);
    }
    pub const NAME: []const u8 = "Windows.Networking.EndpointPair";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEndpointPair.GUID;
    pub const IID: Guid = IEndpointPair.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEndpointPair.SIGNATURE);
    var _IEndpointPairFactoryCache: FactoryCache(IEndpointPairFactory, RUNTIME_NAME) = .{};
};
pub const HostName = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIPInformation(self: *@This()) core.HResult!*IPInformation {
        const this: *IHostName = @ptrCast(self);
        return try this.getIPInformation();
    }
    pub fn getRawName(self: *@This()) core.HResult!HSTRING {
        const this: *IHostName = @ptrCast(self);
        return try this.getRawName();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IHostName = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getCanonicalName(self: *@This()) core.HResult!HSTRING {
        const this: *IHostName = @ptrCast(self);
        return try this.getCanonicalName();
    }
    pub fn getType(self: *@This()) core.HResult!HostNameType {
        const this: *IHostName = @ptrCast(self);
        return try this.getType();
    }
    pub fn IsEqual(self: *@This(), hostName: *HostName) core.HResult!bool {
        const this: *IHostName = @ptrCast(self);
        return try this.IsEqual(hostName);
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
    pub fn CreateHostName(hostName: HSTRING) core.HResult!*HostName {
        const _f = @This().IHostNameFactoryCache.get();
        return try _f.CreateHostName(hostName);
    }
    pub fn Compare(value1: HSTRING, value2: HSTRING) core.HResult!i32 {
        const _f = @This().IHostNameStaticsCache.get();
        return try _f.Compare(value1, value2);
    }
    pub const NAME: []const u8 = "Windows.Networking.HostName";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHostName.GUID;
    pub const IID: Guid = IHostName.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHostName.SIGNATURE);
    var _IHostNameFactoryCache: FactoryCache(IHostNameFactory, RUNTIME_NAME) = .{};
    var _IHostNameStaticsCache: FactoryCache(IHostNameStatics, RUNTIME_NAME) = .{};
};
pub const HostNameSortOptions = enum(i32) {
    None = 0,
    OptimizeForLongConnections = 2,
};
pub const HostNameType = enum(i32) {
    DomainName = 0,
    Ipv4 = 1,
    Ipv6 = 2,
    Bluetooth = 3,
};
pub const IEndpointPair = extern struct {
    vtable: *const VTable,
    pub fn getLocalHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_LocalHostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocalHostName(self: *@This(), value: *HostName) core.HResult!void {
        const _c = self.vtable.put_LocalHostName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocalServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocalServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LocalServiceName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemoteHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_RemoteHostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteHostName(self: *@This(), value: *HostName) core.HResult!void {
        const _c = self.vtable.put_RemoteHostName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemoteServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteServiceName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.IEndpointPair";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33a0aa36-f8fa-4b30-b856-76517c3bd06d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalHostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        put_LocalHostName: *const fn(self: *anyopaque, value: *HostName) callconv(.winapi) HRESULT,
        get_LocalServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LocalServiceName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RemoteHostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        put_RemoteHostName: *const fn(self: *anyopaque, value: *HostName) callconv(.winapi) HRESULT,
        get_RemoteServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteServiceName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IEndpointPairFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateEndpointPair(self: *@This(), localHostName: *HostName, localServiceName: HSTRING, remoteHostName: *HostName, remoteServiceName: HSTRING) core.HResult!*EndpointPair {
        var _r: *EndpointPair = undefined;
        const _c = self.vtable.CreateEndpointPair(@ptrCast(self), localHostName, localServiceName, remoteHostName, remoteServiceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.IEndpointPairFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b609d971-64e0-442b-aa6f-cc8c8f181f78";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateEndpointPair: *const fn(self: *anyopaque, localHostName: *HostName, localServiceName: HSTRING, remoteHostName: *HostName, remoteServiceName: HSTRING, _r: **EndpointPair) callconv(.winapi) HRESULT,
    };
};
pub const IHostName = extern struct {
    vtable: *const VTable,
    pub fn getIPInformation(self: *@This()) core.HResult!*IPInformation {
        var _r: *IPInformation = undefined;
        const _c = self.vtable.get_IPInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RawName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanonicalName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CanonicalName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!HostNameType {
        var _r: HostNameType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEqual(self: *@This(), hostName: *HostName) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEqual(@ptrCast(self), hostName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.IHostName";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf8ecaad-ed96-49a7-9084-d416cae88dcb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IPInformation: *const fn(self: *anyopaque, _r: **IPInformation) callconv(.winapi) HRESULT,
        get_RawName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CanonicalName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *HostNameType) callconv(.winapi) HRESULT,
        IsEqual: *const fn(self: *anyopaque, hostName: *HostName, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHostNameFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateHostName(self: *@This(), hostName: HSTRING) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.CreateHostName(@ptrCast(self), hostName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.IHostNameFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "458c23ed-712f-4576-adf1-c20b2c643558";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateHostName: *const fn(self: *anyopaque, hostName: HSTRING, _r: **HostName) callconv(.winapi) HRESULT,
    };
};
pub const IHostNameStatics = extern struct {
    vtable: *const VTable,
    pub fn Compare(self: *@This(), value1: HSTRING, value2: HSTRING) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.Compare(@ptrCast(self), value1, value2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.IHostNameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f68cd4bf-a388-4e8b-91ea-54dd6dd901c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Compare: *const fn(self: *anyopaque, value1: HSTRING, value2: HSTRING, _r: *i32) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("./root.zig").IUnknown;
const Guid = @import("./root.zig").Guid;
const HRESULT = @import("./root.zig").HRESULT;
const core = @import("./root.zig").core;
const FactoryCache = @import("./core.zig").FactoryCache;
const IInspectable = @import("./Foundation.zig").IInspectable;
const IPInformation = @import("./Networking/Connectivity.zig").IPInformation;
const IStringable = @import("./Foundation.zig").IStringable;
const TrustLevel = @import("./root.zig").TrustLevel;
const HSTRING = @import("./root.zig").HSTRING;
pub const BackgroundTransfer = @import("./Networking/BackgroundTransfer.zig");
pub const Connectivity = @import("./Networking/Connectivity.zig");
pub const NetworkOperators = @import("./Networking/NetworkOperators.zig");
pub const Proximity = @import("./Networking/Proximity.zig");
pub const PushNotifications = @import("./Networking/PushNotifications.zig");
pub const Sockets = @import("./Networking/Sockets.zig");
pub const Vpn = @import("./Networking/Vpn.zig");
pub const XboxLive = @import("./Networking/XboxLive.zig");
