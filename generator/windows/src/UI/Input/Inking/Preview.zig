pub const IPalmRejectionDelayZonePreview = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Preview.IPalmRejectionDelayZonePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62b496cb-539d-5343-a65f-41f5300ec70c";
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
pub const IPalmRejectionDelayZonePreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForVisual(self: *@This(), inputPanelVisual: *Visual, inputPanelRect: Rect) core.HResult!*PalmRejectionDelayZonePreview {
        var _r: *PalmRejectionDelayZonePreview = undefined;
        const _c = self.vtable.CreateForVisual(@ptrCast(self), inputPanelVisual, inputPanelRect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForVisualWithViewportVisualWithViewportRect(self: *@This(), inputPanelVisual: *Visual, inputPanelRect: Rect, viewportVisual: *Visual, viewportRect: Rect) core.HResult!*PalmRejectionDelayZonePreview {
        var _r: *PalmRejectionDelayZonePreview = undefined;
        const _c = self.vtable.CreateForVisualWithViewportVisualWithViewportRect(@ptrCast(self), inputPanelVisual, inputPanelRect, viewportVisual, viewportRect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Preview.IPalmRejectionDelayZonePreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cdef5ee0-93d0-53a9-8f0e-9a379f8f7530";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForVisual: *const fn(self: *anyopaque, inputPanelVisual: *Visual, inputPanelRect: Rect, _r: **PalmRejectionDelayZonePreview) callconv(.winapi) HRESULT,
        CreateForVisualWithViewportVisualWithViewportRect: *const fn(self: *anyopaque, inputPanelVisual: *Visual, inputPanelRect: Rect, viewportVisual: *Visual, viewportRect: Rect, _r: **PalmRejectionDelayZonePreview) callconv(.winapi) HRESULT,
    };
};
pub const PalmRejectionDelayZonePreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateForVisual(inputPanelVisual: *Visual, inputPanelRect: Rect) core.HResult!*PalmRejectionDelayZonePreview {
        const factory = @This().IPalmRejectionDelayZonePreviewStaticsCache.get();
        return try factory.CreateForVisual(inputPanelVisual, inputPanelRect);
    }
    pub fn CreateForVisualWithViewportVisualWithViewportRect(inputPanelVisual: *Visual, inputPanelRect: Rect, viewportVisual: *Visual, viewportRect: Rect) core.HResult!*PalmRejectionDelayZonePreview {
        const factory = @This().IPalmRejectionDelayZonePreviewStaticsCache.get();
        return try factory.CreateForVisualWithViewportVisualWithViewportRect(inputPanelVisual, inputPanelRect, viewportVisual, viewportRect);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Inking.Preview.PalmRejectionDelayZonePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPalmRejectionDelayZonePreview.GUID;
    pub const IID: Guid = IPalmRejectionDelayZonePreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPalmRejectionDelayZonePreview.SIGNATURE);
    var _IPalmRejectionDelayZonePreviewStaticsCache: FactoryCache(IPalmRejectionDelayZonePreviewStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../../root.zig").IUnknown;
const Guid = @import("../../../root.zig").Guid;
const HRESULT = @import("../../../root.zig").HRESULT;
const core = @import("../../../root.zig").core;
const Visual = @import("../../Composition.zig").Visual;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const Rect = @import("../../../Foundation.zig").Rect;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const IClosable = @import("../../../Foundation.zig").IClosable;
const HSTRING = @import("../../../root.zig").HSTRING;
