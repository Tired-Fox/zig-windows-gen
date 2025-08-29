pub const IWindowManagementPreview = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.Preview.IWindowManagementPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ef55b0d-561d-513c-a67c-2c02b69cef41";
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
pub const IWindowManagementPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn SetPreferredMinSize(self: *@This(), window: *AppWindow, preferredFrameMinSize: Size) core.HResult!void {
        const _c = self.vtable.SetPreferredMinSize(@ptrCast(self), window, preferredFrameMinSize);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.Preview.IWindowManagementPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f9725c6-c004-5a23-8fd2-8d092ce2704a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetPreferredMinSize: *const fn(self: *anyopaque, window: *AppWindow, preferredFrameMinSize: Size) callconv(.winapi) HRESULT,
    };
};
pub const WindowManagementPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SetPreferredMinSize(window: *AppWindow, preferredFrameMinSize: Size) core.HResult!void {
        const factory = @This().IWindowManagementPreviewStaticsCache.get();
        return try factory.SetPreferredMinSize(window, preferredFrameMinSize);
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.Preview.WindowManagementPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowManagementPreview.GUID;
    pub const IID: Guid = IWindowManagementPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowManagementPreview.SIGNATURE);
    var _IWindowManagementPreviewStaticsCache: FactoryCache(IWindowManagementPreviewStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const AppWindow = @import("../WindowManagement.zig").AppWindow;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Size = @import("../../Foundation.zig").Size;
const HSTRING = @import("../../root.zig").HSTRING;
