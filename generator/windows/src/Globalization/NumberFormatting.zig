pub const CurrencyFormatter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrency(self: *@This()) core.HResult!HSTRING {
        const this: *ICurrencyFormatter = @ptrCast(self);
        return try this.getCurrency();
    }
    pub fn putCurrency(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICurrencyFormatter = @ptrCast(self);
        return try this.putCurrency(value);
    }
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguages();
    }
    pub fn getGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGeographicRegion();
    }
    pub fn getIntegerDigits(self: *@This()) core.HResult!i32 {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIntegerDigits();
    }
    pub fn putIntegerDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIntegerDigits(value);
    }
    pub fn getFractionDigits(self: *@This()) core.HResult!i32 {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFractionDigits();
    }
    pub fn putFractionDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFractionDigits(value);
    }
    pub fn getIsGrouped(self: *@This()) core.HResult!bool {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsGrouped();
    }
    pub fn putIsGrouped(self: *@This(), value: bool) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsGrouped(value);
    }
    pub fn getIsDecimalPointAlwaysDisplayed(self: *@This()) core.HResult!bool {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDecimalPointAlwaysDisplayed();
    }
    pub fn putIsDecimalPointAlwaysDisplayed(self: *@This(), value: bool) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsDecimalPointAlwaysDisplayed(value);
    }
    pub fn getNumeralSystem(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNumeralSystem();
    }
    pub fn putNumeralSystem(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNumeralSystem(value);
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResolvedLanguage();
    }
    pub fn getResolvedGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResolvedGeographicRegion();
    }
    pub fn FormatWithValue(self: *@This(), value: i64) core.HResult!HSTRING {
        var this: ?*INumberFormatter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatWithValue(value);
    }
    pub fn FormatWithValue(self: *@This(), value: u64) core.HResult!HSTRING {
        var this: ?*INumberFormatter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatWithValue(value);
    }
    pub fn Format(self: *@This(), value: f64) core.HResult!HSTRING {
        var this: ?*INumberFormatter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Format(value);
    }
    pub fn FormatInt(self: *@This(), value: i64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatInt(value);
    }
    pub fn FormatUInt(self: *@This(), value: u64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatUInt(value);
    }
    pub fn FormatDouble(self: *@This(), value: f64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatDouble(value);
    }
    pub fn ParseInt(self: *@This(), text: HSTRING) core.HResult!*IReference(i64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseInt(text);
    }
    pub fn ParseUInt(self: *@This(), text: HSTRING) core.HResult!*IReference(u64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseUInt(text);
    }
    pub fn ParseDouble(self: *@This(), text: HSTRING) core.HResult!*IReference(f64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseDouble(text);
    }
    pub fn getMode(self: *@This()) core.HResult!CurrencyFormatterMode {
        var this: ?*ICurrencyFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICurrencyFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMode();
    }
    pub fn putMode(self: *@This(), value: CurrencyFormatterMode) core.HResult!void {
        var this: ?*ICurrencyFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICurrencyFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMode(value);
    }
    pub fn ApplyRoundingForCurrency(self: *@This(), roundingAlgorithm: RoundingAlgorithm) core.HResult!void {
        var this: ?*ICurrencyFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICurrencyFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ApplyRoundingForCurrency(roundingAlgorithm);
    }
    pub fn getSignificantDigits(self: *@This()) core.HResult!i32 {
        var this: ?*ISignificantDigitsOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSignificantDigits();
    }
    pub fn putSignificantDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ISignificantDigitsOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSignificantDigits(value);
    }
    pub fn getNumberRounder(self: *@This()) core.HResult!*INumberRounder {
        var this: ?*INumberRounderOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberRounderOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNumberRounder();
    }
    pub fn putNumberRounder(self: *@This(), value: *INumberRounder) core.HResult!void {
        var this: ?*INumberRounderOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberRounderOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNumberRounder(value);
    }
    pub fn getIsZeroSigned(self: *@This()) core.HResult!bool {
        var this: ?*ISignedZeroOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignedZeroOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsZeroSigned();
    }
    pub fn putIsZeroSigned(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISignedZeroOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignedZeroOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsZeroSigned(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateCurrencyFormatterCode(currencyCode: HSTRING) core.HResult!*CurrencyFormatter {
        const factory = @This().ICurrencyFormatterFactoryCache.get();
        return try factory.CreateCurrencyFormatterCode(currencyCode);
    }
    pub fn CreateCurrencyFormatterCodeContext(currencyCode: HSTRING, languages: *IIterable(HSTRING), geographicRegion: HSTRING) core.HResult!*CurrencyFormatter {
        const factory = @This().ICurrencyFormatterFactoryCache.get();
        return try factory.CreateCurrencyFormatterCodeContext(currencyCode, languages, geographicRegion);
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.CurrencyFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICurrencyFormatter.GUID;
    pub const IID: Guid = ICurrencyFormatter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICurrencyFormatter.SIGNATURE);
    var _ICurrencyFormatterFactoryCache: FactoryCache(ICurrencyFormatterFactory, RUNTIME_NAME) = .{};
};
pub const CurrencyFormatterMode = enum(i32) {
    UseSymbol = 0,
    UseCurrencyCode = 1,
};
pub const DecimalFormatter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguages();
    }
    pub fn getGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGeographicRegion();
    }
    pub fn getIntegerDigits(self: *@This()) core.HResult!i32 {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIntegerDigits();
    }
    pub fn putIntegerDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIntegerDigits(value);
    }
    pub fn getFractionDigits(self: *@This()) core.HResult!i32 {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFractionDigits();
    }
    pub fn putFractionDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFractionDigits(value);
    }
    pub fn getIsGrouped(self: *@This()) core.HResult!bool {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsGrouped();
    }
    pub fn putIsGrouped(self: *@This(), value: bool) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsGrouped(value);
    }
    pub fn getIsDecimalPointAlwaysDisplayed(self: *@This()) core.HResult!bool {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDecimalPointAlwaysDisplayed();
    }
    pub fn putIsDecimalPointAlwaysDisplayed(self: *@This(), value: bool) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsDecimalPointAlwaysDisplayed(value);
    }
    pub fn getNumeralSystem(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNumeralSystem();
    }
    pub fn putNumeralSystem(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNumeralSystem(value);
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResolvedLanguage();
    }
    pub fn getResolvedGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResolvedGeographicRegion();
    }
    pub fn FormatWithValue(self: *@This(), value: i64) core.HResult!HSTRING {
        const this: *INumberFormatter = @ptrCast(self);
        return try this.FormatWithValue(value);
    }
    pub fn FormatWithValue(self: *@This(), value: u64) core.HResult!HSTRING {
        const this: *INumberFormatter = @ptrCast(self);
        return try this.FormatWithValue(value);
    }
    pub fn Format(self: *@This(), value: f64) core.HResult!HSTRING {
        const this: *INumberFormatter = @ptrCast(self);
        return try this.Format(value);
    }
    pub fn FormatInt(self: *@This(), value: i64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatInt(value);
    }
    pub fn FormatUInt(self: *@This(), value: u64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatUInt(value);
    }
    pub fn FormatDouble(self: *@This(), value: f64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatDouble(value);
    }
    pub fn ParseInt(self: *@This(), text: HSTRING) core.HResult!*IReference(i64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseInt(text);
    }
    pub fn ParseUInt(self: *@This(), text: HSTRING) core.HResult!*IReference(u64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseUInt(text);
    }
    pub fn ParseDouble(self: *@This(), text: HSTRING) core.HResult!*IReference(f64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseDouble(text);
    }
    pub fn getSignificantDigits(self: *@This()) core.HResult!i32 {
        var this: ?*ISignificantDigitsOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSignificantDigits();
    }
    pub fn putSignificantDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ISignificantDigitsOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSignificantDigits(value);
    }
    pub fn getNumberRounder(self: *@This()) core.HResult!*INumberRounder {
        var this: ?*INumberRounderOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberRounderOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNumberRounder();
    }
    pub fn putNumberRounder(self: *@This(), value: *INumberRounder) core.HResult!void {
        var this: ?*INumberRounderOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberRounderOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNumberRounder(value);
    }
    pub fn getIsZeroSigned(self: *@This()) core.HResult!bool {
        var this: ?*ISignedZeroOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignedZeroOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsZeroSigned();
    }
    pub fn putIsZeroSigned(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISignedZeroOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignedZeroOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsZeroSigned(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INumberFormatter.IID)));
    }
    pub fn CreateDecimalFormatter(languages: *IIterable(HSTRING), geographicRegion: HSTRING) core.HResult!*DecimalFormatter {
        const factory = @This().IDecimalFormatterFactoryCache.get();
        return try factory.CreateDecimalFormatter(languages, geographicRegion);
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.DecimalFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INumberFormatter.GUID;
    pub const IID: Guid = INumberFormatter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INumberFormatter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDecimalFormatterFactoryCache: FactoryCache(IDecimalFormatterFactory, RUNTIME_NAME) = .{};
};
pub const ICurrencyFormatter = extern struct {
    vtable: *const VTable,
    pub fn getCurrency(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Currency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurrency(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Currency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.ICurrencyFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "11730ca5-4b00-41b2-b332-73b12a497d54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Currency: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Currency: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICurrencyFormatter2 = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!CurrencyFormatterMode {
        var _r: CurrencyFormatterMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: CurrencyFormatterMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ApplyRoundingForCurrency(self: *@This(), roundingAlgorithm: RoundingAlgorithm) core.HResult!void {
        const _c = self.vtable.ApplyRoundingForCurrency(@ptrCast(self), roundingAlgorithm);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.ICurrencyFormatter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "072c2f1d-e7ba-4197-920e-247c92f7dea6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *CurrencyFormatterMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: CurrencyFormatterMode) callconv(.winapi) HRESULT,
        ApplyRoundingForCurrency: *const fn(self: *anyopaque, roundingAlgorithm: RoundingAlgorithm) callconv(.winapi) HRESULT,
    };
};
pub const ICurrencyFormatterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateCurrencyFormatterCode(self: *@This(), currencyCode: HSTRING) core.HResult!*CurrencyFormatter {
        var _r: *CurrencyFormatter = undefined;
        const _c = self.vtable.CreateCurrencyFormatterCode(@ptrCast(self), currencyCode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCurrencyFormatterCodeContext(self: *@This(), currencyCode: HSTRING, languages: *IIterable(HSTRING), geographicRegion: HSTRING) core.HResult!*CurrencyFormatter {
        var _r: *CurrencyFormatter = undefined;
        const _c = self.vtable.CreateCurrencyFormatterCodeContext(@ptrCast(self), currencyCode, languages, geographicRegion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.ICurrencyFormatterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86c7537e-b938-4aa2-84b0-2c33dc5b1450";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCurrencyFormatterCode: *const fn(self: *anyopaque, currencyCode: HSTRING, _r: **CurrencyFormatter) callconv(.winapi) HRESULT,
        CreateCurrencyFormatterCodeContext: *const fn(self: *anyopaque, currencyCode: HSTRING, languages: *IIterable(HSTRING), geographicRegion: HSTRING, _r: **CurrencyFormatter) callconv(.winapi) HRESULT,
    };
};
pub const IDecimalFormatterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateDecimalFormatter(self: *@This(), languages: *IIterable(HSTRING), geographicRegion: HSTRING) core.HResult!*DecimalFormatter {
        var _r: *DecimalFormatter = undefined;
        const _c = self.vtable.CreateDecimalFormatter(@ptrCast(self), languages, geographicRegion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.IDecimalFormatterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d018c9a-e393-46b8-b830-7a69c8f89fbb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDecimalFormatter: *const fn(self: *anyopaque, languages: *IIterable(HSTRING), geographicRegion: HSTRING, _r: **DecimalFormatter) callconv(.winapi) HRESULT,
    };
};
pub const IIncrementNumberRounder = extern struct {
    vtable: *const VTable,
    pub fn getRoundingAlgorithm(self: *@This()) core.HResult!RoundingAlgorithm {
        var _r: RoundingAlgorithm = undefined;
        const _c = self.vtable.get_RoundingAlgorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoundingAlgorithm(self: *@This(), value: RoundingAlgorithm) core.HResult!void {
        const _c = self.vtable.put_RoundingAlgorithm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncrement(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Increment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncrement(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Increment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.IIncrementNumberRounder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70a64ff8-66ab-4155-9da1-739e46764543";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RoundingAlgorithm: *const fn(self: *anyopaque, _r: *RoundingAlgorithm) callconv(.winapi) HRESULT,
        put_RoundingAlgorithm: *const fn(self: *anyopaque, value: RoundingAlgorithm) callconv(.winapi) HRESULT,
        get_Increment: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Increment: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const INumberFormatter = extern struct {
    vtable: *const VTable,
    pub fn FormatWithValue(self: *@This(), value: i64) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.FormatWithValue(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FormatWithValue(self: *@This(), value: u64) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.FormatWithValue(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Format(self: *@This(), value: f64) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.Format(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.INumberFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5007c49-7676-4db7-8631-1b6ff265caa9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FormatWithValue: *const fn(self: *anyopaque, value: i64, _r: *HSTRING) callconv(.winapi) HRESULT,
        FormatWithValue: *const fn(self: *anyopaque, value: u64, _r: *HSTRING) callconv(.winapi) HRESULT,
        Format: *const fn(self: *anyopaque, value: f64, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INumberFormatter2 = extern struct {
    vtable: *const VTable,
    pub fn FormatInt(self: *@This(), value: i64) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.FormatInt(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FormatUInt(self: *@This(), value: u64) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.FormatUInt(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FormatDouble(self: *@This(), value: f64) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.FormatDouble(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.INumberFormatter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FormatInt: *const fn(self: *anyopaque, value: i64, _r: *HSTRING) callconv(.winapi) HRESULT,
        FormatUInt: *const fn(self: *anyopaque, value: u64, _r: *HSTRING) callconv(.winapi) HRESULT,
        FormatDouble: *const fn(self: *anyopaque, value: f64, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INumberFormatterOptions = extern struct {
    vtable: *const VTable,
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Languages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GeographicRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIntegerDigits(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_IntegerDigits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIntegerDigits(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_IntegerDigits(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFractionDigits(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FractionDigits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFractionDigits(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_FractionDigits(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsGrouped(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGrouped(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsGrouped(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsGrouped(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDecimalPointAlwaysDisplayed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDecimalPointAlwaysDisplayed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDecimalPointAlwaysDisplayed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDecimalPointAlwaysDisplayed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNumeralSystem(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NumeralSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNumeralSystem(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_NumeralSystem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResolvedLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResolvedGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResolvedGeographicRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.INumberFormatterOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80332d21-aee1-4a39-baa2-07ed8c96daf6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Languages: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_GeographicRegion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IntegerDigits: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_IntegerDigits: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_FractionDigits: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_FractionDigits: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_IsGrouped: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsGrouped: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsDecimalPointAlwaysDisplayed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDecimalPointAlwaysDisplayed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_NumeralSystem: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_NumeralSystem: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ResolvedLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ResolvedGeographicRegion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INumberParser = extern struct {
    vtable: *const VTable,
    pub fn ParseInt(self: *@This(), text: HSTRING) core.HResult!*IReference(i64) {
        var _r: *IReference(i64) = undefined;
        const _c = self.vtable.ParseInt(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ParseUInt(self: *@This(), text: HSTRING) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.ParseUInt(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ParseDouble(self: *@This(), text: HSTRING) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.ParseDouble(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.INumberParser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6659412-4a13-4a53-83a1-392fbe4cff9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseInt: *const fn(self: *anyopaque, text: HSTRING, _r: **IReference(i64)) callconv(.winapi) HRESULT,
        ParseUInt: *const fn(self: *anyopaque, text: HSTRING, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        ParseDouble: *const fn(self: *anyopaque, text: HSTRING, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const INumberRounder = extern struct {
    vtable: *const VTable,
    pub fn RoundInt32(self: *@This(), value: i32) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.RoundInt32(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RoundUInt32(self: *@This(), value: u32) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.RoundUInt32(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RoundInt64(self: *@This(), value: i64) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.RoundInt64(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RoundUInt64(self: *@This(), value: u64) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.RoundUInt64(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RoundSingle(self: *@This(), value: f32) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.RoundSingle(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RoundDouble(self: *@This(), value: f64) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.RoundDouble(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.INumberRounder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5473c375-38ed-4631-b80c-ef34fc48b7f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RoundInt32: *const fn(self: *anyopaque, value: i32, _r: *i32) callconv(.winapi) HRESULT,
        RoundUInt32: *const fn(self: *anyopaque, value: u32, _r: *u32) callconv(.winapi) HRESULT,
        RoundInt64: *const fn(self: *anyopaque, value: i64, _r: *i64) callconv(.winapi) HRESULT,
        RoundUInt64: *const fn(self: *anyopaque, value: u64, _r: *u64) callconv(.winapi) HRESULT,
        RoundSingle: *const fn(self: *anyopaque, value: f32, _r: *f32) callconv(.winapi) HRESULT,
        RoundDouble: *const fn(self: *anyopaque, value: f64, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const INumberRounderOption = extern struct {
    vtable: *const VTable,
    pub fn getNumberRounder(self: *@This()) core.HResult!*INumberRounder {
        var _r: *INumberRounder = undefined;
        const _c = self.vtable.get_NumberRounder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNumberRounder(self: *@This(), value: *INumberRounder) core.HResult!void {
        const _c = self.vtable.put_NumberRounder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.INumberRounderOption";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b088433-646f-4efe-8d48-66eb2e49e736";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NumberRounder: *const fn(self: *anyopaque, _r: **INumberRounder) callconv(.winapi) HRESULT,
        put_NumberRounder: *const fn(self: *anyopaque, value: *INumberRounder) callconv(.winapi) HRESULT,
    };
};
pub const INumeralSystemTranslator = extern struct {
    vtable: *const VTable,
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Languages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResolvedLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumeralSystem(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NumeralSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNumeralSystem(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_NumeralSystem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TranslateNumerals(self: *@This(), value: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.TranslateNumerals(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.INumeralSystemTranslator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28f5bc2c-8c23-4234-ad2e-fa5a3a426e9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Languages: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_ResolvedLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NumeralSystem: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_NumeralSystem: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        TranslateNumerals: *const fn(self: *anyopaque, value: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INumeralSystemTranslatorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), languages: *IIterable(HSTRING)) core.HResult!*NumeralSystemTranslator {
        var _r: *NumeralSystemTranslator = undefined;
        const _c = self.vtable.Create(@ptrCast(self), languages, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.INumeralSystemTranslatorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9630c8da-36ef-4d88-a85c-6f0d98d620a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, languages: *IIterable(HSTRING), _r: **NumeralSystemTranslator) callconv(.winapi) HRESULT,
    };
};
pub const IPercentFormatterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreatePercentFormatter(self: *@This(), languages: *IIterable(HSTRING), geographicRegion: HSTRING) core.HResult!*PercentFormatter {
        var _r: *PercentFormatter = undefined;
        const _c = self.vtable.CreatePercentFormatter(@ptrCast(self), languages, geographicRegion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.IPercentFormatterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7828aef-fed4-4018-a6e2-e09961e03765";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePercentFormatter: *const fn(self: *anyopaque, languages: *IIterable(HSTRING), geographicRegion: HSTRING, _r: **PercentFormatter) callconv(.winapi) HRESULT,
    };
};
pub const IPermilleFormatterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreatePermilleFormatter(self: *@This(), languages: *IIterable(HSTRING), geographicRegion: HSTRING) core.HResult!*PermilleFormatter {
        var _r: *PermilleFormatter = undefined;
        const _c = self.vtable.CreatePermilleFormatter(@ptrCast(self), languages, geographicRegion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.IPermilleFormatterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b37b4ac-e638-4ed5-a998-62f6b06a49ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePermilleFormatter: *const fn(self: *anyopaque, languages: *IIterable(HSTRING), geographicRegion: HSTRING, _r: **PermilleFormatter) callconv(.winapi) HRESULT,
    };
};
pub const ISignedZeroOption = extern struct {
    vtable: *const VTable,
    pub fn getIsZeroSigned(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsZeroSigned(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsZeroSigned(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsZeroSigned(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.ISignedZeroOption";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd1cdd31-0a3c-49c4-a642-96a1564f4f30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsZeroSigned: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsZeroSigned: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISignificantDigitsNumberRounder = extern struct {
    vtable: *const VTable,
    pub fn getRoundingAlgorithm(self: *@This()) core.HResult!RoundingAlgorithm {
        var _r: RoundingAlgorithm = undefined;
        const _c = self.vtable.get_RoundingAlgorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoundingAlgorithm(self: *@This(), value: RoundingAlgorithm) core.HResult!void {
        const _c = self.vtable.put_RoundingAlgorithm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSignificantDigits(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SignificantDigits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignificantDigits(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_SignificantDigits(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5941bca-6646-4913-8c76-1b191ff94dfd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RoundingAlgorithm: *const fn(self: *anyopaque, _r: *RoundingAlgorithm) callconv(.winapi) HRESULT,
        put_RoundingAlgorithm: *const fn(self: *anyopaque, value: RoundingAlgorithm) callconv(.winapi) HRESULT,
        get_SignificantDigits: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_SignificantDigits: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const ISignificantDigitsOption = extern struct {
    vtable: *const VTable,
    pub fn getSignificantDigits(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SignificantDigits(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignificantDigits(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_SignificantDigits(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.ISignificantDigitsOption";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SignificantDigits: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_SignificantDigits: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IncrementNumberRounder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RoundInt32(self: *@This(), value: i32) core.HResult!i32 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundInt32(value);
    }
    pub fn RoundUInt32(self: *@This(), value: u32) core.HResult!u32 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundUInt32(value);
    }
    pub fn RoundInt64(self: *@This(), value: i64) core.HResult!i64 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundInt64(value);
    }
    pub fn RoundUInt64(self: *@This(), value: u64) core.HResult!u64 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundUInt64(value);
    }
    pub fn RoundSingle(self: *@This(), value: f32) core.HResult!f32 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundSingle(value);
    }
    pub fn RoundDouble(self: *@This(), value: f64) core.HResult!f64 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundDouble(value);
    }
    pub fn getRoundingAlgorithm(self: *@This()) core.HResult!RoundingAlgorithm {
        var this: ?*IIncrementNumberRounder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIncrementNumberRounder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRoundingAlgorithm();
    }
    pub fn putRoundingAlgorithm(self: *@This(), value: RoundingAlgorithm) core.HResult!void {
        var this: ?*IIncrementNumberRounder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIncrementNumberRounder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRoundingAlgorithm(value);
    }
    pub fn getIncrement(self: *@This()) core.HResult!f64 {
        var this: ?*IIncrementNumberRounder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIncrementNumberRounder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIncrement();
    }
    pub fn putIncrement(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IIncrementNumberRounder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIncrementNumberRounder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIncrement(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INumberRounder.IID)));
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.IncrementNumberRounder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INumberRounder.GUID;
    pub const IID: Guid = INumberRounder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INumberRounder.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NumeralSystemTranslator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *INumeralSystemTranslator = @ptrCast(self);
        return try this.getLanguages();
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *INumeralSystemTranslator = @ptrCast(self);
        return try this.getResolvedLanguage();
    }
    pub fn getNumeralSystem(self: *@This()) core.HResult!HSTRING {
        const this: *INumeralSystemTranslator = @ptrCast(self);
        return try this.getNumeralSystem();
    }
    pub fn putNumeralSystem(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *INumeralSystemTranslator = @ptrCast(self);
        return try this.putNumeralSystem(value);
    }
    pub fn TranslateNumerals(self: *@This(), value: HSTRING) core.HResult!HSTRING {
        const this: *INumeralSystemTranslator = @ptrCast(self);
        return try this.TranslateNumerals(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INumeralSystemTranslator.IID)));
    }
    pub fn Create(languages: *IIterable(HSTRING)) core.HResult!*NumeralSystemTranslator {
        const factory = @This().INumeralSystemTranslatorFactoryCache.get();
        return try factory.Create(languages);
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.NumeralSystemTranslator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INumeralSystemTranslator.GUID;
    pub const IID: Guid = INumeralSystemTranslator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INumeralSystemTranslator.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _INumeralSystemTranslatorFactoryCache: FactoryCache(INumeralSystemTranslatorFactory, RUNTIME_NAME) = .{};
};
pub const PercentFormatter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguages();
    }
    pub fn getGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGeographicRegion();
    }
    pub fn getIntegerDigits(self: *@This()) core.HResult!i32 {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIntegerDigits();
    }
    pub fn putIntegerDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIntegerDigits(value);
    }
    pub fn getFractionDigits(self: *@This()) core.HResult!i32 {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFractionDigits();
    }
    pub fn putFractionDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFractionDigits(value);
    }
    pub fn getIsGrouped(self: *@This()) core.HResult!bool {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsGrouped();
    }
    pub fn putIsGrouped(self: *@This(), value: bool) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsGrouped(value);
    }
    pub fn getIsDecimalPointAlwaysDisplayed(self: *@This()) core.HResult!bool {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDecimalPointAlwaysDisplayed();
    }
    pub fn putIsDecimalPointAlwaysDisplayed(self: *@This(), value: bool) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsDecimalPointAlwaysDisplayed(value);
    }
    pub fn getNumeralSystem(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNumeralSystem();
    }
    pub fn putNumeralSystem(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNumeralSystem(value);
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResolvedLanguage();
    }
    pub fn getResolvedGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResolvedGeographicRegion();
    }
    pub fn FormatWithValue(self: *@This(), value: i64) core.HResult!HSTRING {
        const this: *INumberFormatter = @ptrCast(self);
        return try this.FormatWithValue(value);
    }
    pub fn FormatWithValue(self: *@This(), value: u64) core.HResult!HSTRING {
        const this: *INumberFormatter = @ptrCast(self);
        return try this.FormatWithValue(value);
    }
    pub fn Format(self: *@This(), value: f64) core.HResult!HSTRING {
        const this: *INumberFormatter = @ptrCast(self);
        return try this.Format(value);
    }
    pub fn FormatInt(self: *@This(), value: i64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatInt(value);
    }
    pub fn FormatUInt(self: *@This(), value: u64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatUInt(value);
    }
    pub fn FormatDouble(self: *@This(), value: f64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatDouble(value);
    }
    pub fn ParseInt(self: *@This(), text: HSTRING) core.HResult!*IReference(i64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseInt(text);
    }
    pub fn ParseUInt(self: *@This(), text: HSTRING) core.HResult!*IReference(u64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseUInt(text);
    }
    pub fn ParseDouble(self: *@This(), text: HSTRING) core.HResult!*IReference(f64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseDouble(text);
    }
    pub fn getSignificantDigits(self: *@This()) core.HResult!i32 {
        var this: ?*ISignificantDigitsOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSignificantDigits();
    }
    pub fn putSignificantDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ISignificantDigitsOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSignificantDigits(value);
    }
    pub fn getNumberRounder(self: *@This()) core.HResult!*INumberRounder {
        var this: ?*INumberRounderOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberRounderOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNumberRounder();
    }
    pub fn putNumberRounder(self: *@This(), value: *INumberRounder) core.HResult!void {
        var this: ?*INumberRounderOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberRounderOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNumberRounder(value);
    }
    pub fn getIsZeroSigned(self: *@This()) core.HResult!bool {
        var this: ?*ISignedZeroOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignedZeroOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsZeroSigned();
    }
    pub fn putIsZeroSigned(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISignedZeroOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignedZeroOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsZeroSigned(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INumberFormatter.IID)));
    }
    pub fn CreatePercentFormatter(languages: *IIterable(HSTRING), geographicRegion: HSTRING) core.HResult!*PercentFormatter {
        const factory = @This().IPercentFormatterFactoryCache.get();
        return try factory.CreatePercentFormatter(languages, geographicRegion);
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.PercentFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INumberFormatter.GUID;
    pub const IID: Guid = INumberFormatter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INumberFormatter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPercentFormatterFactoryCache: FactoryCache(IPercentFormatterFactory, RUNTIME_NAME) = .{};
};
pub const PermilleFormatter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguages();
    }
    pub fn getGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGeographicRegion();
    }
    pub fn getIntegerDigits(self: *@This()) core.HResult!i32 {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIntegerDigits();
    }
    pub fn putIntegerDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIntegerDigits(value);
    }
    pub fn getFractionDigits(self: *@This()) core.HResult!i32 {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFractionDigits();
    }
    pub fn putFractionDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFractionDigits(value);
    }
    pub fn getIsGrouped(self: *@This()) core.HResult!bool {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsGrouped();
    }
    pub fn putIsGrouped(self: *@This(), value: bool) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsGrouped(value);
    }
    pub fn getIsDecimalPointAlwaysDisplayed(self: *@This()) core.HResult!bool {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDecimalPointAlwaysDisplayed();
    }
    pub fn putIsDecimalPointAlwaysDisplayed(self: *@This(), value: bool) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsDecimalPointAlwaysDisplayed(value);
    }
    pub fn getNumeralSystem(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNumeralSystem();
    }
    pub fn putNumeralSystem(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNumeralSystem(value);
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResolvedLanguage();
    }
    pub fn getResolvedGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var this: ?*INumberFormatterOptions = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatterOptions.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResolvedGeographicRegion();
    }
    pub fn FormatWithValue(self: *@This(), value: i64) core.HResult!HSTRING {
        const this: *INumberFormatter = @ptrCast(self);
        return try this.FormatWithValue(value);
    }
    pub fn FormatWithValue(self: *@This(), value: u64) core.HResult!HSTRING {
        const this: *INumberFormatter = @ptrCast(self);
        return try this.FormatWithValue(value);
    }
    pub fn Format(self: *@This(), value: f64) core.HResult!HSTRING {
        const this: *INumberFormatter = @ptrCast(self);
        return try this.Format(value);
    }
    pub fn FormatInt(self: *@This(), value: i64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatInt(value);
    }
    pub fn FormatUInt(self: *@This(), value: u64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatUInt(value);
    }
    pub fn FormatDouble(self: *@This(), value: f64) core.HResult!HSTRING {
        var this: ?*INumberFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatDouble(value);
    }
    pub fn ParseInt(self: *@This(), text: HSTRING) core.HResult!*IReference(i64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseInt(text);
    }
    pub fn ParseUInt(self: *@This(), text: HSTRING) core.HResult!*IReference(u64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseUInt(text);
    }
    pub fn ParseDouble(self: *@This(), text: HSTRING) core.HResult!*IReference(f64) {
        var this: ?*INumberParser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberParser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ParseDouble(text);
    }
    pub fn getSignificantDigits(self: *@This()) core.HResult!i32 {
        var this: ?*ISignificantDigitsOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSignificantDigits();
    }
    pub fn putSignificantDigits(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ISignificantDigitsOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSignificantDigits(value);
    }
    pub fn getNumberRounder(self: *@This()) core.HResult!*INumberRounder {
        var this: ?*INumberRounderOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberRounderOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNumberRounder();
    }
    pub fn putNumberRounder(self: *@This(), value: *INumberRounder) core.HResult!void {
        var this: ?*INumberRounderOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INumberRounderOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNumberRounder(value);
    }
    pub fn getIsZeroSigned(self: *@This()) core.HResult!bool {
        var this: ?*ISignedZeroOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignedZeroOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsZeroSigned();
    }
    pub fn putIsZeroSigned(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISignedZeroOption = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignedZeroOption.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsZeroSigned(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INumberFormatter.IID)));
    }
    pub fn CreatePermilleFormatter(languages: *IIterable(HSTRING), geographicRegion: HSTRING) core.HResult!*PermilleFormatter {
        const factory = @This().IPermilleFormatterFactoryCache.get();
        return try factory.CreatePermilleFormatter(languages, geographicRegion);
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.PermilleFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INumberFormatter.GUID;
    pub const IID: Guid = INumberFormatter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INumberFormatter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPermilleFormatterFactoryCache: FactoryCache(IPermilleFormatterFactory, RUNTIME_NAME) = .{};
};
pub const RoundingAlgorithm = enum(i32) {
    None = 0,
    RoundDown = 1,
    RoundUp = 2,
    RoundTowardsZero = 3,
    RoundAwayFromZero = 4,
    RoundHalfDown = 5,
    RoundHalfUp = 6,
    RoundHalfTowardsZero = 7,
    RoundHalfAwayFromZero = 8,
    RoundHalfToEven = 9,
    RoundHalfToOdd = 10,
};
pub const SignificantDigitsNumberRounder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RoundInt32(self: *@This(), value: i32) core.HResult!i32 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundInt32(value);
    }
    pub fn RoundUInt32(self: *@This(), value: u32) core.HResult!u32 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundUInt32(value);
    }
    pub fn RoundInt64(self: *@This(), value: i64) core.HResult!i64 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundInt64(value);
    }
    pub fn RoundUInt64(self: *@This(), value: u64) core.HResult!u64 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundUInt64(value);
    }
    pub fn RoundSingle(self: *@This(), value: f32) core.HResult!f32 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundSingle(value);
    }
    pub fn RoundDouble(self: *@This(), value: f64) core.HResult!f64 {
        const this: *INumberRounder = @ptrCast(self);
        return try this.RoundDouble(value);
    }
    pub fn getRoundingAlgorithm(self: *@This()) core.HResult!RoundingAlgorithm {
        var this: ?*ISignificantDigitsNumberRounder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsNumberRounder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRoundingAlgorithm();
    }
    pub fn putRoundingAlgorithm(self: *@This(), value: RoundingAlgorithm) core.HResult!void {
        var this: ?*ISignificantDigitsNumberRounder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsNumberRounder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRoundingAlgorithm(value);
    }
    pub fn getSignificantDigits(self: *@This()) core.HResult!u32 {
        var this: ?*ISignificantDigitsNumberRounder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsNumberRounder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSignificantDigits();
    }
    pub fn putSignificantDigits(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ISignificantDigitsNumberRounder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISignificantDigitsNumberRounder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSignificantDigits(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INumberRounder.IID)));
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumberFormatting.SignificantDigitsNumberRounder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INumberRounder.GUID;
    pub const IID: Guid = INumberRounder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INumberRounder.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IReference = @import("../Foundation.zig").IReference;
const HRESULT = @import("../root.zig").HRESULT;
const FactoryCache = @import("../core.zig").FactoryCache;
const core = @import("../root.zig").core;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
