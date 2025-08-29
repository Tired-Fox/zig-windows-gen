pub const CorePerceptionAutomation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SetActivationFactoryProvider(provider: *IGetActivationFactory) core.HResult!void {
        const factory = @This().ICorePerceptionAutomationStaticsCache.get();
        return try factory.SetActivationFactoryProvider(provider);
    }
    pub const NAME: []const u8 = "Windows.Perception.Automation.Core.CorePerceptionAutomation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICorePerceptionAutomationStaticsCache: FactoryCache(ICorePerceptionAutomationStatics, RUNTIME_NAME) = .{};
};
pub const ICorePerceptionAutomationStatics = extern struct {
    vtable: *const VTable,
    pub fn SetActivationFactoryProvider(self: *@This(), provider: *IGetActivationFactory) core.HResult!void {
        const _c = self.vtable.SetActivationFactoryProvider(@ptrCast(self), provider);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Perception.Automation.Core.ICorePerceptionAutomationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bb04541-4ce2-4923-9a76-8187ecc59112";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetActivationFactoryProvider: *const fn(self: *anyopaque, provider: *IGetActivationFactory) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IGetActivationFactory = @import("../../Foundation.zig").IGetActivationFactory;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
