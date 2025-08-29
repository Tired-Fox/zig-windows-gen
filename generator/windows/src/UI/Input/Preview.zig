pub const IInputActivationListenerPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForApplicationWindow(self: *@This(), window: *AppWindow) core.HResult!*InputActivationListener {
        var _r: *InputActivationListener = undefined;
        const _c = self.vtable.CreateForApplicationWindow(@ptrCast(self), window, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.IInputActivationListenerPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0551ce5-0de6-5be0-a589-f737201a4582";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForApplicationWindow: *const fn(self: *anyopaque, window: *AppWindow, _r: **InputActivationListener) callconv(.winapi) HRESULT,
    };
};
pub const InputActivationListenerPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateForApplicationWindow(window: *AppWindow) core.HResult!*InputActivationListener {
        const factory = @This().IInputActivationListenerPreviewStaticsCache.get();
        return try factory.CreateForApplicationWindow(window);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.InputActivationListenerPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IInputActivationListenerPreviewStaticsCache: FactoryCache(IInputActivationListenerPreviewStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const AppWindow = @import("../WindowManagement.zig").AppWindow;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const InputActivationListener = @import("../Input.zig").InputActivationListener;
const HSTRING = @import("../../root.zig").HSTRING;
pub const Injection = @import("./Preview/Injection.zig");
pub const Text = @import("./Preview/Text.zig");
