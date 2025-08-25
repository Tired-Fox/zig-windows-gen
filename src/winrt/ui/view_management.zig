const core = @import("../core.zig");
const std = @import("std");
const winrt = @import("../../root.zig");
const win32 = @import("win32");

const Color = winrt.ui.Color;
const FactoryCache = core.FactoryCache;
const Guid = win32.zig.Guid;
const HRESULT = win32.foundation.HRESULT;
const HSTRING = win32.system.win_rt.HSTRING;
const Implements = core.Implements;
const IGenericFactory = core.IGenericFactory;
const IInspectable = winrt.IInspectable;
const ITypedEventHandler = winrt.foundation.ITypedEventHandler;
const TrustLevel = win32.system.win_rt.TrustLevel;
const TypedEventHandler = winrt.foundation.TypedEventHandler;
const Signature = core.Signature;
const SIZE = win32.foundation.SIZE;

const WindowsGetString = winrt.WindowsGetString;
const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;
const S_OK = winrt.S_OK;

pub const HandPreference = enum(i32) {
    left_handed = 0,
    right_handed = 1,
};

pub const UIElementType = enum(i32) {
    active_caption = 0,
    background = 1,
    button_face = 2,
    button_text = 3,
    caption_text = 4,
    gray_text = 5,
    highlight = 6,
    highlight_text = 7,
    hotlight = 8,
    inactive_caption = 9,
    inactive_caption_text = 10,
    window = 11,
    window_text = 12,
    accent_color = 1000,
    text_high = 1001,
    text_medium = 1002,
    text_low = 1003,
    text_contrast_with_high = 1004,
    non_text_high = 1005,
    non_text_medium_high = 1006,
    non_text_medium = 1007,
    non_text_medium_low = 1008,
    non_text_low = 1009,
    page_background = 1010,
    popup_background = 1011,
    overlay_outside_popup = 1012,
};

pub const UIColorType = enum(i32) {
    background = 0,
    foreground = 1,
    accent_dark_3 = 2,
    accent_dark_2 = 3,
    accent_dark_1 = 4,
    accent = 5,
    accent_light_1 = 6,
    accent_light_2 = 7,
    accent_light_3 = 8,
    complement = 9,
};

pub const IUISettings = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn handPreference(self: *@This()) HandPreference {
        var result: HandPreference = undefined;
        _ = self.vtable.HandPreference(@ptrCast(self), &result);
        return result;
    }

    pub fn cursorSize(self: *@This()) SIZE {
        var result: SIZE = undefined;
        _ = self.vtable.CursorSize(@ptrCast(self), &result);
        return result;
    }

    pub fn scrollBarSize(self: *@This()) SIZE {
        var result: SIZE = undefined;
        _ = self.vtable.ScrollBarSize(@ptrCast(self), &result);
        return result;
    }

    pub fn scrollBarArrowSize(self: *@This()) SIZE {
        var result: SIZE = undefined;
        _ = self.vtable.ScrollBarArrowSize(@ptrCast(self), &result);
        return result;
    }

    pub fn scrollBarThumbSize(self: *@This()) SIZE {
        var result: SIZE = undefined;
        _ = self.vtable.ScrollBarThumbBoxSize(@ptrCast(self), &result);
        return result;
    }

    pub fn messageDuration(self: *@This()) u32 {
        var result: u32 = 0;
        _ = self.vtable.MessageDuration(@ptrCast(self), &result);
        return result;
    }

    pub fn animationsEnabled(self: *@This()) bool {
        var result: bool = false;
        _ = self.vtable.AnimationsEnabled(@ptrCast(self), &result);
        return result;
    }

    pub fn caretBrowsingEnabled(self: *@This()) bool {
        var result: bool = false;
        _ = self.vtable.CaretBrowsingEnabled(@ptrCast(self), &result);
        return result;
    }

    pub fn caretBlinkRate(self: *@This()) u32 {
        var result: u32 = 0;
        _ = self.vtable.CaretBlinkRate(@ptrCast(self), &result);
        return result;
    }

    pub fn caretWidth(self: *@This()) u32 {
        var result: u32 = 0;
        _ = self.vtable.CaretWidth(@ptrCast(self), &result);
        return result;
    }

    pub fn doubleClickTime(self: *@This()) u32 {
        var result: u32 = 0;
        _ = self.vtable.DoubleClickTime(@ptrCast(self), &result);
        return result;
    }

    pub fn mouseHoverTime(self: *@This()) u32 {
        var result: u32 = 0;
        _ = self.vtable.MouseHoverTime(@ptrCast(self), &result);
        return result;
    }

    pub fn uiElementColor(self: *@This(), element: UIElementType) Color {
        var result: Color = undefined;
        _ = self.vtable.UIElementType(@ptrCast(self), element, &result);
        return result;
    }

    pub const GUID: []const u8 = "85361600-1c63-4627-bcb1-3a89e0bc9c55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        HandPreference: *const fn (*const anyopaque, *HandPreference) callconv(.c) HRESULT,
        CursorSize: *const fn (*const anyopaque, *SIZE) callconv(.c) HRESULT,
        ScrollBarSize: *const fn (*const anyopaque, *SIZE) callconv(.c) HRESULT,
        ScrollBarArrowSize: *const fn (*const anyopaque, *SIZE) callconv(.c) HRESULT,
        ScrollBarThumbBoxSize: *const fn (*const anyopaque, *SIZE) callconv(.c) HRESULT,
        MessageDuration: *const fn (*const anyopaque, *u32) callconv(.c) HRESULT,
        AnimationsEnabled: *const fn (*const anyopaque, *bool) callconv(.c) HRESULT,
        CaretBrowsingEnabled: *const fn (*const anyopaque, *bool) callconv(.c) HRESULT,
        CaretBlinkRate: *const fn (*const anyopaque, *u32) callconv(.c) HRESULT,
        CaretWidth: *const fn (*const anyopaque, *u32) callconv(.c) HRESULT,
        DoubleClickTime: *const fn (*const anyopaque, *u32) callconv(.c) HRESULT,
        MouseHoverTime: *const fn (*const anyopaque, *u32) callconv(.c) HRESULT,
        UIElementColor: *const fn (*const anyopaque, UIElementType, *Color) callconv(.c) HRESULT,
    });
};

pub const IUISettings2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn textScaleFactor(self: *@This()) f64 {
        var result: f64 = 0.0;
        _ = self.vtable.TextScaleFactor(@ptrCast(self), &result);
        return result;
    }

    pub fn textScaleFactorChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        var result: i64 = 0;
        if (self.vtable.TextScaleFactorChanged(@ptrCast(self), @ptrCast(handler), &result) != S_OK) {
            return error.BindHookFailure;
        }
        return result;
    }

    pub fn removeTextScaleFactorChanged(self: *@This(), handle: i64) !void {
        if (self.vtable.RemoveTextScaleFactorChanged(@ptrCast(self), handle) != S_OK) {
            return error.UnbindHookFailure;
        }
    }

    pub const GUID: []const u8 = "bad82401-2721-44f9-bb91-2bb228be442f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        TextScaleFactor: *const fn (*const anyopaque, *f64) callconv(.c) HRESULT,
        TextScaleFactorChanged: *const fn (*const anyopaque, *ITypedEventHandler, *i64) callconv(.c) HRESULT,
        RemoveTextScaleFactorChanged: *const fn (*const anyopaque, i64) callconv(.c) HRESULT,
    });
};

pub const IUISettings3 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn getColorValue(self: *@This(), color_type: UIColorType) Color {
        var color: Color = undefined;
        _ = self.vtable.GetColorValue(@ptrCast(self), color_type, &color);
        return color;
    }

    pub fn colorValuesChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        var result: i64 = 0;
        if (self.vtable.ColorValuesChanged(@ptrCast(self), @ptrCast(handler), &result) < 0) {
            return error.BindHookFailure;
        }
        return result;
    }

    pub fn removeColorValuesChanged(self: *@This(), id: i64) !void {
        if (self.vtable.RemoveColorValuesChanged(@ptrCast(self), id) < 0) {
            return error.UnbindHookFailure;
        }
    }

    pub const GUID: []const u8 = "03021be4-5254-4781-8194-5168f7d06d7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        GetColorValue: *const fn (*const anyopaque, UIColorType, *Color) callconv(.c) HRESULT,
        ColorValuesChanged: *const fn (*const anyopaque, *ITypedEventHandler, *i64) callconv(.c) HRESULT,
        RemoveColorValuesChanged: *const fn (*const anyopaque, i64) callconv(.c) HRESULT,
    });
};

pub const IUISettings4 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn advancedEffectsEnabled(self: *@This()) bool {
        var result: bool = false;
        _ = self.vtable.AdvancedEffectsEnabled(@ptrCast(self), &result);
        return result;
    }

    pub fn advancedEffectsEnabledChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        var result: i64 = 0;
        if (self.vtable.AdvancedEffectsEnabledChanged(@ptrCast(self), @ptrCast(handler), &result) != S_OK) {
            return error.BindHookFailure;
        }
        return result;
    }

    pub fn removeAdvancedEffectsEnabledChanged(self: *@This(), handle: i64) !void {
        if (self.vtable.RemoveAdvancedEffectsEnabledChanged(@ptrCast(self), handle) != S_OK) {
            return error.UnbindHookFailure;
        }
    }

    pub const GUID: []const u8 = "52bb3002-919b-4d6b-9b78-8dd66ff4b93b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        AdvancedEffectsEnabled: *const fn (*const anyopaque, *bool) callconv(.c) HRESULT,
        AdvancedEffectsEnabledChanged: *const fn (*const anyopaque, *ITypedEventHandler, *i64) callconv(.c) HRESULT,
        RemoveAdvancedEffectsEnabledChanged: *const fn (*const anyopaque, i64) callconv(.c) HRESULT,
    });
};

pub const IUISettings5 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn autoHideScrollBars(self: *@This()) bool {
        var result: bool = false;
        _ = self.vtable.AutoHideScrollBars(@ptrCast(self), &result);
        return result;
    }

    pub fn autoHideScrollBarsChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        var result: i64 = 0;
        if (self.vtable.AutoHideScrollBarsChanged(@ptrCast(self), @ptrCast(handler), &result) != S_OK) {
            return error.BindHookFailure;
        }
        return result;
    }

    pub fn removeAutoHideScrollBarsChanged(self: *@This(), handle: i64) !void {
        if (self.vtable.RemoveAutoHideScrollBarsChanged(@ptrCast(self), handle) != S_OK) {
            return error.UnbindHookFailure;
        }
    }

    pub const GUID: []const u8 = "5349d588-0cb5-5f05-bd34-706b3231f0bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        AutoHideScrollBars: *const fn (*const anyopaque, *bool) callconv(.c) HRESULT,
        AutoHideScrollBarsChanged: *const fn (*const anyopaque, *ITypedEventHandler, *i64) callconv(.c) HRESULT,
        RemoveAutoHideScrollBarsChanged: *const fn (*const anyopaque, i64) callconv(.c) HRESULT,
    });
};

pub const IUISettings6 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn animationsEnabledChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        var result: i64 = 0;
        if (self.vtable.AnimationsEnabledChanged(@ptrCast(self), @ptrCast(handler), &result) != S_OK) {
            return error.BindHookFailure;
        }
        return result;
    }

    pub fn removeAnimationsEnabledChanged(self: *@This(), handle: i64) !void {
        if (self.vtable.RemoveAnimationsEnabledChanged(@ptrCast(self), handle) != S_OK) {
            return error.UnbindHookFailure;
        }
    }

    pub fn messageDurationChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        var result: i64 = 0;
        if (self.vtable.MessageDurationChanged(@ptrCast(self), @ptrCast(handler), &result) != S_OK) {
            return error.BindHookFailure;
        }
        return result;
    }

    pub fn removeMessageDurationChanged(self: *@This(), handle: i64) !void {
        if (self.vtable.RemoveMessageDurationChanged(@ptrCast(self), handle) != S_OK) {
            return error.UnbindHookFailure;
        }
    }

    pub const GUID: []const u8 = "aef19bd7_fe31_5a04_ada4_469aaec6dfa9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        AnimationsEnabledChanged: *const fn (*const anyopaque, *ITypedEventHandler, *i64) callconv(.c) HRESULT,
        RemoveAnimationsEnabledChanged: *const fn (*const anyopaque, i64) callconv(.c) HRESULT,
        MessageDurationChanged: *const fn (*const anyopaque, *ITypedEventHandler, *i64) callconv(.c) HRESULT,
        RemoveMessageDurationChanged: *const fn (*const anyopaque, i64) callconv(.c) HRESULT,
    });
};

pub const UISettings = extern struct {
    vtable: *const IUISettings.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn init() anyerror!*@This() {
        const factory: *IGenericFactory = try @This().Factory.call(
            IGenericFactory,
            @This().RUNTIME_NAME,
        );
        return @ptrCast(@alignCast(try factory.ActivateInstance(IUISettings)));
    }

    /// Call `release` and discard the returned remaining ref count
    pub fn deinit(self: *@This()) void {
        _ = self.release();
    }

    pub fn handPreference(self: *@This()) HandPreference {
        const this: *IUISettings = @ptrCast(self);
        return this.handPreference();
    }

    pub fn cursorSize(self: *@This()) SIZE {
        const this: *IUISettings = @ptrCast(self);
        return this.cursorSize();
    }

    pub fn scrollBarSize(self: *@This()) SIZE {
        const this: *IUISettings = @ptrCast(self);
        return this.scrollBarSize;
    }

    pub fn scrollBarArrowSize(self: *@This()) SIZE {
        const this: *IUISettings = @ptrCast(self);
        return this.scrollBarArrowSize;
    }

    pub fn scrollBarThumbSize(self: *@This()) SIZE {
        const this: *IUISettings = @ptrCast(self);
        return this.scrollBarThumbSize;
    }

    pub fn messageDuration(self: *@This()) u32 {
        const this: *IUISettings = @ptrCast(self);
        return this.messageDuration();
    }

    pub fn animationsEnabled(self: *@This()) bool {
        const this: *IUISettings = @ptrCast(self);
        return this.animationsEnabled();
    }

    pub fn caretBrowsingEnabled(self: *@This()) bool {
        const this: *IUISettings = @ptrCast(self);
        return this.caretBrowsingEnabled;
    }

    pub fn caretBlinkRate(self: *@This()) u32 {
        const this: *IUISettings = @ptrCast(self);
        return this.caretBlinkRate();
    }

    pub fn caretWidth(self: *@This()) u32 {
        const this: *IUISettings = @ptrCast(self);
        return this.caretWidth();
    }

    pub fn doubleClickTime(self: *@This()) u32 {
        const this: *IUISettings = @ptrCast(self);
        return this.doubleClickTime();
    }

    pub fn mouseHoverTime(self: *@This()) u32 {
        const this: *IUISettings = @ptrCast(self);
        return this.mouseHoverTime();
    }

    pub fn uiElementColor(self: *@This(), element: UIElementType) Color {
        const this: *IUISettings = @ptrCast(self);
        return this.uiElementColor(element);
    }

    pub fn textScaleFactor(self: *@This()) f64 {
        const this: *IUISettings2 = self.queryInterface(IUISettings2) catch unreachable;
        return this.textScaleFactor();
    }

    pub fn textScaleFactorChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        const this: *IUISettings2 = try self.queryInterface(IUISettings2);
        return this.textScaleFactorChanged(handler);
    }

    pub fn removeTextScaleFactorChanged(self: *@This(), handle: i64) !void {
        const this: *IUISettings2 = try self.queryInterface(IUISettings2);
        try this.removeTextScaleFactorChanged(handle);
    }

    pub fn getColorValue(self: *@This(), color_type: UIColorType) Color {
        const this: *IUISettings3 = self.queryInterface(self, IUISettings3) catch unreachable;
        return this.getColorValue(color_type);
    }

    pub fn colorValuesChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        const this: *IUISettings3 = self.queryInterface(self, IUISettings3) catch unreachable;
        return this.colorValuesChanged(handler);
    }

    pub fn removeColorValuesChanged(self: *@This(), handle: i64) !void {
        const this: *IUISettings3 = self.queryInterface(self, IUISettings3) catch unreachable;
        try this.removeColorValuesChanged(handle);
    }

    pub fn advancedEffectsEnabled(self: *@This()) bool {
        const this: *IUISettings4 = self.queryInterface(IUISettings4) catch unreachable;
        return this.advancedEffectsEnabled();
    }

    pub fn advancedEffectsEnabledChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        const this: *IUISettings4 = self.queryInterface(IUISettings4) catch unreachable;
        return this.advancedEffectsEnabledChanged(handler);
    }

    pub fn removeAdvancedEffectsEnabledChanged(self: *@This(), handle: i64) !void {
        const this: *IUISettings4 = self.queryInterface(IUISettings4) catch unreachable;
        try this.removeAdvancedEffectsEnabledChanged(handle);
    }

    pub fn autoHideScrollBars(self: *@This()) bool {
        const this: *IUISettings5 = self.queryInterface(IUISettings5) catch unreachable;
        try this.autoHideScrollBars();
    }

    pub fn autoHideScrollBarsChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        const this: *IUISettings5 = self.queryInterface(IUISettings5) catch unreachable;
        try this.autoHideScrollBarsChanged(handler);
    }

    pub fn removeAutoHideScrollBarsChanged(self: *@This(), handle: i64) !void {
        const this: *IUISettings5 = self.queryInterface(IUISettings5) catch unreachable;
        try this.removeAutoHideScrollBarsChanged(handle);
    }

    pub fn animationsEnabledChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        const this: *IUISettings6 = self.queryInterface(IUISettings6) catch unreachable;
        try this.animationsEnabledChanged(handler);
    }

    pub fn removeAnimationsEnabledChanged(self: *@This(), handle: i64) !void {
        const this: *IUISettings6 = self.queryInterface(IUISettings6) catch unreachable;
        try this.removeAnimationsEnabledChanged(handle);
    }

    pub fn messageDurationChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        const this: *IUISettings6 = self.queryInterface(IUISettings6) catch unreachable;
        try this.messageDurationChanged(handler);
    }

    pub fn removeMessageDurationChanged(self: *@This(), handle: i64) !void {
        const this: *IUISettings6 = self.queryInterface(IUISettings6) catch unreachable;
        try this.removeMessageDurationChanged(handle);
    }

    pub const ColorTypedEventHandler = TypedEventHandler(UISettings, IInspectable);

    pub const TYPE_NAME: []const u8 = "Windows.UI.ViewManagement.UISettings";
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IUISettings.SIGNATURE);
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    var Factory: FactoryCache = .{};
};
