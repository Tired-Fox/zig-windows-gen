pub const Color = extern struct {
    A: u8,
    R: u8,
    G: u8,
    B: u8,
};
pub const ColorHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ToDisplayName(color: Color) core.HResult!HSTRING {
        const _f = @This().IColorHelperStatics2Cache.get();
        return try _f.ToDisplayName(color);
    }
    pub fn FromArgb(a: u8, r: u8, g: u8, b: u8) core.HResult!Color {
        const _f = @This().IColorHelperStaticsCache.get();
        return try _f.FromArgb(a, r, g, b);
    }
    pub const NAME: []const u8 = "Windows.UI.ColorHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorHelper.GUID;
    pub const IID: Guid = IColorHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorHelper.SIGNATURE);
    var _IColorHelperStatics2Cache: FactoryCache(IColorHelperStatics2, RUNTIME_NAME) = .{};
    var _IColorHelperStaticsCache: FactoryCache(IColorHelperStatics, RUNTIME_NAME) = .{};
};
pub const Colors = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAliceBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getAliceBlue();
    }
    pub fn getAntiqueWhite() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getAntiqueWhite();
    }
    pub fn getAqua() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getAqua();
    }
    pub fn getAquamarine() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getAquamarine();
    }
    pub fn getAzure() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getAzure();
    }
    pub fn getBeige() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getBeige();
    }
    pub fn getBisque() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getBisque();
    }
    pub fn getBlack() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getBlack();
    }
    pub fn getBlanchedAlmond() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getBlanchedAlmond();
    }
    pub fn getBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getBlue();
    }
    pub fn getBlueViolet() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getBlueViolet();
    }
    pub fn getBrown() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getBrown();
    }
    pub fn getBurlyWood() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getBurlyWood();
    }
    pub fn getCadetBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getCadetBlue();
    }
    pub fn getChartreuse() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getChartreuse();
    }
    pub fn getChocolate() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getChocolate();
    }
    pub fn getCoral() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getCoral();
    }
    pub fn getCornflowerBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getCornflowerBlue();
    }
    pub fn getCornsilk() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getCornsilk();
    }
    pub fn getCrimson() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getCrimson();
    }
    pub fn getCyan() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getCyan();
    }
    pub fn getDarkBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkBlue();
    }
    pub fn getDarkCyan() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkCyan();
    }
    pub fn getDarkGoldenrod() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkGoldenrod();
    }
    pub fn getDarkGray() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkGray();
    }
    pub fn getDarkGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkGreen();
    }
    pub fn getDarkKhaki() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkKhaki();
    }
    pub fn getDarkMagenta() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkMagenta();
    }
    pub fn getDarkOliveGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkOliveGreen();
    }
    pub fn getDarkOrange() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkOrange();
    }
    pub fn getDarkOrchid() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkOrchid();
    }
    pub fn getDarkRed() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkRed();
    }
    pub fn getDarkSalmon() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkSalmon();
    }
    pub fn getDarkSeaGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkSeaGreen();
    }
    pub fn getDarkSlateBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkSlateBlue();
    }
    pub fn getDarkSlateGray() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkSlateGray();
    }
    pub fn getDarkTurquoise() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkTurquoise();
    }
    pub fn getDarkViolet() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDarkViolet();
    }
    pub fn getDeepPink() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDeepPink();
    }
    pub fn getDeepSkyBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDeepSkyBlue();
    }
    pub fn getDimGray() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDimGray();
    }
    pub fn getDodgerBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getDodgerBlue();
    }
    pub fn getFirebrick() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getFirebrick();
    }
    pub fn getFloralWhite() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getFloralWhite();
    }
    pub fn getForestGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getForestGreen();
    }
    pub fn getFuchsia() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getFuchsia();
    }
    pub fn getGainsboro() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getGainsboro();
    }
    pub fn getGhostWhite() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getGhostWhite();
    }
    pub fn getGold() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getGold();
    }
    pub fn getGoldenrod() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getGoldenrod();
    }
    pub fn getGray() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getGray();
    }
    pub fn getGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getGreen();
    }
    pub fn getGreenYellow() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getGreenYellow();
    }
    pub fn getHoneydew() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getHoneydew();
    }
    pub fn getHotPink() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getHotPink();
    }
    pub fn getIndianRed() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getIndianRed();
    }
    pub fn getIndigo() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getIndigo();
    }
    pub fn getIvory() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getIvory();
    }
    pub fn getKhaki() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getKhaki();
    }
    pub fn getLavender() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLavender();
    }
    pub fn getLavenderBlush() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLavenderBlush();
    }
    pub fn getLawnGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLawnGreen();
    }
    pub fn getLemonChiffon() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLemonChiffon();
    }
    pub fn getLightBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightBlue();
    }
    pub fn getLightCoral() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightCoral();
    }
    pub fn getLightCyan() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightCyan();
    }
    pub fn getLightGoldenrodYellow() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightGoldenrodYellow();
    }
    pub fn getLightGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightGreen();
    }
    pub fn getLightGray() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightGray();
    }
    pub fn getLightPink() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightPink();
    }
    pub fn getLightSalmon() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightSalmon();
    }
    pub fn getLightSeaGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightSeaGreen();
    }
    pub fn getLightSkyBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightSkyBlue();
    }
    pub fn getLightSlateGray() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightSlateGray();
    }
    pub fn getLightSteelBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightSteelBlue();
    }
    pub fn getLightYellow() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLightYellow();
    }
    pub fn getLime() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLime();
    }
    pub fn getLimeGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLimeGreen();
    }
    pub fn getLinen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getLinen();
    }
    pub fn getMagenta() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMagenta();
    }
    pub fn getMaroon() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMaroon();
    }
    pub fn getMediumAquamarine() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMediumAquamarine();
    }
    pub fn getMediumBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMediumBlue();
    }
    pub fn getMediumOrchid() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMediumOrchid();
    }
    pub fn getMediumPurple() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMediumPurple();
    }
    pub fn getMediumSeaGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMediumSeaGreen();
    }
    pub fn getMediumSlateBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMediumSlateBlue();
    }
    pub fn getMediumSpringGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMediumSpringGreen();
    }
    pub fn getMediumTurquoise() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMediumTurquoise();
    }
    pub fn getMediumVioletRed() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMediumVioletRed();
    }
    pub fn getMidnightBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMidnightBlue();
    }
    pub fn getMintCream() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMintCream();
    }
    pub fn getMistyRose() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMistyRose();
    }
    pub fn getMoccasin() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getMoccasin();
    }
    pub fn getNavajoWhite() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getNavajoWhite();
    }
    pub fn getNavy() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getNavy();
    }
    pub fn getOldLace() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getOldLace();
    }
    pub fn getOlive() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getOlive();
    }
    pub fn getOliveDrab() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getOliveDrab();
    }
    pub fn getOrange() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getOrange();
    }
    pub fn getOrangeRed() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getOrangeRed();
    }
    pub fn getOrchid() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getOrchid();
    }
    pub fn getPaleGoldenrod() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPaleGoldenrod();
    }
    pub fn getPaleGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPaleGreen();
    }
    pub fn getPaleTurquoise() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPaleTurquoise();
    }
    pub fn getPaleVioletRed() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPaleVioletRed();
    }
    pub fn getPapayaWhip() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPapayaWhip();
    }
    pub fn getPeachPuff() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPeachPuff();
    }
    pub fn getPeru() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPeru();
    }
    pub fn getPink() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPink();
    }
    pub fn getPlum() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPlum();
    }
    pub fn getPowderBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPowderBlue();
    }
    pub fn getPurple() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getPurple();
    }
    pub fn getRed() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getRed();
    }
    pub fn getRosyBrown() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getRosyBrown();
    }
    pub fn getRoyalBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getRoyalBlue();
    }
    pub fn getSaddleBrown() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSaddleBrown();
    }
    pub fn getSalmon() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSalmon();
    }
    pub fn getSandyBrown() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSandyBrown();
    }
    pub fn getSeaGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSeaGreen();
    }
    pub fn getSeaShell() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSeaShell();
    }
    pub fn getSienna() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSienna();
    }
    pub fn getSilver() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSilver();
    }
    pub fn getSkyBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSkyBlue();
    }
    pub fn getSlateBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSlateBlue();
    }
    pub fn getSlateGray() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSlateGray();
    }
    pub fn getSnow() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSnow();
    }
    pub fn getSpringGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSpringGreen();
    }
    pub fn getSteelBlue() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getSteelBlue();
    }
    pub fn getTan() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getTan();
    }
    pub fn getTeal() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getTeal();
    }
    pub fn getThistle() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getThistle();
    }
    pub fn getTomato() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getTomato();
    }
    pub fn getTransparent() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getTransparent();
    }
    pub fn getTurquoise() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getTurquoise();
    }
    pub fn getViolet() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getViolet();
    }
    pub fn getWheat() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getWheat();
    }
    pub fn getWhite() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getWhite();
    }
    pub fn getWhiteSmoke() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getWhiteSmoke();
    }
    pub fn getYellow() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getYellow();
    }
    pub fn getYellowGreen() core.HResult!Color {
        const _f = @This().IColorsStaticsCache.get();
        return try _f.getYellowGreen();
    }
    pub const NAME: []const u8 = "Windows.UI.Colors";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColors.GUID;
    pub const IID: Guid = IColors.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColors.SIGNATURE);
    var _IColorsStaticsCache: FactoryCache(IColorsStatics, RUNTIME_NAME) = .{};
};
pub const IColorHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.IColorHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "193cfbe7-65c7-4540-ad08-6283ba76879a";
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
pub const IColorHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn FromArgb(self: *@This(), a: u8, r: u8, g: u8, b: u8) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.FromArgb(@ptrCast(self), a, r, g, b, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.IColorHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8504dbea-fb6a-4144-a6c2-33499c9284f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromArgb: *const fn(self: *anyopaque, a: u8, r: u8, g: u8, b: u8, _r: *Color) callconv(.winapi) HRESULT,
    };
};
pub const IColorHelperStatics2 = extern struct {
    vtable: *const VTable,
    pub fn ToDisplayName(self: *@This(), color: Color) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ToDisplayName(@ptrCast(self), color, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.IColorHelperStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24d9af02-6eb0-4b94-855c-fcf0818d9a16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ToDisplayName: *const fn(self: *anyopaque, color: Color, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IColors = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.IColors";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b8c9326-4ca6-4ce5-8994-9eff65cabdcc";
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
pub const IColorsStatics = extern struct {
    vtable: *const VTable,
    pub fn getAliceBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_AliceBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAntiqueWhite(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_AntiqueWhite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAqua(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Aqua(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAquamarine(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Aquamarine(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAzure(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Azure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBeige(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Beige(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBisque(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Bisque(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBlack(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Black(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBlanchedAlmond(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BlanchedAlmond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Blue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBlueViolet(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BlueViolet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrown(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Brown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBurlyWood(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BurlyWood(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCadetBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_CadetBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChartreuse(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Chartreuse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChocolate(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Chocolate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCoral(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Coral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCornflowerBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_CornflowerBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCornsilk(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Cornsilk(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCrimson(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Crimson(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCyan(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Cyan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkCyan(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkCyan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkGoldenrod(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkGoldenrod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkGray(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkGray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkKhaki(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkKhaki(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkMagenta(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkMagenta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkOliveGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkOliveGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkOrange(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkOrange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkOrchid(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkOrchid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkRed(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkRed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkSalmon(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkSalmon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkSeaGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkSeaGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkSlateBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkSlateBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkSlateGray(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkSlateGray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkTurquoise(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkTurquoise(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDarkViolet(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DarkViolet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeepPink(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DeepPink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeepSkyBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DeepSkyBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDimGray(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DimGray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDodgerBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DodgerBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirebrick(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Firebrick(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFloralWhite(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_FloralWhite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForestGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_ForestGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFuchsia(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Fuchsia(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGainsboro(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Gainsboro(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGhostWhite(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_GhostWhite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGold(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Gold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGoldenrod(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Goldenrod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGray(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Gray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Green(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGreenYellow(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_GreenYellow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHoneydew(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Honeydew(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHotPink(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_HotPink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndianRed(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_IndianRed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndigo(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Indigo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIvory(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Ivory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKhaki(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Khaki(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLavender(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Lavender(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLavenderBlush(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LavenderBlush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLawnGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LawnGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLemonChiffon(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LemonChiffon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightCoral(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightCoral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightCyan(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightCyan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightGoldenrodYellow(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightGoldenrodYellow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightGray(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightGray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightPink(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightPink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightSalmon(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightSalmon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightSeaGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightSeaGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightSkyBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightSkyBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightSlateGray(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightSlateGray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightSteelBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightSteelBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightYellow(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LightYellow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLime(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Lime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLimeGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LimeGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLinen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Linen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMagenta(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Magenta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaroon(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Maroon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediumAquamarine(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MediumAquamarine(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediumBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MediumBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediumOrchid(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MediumOrchid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediumPurple(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MediumPurple(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediumSeaGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MediumSeaGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediumSlateBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MediumSlateBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediumSpringGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MediumSpringGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediumTurquoise(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MediumTurquoise(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediumVioletRed(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MediumVioletRed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMidnightBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MidnightBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMintCream(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MintCream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMistyRose(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_MistyRose(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMoccasin(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Moccasin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNavajoWhite(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_NavajoWhite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNavy(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Navy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldLace(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_OldLace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOlive(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Olive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOliveDrab(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_OliveDrab(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrange(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Orange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrangeRed(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_OrangeRed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrchid(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Orchid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPaleGoldenrod(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_PaleGoldenrod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPaleGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_PaleGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPaleTurquoise(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_PaleTurquoise(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPaleVioletRed(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_PaleVioletRed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPapayaWhip(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_PapayaWhip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeachPuff(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_PeachPuff(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeru(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Peru(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPink(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Pink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlum(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Plum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowderBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_PowderBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPurple(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Purple(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRed(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Red(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRosyBrown(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_RosyBrown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoyalBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_RoyalBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSaddleBrown(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SaddleBrown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSalmon(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Salmon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSandyBrown(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SandyBrown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSeaGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SeaGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSeaShell(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SeaShell(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSienna(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Sienna(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSilver(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Silver(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSkyBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SkyBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSlateBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SlateBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSlateGray(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SlateGray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSnow(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Snow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpringGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SpringGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSteelBlue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_SteelBlue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTan(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Tan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTeal(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Teal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThistle(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Thistle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTomato(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Tomato(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransparent(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Transparent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTurquoise(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Turquoise(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViolet(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Violet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWheat(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Wheat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWhite(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_White(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWhiteSmoke(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_WhiteSmoke(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYellow(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Yellow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYellowGreen(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_YellowGreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.IColorsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cff52e04-cca6-4614-a17e-754910c84a99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AliceBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_AntiqueWhite: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Aqua: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Aquamarine: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Azure: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Beige: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Bisque: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Black: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_BlanchedAlmond: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Blue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_BlueViolet: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Brown: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_BurlyWood: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_CadetBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Chartreuse: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Chocolate: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Coral: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_CornflowerBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Cornsilk: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Crimson: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Cyan: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkCyan: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkGoldenrod: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkGray: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkKhaki: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkMagenta: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkOliveGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkOrange: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkOrchid: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkRed: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkSalmon: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkSeaGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkSlateBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkSlateGray: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkTurquoise: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DarkViolet: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DeepPink: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DeepSkyBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DimGray: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_DodgerBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Firebrick: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_FloralWhite: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_ForestGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Fuchsia: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Gainsboro: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_GhostWhite: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Gold: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Goldenrod: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Gray: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Green: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_GreenYellow: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Honeydew: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_HotPink: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_IndianRed: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Indigo: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Ivory: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Khaki: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Lavender: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LavenderBlush: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LawnGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LemonChiffon: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightCoral: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightCyan: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightGoldenrodYellow: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightGray: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightPink: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightSalmon: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightSeaGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightSkyBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightSlateGray: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightSteelBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LightYellow: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Lime: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_LimeGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Linen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Magenta: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Maroon: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MediumAquamarine: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MediumBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MediumOrchid: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MediumPurple: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MediumSeaGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MediumSlateBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MediumSpringGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MediumTurquoise: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MediumVioletRed: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MidnightBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MintCream: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_MistyRose: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Moccasin: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_NavajoWhite: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Navy: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_OldLace: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Olive: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_OliveDrab: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Orange: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_OrangeRed: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Orchid: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_PaleGoldenrod: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_PaleGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_PaleTurquoise: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_PaleVioletRed: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_PapayaWhip: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_PeachPuff: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Peru: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Pink: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Plum: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_PowderBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Purple: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Red: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_RosyBrown: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_RoyalBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_SaddleBrown: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Salmon: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_SandyBrown: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_SeaGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_SeaShell: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Sienna: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Silver: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_SkyBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_SlateBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_SlateGray: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Snow: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_SpringGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_SteelBlue: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Tan: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Teal: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Thistle: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Tomato: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Transparent: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Turquoise: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Violet: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Wheat: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_White: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_WhiteSmoke: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Yellow: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_YellowGreen: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
    };
};
pub const IUIContentRoot = extern struct {
    vtable: *const VTable,
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var _r: *UIContext = undefined;
        const _c = self.vtable.get_UIContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.IUIContentRoot";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1dfcbac6-b36b-5cb9-9bc5-2b7a0eddc378";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UIContext: *const fn(self: *anyopaque, _r: **UIContext) callconv(.winapi) HRESULT,
    };
};
pub const IUIContext = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.IUIContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb5cfacd-5bd8-59d0-a59e-1c17a4d6d243";
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
pub const UIContentRoot = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        const this: *IUIContentRoot = @ptrCast(self);
        return try this.getUIContext();
    }
    pub const NAME: []const u8 = "Windows.UI.UIContentRoot";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUIContentRoot.GUID;
    pub const IID: Guid = IUIContentRoot.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUIContentRoot.SIGNATURE);
};
pub const UIContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.UIContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUIContext.GUID;
    pub const IID: Guid = IUIContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUIContext.SIGNATURE);
};
pub const WindowId = extern struct {
    Value: u64,
};
const IUnknown = @import("./root.zig").IUnknown;
const HSTRING = @import("./root.zig").HSTRING;
const Guid = @import("./root.zig").Guid;
const HRESULT = @import("./root.zig").HRESULT;
const core = @import("./root.zig").core;
const FactoryCache = @import("./core.zig").FactoryCache;
const IInspectable = @import("./Foundation.zig").IInspectable;
const TrustLevel = @import("./root.zig").TrustLevel;
pub const Accessibility = @import("./UI/Accessibility.zig");
pub const ApplicationSettings = @import("./UI/ApplicationSettings.zig");
pub const Composition = @import("./UI/Composition.zig");
pub const Core = @import("./UI/Core.zig");
pub const Input = @import("./UI/Input.zig");
pub const Notifications = @import("./UI/Notifications.zig");
pub const Popups = @import("./UI/Popups.zig");
pub const Shell = @import("./UI/Shell.zig");
pub const StartScreen = @import("./UI/StartScreen.zig");
pub const Text = @import("./UI/Text.zig");
pub const UIAutomation = @import("./UI/UIAutomation.zig");
pub const ViewManagement = @import("./UI/ViewManagement.zig");
pub const WebUI = @import("./UI/WebUI.zig");
pub const WindowManagement = @import("./UI/WindowManagement.zig");
pub const Xaml = @import("./UI/Xaml.zig");
