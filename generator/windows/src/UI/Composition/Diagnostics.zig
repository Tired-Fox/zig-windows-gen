pub const CompositionDebugHeatMaps = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Hide(self: *@This(), subtree: *Visual) core.HResult!void {
        const this: *ICompositionDebugHeatMaps = @ptrCast(self);
        return try this.Hide(subtree);
    }
    pub fn ShowMemoryUsage(self: *@This(), subtree: *Visual) core.HResult!void {
        const this: *ICompositionDebugHeatMaps = @ptrCast(self);
        return try this.ShowMemoryUsage(subtree);
    }
    pub fn ShowOverdraw(self: *@This(), subtree: *Visual, contentKinds: CompositionDebugOverdrawContentKinds) core.HResult!void {
        const this: *ICompositionDebugHeatMaps = @ptrCast(self);
        return try this.ShowOverdraw(subtree, contentKinds);
    }
    pub fn ShowRedraw(self: *@This(), subtree: *Visual) core.HResult!void {
        const this: *ICompositionDebugHeatMaps = @ptrCast(self);
        return try this.ShowRedraw(subtree);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Diagnostics.CompositionDebugHeatMaps";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionDebugHeatMaps.GUID;
    pub const IID: Guid = ICompositionDebugHeatMaps.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionDebugHeatMaps.SIGNATURE);
};
pub const CompositionDebugOverdrawContentKinds = enum(i32) {
    None = 0,
    OffscreenRendered = 1,
    Colors = 2,
    Effects = 4,
    Shadows = 8,
    Lights = 16,
    Surfaces = 32,
    SwapChains = 64,
    All = -1,
};
pub const CompositionDebugSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHeatMaps(self: *@This()) core.HResult!*CompositionDebugHeatMaps {
        const this: *ICompositionDebugSettings = @ptrCast(self);
        return try this.getHeatMaps();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryGetSettings(compositor: *Compositor) core.HResult!*CompositionDebugSettings {
        const _f = @This().ICompositionDebugSettingsStaticsCache.get();
        return try _f.TryGetSettings(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Diagnostics.CompositionDebugSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionDebugSettings.GUID;
    pub const IID: Guid = ICompositionDebugSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionDebugSettings.SIGNATURE);
    var _ICompositionDebugSettingsStaticsCache: FactoryCache(ICompositionDebugSettingsStatics, RUNTIME_NAME) = .{};
};
pub const ICompositionDebugHeatMaps = extern struct {
    vtable: *const VTable,
    pub fn Hide(self: *@This(), subtree: *Visual) core.HResult!void {
        const _c = self.vtable.Hide(@ptrCast(self), subtree);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowMemoryUsage(self: *@This(), subtree: *Visual) core.HResult!void {
        const _c = self.vtable.ShowMemoryUsage(@ptrCast(self), subtree);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowOverdraw(self: *@This(), subtree: *Visual, contentKinds: CompositionDebugOverdrawContentKinds) core.HResult!void {
        const _c = self.vtable.ShowOverdraw(@ptrCast(self), subtree, contentKinds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowRedraw(self: *@This(), subtree: *Visual) core.HResult!void {
        const _c = self.vtable.ShowRedraw(@ptrCast(self), subtree);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Diagnostics.ICompositionDebugHeatMaps";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e49c90ac-2ff3-5805-718c-b725ee07650f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Hide: *const fn(self: *anyopaque, subtree: *Visual) callconv(.winapi) HRESULT,
        ShowMemoryUsage: *const fn(self: *anyopaque, subtree: *Visual) callconv(.winapi) HRESULT,
        ShowOverdraw: *const fn(self: *anyopaque, subtree: *Visual, contentKinds: CompositionDebugOverdrawContentKinds) callconv(.winapi) HRESULT,
        ShowRedraw: *const fn(self: *anyopaque, subtree: *Visual) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionDebugSettings = extern struct {
    vtable: *const VTable,
    pub fn getHeatMaps(self: *@This()) core.HResult!*CompositionDebugHeatMaps {
        var _r: *CompositionDebugHeatMaps = undefined;
        const _c = self.vtable.get_HeatMaps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Diagnostics.ICompositionDebugSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2831987e-1d82-4d38-b7b7-efd11c7bc3d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HeatMaps: *const fn(self: *anyopaque, _r: **CompositionDebugHeatMaps) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionDebugSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn TryGetSettings(self: *@This(), compositor: *Compositor) core.HResult!*CompositionDebugSettings {
        var _r: *CompositionDebugSettings = undefined;
        const _c = self.vtable.TryGetSettings(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Diagnostics.ICompositionDebugSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64ec1f1e-6af8-4af8-b814-c870fd5a9505";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetSettings: *const fn(self: *anyopaque, compositor: *Compositor, _r: **CompositionDebugSettings) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const Visual = @import("../Composition.zig").Visual;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Compositor = @import("../Composition.zig").Compositor;
