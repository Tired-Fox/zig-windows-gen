pub const ISoundLevelBrokerStatics = extern struct {
    vtable: *const VTable,
    pub fn getSoundLevel(self: *@This()) core.HResult!SoundLevel {
        var _r: SoundLevel = undefined;
        const _c = self.vtable.get_SoundLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSoundLevelChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SoundLevelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSoundLevelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SoundLevelChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.Preview.ISoundLevelBrokerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a633961-dbed-464c-a09a-33412f5caa3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SoundLevel: *const fn(self: *anyopaque, _r: *SoundLevel) callconv(.winapi) HRESULT,
        add_SoundLevelChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SoundLevelChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const SoundLevelBroker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getSoundLevel() core.HResult!SoundLevel {
        const _f = @This().ISoundLevelBrokerStaticsCache.get();
        return try _f.getSoundLevel();
    }
    pub fn addSoundLevelChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().ISoundLevelBrokerStaticsCache.get();
        return try _f.addSoundLevelChanged(handler);
    }
    pub fn removeSoundLevelChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().ISoundLevelBrokerStaticsCache.get();
        return try _f.removeSoundLevelChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.Preview.SoundLevelBroker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISoundLevelBrokerStaticsCache: FactoryCache(ISoundLevelBrokerStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const SoundLevel = @import("../../Media.zig").SoundLevel;
const EventHandler = @import("../../Foundation.zig").EventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
