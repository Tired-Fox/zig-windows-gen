pub const INamedPolicyData = extern struct {
    vtable: *const VTable,
    pub fn getArea(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Area(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!NamedPolicyKind {
        var _r: NamedPolicyKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsManaged(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsManaged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsUserPolicy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUserPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBoolean(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetBoolean(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBinary(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetBinary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInt32(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetInt32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInt64(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.GetInt64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), changedHandler: *TypedEventHandler(NamedPolicyData,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), changedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Management.Policies.INamedPolicyData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38dcb198-95ac-4077-a643-8078cae26400";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Area: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *NamedPolicyKind) callconv(.winapi) HRESULT,
        get_IsManaged: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsUserPolicy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        GetBoolean: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetBinary: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        GetInt32: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetInt64: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        GetString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, changedHandler: *TypedEventHandler(NamedPolicyData,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const INamedPolicyStatics = extern struct {
    vtable: *const VTable,
    pub fn GetPolicyFromPath(self: *@This(), area: HSTRING, name: HSTRING) core.HResult!*NamedPolicyData {
        var _r: *NamedPolicyData = undefined;
        const _c = self.vtable.GetPolicyFromPath(@ptrCast(self), area, name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPolicyFromPathForUser(self: *@This(), user: *User, area: HSTRING, name: HSTRING) core.HResult!*NamedPolicyData {
        var _r: *NamedPolicyData = undefined;
        const _c = self.vtable.GetPolicyFromPathForUser(@ptrCast(self), user, area, name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Policies.INamedPolicyStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f793be7-76c4-4058-8cad-67662cd05f0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPolicyFromPath: *const fn(self: *anyopaque, area: HSTRING, name: HSTRING, _r: **NamedPolicyData) callconv(.winapi) HRESULT,
        GetPolicyFromPathForUser: *const fn(self: *anyopaque, user: *User, area: HSTRING, name: HSTRING, _r: **NamedPolicyData) callconv(.winapi) HRESULT,
    };
};
pub const NamedPolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetPolicyFromPath(area: HSTRING, name: HSTRING) core.HResult!*NamedPolicyData {
        const _f = @This().INamedPolicyStaticsCache.get();
        return try _f.GetPolicyFromPath(area, name);
    }
    pub fn GetPolicyFromPathForUser(user: *User, area: HSTRING, name: HSTRING) core.HResult!*NamedPolicyData {
        const _f = @This().INamedPolicyStaticsCache.get();
        return try _f.GetPolicyFromPathForUser(user, area, name);
    }
    pub const NAME: []const u8 = "Windows.Management.Policies.NamedPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _INamedPolicyStaticsCache: FactoryCache(INamedPolicyStatics, RUNTIME_NAME) = .{};
};
pub const NamedPolicyData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArea(self: *@This()) core.HResult!HSTRING {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.getArea();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.getName();
    }
    pub fn getKind(self: *@This()) core.HResult!NamedPolicyKind {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getIsManaged(self: *@This()) core.HResult!bool {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.getIsManaged();
    }
    pub fn getIsUserPolicy(self: *@This()) core.HResult!bool {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.getIsUserPolicy();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.getUser();
    }
    pub fn GetBoolean(self: *@This()) core.HResult!bool {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.GetBoolean();
    }
    pub fn GetBinary(self: *@This()) core.HResult!*IBuffer {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.GetBinary();
    }
    pub fn GetInt32(self: *@This()) core.HResult!i32 {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.GetInt32();
    }
    pub fn GetInt64(self: *@This()) core.HResult!i64 {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.GetInt64();
    }
    pub fn GetString(self: *@This()) core.HResult!HSTRING {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.GetString();
    }
    pub fn addChanged(self: *@This(), changedHandler: *TypedEventHandler(NamedPolicyData,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.addChanged(changedHandler);
    }
    pub fn removeChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *INamedPolicyData = @ptrCast(self);
        return try this.removeChanged(cookie);
    }
    pub const NAME: []const u8 = "Windows.Management.Policies.NamedPolicyData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INamedPolicyData.GUID;
    pub const IID: Guid = INamedPolicyData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INamedPolicyData.SIGNATURE);
};
pub const NamedPolicyKind = enum(i32) {
    Invalid = 0,
    Binary = 1,
    Boolean = 2,
    Int32 = 3,
    Int64 = 4,
    String = 5,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const User = @import("../System.zig").User;
const HSTRING = @import("../root.zig").HSTRING;
