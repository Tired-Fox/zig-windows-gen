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
        const factory = @This().IColorHelperStatics2Cache.get();
        return try factory.ToDisplayName(color);
    }
    pub fn FromArgb(a: u8, r: u8, g: u8, b: u8) core.HResult!Color {
        const factory = @This().IColorHelperStaticsCache.get();
        return try factory.FromArgb(a, r, g, b);
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
    pub fn get_AliceBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getAliceBlue();
    }
    pub fn get_AntiqueWhite() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getAntiqueWhite();
    }
    pub fn get_Aqua() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getAqua();
    }
    pub fn get_Aquamarine() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getAquamarine();
    }
    pub fn get_Azure() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getAzure();
    }
    pub fn get_Beige() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getBeige();
    }
    pub fn get_Bisque() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getBisque();
    }
    pub fn get_Black() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getBlack();
    }
    pub fn get_BlanchedAlmond() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getBlanchedAlmond();
    }
    pub fn get_Blue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getBlue();
    }
    pub fn get_BlueViolet() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getBlueViolet();
    }
    pub fn get_Brown() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getBrown();
    }
    pub fn get_BurlyWood() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getBurlyWood();
    }
    pub fn get_CadetBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getCadetBlue();
    }
    pub fn get_Chartreuse() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getChartreuse();
    }
    pub fn get_Chocolate() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getChocolate();
    }
    pub fn get_Coral() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getCoral();
    }
    pub fn get_CornflowerBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getCornflowerBlue();
    }
    pub fn get_Cornsilk() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getCornsilk();
    }
    pub fn get_Crimson() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getCrimson();
    }
    pub fn get_Cyan() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getCyan();
    }
    pub fn get_DarkBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkBlue();
    }
    pub fn get_DarkCyan() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkCyan();
    }
    pub fn get_DarkGoldenrod() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkGoldenrod();
    }
    pub fn get_DarkGray() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkGray();
    }
    pub fn get_DarkGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkGreen();
    }
    pub fn get_DarkKhaki() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkKhaki();
    }
    pub fn get_DarkMagenta() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkMagenta();
    }
    pub fn get_DarkOliveGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkOliveGreen();
    }
    pub fn get_DarkOrange() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkOrange();
    }
    pub fn get_DarkOrchid() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkOrchid();
    }
    pub fn get_DarkRed() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkRed();
    }
    pub fn get_DarkSalmon() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkSalmon();
    }
    pub fn get_DarkSeaGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkSeaGreen();
    }
    pub fn get_DarkSlateBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkSlateBlue();
    }
    pub fn get_DarkSlateGray() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkSlateGray();
    }
    pub fn get_DarkTurquoise() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkTurquoise();
    }
    pub fn get_DarkViolet() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDarkViolet();
    }
    pub fn get_DeepPink() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDeepPink();
    }
    pub fn get_DeepSkyBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDeepSkyBlue();
    }
    pub fn get_DimGray() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDimGray();
    }
    pub fn get_DodgerBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getDodgerBlue();
    }
    pub fn get_Firebrick() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getFirebrick();
    }
    pub fn get_FloralWhite() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getFloralWhite();
    }
    pub fn get_ForestGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getForestGreen();
    }
    pub fn get_Fuchsia() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getFuchsia();
    }
    pub fn get_Gainsboro() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getGainsboro();
    }
    pub fn get_GhostWhite() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getGhostWhite();
    }
    pub fn get_Gold() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getGold();
    }
    pub fn get_Goldenrod() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getGoldenrod();
    }
    pub fn get_Gray() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getGray();
    }
    pub fn get_Green() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getGreen();
    }
    pub fn get_GreenYellow() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getGreenYellow();
    }
    pub fn get_Honeydew() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getHoneydew();
    }
    pub fn get_HotPink() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getHotPink();
    }
    pub fn get_IndianRed() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getIndianRed();
    }
    pub fn get_Indigo() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getIndigo();
    }
    pub fn get_Ivory() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getIvory();
    }
    pub fn get_Khaki() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getKhaki();
    }
    pub fn get_Lavender() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLavender();
    }
    pub fn get_LavenderBlush() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLavenderBlush();
    }
    pub fn get_LawnGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLawnGreen();
    }
    pub fn get_LemonChiffon() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLemonChiffon();
    }
    pub fn get_LightBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightBlue();
    }
    pub fn get_LightCoral() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightCoral();
    }
    pub fn get_LightCyan() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightCyan();
    }
    pub fn get_LightGoldenrodYellow() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightGoldenrodYellow();
    }
    pub fn get_LightGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightGreen();
    }
    pub fn get_LightGray() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightGray();
    }
    pub fn get_LightPink() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightPink();
    }
    pub fn get_LightSalmon() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightSalmon();
    }
    pub fn get_LightSeaGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightSeaGreen();
    }
    pub fn get_LightSkyBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightSkyBlue();
    }
    pub fn get_LightSlateGray() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightSlateGray();
    }
    pub fn get_LightSteelBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightSteelBlue();
    }
    pub fn get_LightYellow() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLightYellow();
    }
    pub fn get_Lime() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLime();
    }
    pub fn get_LimeGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLimeGreen();
    }
    pub fn get_Linen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getLinen();
    }
    pub fn get_Magenta() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMagenta();
    }
    pub fn get_Maroon() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMaroon();
    }
    pub fn get_MediumAquamarine() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMediumAquamarine();
    }
    pub fn get_MediumBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMediumBlue();
    }
    pub fn get_MediumOrchid() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMediumOrchid();
    }
    pub fn get_MediumPurple() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMediumPurple();
    }
    pub fn get_MediumSeaGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMediumSeaGreen();
    }
    pub fn get_MediumSlateBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMediumSlateBlue();
    }
    pub fn get_MediumSpringGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMediumSpringGreen();
    }
    pub fn get_MediumTurquoise() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMediumTurquoise();
    }
    pub fn get_MediumVioletRed() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMediumVioletRed();
    }
    pub fn get_MidnightBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMidnightBlue();
    }
    pub fn get_MintCream() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMintCream();
    }
    pub fn get_MistyRose() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMistyRose();
    }
    pub fn get_Moccasin() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getMoccasin();
    }
    pub fn get_NavajoWhite() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getNavajoWhite();
    }
    pub fn get_Navy() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getNavy();
    }
    pub fn get_OldLace() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getOldLace();
    }
    pub fn get_Olive() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getOlive();
    }
    pub fn get_OliveDrab() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getOliveDrab();
    }
    pub fn get_Orange() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getOrange();
    }
    pub fn get_OrangeRed() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getOrangeRed();
    }
    pub fn get_Orchid() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getOrchid();
    }
    pub fn get_PaleGoldenrod() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPaleGoldenrod();
    }
    pub fn get_PaleGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPaleGreen();
    }
    pub fn get_PaleTurquoise() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPaleTurquoise();
    }
    pub fn get_PaleVioletRed() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPaleVioletRed();
    }
    pub fn get_PapayaWhip() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPapayaWhip();
    }
    pub fn get_PeachPuff() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPeachPuff();
    }
    pub fn get_Peru() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPeru();
    }
    pub fn get_Pink() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPink();
    }
    pub fn get_Plum() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPlum();
    }
    pub fn get_PowderBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPowderBlue();
    }
    pub fn get_Purple() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getPurple();
    }
    pub fn get_Red() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getRed();
    }
    pub fn get_RosyBrown() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getRosyBrown();
    }
    pub fn get_RoyalBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getRoyalBlue();
    }
    pub fn get_SaddleBrown() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSaddleBrown();
    }
    pub fn get_Salmon() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSalmon();
    }
    pub fn get_SandyBrown() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSandyBrown();
    }
    pub fn get_SeaGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSeaGreen();
    }
    pub fn get_SeaShell() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSeaShell();
    }
    pub fn get_Sienna() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSienna();
    }
    pub fn get_Silver() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSilver();
    }
    pub fn get_SkyBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSkyBlue();
    }
    pub fn get_SlateBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSlateBlue();
    }
    pub fn get_SlateGray() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSlateGray();
    }
    pub fn get_Snow() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSnow();
    }
    pub fn get_SpringGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSpringGreen();
    }
    pub fn get_SteelBlue() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getSteelBlue();
    }
    pub fn get_Tan() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getTan();
    }
    pub fn get_Teal() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getTeal();
    }
    pub fn get_Thistle() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getThistle();
    }
    pub fn get_Tomato() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getTomato();
    }
    pub fn get_Transparent() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getTransparent();
    }
    pub fn get_Turquoise() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getTurquoise();
    }
    pub fn get_Violet() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getViolet();
    }
    pub fn get_Wheat() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getWheat();
    }
    pub fn get_White() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getWhite();
    }
    pub fn get_WhiteSmoke() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getWhiteSmoke();
    }
    pub fn get_Yellow() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getYellow();
    }
    pub fn get_YellowGreen() core.HResult!Color {
        const factory = @This().IColorsStaticsCache.get();
        return try factory.getYellowGreen();
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
