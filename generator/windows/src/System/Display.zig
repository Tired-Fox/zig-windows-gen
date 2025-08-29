pub const DisplayRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestActive(self: *@This()) core.HResult!void {
        const this: *IDisplayRequest = @ptrCast(self);
        return try this.RequestActive();
    }
    pub fn RequestRelease(self: *@This()) core.HResult!void {
        const this: *IDisplayRequest = @ptrCast(self);
        return try this.RequestRelease();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDisplayRequest.IID)));
    }
    pub const NAME: []const u8 = "Windows.System.Display.DisplayRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayRequest.GUID;
    pub const IID: Guid = IDisplayRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayRequest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IDisplayRequest = extern struct {
    vtable: *const VTable,
    pub fn RequestActive(self: *@This()) core.HResult!void {
        const _c = self.vtable.RequestActive(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestRelease(self: *@This()) core.HResult!void {
        const _c = self.vtable.RequestRelease(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Display.IDisplayRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5732044-f49f-4b60-8dd4-5e7e3a632ac0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestActive: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RequestRelease: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
