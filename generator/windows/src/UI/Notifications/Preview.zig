pub const IToastOcclusionManagerPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn SetToastWindowMargin(self: *@This(), appWindowId: WindowId, margin: f64) core.HResult!void {
        const _c = self.vtable.SetToastWindowMargin(@ptrCast(self), appWindowId, margin);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.Preview.IToastOcclusionManagerPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "507e5c83-50f9-5412-8953-b65c18cfab12";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetToastWindowMargin: *const fn(self: *anyopaque, appWindowId: WindowId, margin: f64) callconv(.winapi) HRESULT,
    };
};
pub const ToastOcclusionManagerPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SetToastWindowMargin(appWindowId: WindowId, margin: f64) core.HResult!void {
        const factory = @This().IToastOcclusionManagerPreviewStaticsCache.get();
        return try factory.SetToastWindowMargin(appWindowId, margin);
    }
    pub const NAME: []const u8 = "Windows.UI.Notifications.Preview.ToastOcclusionManagerPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IToastOcclusionManagerPreviewStaticsCache: FactoryCache(IToastOcclusionManagerPreviewStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const WindowId = @import("../../UI.zig").WindowId;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
