pub const IInteractiveSessionStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsRemote(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRemote(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.IInteractiveSessionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60884631-dd3a-4576-9c8d-e8027618bdce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRemote: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const InteractiveSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIsRemote() core.HResult!bool {
        const factory = @This().IInteractiveSessionStaticsCache.get();
        return try factory.getIsRemote();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteDesktop.InteractiveSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IInteractiveSessionStaticsCache: FactoryCache(IInteractiveSessionStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
pub const Input = @import("./RemoteDesktop/Input.zig");
pub const Provider = @import("./RemoteDesktop/Provider.zig");
