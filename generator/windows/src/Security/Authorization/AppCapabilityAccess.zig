pub const AppCapability = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCapabilityName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppCapability = @ptrCast(self);
        return try this.getCapabilityName();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IAppCapability = @ptrCast(self);
        return try this.getUser();
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(AppCapabilityAccessStatus) {
        const this: *IAppCapability = @ptrCast(self);
        return try this.RequestAccessAsync();
    }
    pub fn CheckAccess(self: *@This()) core.HResult!AppCapabilityAccessStatus {
        const this: *IAppCapability = @ptrCast(self);
        return try this.CheckAccess();
    }
    pub fn addAccessChanged(self: *@This(), handler: *TypedEventHandler(AppCapability,AppCapabilityAccessChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppCapability = @ptrCast(self);
        return try this.addAccessChanged(handler);
    }
    pub fn removeAccessChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppCapability = @ptrCast(self);
        return try this.removeAccessChanged(token);
    }
    pub fn getDisplayMessage(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppCapability2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCapability2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayMessage();
    }
    pub fn putDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppCapability2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCapability2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayMessage(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestAccessForCapabilitiesAsync(capabilityNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMapView(HSTRING,AppCapabilityAccessStatus)) {
        const factory = @This().IAppCapabilityStaticsCache.get();
        return try factory.RequestAccessForCapabilitiesAsync(capabilityNames);
    }
    pub fn RequestAccessForCapabilitiesForUserAsync(user: *User, capabilityNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMapView(HSTRING,AppCapabilityAccessStatus)) {
        const factory = @This().IAppCapabilityStaticsCache.get();
        return try factory.RequestAccessForCapabilitiesForUserAsync(user, capabilityNames);
    }
    pub fn Create(capabilityName: HSTRING) core.HResult!*AppCapability {
        const factory = @This().IAppCapabilityStaticsCache.get();
        return try factory.Create(capabilityName);
    }
    pub fn CreateWithProcessIdForUser(user: *User, capabilityName: HSTRING, pid: u32) core.HResult!*AppCapability {
        const factory = @This().IAppCapabilityStaticsCache.get();
        return try factory.CreateWithProcessIdForUser(user, capabilityName, pid);
    }
    pub const NAME: []const u8 = "Windows.Security.Authorization.AppCapabilityAccess.AppCapability";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCapability.GUID;
    pub const IID: Guid = IAppCapability.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCapability.SIGNATURE);
    var _IAppCapabilityStaticsCache: FactoryCache(IAppCapabilityStatics, RUNTIME_NAME) = .{};
};
pub const AppCapabilityAccessChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Security.Authorization.AppCapabilityAccess.AppCapabilityAccessChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCapabilityAccessChangedEventArgs.GUID;
    pub const IID: Guid = IAppCapabilityAccessChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCapabilityAccessChangedEventArgs.SIGNATURE);
};
pub const AppCapabilityAccessStatus = enum(i32) {
    DeniedBySystem = 0,
    NotDeclaredByApp = 1,
    DeniedByUser = 2,
    UserPromptRequired = 3,
    Allowed = 4,
};
pub const IAppCapability = extern struct {
    vtable: *const VTable,
    pub fn getCapabilityName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CapabilityName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(AppCapabilityAccessStatus) {
        var _r: *IAsyncOperation(AppCapabilityAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckAccess(self: *@This()) core.HResult!AppCapabilityAccessStatus {
        var _r: AppCapabilityAccessStatus = undefined;
        const _c = self.vtable.CheckAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAccessChanged(self: *@This(), handler: *TypedEventHandler(AppCapability,AppCapabilityAccessChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccessChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccessChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccessChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authorization.AppCapabilityAccess.IAppCapability";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c49d915-8a2a-4295-9437-2df7c396aff4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CapabilityName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AppCapabilityAccessStatus)) callconv(.winapi) HRESULT,
        CheckAccess: *const fn(self: *anyopaque, _r: *AppCapabilityAccessStatus) callconv(.winapi) HRESULT,
        add_AccessChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppCapability,AppCapabilityAccessChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccessChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppCapability2 = extern struct {
    vtable: *const VTable,
    pub fn getDisplayMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Authorization.AppCapabilityAccess.IAppCapability2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "11c7ccb6-c74f-50a3-b960-88008767d939";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayMessage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppCapabilityAccessChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Security.Authorization.AppCapabilityAccess.IAppCapabilityAccessChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a578d15-bdd7-457e-8cca-6f53bd2e5944";
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
pub const IAppCapabilityStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessForCapabilitiesAsync(self: *@This(), capabilityNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMapView(HSTRING,AppCapabilityAccessStatus)) {
        var _r: *IAsyncOperation(IMapView(HSTRING,AppCapabilityAccessStatus)) = undefined;
        const _c = self.vtable.RequestAccessForCapabilitiesAsync(@ptrCast(self), capabilityNames, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessForCapabilitiesForUserAsync(self: *@This(), user: *User, capabilityNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMapView(HSTRING,AppCapabilityAccessStatus)) {
        var _r: *IAsyncOperation(IMapView(HSTRING,AppCapabilityAccessStatus)) = undefined;
        const _c = self.vtable.RequestAccessForCapabilitiesForUserAsync(@ptrCast(self), user, capabilityNames, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Create(self: *@This(), capabilityName: HSTRING) core.HResult!*AppCapability {
        var _r: *AppCapability = undefined;
        const _c = self.vtable.Create(@ptrCast(self), capabilityName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithProcessIdForUser(self: *@This(), user: *User, capabilityName: HSTRING, pid: u32) core.HResult!*AppCapability {
        var _r: *AppCapability = undefined;
        const _c = self.vtable.CreateWithProcessIdForUser(@ptrCast(self), user, capabilityName, pid, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authorization.AppCapabilityAccess.IAppCapabilityStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c353e2a-46ee-44e5-af3d-6ad3fc49bd22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessForCapabilitiesAsync: *const fn(self: *anyopaque, capabilityNames: *IIterable(HSTRING), _r: **IAsyncOperation(IMapView(HSTRING,AppCapabilityAccessStatus))) callconv(.winapi) HRESULT,
        RequestAccessForCapabilitiesForUserAsync: *const fn(self: *anyopaque, user: *User, capabilityNames: *IIterable(HSTRING), _r: **IAsyncOperation(IMapView(HSTRING,AppCapabilityAccessStatus))) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, capabilityName: HSTRING, _r: **AppCapability) callconv(.winapi) HRESULT,
        CreateWithProcessIdForUser: *const fn(self: *anyopaque, user: *User, capabilityName: HSTRING, pid: u32, _r: **AppCapability) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const FactoryCache = @import("../../core.zig").FactoryCache;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const User = @import("../../System.zig").User;
const HSTRING = @import("../../root.zig").HSTRING;
