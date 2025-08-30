pub const ExtendedExecutionForegroundReason = enum(i32) {
    Unspecified = 0,
    SavingData = 1,
    BackgroundAudio = 2,
    Unconstrained = 3,
};
pub const ExtendedExecutionForegroundResult = enum(i32) {
    Allowed = 0,
    Denied = 1,
};
pub const ExtendedExecutionForegroundRevokedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!ExtendedExecutionForegroundRevokedReason {
        const this: *IExtendedExecutionForegroundRevokedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExtendedExecutionForegroundRevokedEventArgs.GUID;
    pub const IID: Guid = IExtendedExecutionForegroundRevokedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExtendedExecutionForegroundRevokedEventArgs.SIGNATURE);
};
pub const ExtendedExecutionForegroundRevokedReason = enum(i32) {
    Resumed = 0,
    SystemPolicy = 1,
};
pub const ExtendedExecutionForegroundSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IExtendedExecutionForegroundSession = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IExtendedExecutionForegroundSession = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn addRevoked(self: *@This(), handler: *TypedEventHandler(IInspectable,ExtendedExecutionForegroundRevokedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IExtendedExecutionForegroundSession = @ptrCast(self);
        return try this.addRevoked(handler);
    }
    pub fn removeRevoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IExtendedExecutionForegroundSession = @ptrCast(self);
        return try this.removeRevoked(token);
    }
    pub fn RequestExtensionAsync(self: *@This()) core.HResult!*IAsyncOperation(ExtendedExecutionForegroundResult) {
        const this: *IExtendedExecutionForegroundSession = @ptrCast(self);
        return try this.RequestExtensionAsync();
    }
    pub fn getReason(self: *@This()) core.HResult!ExtendedExecutionForegroundReason {
        const this: *IExtendedExecutionForegroundSession = @ptrCast(self);
        return try this.getReason();
    }
    pub fn putReason(self: *@This(), value: ExtendedExecutionForegroundReason) core.HResult!void {
        const this: *IExtendedExecutionForegroundSession = @ptrCast(self);
        return try this.putReason(value);
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
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IExtendedExecutionForegroundSession.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExtendedExecutionForegroundSession.GUID;
    pub const IID: Guid = IExtendedExecutionForegroundSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExtendedExecutionForegroundSession.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IExtendedExecutionForegroundRevokedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!ExtendedExecutionForegroundRevokedReason {
        var _r: ExtendedExecutionForegroundRevokedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundRevokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b07cd940-9557-aea4-2c99-bdd56d9be461";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *ExtendedExecutionForegroundRevokedReason) callconv(.winapi) HRESULT,
    };
};
pub const IExtendedExecutionForegroundSession = extern struct {
    vtable: *const VTable,
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRevoked(self: *@This(), handler: *TypedEventHandler(IInspectable,ExtendedExecutionForegroundRevokedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Revoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRevoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Revoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestExtensionAsync(self: *@This()) core.HResult!*IAsyncOperation(ExtendedExecutionForegroundResult) {
        var _r: *IAsyncOperation(ExtendedExecutionForegroundResult) = undefined;
        const _c = self.vtable.RequestExtensionAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReason(self: *@This()) core.HResult!ExtendedExecutionForegroundReason {
        var _r: ExtendedExecutionForegroundReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReason(self: *@This(), value: ExtendedExecutionForegroundReason) core.HResult!void {
        const _c = self.vtable.put_Reason(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbf440e1-9d10-4201-b01e-c83275296f2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        add_Revoked: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,ExtendedExecutionForegroundRevokedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Revoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        RequestExtensionAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ExtendedExecutionForegroundResult)) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *ExtendedExecutionForegroundReason) callconv(.winapi) HRESULT,
        put_Reason: *const fn(self: *anyopaque, value: ExtendedExecutionForegroundReason) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../../core.zig").FactoryCache;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const IClosable = @import("../../Foundation.zig").IClosable;
const HSTRING = @import("../../root.zig").HSTRING;
