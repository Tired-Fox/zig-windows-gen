pub const DesktopWindowTarget = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsTopmost(self: *@This()) core.HResult!bool {
        const this: *IDesktopWindowTarget = @ptrCast(self);
        return try this.getIsTopmost();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Desktop.DesktopWindowTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDesktopWindowTarget.GUID;
    pub const IID: Guid = IDesktopWindowTarget.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDesktopWindowTarget.SIGNATURE);
};
pub const IDesktopWindowTarget = extern struct {
    vtable: *const VTable,
    pub fn getIsTopmost(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTopmost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Desktop.IDesktopWindowTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6329d6ca-3366-490e-9db3-25312929ac51";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTopmost: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
