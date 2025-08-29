pub const IRadialControllerIndependentInputSource = extern struct {
    vtable: *const VTable,
    pub fn getController(self: *@This()) core.HResult!*RadialController {
        var _r: *RadialController = undefined;
        const _c = self.vtable.get_Controller(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        var _r: *CoreDispatcher = undefined;
        const _c = self.vtable.get_Dispatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Core.IRadialControllerIndependentInputSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef6-4cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Controller: *const fn(self: *anyopaque, _r: **RadialController) callconv(.winapi) HRESULT,
        get_Dispatcher: *const fn(self: *anyopaque, _r: **CoreDispatcher) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerIndependentInputSource2 = extern struct {
    vtable: *const VTable,
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.get_DispatcherQueue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Core.IRadialControllerIndependentInputSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7073aad8-35f3-4eeb-8751-be4d0a66faf4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DispatcherQueue: *const fn(self: *anyopaque, _r: **DispatcherQueue) callconv(.winapi) HRESULT,
    };
};
pub const IRadialControllerIndependentInputSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForView(self: *@This(), view: *CoreApplicationView) core.HResult!*RadialControllerIndependentInputSource {
        var _r: *RadialControllerIndependentInputSource = undefined;
        const _c = self.vtable.CreateForView(@ptrCast(self), view, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Core.IRadialControllerIndependentInputSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef5-4cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForView: *const fn(self: *anyopaque, view: *CoreApplicationView, _r: **RadialControllerIndependentInputSource) callconv(.winapi) HRESULT,
    };
};
pub const RadialControllerIndependentInputSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getController(self: *@This()) core.HResult!*RadialController {
        const this: *IRadialControllerIndependentInputSource = @ptrCast(self);
        return try this.getController();
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        const this: *IRadialControllerIndependentInputSource = @ptrCast(self);
        return try this.getDispatcher();
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var this: ?*IRadialControllerIndependentInputSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRadialControllerIndependentInputSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDispatcherQueue();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateForView(view: *CoreApplicationView) core.HResult!*RadialControllerIndependentInputSource {
        const factory = @This().IRadialControllerIndependentInputSourceStaticsCache.get();
        return try factory.CreateForView(view);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Core.RadialControllerIndependentInputSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadialControllerIndependentInputSource.GUID;
    pub const IID: Guid = IRadialControllerIndependentInputSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadialControllerIndependentInputSource.SIGNATURE);
    var _IRadialControllerIndependentInputSourceStaticsCache: FactoryCache(IRadialControllerIndependentInputSourceStatics, RUNTIME_NAME) = .{};
};
const RadialController = @import("../Input.zig").RadialController;
const DispatcherQueue = @import("../../System.zig").DispatcherQueue;
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const CoreDispatcher = @import("../Core.zig").CoreDispatcher;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const CoreApplicationView = @import("../../ApplicationModel/Core.zig").CoreApplicationView;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
