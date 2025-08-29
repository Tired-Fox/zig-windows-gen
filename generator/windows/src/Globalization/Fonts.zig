pub const ILanguageFont = extern struct {
    vtable: *const VTable,
    pub fn getFontFamily(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FontFamily(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontWeight(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_FontWeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontStretch(self: *@This()) core.HResult!FontStretch {
        var _r: FontStretch = undefined;
        const _c = self.vtable.get_FontStretch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontStyle(self: *@This()) core.HResult!FontStyle {
        var _r: FontStyle = undefined;
        const _c = self.vtable.get_FontStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleFactor(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ScaleFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.Fonts.ILanguageFont";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b12e5c3a-b76d-459b-beeb-901151cd77d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FontFamily: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FontWeight: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_FontStretch: *const fn(self: *anyopaque, _r: *FontStretch) callconv(.winapi) HRESULT,
        get_FontStyle: *const fn(self: *anyopaque, _r: *FontStyle) callconv(.winapi) HRESULT,
        get_ScaleFactor: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ILanguageFontGroup = extern struct {
    vtable: *const VTable,
    pub fn getUITextFont(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_UITextFont(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUIHeadingFont(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_UIHeadingFont(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUITitleFont(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_UITitleFont(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUICaptionFont(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_UICaptionFont(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUINotificationHeadingFont(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_UINotificationHeadingFont(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTraditionalDocumentFont(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_TraditionalDocumentFont(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModernDocumentFont(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_ModernDocumentFont(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentHeadingFont(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_DocumentHeadingFont(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFixedWidthTextFont(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_FixedWidthTextFont(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentAlternate1Font(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_DocumentAlternate1Font(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentAlternate2Font(self: *@This()) core.HResult!*LanguageFont {
        var _r: *LanguageFont = undefined;
        const _c = self.vtable.get_DocumentAlternate2Font(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.Fonts.ILanguageFontGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UITextFont: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_UIHeadingFont: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_UITitleFont: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_UICaptionFont: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_UINotificationHeadingFont: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_TraditionalDocumentFont: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_ModernDocumentFont: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_DocumentHeadingFont: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_FixedWidthTextFont: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_DocumentAlternate1Font: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
        get_DocumentAlternate2Font: *const fn(self: *anyopaque, _r: **LanguageFont) callconv(.winapi) HRESULT,
    };
};
pub const ILanguageFontGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateLanguageFontGroup(self: *@This(), languageTag: HSTRING) core.HResult!*LanguageFontGroup {
        var _r: *LanguageFontGroup = undefined;
        const _c = self.vtable.CreateLanguageFontGroup(@ptrCast(self), languageTag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.Fonts.ILanguageFontGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcaeac67-4e77-49c7-b856-dde934fc735b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateLanguageFontGroup: *const fn(self: *anyopaque, languageTag: HSTRING, _r: **LanguageFontGroup) callconv(.winapi) HRESULT,
    };
};
pub const LanguageFont = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFontFamily(self: *@This()) core.HResult!HSTRING {
        const this: *ILanguageFont = @ptrCast(self);
        return try this.getFontFamily();
    }
    pub fn getFontWeight(self: *@This()) core.HResult!FontWeight {
        const this: *ILanguageFont = @ptrCast(self);
        return try this.getFontWeight();
    }
    pub fn getFontStretch(self: *@This()) core.HResult!FontStretch {
        const this: *ILanguageFont = @ptrCast(self);
        return try this.getFontStretch();
    }
    pub fn getFontStyle(self: *@This()) core.HResult!FontStyle {
        const this: *ILanguageFont = @ptrCast(self);
        return try this.getFontStyle();
    }
    pub fn getScaleFactor(self: *@This()) core.HResult!f64 {
        const this: *ILanguageFont = @ptrCast(self);
        return try this.getScaleFactor();
    }
    pub const NAME: []const u8 = "Windows.Globalization.Fonts.LanguageFont";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILanguageFont.GUID;
    pub const IID: Guid = ILanguageFont.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILanguageFont.SIGNATURE);
};
pub const LanguageFontGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUITextFont(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getUITextFont();
    }
    pub fn getUIHeadingFont(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getUIHeadingFont();
    }
    pub fn getUITitleFont(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getUITitleFont();
    }
    pub fn getUICaptionFont(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getUICaptionFont();
    }
    pub fn getUINotificationHeadingFont(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getUINotificationHeadingFont();
    }
    pub fn getTraditionalDocumentFont(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getTraditionalDocumentFont();
    }
    pub fn getModernDocumentFont(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getModernDocumentFont();
    }
    pub fn getDocumentHeadingFont(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getDocumentHeadingFont();
    }
    pub fn getFixedWidthTextFont(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getFixedWidthTextFont();
    }
    pub fn getDocumentAlternate1Font(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getDocumentAlternate1Font();
    }
    pub fn getDocumentAlternate2Font(self: *@This()) core.HResult!*LanguageFont {
        const this: *ILanguageFontGroup = @ptrCast(self);
        return try this.getDocumentAlternate2Font();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateLanguageFontGroup(languageTag: HSTRING) core.HResult!*LanguageFontGroup {
        const factory = @This().ILanguageFontGroupFactoryCache.get();
        return try factory.CreateLanguageFontGroup(languageTag);
    }
    pub const NAME: []const u8 = "Windows.Globalization.Fonts.LanguageFontGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILanguageFontGroup.GUID;
    pub const IID: Guid = ILanguageFontGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILanguageFontGroup.SIGNATURE);
    var _ILanguageFontGroupFactoryCache: FactoryCache(ILanguageFontGroupFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FontWeight = @import("../UI/Text.zig").FontWeight;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FontStretch = @import("../UI/Text.zig").FontStretch;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const FontStyle = @import("../UI/Text.zig").FontStyle;
const HSTRING = @import("../root.zig").HSTRING;
