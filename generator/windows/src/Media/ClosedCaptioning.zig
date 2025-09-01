pub const ClosedCaptionColor = enum(i32) {
    Default = 0,
    White = 1,
    Black = 2,
    Red = 3,
    Green = 4,
    Blue = 5,
    Yellow = 6,
    Magenta = 7,
    Cyan = 8,
};
pub const ClosedCaptionEdgeEffect = enum(i32) {
    Default = 0,
    None = 1,
    Raised = 2,
    Depressed = 3,
    Uniform = 4,
    DropShadow = 5,
};
pub const ClosedCaptionOpacity = enum(i32) {
    Default = 0,
    OneHundredPercent = 1,
    SeventyFivePercent = 2,
    TwentyFivePercent = 3,
    ZeroPercent = 4,
};
pub const ClosedCaptionProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getFontColor() core.HResult!ClosedCaptionColor {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getFontColor();
    }
    pub fn getComputedFontColor() core.HResult!Color {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getComputedFontColor();
    }
    pub fn getFontOpacity() core.HResult!ClosedCaptionOpacity {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getFontOpacity();
    }
    pub fn getFontSize() core.HResult!ClosedCaptionSize {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getFontSize();
    }
    pub fn getFontStyle() core.HResult!ClosedCaptionStyle {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getFontStyle();
    }
    pub fn getFontEffect() core.HResult!ClosedCaptionEdgeEffect {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getFontEffect();
    }
    pub fn getBackgroundColor() core.HResult!ClosedCaptionColor {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getBackgroundColor();
    }
    pub fn getComputedBackgroundColor() core.HResult!Color {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getComputedBackgroundColor();
    }
    pub fn getBackgroundOpacity() core.HResult!ClosedCaptionOpacity {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getBackgroundOpacity();
    }
    pub fn getRegionColor() core.HResult!ClosedCaptionColor {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getRegionColor();
    }
    pub fn getComputedRegionColor() core.HResult!Color {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getComputedRegionColor();
    }
    pub fn getRegionOpacity() core.HResult!ClosedCaptionOpacity {
        const _f = @This().IClosedCaptionPropertiesStaticsCache.get();
        return try _f.getRegionOpacity();
    }
    pub fn addPropertiesChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().IClosedCaptionPropertiesStatics2Cache.get();
        return try _f.addPropertiesChanged(handler);
    }
    pub fn removePropertiesChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IClosedCaptionPropertiesStatics2Cache.get();
        return try _f.removePropertiesChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.ClosedCaptioning.ClosedCaptionProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IClosedCaptionPropertiesStaticsCache: FactoryCache(IClosedCaptionPropertiesStatics, RUNTIME_NAME) = .{};
    var _IClosedCaptionPropertiesStatics2Cache: FactoryCache(IClosedCaptionPropertiesStatics2, RUNTIME_NAME) = .{};
};
pub const ClosedCaptionSize = enum(i32) {
    Default = 0,
    FiftyPercent = 1,
    OneHundredPercent = 2,
    OneHundredFiftyPercent = 3,
    TwoHundredPercent = 4,
};
pub const ClosedCaptionStyle = enum(i32) {
    Default = 0,
    MonospacedWithSerifs = 1,
    ProportionalWithSerifs = 2,
    MonospacedWithoutSerifs = 3,
    ProportionalWithoutSerifs = 4,
    Casual = 5,
    Cursive = 6,
    SmallCapitals = 7,
};
pub const IClosedCaptionPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getFontColor(self: *@This()) core.HResult!ClosedCaptionColor {
        var _r: ClosedCaptionColor = undefined;
        const _c = self.vtable.get_FontColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComputedFontColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_ComputedFontColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontOpacity(self: *@This()) core.HResult!ClosedCaptionOpacity {
        var _r: ClosedCaptionOpacity = undefined;
        const _c = self.vtable.get_FontOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontSize(self: *@This()) core.HResult!ClosedCaptionSize {
        var _r: ClosedCaptionSize = undefined;
        const _c = self.vtable.get_FontSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontStyle(self: *@This()) core.HResult!ClosedCaptionStyle {
        var _r: ClosedCaptionStyle = undefined;
        const _c = self.vtable.get_FontStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontEffect(self: *@This()) core.HResult!ClosedCaptionEdgeEffect {
        var _r: ClosedCaptionEdgeEffect = undefined;
        const _c = self.vtable.get_FontEffect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!ClosedCaptionColor {
        var _r: ClosedCaptionColor = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComputedBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_ComputedBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBackgroundOpacity(self: *@This()) core.HResult!ClosedCaptionOpacity {
        var _r: ClosedCaptionOpacity = undefined;
        const _c = self.vtable.get_BackgroundOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegionColor(self: *@This()) core.HResult!ClosedCaptionColor {
        var _r: ClosedCaptionColor = undefined;
        const _c = self.vtable.get_RegionColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComputedRegionColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_ComputedRegionColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegionOpacity(self: *@This()) core.HResult!ClosedCaptionOpacity {
        var _r: ClosedCaptionOpacity = undefined;
        const _c = self.vtable.get_RegionOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.ClosedCaptioning.IClosedCaptionPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10aa1f84-cc30-4141-b503-5272289e0c20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FontColor: *const fn(self: *anyopaque, _r: *ClosedCaptionColor) callconv(.winapi) HRESULT,
        get_ComputedFontColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_FontOpacity: *const fn(self: *anyopaque, _r: *ClosedCaptionOpacity) callconv(.winapi) HRESULT,
        get_FontSize: *const fn(self: *anyopaque, _r: *ClosedCaptionSize) callconv(.winapi) HRESULT,
        get_FontStyle: *const fn(self: *anyopaque, _r: *ClosedCaptionStyle) callconv(.winapi) HRESULT,
        get_FontEffect: *const fn(self: *anyopaque, _r: *ClosedCaptionEdgeEffect) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *ClosedCaptionColor) callconv(.winapi) HRESULT,
        get_ComputedBackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_BackgroundOpacity: *const fn(self: *anyopaque, _r: *ClosedCaptionOpacity) callconv(.winapi) HRESULT,
        get_RegionColor: *const fn(self: *anyopaque, _r: *ClosedCaptionColor) callconv(.winapi) HRESULT,
        get_ComputedRegionColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_RegionOpacity: *const fn(self: *anyopaque, _r: *ClosedCaptionOpacity) callconv(.winapi) HRESULT,
    };
};
pub const IClosedCaptionPropertiesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn addPropertiesChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PropertiesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PropertiesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.ClosedCaptioning.IClosedCaptionPropertiesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9de26870-37de-4197-8845-9a48dc5ac317";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PropertiesChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PropertiesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const HSTRING = @import("../root.zig").HSTRING;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const Color = @import("../UI.zig").Color;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const EventHandler = @import("../Foundation.zig").EventHandler;
