pub const CaretType = enum(i32) {
    Normal = 0,
    Null = 1,
};
pub const ContentLinkInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: u32) core.HResult!void {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.getDisplayText();
    }
    pub fn putDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.putDisplayText(value);
    }
    pub fn getSecondaryText(self: *@This()) core.HResult!HSTRING {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.getSecondaryText();
    }
    pub fn putSecondaryText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.putSecondaryText(value);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.putUri(value);
    }
    pub fn getLinkContentKind(self: *@This()) core.HResult!HSTRING {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.getLinkContentKind();
    }
    pub fn putLinkContentKind(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContentLinkInfo = @ptrCast(self);
        return try this.putLinkContentKind(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContentLinkInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ContentLinkInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentLinkInfo.GUID;
    pub const IID: Guid = IContentLinkInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentLinkInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const FindOptions = enum(i32) {
    None = 0,
    Word = 2,
    Case = 4,
};
pub const FontStretch = enum(i32) {
    Undefined = 0,
    UltraCondensed = 1,
    ExtraCondensed = 2,
    Condensed = 3,
    SemiCondensed = 4,
    Normal = 5,
    SemiExpanded = 6,
    Expanded = 7,
    ExtraExpanded = 8,
    UltraExpanded = 9,
};
pub const FontStyle = enum(i32) {
    Normal = 0,
    Oblique = 1,
    Italic = 2,
};
pub const FontWeight = extern struct {
    Weight: u16,
};
pub const FontWeights = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getBlack() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getBlack();
    }
    pub fn getBold() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getBold();
    }
    pub fn getExtraBlack() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getExtraBlack();
    }
    pub fn getExtraBold() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getExtraBold();
    }
    pub fn getExtraLight() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getExtraLight();
    }
    pub fn getLight() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getLight();
    }
    pub fn getMedium() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getMedium();
    }
    pub fn getNormal() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getNormal();
    }
    pub fn getSemiBold() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getSemiBold();
    }
    pub fn getSemiLight() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getSemiLight();
    }
    pub fn getThin() core.HResult!FontWeight {
        const _f = @This().IFontWeightsStaticsCache.get();
        return try _f.getThin();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.FontWeights";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFontWeights.GUID;
    pub const IID: Guid = IFontWeights.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFontWeights.SIGNATURE);
    var _IFontWeightsStaticsCache: FactoryCache(IFontWeightsStatics, RUNTIME_NAME) = .{};
};
pub const FormatEffect = enum(i32) {
    Off = 0,
    On = 1,
    Toggle = 2,
    Undefined = 3,
};
pub const HorizontalCharacterAlignment = enum(i32) {
    Left = 0,
    Right = 1,
    Center = 2,
};
pub const IContentLinkInfo = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putId(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSecondaryText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecondaryText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSecondaryText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SecondaryText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLinkContentKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LinkContentKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLinkContentKind(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LinkContentKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.IContentLinkInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ed52525-1c5f-48cb-b335-78b50a2ee642";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DisplayText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SecondaryText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SecondaryText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_LinkContentKind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LinkContentKind: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFontWeights = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Text.IFontWeights";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7880a444-01ab-4997-8517-df822a0c45f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IFontWeightsStatics = extern struct {
    vtable: *const VTable,
    pub fn getBlack(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_Black(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBold(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_Bold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtraBlack(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_ExtraBlack(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtraBold(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_ExtraBold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtraLight(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_ExtraLight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLight(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_Light(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMedium(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_Medium(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNormal(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_Normal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSemiBold(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_SemiBold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSemiLight(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_SemiLight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThin(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_Thin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.IFontWeightsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3b579d5-1ba9-48eb-9dad-c095e8c23ba3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Black: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_Bold: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_ExtraBlack: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_ExtraBold: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_ExtraLight: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_Light: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_Medium: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_Normal: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_SemiBold: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_SemiLight: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        get_Thin: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
    };
};
pub const IRichEditTextRange = extern struct {
    vtable: *const VTable,
    pub fn getContentLinkInfo(self: *@This()) core.HResult!*ContentLinkInfo {
        var _r: *ContentLinkInfo = undefined;
        const _c = self.vtable.get_ContentLinkInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentLinkInfo(self: *@This(), value: *ContentLinkInfo) core.HResult!void {
        const _c = self.vtable.put_ContentLinkInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.IRichEditTextRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "374e3515-ba8a-4a6e-8c59-0dde3d0cf5cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentLinkInfo: *const fn(self: *anyopaque, _r: **ContentLinkInfo) callconv(.winapi) HRESULT,
        put_ContentLinkInfo: *const fn(self: *anyopaque, value: *ContentLinkInfo) callconv(.winapi) HRESULT,
    };
};
pub const ITextCharacterFormat = extern struct {
    vtable: *const VTable,
    pub fn getAllCaps(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_AllCaps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllCaps(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_AllCaps(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_BackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBold(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_Bold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBold(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_Bold(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontStretch(self: *@This()) core.HResult!FontStretch {
        var _r: FontStretch = undefined;
        const _c = self.vtable.get_FontStretch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontStretch(self: *@This(), value: FontStretch) core.HResult!void {
        const _c = self.vtable.put_FontStretch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontStyle(self: *@This()) core.HResult!FontStyle {
        var _r: FontStyle = undefined;
        const _c = self.vtable.get_FontStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontStyle(self: *@This(), value: FontStyle) core.HResult!void {
        const _c = self.vtable.put_FontStyle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_ForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForegroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_ForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHidden(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_Hidden(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHidden(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_Hidden(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItalic(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_Italic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItalic(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_Italic(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKerning(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Kerning(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKerning(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Kerning(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLanguageTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LanguageTag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguageTag(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LanguageTag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLinkType(self: *@This()) core.HResult!LinkType {
        var _r: LinkType = undefined;
        const _c = self.vtable.get_LinkType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutline(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_Outline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutline(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_Outline(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPosition(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProtectedText(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_ProtectedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProtectedText(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_ProtectedText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSize(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSmallCaps(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_SmallCaps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSmallCaps(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_SmallCaps(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpacing(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Spacing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpacing(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Spacing(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrikethrough(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_Strikethrough(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrikethrough(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_Strikethrough(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubscript(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_Subscript(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubscript(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_Subscript(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuperscript(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_Superscript(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuperscript(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_Superscript(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextScript(self: *@This()) core.HResult!TextScript {
        var _r: TextScript = undefined;
        const _c = self.vtable.get_TextScript(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextScript(self: *@This(), value: TextScript) core.HResult!void {
        const _c = self.vtable.put_TextScript(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUnderline(self: *@This()) core.HResult!UnderlineType {
        var _r: UnderlineType = undefined;
        const _c = self.vtable.get_Underline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnderline(self: *@This(), value: UnderlineType) core.HResult!void {
        const _c = self.vtable.put_Underline(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWeight(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Weight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWeight(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Weight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetClone(self: *@This(), value: *ITextCharacterFormat) core.HResult!void {
        const _c = self.vtable.SetClone(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetClone(self: *@This()) core.HResult!*ITextCharacterFormat {
        var _r: *ITextCharacterFormat = undefined;
        const _c = self.vtable.GetClone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEqual(self: *@This(), format: *ITextCharacterFormat) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEqual(@ptrCast(self), format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ITextCharacterFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5adef3db-05fb-442d-8065-642afea02ced";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllCaps: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_AllCaps: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_BackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Bold: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_Bold: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_FontStretch: *const fn(self: *anyopaque, _r: *FontStretch) callconv(.winapi) HRESULT,
        put_FontStretch: *const fn(self: *anyopaque, value: FontStretch) callconv(.winapi) HRESULT,
        get_FontStyle: *const fn(self: *anyopaque, _r: *FontStyle) callconv(.winapi) HRESULT,
        put_FontStyle: *const fn(self: *anyopaque, value: FontStyle) callconv(.winapi) HRESULT,
        get_ForegroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_ForegroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Hidden: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_Hidden: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_Italic: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_Italic: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_Kerning: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Kerning: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_LanguageTag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LanguageTag: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_LinkType: *const fn(self: *anyopaque, _r: *LinkType) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Outline: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_Outline: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_ProtectedText: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_ProtectedText: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_SmallCaps: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_SmallCaps: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_Spacing: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Spacing: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Strikethrough: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_Strikethrough: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_Subscript: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_Subscript: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_Superscript: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_Superscript: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_TextScript: *const fn(self: *anyopaque, _r: *TextScript) callconv(.winapi) HRESULT,
        put_TextScript: *const fn(self: *anyopaque, value: TextScript) callconv(.winapi) HRESULT,
        get_Underline: *const fn(self: *anyopaque, _r: *UnderlineType) callconv(.winapi) HRESULT,
        put_Underline: *const fn(self: *anyopaque, value: UnderlineType) callconv(.winapi) HRESULT,
        get_Weight: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Weight: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        SetClone: *const fn(self: *anyopaque, value: *ITextCharacterFormat) callconv(.winapi) HRESULT,
        GetClone: *const fn(self: *anyopaque, _r: **ITextCharacterFormat) callconv(.winapi) HRESULT,
        IsEqual: *const fn(self: *anyopaque, format: *ITextCharacterFormat, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ITextConstantsStatics = extern struct {
    vtable: *const VTable,
    pub fn getAutoColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_AutoColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinUnitCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MinUnitCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxUnitCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxUnitCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUndefinedColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_UndefinedColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUndefinedFloatValue(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_UndefinedFloatValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUndefinedInt32Value(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_UndefinedInt32Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUndefinedFontStretch(self: *@This()) core.HResult!FontStretch {
        var _r: FontStretch = undefined;
        const _c = self.vtable.get_UndefinedFontStretch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUndefinedFontStyle(self: *@This()) core.HResult!FontStyle {
        var _r: FontStyle = undefined;
        const _c = self.vtable.get_UndefinedFontStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ITextConstantsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "779e7c33-189d-4bfa-97c8-10db135d976e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutoColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MinUnitCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxUnitCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_UndefinedColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_UndefinedFloatValue: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_UndefinedInt32Value: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_UndefinedFontStretch: *const fn(self: *anyopaque, _r: *FontStretch) callconv(.winapi) HRESULT,
        get_UndefinedFontStyle: *const fn(self: *anyopaque, _r: *FontStyle) callconv(.winapi) HRESULT,
    };
};
pub const ITextDocument = extern struct {
    vtable: *const VTable,
    pub fn getCaretType(self: *@This()) core.HResult!CaretType {
        var _r: CaretType = undefined;
        const _c = self.vtable.get_CaretType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCaretType(self: *@This(), value: CaretType) core.HResult!void {
        const _c = self.vtable.put_CaretType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDefaultTabStop(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_DefaultTabStop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultTabStop(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_DefaultTabStop(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelection(self: *@This()) core.HResult!*ITextSelection {
        var _r: *ITextSelection = undefined;
        const _c = self.vtable.get_Selection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUndoLimit(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UndoLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUndoLimit(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_UndoLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CanCopy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanCopy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanPaste(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanPaste(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanRedo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanRedo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanUndo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanUndo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplyDisplayUpdates(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.ApplyDisplayUpdates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BatchDisplayUpdates(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.BatchDisplayUpdates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BeginUndoGroup(self: *@This()) core.HResult!void {
        const _c = self.vtable.BeginUndoGroup(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EndUndoGroup(self: *@This()) core.HResult!void {
        const _c = self.vtable.EndUndoGroup(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDefaultCharacterFormat(self: *@This()) core.HResult!*ITextCharacterFormat {
        var _r: *ITextCharacterFormat = undefined;
        const _c = self.vtable.GetDefaultCharacterFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultParagraphFormat(self: *@This()) core.HResult!*ITextParagraphFormat {
        var _r: *ITextParagraphFormat = undefined;
        const _c = self.vtable.GetDefaultParagraphFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRange(self: *@This(), startPosition: i32, endPosition: i32) core.HResult!*ITextRange {
        var _r: *ITextRange = undefined;
        const _c = self.vtable.GetRange(@ptrCast(self), startPosition, endPosition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRangeFromPoint(self: *@This(), point: Point, options: PointOptions) core.HResult!*ITextRange {
        var _r: *ITextRange = undefined;
        const _c = self.vtable.GetRangeFromPoint(@ptrCast(self), point, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetText(self: *@This(), options: TextGetOptions, value: HSTRING) core.HResult!void {
        const _c = self.vtable.GetText(@ptrCast(self), options, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LoadFromStream(self: *@This(), options: TextSetOptions, value: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.LoadFromStream(@ptrCast(self), options, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Redo(self: *@This()) core.HResult!void {
        const _c = self.vtable.Redo(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SaveToStream(self: *@This(), options: TextGetOptions, value: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.SaveToStream(@ptrCast(self), options, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetDefaultCharacterFormat(self: *@This(), value: *ITextCharacterFormat) core.HResult!void {
        const _c = self.vtable.SetDefaultCharacterFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetDefaultParagraphFormat(self: *@This(), value: *ITextParagraphFormat) core.HResult!void {
        const _c = self.vtable.SetDefaultParagraphFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetText(self: *@This(), options: TextSetOptions, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetText(@ptrCast(self), options, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Undo(self: *@This()) core.HResult!void {
        const _c = self.vtable.Undo(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ITextDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "beee4ddb-90b2-408c-a2f6-0a0ac31e33e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CaretType: *const fn(self: *anyopaque, _r: *CaretType) callconv(.winapi) HRESULT,
        put_CaretType: *const fn(self: *anyopaque, value: CaretType) callconv(.winapi) HRESULT,
        get_DefaultTabStop: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_DefaultTabStop: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Selection: *const fn(self: *anyopaque, _r: **ITextSelection) callconv(.winapi) HRESULT,
        get_UndoLimit: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_UndoLimit: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        CanCopy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        CanPaste: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        CanRedo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        CanUndo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ApplyDisplayUpdates: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        BatchDisplayUpdates: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        BeginUndoGroup: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        EndUndoGroup: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetDefaultCharacterFormat: *const fn(self: *anyopaque, _r: **ITextCharacterFormat) callconv(.winapi) HRESULT,
        GetDefaultParagraphFormat: *const fn(self: *anyopaque, _r: **ITextParagraphFormat) callconv(.winapi) HRESULT,
        GetRange: *const fn(self: *anyopaque, startPosition: i32, endPosition: i32, _r: **ITextRange) callconv(.winapi) HRESULT,
        GetRangeFromPoint: *const fn(self: *anyopaque, point: Point, options: PointOptions, _r: **ITextRange) callconv(.winapi) HRESULT,
        GetText: *const fn(self: *anyopaque, options: TextGetOptions, value: HSTRING) callconv(.winapi) HRESULT,
        LoadFromStream: *const fn(self: *anyopaque, options: TextSetOptions, value: *IRandomAccessStream) callconv(.winapi) HRESULT,
        Redo: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SaveToStream: *const fn(self: *anyopaque, options: TextGetOptions, value: *IRandomAccessStream) callconv(.winapi) HRESULT,
        SetDefaultCharacterFormat: *const fn(self: *anyopaque, value: *ITextCharacterFormat) callconv(.winapi) HRESULT,
        SetDefaultParagraphFormat: *const fn(self: *anyopaque, value: *ITextParagraphFormat) callconv(.winapi) HRESULT,
        SetText: *const fn(self: *anyopaque, options: TextSetOptions, value: HSTRING) callconv(.winapi) HRESULT,
        Undo: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ITextDocument2 = extern struct {
    vtable: *const VTable,
    pub fn getAlignmentIncludesTrailingWhitespace(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AlignmentIncludesTrailingWhitespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlignmentIncludesTrailingWhitespace(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AlignmentIncludesTrailingWhitespace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIgnoreTrailingCharacterSpacing(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IgnoreTrailingCharacterSpacing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIgnoreTrailingCharacterSpacing(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IgnoreTrailingCharacterSpacing(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ITextDocument2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2311112-8c89-49c9-9118-f057cbb814ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlignmentIncludesTrailingWhitespace: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AlignmentIncludesTrailingWhitespace: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IgnoreTrailingCharacterSpacing: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IgnoreTrailingCharacterSpacing: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ITextDocument3 = extern struct {
    vtable: *const VTable,
    pub fn ClearUndoRedoHistory(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearUndoRedoHistory(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ITextDocument3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75ab03a1-a6f8-441d-aa18-0a851d6e5e3c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ClearUndoRedoHistory: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ITextDocument4 = extern struct {
    vtable: *const VTable,
    pub fn SetMath(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetMath(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetMath(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.GetMath(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetMathMode(self: *@This(), mode: RichEditMathMode) core.HResult!void {
        const _c = self.vtable.SetMathMode(@ptrCast(self), mode);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ITextDocument4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "619c20f2-cb3b-4521-981f-2865b1b93f04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetMath: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        GetMath: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        SetMathMode: *const fn(self: *anyopaque, mode: RichEditMathMode) callconv(.winapi) HRESULT,
    };
};
pub const ITextParagraphFormat = extern struct {
    vtable: *const VTable,
    pub fn getAlignment(self: *@This()) core.HResult!ParagraphAlignment {
        var _r: ParagraphAlignment = undefined;
        const _c = self.vtable.get_Alignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlignment(self: *@This(), value: ParagraphAlignment) core.HResult!void {
        const _c = self.vtable.put_Alignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFirstLineIndent(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_FirstLineIndent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeepTogether(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_KeepTogether(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeepTogether(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_KeepTogether(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeepWithNext(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_KeepWithNext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeepWithNext(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_KeepWithNext(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeftIndent(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LeftIndent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLineSpacing(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LineSpacing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLineSpacingRule(self: *@This()) core.HResult!LineSpacingRule {
        var _r: LineSpacingRule = undefined;
        const _c = self.vtable.get_LineSpacingRule(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getListAlignment(self: *@This()) core.HResult!MarkerAlignment {
        var _r: MarkerAlignment = undefined;
        const _c = self.vtable.get_ListAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListAlignment(self: *@This(), value: MarkerAlignment) core.HResult!void {
        const _c = self.vtable.put_ListAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListLevelIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ListLevelIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListLevelIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ListLevelIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListStart(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ListStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListStart(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ListStart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListStyle(self: *@This()) core.HResult!MarkerStyle {
        var _r: MarkerStyle = undefined;
        const _c = self.vtable.get_ListStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListStyle(self: *@This(), value: MarkerStyle) core.HResult!void {
        const _c = self.vtable.put_ListStyle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListTab(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_ListTab(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListTab(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_ListTab(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListType(self: *@This()) core.HResult!MarkerType {
        var _r: MarkerType = undefined;
        const _c = self.vtable.get_ListType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListType(self: *@This(), value: MarkerType) core.HResult!void {
        const _c = self.vtable.put_ListType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNoLineNumber(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_NoLineNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNoLineNumber(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_NoLineNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPageBreakBefore(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_PageBreakBefore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPageBreakBefore(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_PageBreakBefore(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightIndent(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RightIndent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightIndent(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RightIndent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightToLeft(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_RightToLeft(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightToLeft(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_RightToLeft(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStyle(self: *@This()) core.HResult!ParagraphStyle {
        var _r: ParagraphStyle = undefined;
        const _c = self.vtable.get_Style(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStyle(self: *@This(), value: ParagraphStyle) core.HResult!void {
        const _c = self.vtable.put_Style(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpaceAfter(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_SpaceAfter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpaceAfter(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_SpaceAfter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpaceBefore(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_SpaceBefore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpaceBefore(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_SpaceBefore(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWidowControl(self: *@This()) core.HResult!FormatEffect {
        var _r: FormatEffect = undefined;
        const _c = self.vtable.get_WidowControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWidowControl(self: *@This(), value: FormatEffect) core.HResult!void {
        const _c = self.vtable.put_WidowControl(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTabCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TabCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddTab(self: *@This(), position: f32, alignment: TabAlignment, leader: TabLeader) core.HResult!void {
        const _c = self.vtable.AddTab(@ptrCast(self), position, alignment, leader);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearAllTabs(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearAllTabs(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DeleteTab(self: *@This(), position: f32) core.HResult!void {
        const _c = self.vtable.DeleteTab(@ptrCast(self), position);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetClone(self: *@This()) core.HResult!*ITextParagraphFormat {
        var _r: *ITextParagraphFormat = undefined;
        const _c = self.vtable.GetClone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTab(self: *@This(), index: i32, position: f32, alignment: TabAlignment, leader: TabLeader) core.HResult!void {
        const _c = self.vtable.GetTab(@ptrCast(self), index, position, alignment, leader);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsEqual(self: *@This(), format: *ITextParagraphFormat) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEqual(@ptrCast(self), format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetClone(self: *@This(), format: *ITextParagraphFormat) core.HResult!void {
        const _c = self.vtable.SetClone(@ptrCast(self), format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetIndents(self: *@This(), start: f32, left: f32, right: f32) core.HResult!void {
        const _c = self.vtable.SetIndents(@ptrCast(self), start, left, right);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetLineSpacing(self: *@This(), rule: LineSpacingRule, spacing: f32) core.HResult!void {
        const _c = self.vtable.SetLineSpacing(@ptrCast(self), rule, spacing);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ITextParagraphFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2cf8cfa6-4676-498a-93f5-bbdbfc0bd883";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Alignment: *const fn(self: *anyopaque, _r: *ParagraphAlignment) callconv(.winapi) HRESULT,
        put_Alignment: *const fn(self: *anyopaque, value: ParagraphAlignment) callconv(.winapi) HRESULT,
        get_FirstLineIndent: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_KeepTogether: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_KeepTogether: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_KeepWithNext: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_KeepWithNext: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_LeftIndent: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_LineSpacing: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_LineSpacingRule: *const fn(self: *anyopaque, _r: *LineSpacingRule) callconv(.winapi) HRESULT,
        get_ListAlignment: *const fn(self: *anyopaque, _r: *MarkerAlignment) callconv(.winapi) HRESULT,
        put_ListAlignment: *const fn(self: *anyopaque, value: MarkerAlignment) callconv(.winapi) HRESULT,
        get_ListLevelIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ListLevelIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ListStart: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ListStart: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ListStyle: *const fn(self: *anyopaque, _r: *MarkerStyle) callconv(.winapi) HRESULT,
        put_ListStyle: *const fn(self: *anyopaque, value: MarkerStyle) callconv(.winapi) HRESULT,
        get_ListTab: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_ListTab: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_ListType: *const fn(self: *anyopaque, _r: *MarkerType) callconv(.winapi) HRESULT,
        put_ListType: *const fn(self: *anyopaque, value: MarkerType) callconv(.winapi) HRESULT,
        get_NoLineNumber: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_NoLineNumber: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_PageBreakBefore: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_PageBreakBefore: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_RightIndent: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RightIndent: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RightToLeft: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_RightToLeft: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_Style: *const fn(self: *anyopaque, _r: *ParagraphStyle) callconv(.winapi) HRESULT,
        put_Style: *const fn(self: *anyopaque, value: ParagraphStyle) callconv(.winapi) HRESULT,
        get_SpaceAfter: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_SpaceAfter: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_SpaceBefore: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_SpaceBefore: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_WidowControl: *const fn(self: *anyopaque, _r: *FormatEffect) callconv(.winapi) HRESULT,
        put_WidowControl: *const fn(self: *anyopaque, value: FormatEffect) callconv(.winapi) HRESULT,
        get_TabCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        AddTab: *const fn(self: *anyopaque, position: f32, alignment: TabAlignment, leader: TabLeader) callconv(.winapi) HRESULT,
        ClearAllTabs: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        DeleteTab: *const fn(self: *anyopaque, position: f32) callconv(.winapi) HRESULT,
        GetClone: *const fn(self: *anyopaque, _r: **ITextParagraphFormat) callconv(.winapi) HRESULT,
        GetTab: *const fn(self: *anyopaque, index: i32, position: f32, alignment: TabAlignment, leader: TabLeader) callconv(.winapi) HRESULT,
        IsEqual: *const fn(self: *anyopaque, format: *ITextParagraphFormat, _r: *bool) callconv(.winapi) HRESULT,
        SetClone: *const fn(self: *anyopaque, format: *ITextParagraphFormat) callconv(.winapi) HRESULT,
        SetIndents: *const fn(self: *anyopaque, start: f32, left: f32, right: f32) callconv(.winapi) HRESULT,
        SetLineSpacing: *const fn(self: *anyopaque, rule: LineSpacingRule, spacing: f32) callconv(.winapi) HRESULT,
    };
};
pub const ITextRange = extern struct {
    vtable: *const VTable,
    pub fn getCharacter(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Character(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharacter(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.put_Character(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCharacterFormat(self: *@This()) core.HResult!*ITextCharacterFormat {
        var _r: *ITextCharacterFormat = undefined;
        const _c = self.vtable.get_CharacterFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharacterFormat(self: *@This(), value: *ITextCharacterFormat) core.HResult!void {
        const _c = self.vtable.put_CharacterFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFormattedText(self: *@This()) core.HResult!*ITextRange {
        var _r: *ITextRange = undefined;
        const _c = self.vtable.get_FormattedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFormattedText(self: *@This(), value: *ITextRange) core.HResult!void {
        const _c = self.vtable.put_FormattedText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndPosition(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_EndPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndPosition(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_EndPosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGravity(self: *@This()) core.HResult!RangeGravity {
        var _r: RangeGravity = undefined;
        const _c = self.vtable.get_Gravity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGravity(self: *@This(), value: RangeGravity) core.HResult!void {
        const _c = self.vtable.put_Gravity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLength(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLink(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Link(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLink(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Link(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getParagraphFormat(self: *@This()) core.HResult!*ITextParagraphFormat {
        var _r: *ITextParagraphFormat = undefined;
        const _c = self.vtable.get_ParagraphFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putParagraphFormat(self: *@This(), value: *ITextParagraphFormat) core.HResult!void {
        const _c = self.vtable.put_ParagraphFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartPosition(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_StartPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartPosition(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_StartPosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStoryLength(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_StoryLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Text(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CanPaste(self: *@This(), format: i32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanPaste(@ptrCast(self), format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeCase(self: *@This(), value: LetterCase) core.HResult!void {
        const _c = self.vtable.ChangeCase(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Collapse(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.Collapse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Copy(self: *@This()) core.HResult!void {
        const _c = self.vtable.Copy(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Cut(self: *@This()) core.HResult!void {
        const _c = self.vtable.Cut(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Delete(self: *@This(), unit: TextRangeUnit, count: i32) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.Delete(@ptrCast(self), unit, count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EndOf(self: *@This(), unit: TextRangeUnit, extend: bool) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.EndOf(@ptrCast(self), unit, extend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Expand(self: *@This(), unit: TextRangeUnit) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.Expand(@ptrCast(self), unit, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindText(self: *@This(), value: HSTRING, scanLength: i32, options: FindOptions) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.FindText(@ptrCast(self), value, scanLength, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCharacterUtf32(self: *@This(), value: u32, offset: i32) core.HResult!void {
        const _c = self.vtable.GetCharacterUtf32(@ptrCast(self), value, offset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetClone(self: *@This()) core.HResult!*ITextRange {
        var _r: *ITextRange = undefined;
        const _c = self.vtable.GetClone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIndex(self: *@This(), unit: TextRangeUnit) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetIndex(@ptrCast(self), unit, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPoint(self: *@This(), horizontalAlign: HorizontalCharacterAlignment, verticalAlign: VerticalCharacterAlignment, options: PointOptions, point: Point) core.HResult!void {
        const _c = self.vtable.GetPoint(@ptrCast(self), horizontalAlign, verticalAlign, options, point);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetRect(self: *@This(), options: PointOptions, rect: Rect, hit: i32) core.HResult!void {
        const _c = self.vtable.GetRect(@ptrCast(self), options, rect, hit);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetText(self: *@This(), options: TextGetOptions, value: HSTRING) core.HResult!void {
        const _c = self.vtable.GetText(@ptrCast(self), options, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetTextViaStream(self: *@This(), options: TextGetOptions, value: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.GetTextViaStream(@ptrCast(self), options, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InRange(self: *@This(), range: *ITextRange) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.InRange(@ptrCast(self), range, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InsertImage(self: *@This(), width: i32, height: i32, ascent: i32, verticalAlign: VerticalCharacterAlignment, alternateText: HSTRING, value: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.InsertImage(@ptrCast(self), width, height, ascent, verticalAlign, alternateText, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InStory(self: *@This(), range: *ITextRange) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.InStory(@ptrCast(self), range, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEqual(self: *@This(), range: *ITextRange) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEqual(@ptrCast(self), range, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Move(self: *@This(), unit: TextRangeUnit, count: i32) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.Move(@ptrCast(self), unit, count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveEnd(self: *@This(), unit: TextRangeUnit, count: i32) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.MoveEnd(@ptrCast(self), unit, count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveStart(self: *@This(), unit: TextRangeUnit, count: i32) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.MoveStart(@ptrCast(self), unit, count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Paste(self: *@This(), format: i32) core.HResult!void {
        const _c = self.vtable.Paste(@ptrCast(self), format);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ScrollIntoView(self: *@This(), value: PointOptions) core.HResult!void {
        const _c = self.vtable.ScrollIntoView(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MatchSelection(self: *@This()) core.HResult!void {
        const _c = self.vtable.MatchSelection(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetIndex(self: *@This(), unit: TextRangeUnit, index: i32, extend: bool) core.HResult!void {
        const _c = self.vtable.SetIndex(@ptrCast(self), unit, index, extend);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPoint(self: *@This(), point: Point, options: PointOptions, extend: bool) core.HResult!void {
        const _c = self.vtable.SetPoint(@ptrCast(self), point, options, extend);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetRange(self: *@This(), startPosition: i32, endPosition: i32) core.HResult!void {
        const _c = self.vtable.SetRange(@ptrCast(self), startPosition, endPosition);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetText(self: *@This(), options: TextSetOptions, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetText(@ptrCast(self), options, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetTextViaStream(self: *@This(), options: TextSetOptions, value: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.SetTextViaStream(@ptrCast(self), options, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartOf(self: *@This(), unit: TextRangeUnit, extend: bool) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.StartOf(@ptrCast(self), unit, extend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ITextRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b9e4e57-c072-42a0-8945-af503ee54768";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Character: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        put_Character: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        get_CharacterFormat: *const fn(self: *anyopaque, _r: **ITextCharacterFormat) callconv(.winapi) HRESULT,
        put_CharacterFormat: *const fn(self: *anyopaque, value: *ITextCharacterFormat) callconv(.winapi) HRESULT,
        get_FormattedText: *const fn(self: *anyopaque, _r: **ITextRange) callconv(.winapi) HRESULT,
        put_FormattedText: *const fn(self: *anyopaque, value: *ITextRange) callconv(.winapi) HRESULT,
        get_EndPosition: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_EndPosition: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Gravity: *const fn(self: *anyopaque, _r: *RangeGravity) callconv(.winapi) HRESULT,
        put_Gravity: *const fn(self: *anyopaque, value: RangeGravity) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Link: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Link: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ParagraphFormat: *const fn(self: *anyopaque, _r: **ITextParagraphFormat) callconv(.winapi) HRESULT,
        put_ParagraphFormat: *const fn(self: *anyopaque, value: *ITextParagraphFormat) callconv(.winapi) HRESULT,
        get_StartPosition: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_StartPosition: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_StoryLength: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        CanPaste: *const fn(self: *anyopaque, format: i32, _r: *bool) callconv(.winapi) HRESULT,
        ChangeCase: *const fn(self: *anyopaque, value: LetterCase) callconv(.winapi) HRESULT,
        Collapse: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Cut: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Delete: *const fn(self: *anyopaque, unit: TextRangeUnit, count: i32, _r: *i32) callconv(.winapi) HRESULT,
        EndOf: *const fn(self: *anyopaque, unit: TextRangeUnit, extend: bool, _r: *i32) callconv(.winapi) HRESULT,
        Expand: *const fn(self: *anyopaque, unit: TextRangeUnit, _r: *i32) callconv(.winapi) HRESULT,
        FindText: *const fn(self: *anyopaque, value: HSTRING, scanLength: i32, options: FindOptions, _r: *i32) callconv(.winapi) HRESULT,
        GetCharacterUtf32: *const fn(self: *anyopaque, value: u32, offset: i32) callconv(.winapi) HRESULT,
        GetClone: *const fn(self: *anyopaque, _r: **ITextRange) callconv(.winapi) HRESULT,
        GetIndex: *const fn(self: *anyopaque, unit: TextRangeUnit, _r: *i32) callconv(.winapi) HRESULT,
        GetPoint: *const fn(self: *anyopaque, horizontalAlign: HorizontalCharacterAlignment, verticalAlign: VerticalCharacterAlignment, options: PointOptions, point: Point) callconv(.winapi) HRESULT,
        GetRect: *const fn(self: *anyopaque, options: PointOptions, rect: Rect, hit: i32) callconv(.winapi) HRESULT,
        GetText: *const fn(self: *anyopaque, options: TextGetOptions, value: HSTRING) callconv(.winapi) HRESULT,
        GetTextViaStream: *const fn(self: *anyopaque, options: TextGetOptions, value: *IRandomAccessStream) callconv(.winapi) HRESULT,
        InRange: *const fn(self: *anyopaque, range: *ITextRange, _r: *bool) callconv(.winapi) HRESULT,
        InsertImage: *const fn(self: *anyopaque, width: i32, height: i32, ascent: i32, verticalAlign: VerticalCharacterAlignment, alternateText: HSTRING, value: *IRandomAccessStream) callconv(.winapi) HRESULT,
        InStory: *const fn(self: *anyopaque, range: *ITextRange, _r: *bool) callconv(.winapi) HRESULT,
        IsEqual: *const fn(self: *anyopaque, range: *ITextRange, _r: *bool) callconv(.winapi) HRESULT,
        Move: *const fn(self: *anyopaque, unit: TextRangeUnit, count: i32, _r: *i32) callconv(.winapi) HRESULT,
        MoveEnd: *const fn(self: *anyopaque, unit: TextRangeUnit, count: i32, _r: *i32) callconv(.winapi) HRESULT,
        MoveStart: *const fn(self: *anyopaque, unit: TextRangeUnit, count: i32, _r: *i32) callconv(.winapi) HRESULT,
        Paste: *const fn(self: *anyopaque, format: i32) callconv(.winapi) HRESULT,
        ScrollIntoView: *const fn(self: *anyopaque, value: PointOptions) callconv(.winapi) HRESULT,
        MatchSelection: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetIndex: *const fn(self: *anyopaque, unit: TextRangeUnit, index: i32, extend: bool) callconv(.winapi) HRESULT,
        SetPoint: *const fn(self: *anyopaque, point: Point, options: PointOptions, extend: bool) callconv(.winapi) HRESULT,
        SetRange: *const fn(self: *anyopaque, startPosition: i32, endPosition: i32) callconv(.winapi) HRESULT,
        SetText: *const fn(self: *anyopaque, options: TextSetOptions, value: HSTRING) callconv(.winapi) HRESULT,
        SetTextViaStream: *const fn(self: *anyopaque, options: TextSetOptions, value: *IRandomAccessStream) callconv(.winapi) HRESULT,
        StartOf: *const fn(self: *anyopaque, unit: TextRangeUnit, extend: bool, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ITextSelection = extern struct {
    vtable: *const VTable,
    pub fn getOptions(self: *@This()) core.HResult!SelectionOptions {
        var _r: SelectionOptions = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOptions(self: *@This(), value: SelectionOptions) core.HResult!void {
        const _c = self.vtable.put_Options(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getType(self: *@This()) core.HResult!SelectionType {
        var _r: SelectionType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EndKey(self: *@This(), unit: TextRangeUnit, extend: bool) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.EndKey(@ptrCast(self), unit, extend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HomeKey(self: *@This(), unit: TextRangeUnit, extend: bool) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.HomeKey(@ptrCast(self), unit, extend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveDown(self: *@This(), unit: TextRangeUnit, count: i32, extend: bool) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.MoveDown(@ptrCast(self), unit, count, extend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveLeft(self: *@This(), unit: TextRangeUnit, count: i32, extend: bool) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.MoveLeft(@ptrCast(self), unit, count, extend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveRight(self: *@This(), unit: TextRangeUnit, count: i32, extend: bool) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.MoveRight(@ptrCast(self), unit, count, extend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveUp(self: *@This(), unit: TextRangeUnit, count: i32, extend: bool) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.MoveUp(@ptrCast(self), unit, count, extend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TypeText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.TypeText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Text.ITextSelection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6d36724-f28f-430a-b2cf-c343671ec0e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: *SelectionOptions) callconv(.winapi) HRESULT,
        put_Options: *const fn(self: *anyopaque, value: SelectionOptions) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *SelectionType) callconv(.winapi) HRESULT,
        EndKey: *const fn(self: *anyopaque, unit: TextRangeUnit, extend: bool, _r: *i32) callconv(.winapi) HRESULT,
        HomeKey: *const fn(self: *anyopaque, unit: TextRangeUnit, extend: bool, _r: *i32) callconv(.winapi) HRESULT,
        MoveDown: *const fn(self: *anyopaque, unit: TextRangeUnit, count: i32, extend: bool, _r: *i32) callconv(.winapi) HRESULT,
        MoveLeft: *const fn(self: *anyopaque, unit: TextRangeUnit, count: i32, extend: bool, _r: *i32) callconv(.winapi) HRESULT,
        MoveRight: *const fn(self: *anyopaque, unit: TextRangeUnit, count: i32, extend: bool, _r: *i32) callconv(.winapi) HRESULT,
        MoveUp: *const fn(self: *anyopaque, unit: TextRangeUnit, count: i32, extend: bool, _r: *i32) callconv(.winapi) HRESULT,
        TypeText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const LetterCase = enum(i32) {
    Lower = 0,
    Upper = 1,
};
pub const LineSpacingRule = enum(i32) {
    Undefined = 0,
    Single = 1,
    OneAndHalf = 2,
    Double = 3,
    AtLeast = 4,
    Exactly = 5,
    Multiple = 6,
    Percent = 7,
};
pub const LinkType = enum(i32) {
    Undefined = 0,
    NotALink = 1,
    ClientLink = 2,
    FriendlyLinkName = 3,
    FriendlyLinkAddress = 4,
    AutoLink = 5,
    AutoLinkEmail = 6,
    AutoLinkPhone = 7,
    AutoLinkPath = 8,
};
pub const MarkerAlignment = enum(i32) {
    Undefined = 0,
    Left = 1,
    Center = 2,
    Right = 3,
};
pub const MarkerStyle = enum(i32) {
    Undefined = 0,
    Parenthesis = 1,
    Parentheses = 2,
    Period = 3,
    Plain = 4,
    Minus = 5,
    NoNumber = 6,
};
pub const MarkerType = enum(i32) {
    Undefined = 0,
    None = 1,
    Bullet = 2,
    Arabic = 3,
    LowercaseEnglishLetter = 4,
    UppercaseEnglishLetter = 5,
    LowercaseRoman = 6,
    UppercaseRoman = 7,
    UnicodeSequence = 8,
    CircledNumber = 9,
    BlackCircleWingding = 10,
    WhiteCircleWingding = 11,
    ArabicWide = 12,
    SimplifiedChinese = 13,
    TraditionalChinese = 14,
    JapanSimplifiedChinese = 15,
    JapanKorea = 16,
    ArabicDictionary = 17,
    ArabicAbjad = 18,
    Hebrew = 19,
    ThaiAlphabetic = 20,
    ThaiNumeric = 21,
    DevanagariVowel = 22,
    DevanagariConsonant = 23,
    DevanagariNumeric = 24,
};
pub const ParagraphAlignment = enum(i32) {
    Undefined = 0,
    Left = 1,
    Center = 2,
    Right = 3,
    Justify = 4,
};
pub const ParagraphStyle = enum(i32) {
    Undefined = 0,
    None = 1,
    Normal = 2,
    Heading1 = 3,
    Heading2 = 4,
    Heading3 = 5,
    Heading4 = 6,
    Heading5 = 7,
    Heading6 = 8,
    Heading7 = 9,
    Heading8 = 10,
    Heading9 = 11,
};
pub const PointOptions = enum(i32) {
    None = 0,
    IncludeInset = 1,
    Start = 32,
    ClientCoordinates = 256,
    AllowOffClient = 512,
    Transform = 1024,
    NoHorizontalScroll = 65536,
    NoVerticalScroll = 262144,
};
pub const RangeGravity = enum(i32) {
    UIBehavior = 0,
    Backward = 1,
    Forward = 2,
    Inward = 3,
    Outward = 4,
};
pub const RichEditMathMode = enum(i32) {
    NoMath = 0,
    MathOnly = 1,
};
pub const RichEditTextDocument = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlignmentIncludesTrailingWhitespace(self: *@This()) core.HResult!bool {
        var this: ?*ITextDocument2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextDocument2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAlignmentIncludesTrailingWhitespace();
    }
    pub fn putAlignmentIncludesTrailingWhitespace(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITextDocument2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextDocument2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAlignmentIncludesTrailingWhitespace(value);
    }
    pub fn getIgnoreTrailingCharacterSpacing(self: *@This()) core.HResult!bool {
        var this: ?*ITextDocument2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextDocument2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIgnoreTrailingCharacterSpacing();
    }
    pub fn putIgnoreTrailingCharacterSpacing(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITextDocument2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextDocument2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIgnoreTrailingCharacterSpacing(value);
    }
    pub fn ClearUndoRedoHistory(self: *@This()) core.HResult!void {
        var this: ?*ITextDocument3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextDocument3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ClearUndoRedoHistory();
    }
    pub fn SetMath(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ITextDocument4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextDocument4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetMath(value);
    }
    pub fn GetMath(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ITextDocument4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextDocument4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMath(value);
    }
    pub fn SetMathMode(self: *@This(), mode: RichEditMathMode) core.HResult!void {
        var this: ?*ITextDocument4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextDocument4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetMathMode(mode);
    }
    pub fn getCaretType(self: *@This()) core.HResult!CaretType {
        const this: *ITextDocument = @ptrCast(self);
        return try this.getCaretType();
    }
    pub fn putCaretType(self: *@This(), value: CaretType) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.putCaretType(value);
    }
    pub fn getDefaultTabStop(self: *@This()) core.HResult!f32 {
        const this: *ITextDocument = @ptrCast(self);
        return try this.getDefaultTabStop();
    }
    pub fn putDefaultTabStop(self: *@This(), value: f32) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.putDefaultTabStop(value);
    }
    pub fn getSelection(self: *@This()) core.HResult!*ITextSelection {
        const this: *ITextDocument = @ptrCast(self);
        return try this.getSelection();
    }
    pub fn getUndoLimit(self: *@This()) core.HResult!u32 {
        const this: *ITextDocument = @ptrCast(self);
        return try this.getUndoLimit();
    }
    pub fn putUndoLimit(self: *@This(), value: u32) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.putUndoLimit(value);
    }
    pub fn CanCopy(self: *@This()) core.HResult!bool {
        const this: *ITextDocument = @ptrCast(self);
        return try this.CanCopy();
    }
    pub fn CanPaste(self: *@This()) core.HResult!bool {
        const this: *ITextDocument = @ptrCast(self);
        return try this.CanPaste();
    }
    pub fn CanRedo(self: *@This()) core.HResult!bool {
        const this: *ITextDocument = @ptrCast(self);
        return try this.CanRedo();
    }
    pub fn CanUndo(self: *@This()) core.HResult!bool {
        const this: *ITextDocument = @ptrCast(self);
        return try this.CanUndo();
    }
    pub fn ApplyDisplayUpdates(self: *@This()) core.HResult!i32 {
        const this: *ITextDocument = @ptrCast(self);
        return try this.ApplyDisplayUpdates();
    }
    pub fn BatchDisplayUpdates(self: *@This()) core.HResult!i32 {
        const this: *ITextDocument = @ptrCast(self);
        return try this.BatchDisplayUpdates();
    }
    pub fn BeginUndoGroup(self: *@This()) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.BeginUndoGroup();
    }
    pub fn EndUndoGroup(self: *@This()) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.EndUndoGroup();
    }
    pub fn GetDefaultCharacterFormat(self: *@This()) core.HResult!*ITextCharacterFormat {
        const this: *ITextDocument = @ptrCast(self);
        return try this.GetDefaultCharacterFormat();
    }
    pub fn GetDefaultParagraphFormat(self: *@This()) core.HResult!*ITextParagraphFormat {
        const this: *ITextDocument = @ptrCast(self);
        return try this.GetDefaultParagraphFormat();
    }
    pub fn GetRange(self: *@This(), startPosition: i32, endPosition: i32) core.HResult!*ITextRange {
        const this: *ITextDocument = @ptrCast(self);
        return try this.GetRange(startPosition, endPosition);
    }
    pub fn GetRangeFromPoint(self: *@This(), point: Point, options: PointOptions) core.HResult!*ITextRange {
        const this: *ITextDocument = @ptrCast(self);
        return try this.GetRangeFromPoint(point, options);
    }
    pub fn GetText(self: *@This(), options: TextGetOptions, value: HSTRING) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.GetText(options, value);
    }
    pub fn LoadFromStream(self: *@This(), options: TextSetOptions, value: *IRandomAccessStream) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.LoadFromStream(options, value);
    }
    pub fn Redo(self: *@This()) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.Redo();
    }
    pub fn SaveToStream(self: *@This(), options: TextGetOptions, value: *IRandomAccessStream) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.SaveToStream(options, value);
    }
    pub fn SetDefaultCharacterFormat(self: *@This(), value: *ITextCharacterFormat) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.SetDefaultCharacterFormat(value);
    }
    pub fn SetDefaultParagraphFormat(self: *@This(), value: *ITextParagraphFormat) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.SetDefaultParagraphFormat(value);
    }
    pub fn SetText(self: *@This(), options: TextSetOptions, value: HSTRING) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.SetText(options, value);
    }
    pub fn Undo(self: *@This()) core.HResult!void {
        const this: *ITextDocument = @ptrCast(self);
        return try this.Undo();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.RichEditTextDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextDocument.GUID;
    pub const IID: Guid = ITextDocument.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextDocument.SIGNATURE);
};
pub const RichEditTextRange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentLinkInfo(self: *@This()) core.HResult!*ContentLinkInfo {
        var this: ?*IRichEditTextRange = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRichEditTextRange.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentLinkInfo();
    }
    pub fn putContentLinkInfo(self: *@This(), value: *ContentLinkInfo) core.HResult!void {
        var this: ?*IRichEditTextRange = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRichEditTextRange.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContentLinkInfo(value);
    }
    pub fn getCharacter(self: *@This()) core.HResult!u16 {
        const this: *ITextRange = @ptrCast(self);
        return try this.getCharacter();
    }
    pub fn putCharacter(self: *@This(), value: u16) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.putCharacter(value);
    }
    pub fn getCharacterFormat(self: *@This()) core.HResult!*ITextCharacterFormat {
        const this: *ITextRange = @ptrCast(self);
        return try this.getCharacterFormat();
    }
    pub fn putCharacterFormat(self: *@This(), value: *ITextCharacterFormat) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.putCharacterFormat(value);
    }
    pub fn getFormattedText(self: *@This()) core.HResult!*ITextRange {
        const this: *ITextRange = @ptrCast(self);
        return try this.getFormattedText();
    }
    pub fn putFormattedText(self: *@This(), value: *ITextRange) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.putFormattedText(value);
    }
    pub fn getEndPosition(self: *@This()) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.getEndPosition();
    }
    pub fn putEndPosition(self: *@This(), value: i32) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.putEndPosition(value);
    }
    pub fn getGravity(self: *@This()) core.HResult!RangeGravity {
        const this: *ITextRange = @ptrCast(self);
        return try this.getGravity();
    }
    pub fn putGravity(self: *@This(), value: RangeGravity) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.putGravity(value);
    }
    pub fn getLength(self: *@This()) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.getLength();
    }
    pub fn getLink(self: *@This()) core.HResult!HSTRING {
        const this: *ITextRange = @ptrCast(self);
        return try this.getLink();
    }
    pub fn putLink(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.putLink(value);
    }
    pub fn getParagraphFormat(self: *@This()) core.HResult!*ITextParagraphFormat {
        const this: *ITextRange = @ptrCast(self);
        return try this.getParagraphFormat();
    }
    pub fn putParagraphFormat(self: *@This(), value: *ITextParagraphFormat) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.putParagraphFormat(value);
    }
    pub fn getStartPosition(self: *@This()) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.getStartPosition();
    }
    pub fn putStartPosition(self: *@This(), value: i32) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.putStartPosition(value);
    }
    pub fn getStoryLength(self: *@This()) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.getStoryLength();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ITextRange = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn CanPaste(self: *@This(), format: i32) core.HResult!bool {
        const this: *ITextRange = @ptrCast(self);
        return try this.CanPaste(format);
    }
    pub fn ChangeCase(self: *@This(), value: LetterCase) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.ChangeCase(value);
    }
    pub fn Collapse(self: *@This(), value: bool) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.Collapse(value);
    }
    pub fn Copy(self: *@This()) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.Copy();
    }
    pub fn Cut(self: *@This()) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.Cut();
    }
    pub fn Delete(self: *@This(), unit: TextRangeUnit, count: i32) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.Delete(unit, count);
    }
    pub fn EndOf(self: *@This(), unit: TextRangeUnit, extend: bool) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.EndOf(unit, extend);
    }
    pub fn Expand(self: *@This(), unit: TextRangeUnit) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.Expand(unit);
    }
    pub fn FindText(self: *@This(), value: HSTRING, scanLength: i32, options: FindOptions) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.FindText(value, scanLength, options);
    }
    pub fn GetCharacterUtf32(self: *@This(), value: u32, offset: i32) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.GetCharacterUtf32(value, offset);
    }
    pub fn GetClone(self: *@This()) core.HResult!*ITextRange {
        const this: *ITextRange = @ptrCast(self);
        return try this.GetClone();
    }
    pub fn GetIndex(self: *@This(), unit: TextRangeUnit) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.GetIndex(unit);
    }
    pub fn GetPoint(self: *@This(), horizontalAlign: HorizontalCharacterAlignment, verticalAlign: VerticalCharacterAlignment, options: PointOptions, point: Point) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.GetPoint(horizontalAlign, verticalAlign, options, point);
    }
    pub fn GetRect(self: *@This(), options: PointOptions, rect: Rect, hit: i32) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.GetRect(options, rect, hit);
    }
    pub fn GetText(self: *@This(), options: TextGetOptions, value: HSTRING) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.GetText(options, value);
    }
    pub fn GetTextViaStream(self: *@This(), options: TextGetOptions, value: *IRandomAccessStream) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.GetTextViaStream(options, value);
    }
    pub fn InRange(self: *@This(), range: *ITextRange) core.HResult!bool {
        const this: *ITextRange = @ptrCast(self);
        return try this.InRange(range);
    }
    pub fn InsertImage(self: *@This(), width: i32, height: i32, ascent: i32, verticalAlign: VerticalCharacterAlignment, alternateText: HSTRING, value: *IRandomAccessStream) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.InsertImage(width, height, ascent, verticalAlign, alternateText, value);
    }
    pub fn InStory(self: *@This(), range: *ITextRange) core.HResult!bool {
        const this: *ITextRange = @ptrCast(self);
        return try this.InStory(range);
    }
    pub fn IsEqual(self: *@This(), range: *ITextRange) core.HResult!bool {
        const this: *ITextRange = @ptrCast(self);
        return try this.IsEqual(range);
    }
    pub fn Move(self: *@This(), unit: TextRangeUnit, count: i32) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.Move(unit, count);
    }
    pub fn MoveEnd(self: *@This(), unit: TextRangeUnit, count: i32) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.MoveEnd(unit, count);
    }
    pub fn MoveStart(self: *@This(), unit: TextRangeUnit, count: i32) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.MoveStart(unit, count);
    }
    pub fn Paste(self: *@This(), format: i32) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.Paste(format);
    }
    pub fn ScrollIntoView(self: *@This(), value: PointOptions) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.ScrollIntoView(value);
    }
    pub fn MatchSelection(self: *@This()) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.MatchSelection();
    }
    pub fn SetIndex(self: *@This(), unit: TextRangeUnit, index: i32, extend: bool) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.SetIndex(unit, index, extend);
    }
    pub fn SetPoint(self: *@This(), point: Point, options: PointOptions, extend: bool) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.SetPoint(point, options, extend);
    }
    pub fn SetRange(self: *@This(), startPosition: i32, endPosition: i32) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.SetRange(startPosition, endPosition);
    }
    pub fn SetText(self: *@This(), options: TextSetOptions, value: HSTRING) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.SetText(options, value);
    }
    pub fn SetTextViaStream(self: *@This(), options: TextSetOptions, value: *IRandomAccessStream) core.HResult!void {
        const this: *ITextRange = @ptrCast(self);
        return try this.SetTextViaStream(options, value);
    }
    pub fn StartOf(self: *@This(), unit: TextRangeUnit, extend: bool) core.HResult!i32 {
        const this: *ITextRange = @ptrCast(self);
        return try this.StartOf(unit, extend);
    }
    pub const NAME: []const u8 = "Windows.UI.Text.RichEditTextRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextRange.GUID;
    pub const IID: Guid = ITextRange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextRange.SIGNATURE);
};
pub const SelectionOptions = enum(i32) {
    StartActive = 1,
    AtEndOfLine = 2,
    Overtype = 4,
    Active = 8,
    Replace = 16,
};
pub const SelectionType = enum(i32) {
    None = 0,
    InsertionPoint = 1,
    Normal = 2,
    InlineShape = 7,
    Shape = 8,
};
pub const TabAlignment = enum(i32) {
    Left = 0,
    Center = 1,
    Right = 2,
    Decimal = 3,
    Bar = 4,
};
pub const TabLeader = enum(i32) {
    Spaces = 0,
    Dots = 1,
    Dashes = 2,
    Lines = 3,
    ThickLines = 4,
    Equals = 5,
};
pub const TextConstants = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAutoColor() core.HResult!Color {
        const _f = @This().ITextConstantsStaticsCache.get();
        return try _f.getAutoColor();
    }
    pub fn getMinUnitCount() core.HResult!i32 {
        const _f = @This().ITextConstantsStaticsCache.get();
        return try _f.getMinUnitCount();
    }
    pub fn getMaxUnitCount() core.HResult!i32 {
        const _f = @This().ITextConstantsStaticsCache.get();
        return try _f.getMaxUnitCount();
    }
    pub fn getUndefinedColor() core.HResult!Color {
        const _f = @This().ITextConstantsStaticsCache.get();
        return try _f.getUndefinedColor();
    }
    pub fn getUndefinedFloatValue() core.HResult!f32 {
        const _f = @This().ITextConstantsStaticsCache.get();
        return try _f.getUndefinedFloatValue();
    }
    pub fn getUndefinedInt32Value() core.HResult!i32 {
        const _f = @This().ITextConstantsStaticsCache.get();
        return try _f.getUndefinedInt32Value();
    }
    pub fn getUndefinedFontStretch() core.HResult!FontStretch {
        const _f = @This().ITextConstantsStaticsCache.get();
        return try _f.getUndefinedFontStretch();
    }
    pub fn getUndefinedFontStyle() core.HResult!FontStyle {
        const _f = @This().ITextConstantsStaticsCache.get();
        return try _f.getUndefinedFontStyle();
    }
    pub const NAME: []const u8 = "Windows.UI.Text.TextConstants";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ITextConstantsStaticsCache: FactoryCache(ITextConstantsStatics, RUNTIME_NAME) = .{};
};
pub const TextDecorations = enum(i32) {
    None = 0,
    Underline = 1,
    Strikethrough = 2,
};
pub const TextGetOptions = enum(i32) {
    None = 0,
    AdjustCrlf = 1,
    UseCrlf = 2,
    UseObjectText = 4,
    AllowFinalEop = 8,
    NoHidden = 32,
    IncludeNumbering = 64,
    FormatRtf = 8192,
    UseLf = 16777216,
};
pub const TextRangeUnit = enum(i32) {
    Character = 0,
    Word = 1,
    Sentence = 2,
    Paragraph = 3,
    Line = 4,
    Story = 5,
    Screen = 6,
    Section = 7,
    Window = 8,
    CharacterFormat = 9,
    ParagraphFormat = 10,
    Object = 11,
    HardParagraph = 12,
    Cluster = 13,
    Bold = 14,
    Italic = 15,
    Underline = 16,
    Strikethrough = 17,
    ProtectedText = 18,
    Link = 19,
    SmallCaps = 20,
    AllCaps = 21,
    Hidden = 22,
    Outline = 23,
    Shadow = 24,
    Imprint = 25,
    Disabled = 26,
    Revised = 27,
    Subscript = 28,
    Superscript = 29,
    FontBound = 30,
    LinkProtected = 31,
    ContentLink = 32,
};
pub const TextScript = enum(i32) {
    Undefined = 0,
    Ansi = 1,
    EastEurope = 2,
    Cyrillic = 3,
    Greek = 4,
    Turkish = 5,
    Hebrew = 6,
    Arabic = 7,
    Baltic = 8,
    Vietnamese = 9,
    Default = 10,
    Symbol = 11,
    Thai = 12,
    ShiftJis = 13,
    GB2312 = 14,
    Hangul = 15,
    Big5 = 16,
    PC437 = 17,
    Oem = 18,
    Mac = 19,
    Armenian = 20,
    Syriac = 21,
    Thaana = 22,
    Devanagari = 23,
    Bengali = 24,
    Gurmukhi = 25,
    Gujarati = 26,
    Oriya = 27,
    Tamil = 28,
    Telugu = 29,
    Kannada = 30,
    Malayalam = 31,
    Sinhala = 32,
    Lao = 33,
    Tibetan = 34,
    Myanmar = 35,
    Georgian = 36,
    Jamo = 37,
    Ethiopic = 38,
    Cherokee = 39,
    Aboriginal = 40,
    Ogham = 41,
    Runic = 42,
    Khmer = 43,
    Mongolian = 44,
    Braille = 45,
    Yi = 46,
    Limbu = 47,
    TaiLe = 48,
    NewTaiLue = 49,
    SylotiNagri = 50,
    Kharoshthi = 51,
    Kayahli = 52,
    UnicodeSymbol = 53,
    Emoji = 54,
    Glagolitic = 55,
    Lisu = 56,
    Vai = 57,
    NKo = 58,
    Osmanya = 59,
    PhagsPa = 60,
    Gothic = 61,
    Deseret = 62,
    Tifinagh = 63,
};
pub const TextSetOptions = enum(i32) {
    None = 0,
    UnicodeBidi = 1,
    Unlink = 8,
    Unhide = 16,
    CheckTextLimit = 32,
    FormatRtf = 8192,
    ApplyRtfDocumentDefaults = 16384,
};
pub const UnderlineType = enum(i32) {
    Undefined = 0,
    None = 1,
    Single = 2,
    Words = 3,
    Double = 4,
    Dotted = 5,
    Dash = 6,
    DashDot = 7,
    DashDotDot = 8,
    Wave = 9,
    Thick = 10,
    Thin = 11,
    DoubleWave = 12,
    HeavyWave = 13,
    LongDash = 14,
    ThickDash = 15,
    ThickDashDot = 16,
    ThickDashDotDot = 17,
    ThickDotted = 18,
    ThickLongDash = 19,
};
pub const VerticalCharacterAlignment = enum(i32) {
    Top = 0,
    Baseline = 1,
    Bottom = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const Point = @import("../Foundation.zig").Point;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
pub const Core = @import("./Text/Core.zig");
