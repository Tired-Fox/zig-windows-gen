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

    pub const GUID: []const u8 = "85361600-1c63-4627-bcb1-3a89e0bc9c55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        HandPreference: *const fn (*const anyopaque, *HandPreference) callconv(.C) HRESULT,
        CursorSize: *const fn (*const anyopaque, *win32.foundation.SIZE) callconv(.C) HRESULT,
        ScrollBarSize: *const fn (*const anyopaque, *win32.foundation.SIZE) callconv(.C) HRESULT,
        ScrollBarArrowSize: *const fn (*const anyopaque, *win32.foundation.SIZE) callconv(.C) HRESULT,
        ScrollBarThumbBoxSize: *const fn (*const anyopaque, *win32.foundation.SIZE) callconv(.C) HRESULT,
        MessageDuration: *const fn (*const anyopaque, *u32) callconv(.C) HRESULT,
        AnimationsEnabled: *const fn (*const anyopaque, *bool) callconv(.C) HRESULT,
        CaretBrowsingEnabled: *const fn (*const anyopaque, *bool) callconv(.C) HRESULT,
        CaretBlinkRate: *const fn (*const anyopaque, *u32) callconv(.C) HRESULT,
        CaretWidth: *const fn (*const anyopaque, *u32) callconv(.C) HRESULT,
        DoubleClickTime: *const fn (*const anyopaque, *u32) callconv(.C) HRESULT,
        MouseHoverTime: *const fn (*const anyopaque, *u32) callconv(.C) HRESULT,
        UIElementColor: *const fn (*const anyopaque, UIElementType, *Color) callconv(.C) HRESULT,
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

    pub const GUID: []const u8 = "bad82401-2721-44f9-bb91-2bb228be442f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        QueryInterface: *const fn (self: *const anyopaque, riid: *const Guid, ppvObject: **anyopaque) callconv(.C) HRESULT,
        AddRef: *const fn (self: *const anyopaque) callconv(.C) u32,
        Release: *const fn (self: *const anyopaque) callconv(.C) u32,

        GetIids: *const fn (self: *const anyopaque, iidCount: ?*u32, iids: [*]?*Guid) callconv(.C) HRESULT,
        GetRuntimeClassName: *const fn (self: *const anyopaque, className: ?*?HSTRING) callconv(.C) HRESULT,
        GetTrustLevel: *const fn (self: *const anyopaque, trustLevel: ?*TrustLevel) callconv(.C) HRESULT,

        TextScaleFactor: *const fn (*const anyopaque, *f64) callconv(.C) HRESULT,
        TextScaleFactorChanged: *const fn (*const anyopaque, *IInspectable, *i64) callconv(.C) HRESULT,
        RemoveTextScaleFactorChanged: *const fn (*const anyopaque, i64) callconv(.C) HRESULT,
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

    pub const GUID: []const u8 = "03021be4-5254-4781-8194-5168f7d06d7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        GetColorValue: *const fn (*const anyopaque, UIColorType, *Color) callconv(.C) HRESULT,
        ColorValuesChanged: *const fn (*const anyopaque, *ITypedEventHandler, *i64) callconv(.C) HRESULT,
        RemoveColorValuesChanged: *const fn (*const anyopaque, i64) callconv(.C) HRESULT,
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

    pub const GUID: []const u8 = "52bb3002-919b-4d6b-9b78-8dd66ff4b93b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        AdvancedEffectsEnabled: *const fn (*const anyopaque, *bool) callconv(.C) HRESULT,
        AdvancedEffectsEnabledChanged: *const fn (*const anyopaque, *IInspectable, *i64) callconv(.C) HRESULT,
        RemoveAdvancedEffectsEnabledChanged: *const fn (*const anyopaque, i64) callconv(.C) HRESULT,
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

    pub const GUID: []const u8 = "5349d588-0cb5-5f05-bd34-706b3231f0bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        AutoHideScrollBars: *const fn (*const anyopaque, *bool) callconv(.C) HRESULT,
        AutoHideScrollBarsChanged: *const fn (*const anyopaque, *IInspectable, *i64) callconv(.C) HRESULT,
        RemoveAutoHideScrollBarsChanged: *const fn (*const anyopaque, i64) callconv(.C) HRESULT,
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

    pub const GUID: []const u8 = "aef19bd7_fe31_5a04_ada4_469aaec6dfa9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        AnimationsEnabledChanged: *const fn (*const anyopaque, *IInspectable, *i64) callconv(.C) HRESULT,
        RemoveAnimationsEnabledChanged: *const fn (*const anyopaque, i64) callconv(.C) HRESULT,
        MessageDurationChanged: *const fn (*const anyopaque, *IInspectable, *i64) callconv(.C) HRESULT,
        RemoveMessageDurationChanged: *const fn (*const anyopaque, i64) callconv(.C) HRESULT,
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

    pub fn deinit(self: *@This()) void {
        _ = self.release();
    }

    pub fn getColorValue(self: *@This(), color_type: UIColorType) !Color {
        const this = try self.queryInterface(self, IUISettings3);

        var color: Color = undefined;
        _ = this.vtable.GetColorValue(@ptrCast(this), color_type, &color);
        return color;
    }

    pub fn colorValuesChanged(self: *@This(), handler: *TypedEventHandler(UISettings, IInspectable)) !i64 {
        const this = try self.queryInterface(IUISettings3);

        var result: i64 = 0;
        if (this.vtable.ColorValuesChanged(@ptrCast(this), @ptrCast(handler), &result) < 0) {
            return error.BindHookFailure;
        }
        return result;
    }

    pub fn removeColorValuesChanged(self: *@This(), id: i64) !void {
        const this = try self.queryInterface(IUISettings3);
        if (this.vtable.RemoveColorValuesChanged(@ptrCast(this), id) < 0) {
            return error.UnbindHookFailure;
        }
    }

    pub const TYPE_NAME: []const u8 = "Windows.UI.ViewManagement.UISettings";
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IUISettings.SIGNATURE);
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    var Factory: FactoryCache = .{};
};
