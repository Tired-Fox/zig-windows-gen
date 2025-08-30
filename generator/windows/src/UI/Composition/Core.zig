pub const CompositorController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompositor(self: *@This()) core.HResult!*Compositor {
        const this: *ICompositorController = @ptrCast(self);
        return try this.getCompositor();
    }
    pub fn Commit(self: *@This()) core.HResult!void {
        const this: *ICompositorController = @ptrCast(self);
        return try this.Commit();
    }
    pub fn EnsurePreviousCommitCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ICompositorController = @ptrCast(self);
        return try this.EnsurePreviousCommitCompletedAsync();
    }
    pub fn addCommitNeeded(self: *@This(), handler: *TypedEventHandler(CompositorController,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICompositorController = @ptrCast(self);
        return try this.addCommitNeeded(handler);
    }
    pub fn removeCommitNeeded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICompositorController = @ptrCast(self);
        return try this.removeCommitNeeded(token);
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
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICompositorController.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Core.CompositorController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositorController.GUID;
    pub const IID: Guid = ICompositorController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositorController.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ICompositorController = extern struct {
    vtable: *const VTable,
    pub fn getCompositor(self: *@This()) core.HResult!*Compositor {
        var _r: *Compositor = undefined;
        const _c = self.vtable.get_Compositor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Commit(self: *@This()) core.HResult!void {
        const _c = self.vtable.Commit(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnsurePreviousCommitCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.EnsurePreviousCommitCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCommitNeeded(self: *@This(), handler: *TypedEventHandler(CompositorController,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CommitNeeded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCommitNeeded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CommitNeeded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Core.ICompositorController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d75f35a-70a7-4395-ba2d-cef0b18399f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Compositor: *const fn(self: *anyopaque, _r: **Compositor) callconv(.winapi) HRESULT,
        Commit: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        EnsurePreviousCommitCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_CommitNeeded: *const fn(self: *anyopaque, handler: *TypedEventHandler(CompositorController,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CommitNeeded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const Compositor = @import("../Composition.zig").Compositor;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const IClosable = @import("../../Foundation.zig").IClosable;
const HSTRING = @import("../../root.zig").HSTRING;
