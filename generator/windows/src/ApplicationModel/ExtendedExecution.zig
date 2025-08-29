pub const ExtendedExecutionReason = enum(i32) {
    Unspecified = 0,
    LocationTracking = 1,
    SavingData = 2,
};
pub const ExtendedExecutionResult = enum(i32) {
    Allowed = 0,
    Denied = 1,
};
pub const ExtendedExecutionRevokedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!ExtendedExecutionRevokedReason {
        const this: *IExtendedExecutionRevokedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExtendedExecutionRevokedEventArgs.GUID;
    pub const IID: Guid = IExtendedExecutionRevokedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExtendedExecutionRevokedEventArgs.SIGNATURE);
};
pub const ExtendedExecutionRevokedReason = enum(i32) {
    Resumed = 0,
    SystemPolicy = 1,
};
pub const ExtendedExecutionSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!ExtendedExecutionReason {
        const this: *IExtendedExecutionSession = @ptrCast(self);
        return try this.getReason();
    }
    pub fn putReason(self: *@This(), value: ExtendedExecutionReason) core.HResult!void {
        const this: *IExtendedExecutionSession = @ptrCast(self);
        return try this.putReason(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IExtendedExecutionSession = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IExtendedExecutionSession = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getPercentProgress(self: *@This()) core.HResult!u32 {
        const this: *IExtendedExecutionSession = @ptrCast(self);
        return try this.getPercentProgress();
    }
    pub fn putPercentProgress(self: *@This(), value: u32) core.HResult!void {
        const this: *IExtendedExecutionSession = @ptrCast(self);
        return try this.putPercentProgress(value);
    }
    pub fn addRevoked(self: *@This(), handler: *TypedEventHandler(IInspectable,ExtendedExecutionRevokedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IExtendedExecutionSession = @ptrCast(self);
        return try this.addRevoked(handler);
    }
    pub fn removeRevoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IExtendedExecutionSession = @ptrCast(self);
        return try this.removeRevoked(token);
    }
    pub fn RequestExtensionAsync(self: *@This()) core.HResult!*IAsyncOperation(ExtendedExecutionResult) {
        const this: *IExtendedExecutionSession = @ptrCast(self);
        return try this.RequestExtensionAsync();
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
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IExtendedExecutionSession.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExtendedExecutionSession.GUID;
    pub const IID: Guid = IExtendedExecutionSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExtendedExecutionSession.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IExtendedExecutionRevokedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!ExtendedExecutionRevokedReason {
        var _r: ExtendedExecutionRevokedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionRevokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bfbc9f16-63b5-4c0b-aad6-828af5373ec3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *ExtendedExecutionRevokedReason) callconv(.winapi) HRESULT,
    };
};
pub const IExtendedExecutionSession = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!ExtendedExecutionReason {
        var _r: ExtendedExecutionReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReason(self: *@This(), value: ExtendedExecutionReason) core.HResult!void {
        const _c = self.vtable.put_Reason(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getPercentProgress(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PercentProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPercentProgress(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_PercentProgress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRevoked(self: *@This(), handler: *TypedEventHandler(IInspectable,ExtendedExecutionRevokedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Revoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRevoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Revoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestExtensionAsync(self: *@This()) core.HResult!*IAsyncOperation(ExtendedExecutionResult) {
        var _r: *IAsyncOperation(ExtendedExecutionResult) = undefined;
        const _c = self.vtable.RequestExtensionAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af908a2d-118b-48f1-9308-0c4fc41e200f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *ExtendedExecutionReason) callconv(.winapi) HRESULT,
        put_Reason: *const fn(self: *anyopaque, value: ExtendedExecutionReason) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PercentProgress: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_PercentProgress: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        add_Revoked: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,ExtendedExecutionRevokedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Revoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        RequestExtensionAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ExtendedExecutionResult)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
pub const Foreground = @import("./ExtendedExecution/Foreground.zig");
