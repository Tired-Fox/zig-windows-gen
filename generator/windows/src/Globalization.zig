pub const IJapanesePhoneme = extern struct {
    vtable: *const VTable,
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYomiText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_YomiText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPhraseStart(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPhraseStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.IJapanesePhoneme";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f6a9300-e85b-43e6-897d-5d82f862df21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_YomiText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsPhraseStart: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IJapanesePhoneticAnalyzerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetWords(self: *@This(), input: HSTRING) core.HResult!*IVectorView(JapanesePhoneme) {
        var _r: *IVectorView(JapanesePhoneme) = undefined;
        const _c = self.vtable.GetWords(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetWordsWithMonoRuby(self: *@This(), input: HSTRING, monoRuby: bool) core.HResult!*IVectorView(JapanesePhoneme) {
        var _r: *IVectorView(JapanesePhoneme) = undefined;
        const _c = self.vtable.GetWordsWithMonoRuby(@ptrCast(self), input, monoRuby, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.IJapanesePhoneticAnalyzerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88ab9e90-93de-41b2-b4d5-8edb227fd1c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetWords: *const fn(self: *anyopaque, input: HSTRING, _r: **IVectorView(JapanesePhoneme)) callconv(.winapi) HRESULT,
        GetWordsWithMonoRuby: *const fn(self: *anyopaque, input: HSTRING, monoRuby: bool, _r: **IVectorView(JapanesePhoneme)) callconv(.winapi) HRESULT,
    };
};
pub const JapanesePhoneme = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        const this: *IJapanesePhoneme = @ptrCast(self);
        return try this.getDisplayText();
    }
    pub fn getYomiText(self: *@This()) core.HResult!HSTRING {
        const this: *IJapanesePhoneme = @ptrCast(self);
        return try this.getYomiText();
    }
    pub fn getIsPhraseStart(self: *@This()) core.HResult!bool {
        const this: *IJapanesePhoneme = @ptrCast(self);
        return try this.getIsPhraseStart();
    }
    pub const NAME: []const u8 = "Windows.Globalization.JapanesePhoneme";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IJapanesePhoneme.GUID;
    pub const IID: Guid = IJapanesePhoneme.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IJapanesePhoneme.SIGNATURE);
};
pub const JapanesePhoneticAnalyzer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetWords(input: HSTRING) core.HResult!*IVectorView(JapanesePhoneme) {
        const factory = @This().IJapanesePhoneticAnalyzerStaticsCache.get();
        return try factory.GetWords(input);
    }
    pub fn GetWordsWithMonoRuby(input: HSTRING, monoRuby: bool) core.HResult!*IVectorView(JapanesePhoneme) {
        const factory = @This().IJapanesePhoneticAnalyzerStaticsCache.get();
        return try factory.GetWordsWithMonoRuby(input, monoRuby);
    }
    pub const NAME: []const u8 = "Windows.Globalization.JapanesePhoneticAnalyzer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IJapanesePhoneticAnalyzerStaticsCache: FactoryCache(IJapanesePhoneticAnalyzerStatics, RUNTIME_NAME) = .{};
};
pub const ApplicationLanguages = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetLanguagesForUser(user: *User) core.HResult!*IVectorView(HSTRING) {
        const factory = @This().IApplicationLanguagesStatics2Cache.get();
        return try factory.GetLanguagesForUser(user);
    }
    pub fn get_PrimaryLanguageOverride() core.HResult!HSTRING {
        const factory = @This().IApplicationLanguagesStaticsCache.get();
        return try factory.getPrimaryLanguageOverride();
    }
    pub fn put_PrimaryLanguageOverride(value: HSTRING) core.HResult!void {
        const factory = @This().IApplicationLanguagesStaticsCache.get();
        return try factory.putPrimaryLanguageOverride(value);
    }
    pub fn get_Languages() core.HResult!*IVectorView(HSTRING) {
        const factory = @This().IApplicationLanguagesStaticsCache.get();
        return try factory.getLanguages();
    }
    pub fn get_ManifestLanguages() core.HResult!*IVectorView(HSTRING) {
        const factory = @This().IApplicationLanguagesStaticsCache.get();
        return try factory.getManifestLanguages();
    }
    pub const NAME: []const u8 = "Windows.Globalization.ApplicationLanguages";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IApplicationLanguagesStatics2Cache: FactoryCache(IApplicationLanguagesStatics2, RUNTIME_NAME) = .{};
    var _IApplicationLanguagesStaticsCache: FactoryCache(IApplicationLanguagesStatics, RUNTIME_NAME) = .{};
};
pub const Calendar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Clone(self: *@This()) core.HResult!*Calendar {
        const this: *ICalendar = @ptrCast(self);
        return try this.Clone();
    }
    pub fn SetToMin(self: *@This()) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.SetToMin();
    }
    pub fn SetToMax(self: *@This()) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.SetToMax();
    }
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ICalendar = @ptrCast(self);
        return try this.getLanguages();
    }
    pub fn getNumeralSystem(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNumeralSystem();
    }
    pub fn putNumeralSystem(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putNumeralSystem(value);
    }
    pub fn GetCalendarSystem(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.GetCalendarSystem();
    }
    pub fn ChangeCalendarSystem(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.ChangeCalendarSystem(value);
    }
    pub fn GetClock(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.GetClock();
    }
    pub fn ChangeClock(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.ChangeClock(value);
    }
    pub fn GetDateTime(self: *@This()) core.HResult!DateTime {
        const this: *ICalendar = @ptrCast(self);
        return try this.GetDateTime();
    }
    pub fn SetDateTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.SetDateTime(value);
    }
    pub fn SetToNow(self: *@This()) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.SetToNow();
    }
    pub fn getFirstEra(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getFirstEra();
    }
    pub fn getLastEra(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getLastEra();
    }
    pub fn getNumberOfEras(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNumberOfEras();
    }
    pub fn getEra(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getEra();
    }
    pub fn putEra(self: *@This(), value: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putEra(value);
    }
    pub fn AddEras(self: *@This(), eras: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddEras(eras);
    }
    pub fn EraAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.EraAsString();
    }
    pub fn EraAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.EraAsString(idealLength);
    }
    pub fn getFirstYearInThisEra(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getFirstYearInThisEra();
    }
    pub fn getLastYearInThisEra(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getLastYearInThisEra();
    }
    pub fn getNumberOfYearsInThisEra(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNumberOfYearsInThisEra();
    }
    pub fn getYear(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getYear();
    }
    pub fn putYear(self: *@This(), value: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putYear(value);
    }
    pub fn AddYears(self: *@This(), years: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddYears(years);
    }
    pub fn YearAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.YearAsString();
    }
    pub fn YearAsTruncatedString(self: *@This(), remainingDigits: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.YearAsTruncatedString(remainingDigits);
    }
    pub fn YearAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.YearAsPaddedString(minDigits);
    }
    pub fn getFirstMonthInThisYear(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getFirstMonthInThisYear();
    }
    pub fn getLastMonthInThisYear(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getLastMonthInThisYear();
    }
    pub fn getNumberOfMonthsInThisYear(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNumberOfMonthsInThisYear();
    }
    pub fn getMonth(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getMonth();
    }
    pub fn putMonth(self: *@This(), value: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putMonth(value);
    }
    pub fn AddMonths(self: *@This(), months: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddMonths(months);
    }
    pub fn MonthAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.MonthAsString();
    }
    pub fn MonthAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.MonthAsString(idealLength);
    }
    pub fn MonthAsSoloString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.MonthAsSoloString();
    }
    pub fn MonthAsSoloString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.MonthAsSoloString(idealLength);
    }
    pub fn MonthAsNumericString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.MonthAsNumericString();
    }
    pub fn MonthAsPaddedNumericString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.MonthAsPaddedNumericString(minDigits);
    }
    pub fn AddWeeks(self: *@This(), weeks: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddWeeks(weeks);
    }
    pub fn getFirstDayInThisMonth(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getFirstDayInThisMonth();
    }
    pub fn getLastDayInThisMonth(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getLastDayInThisMonth();
    }
    pub fn getNumberOfDaysInThisMonth(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNumberOfDaysInThisMonth();
    }
    pub fn getDay(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getDay();
    }
    pub fn putDay(self: *@This(), value: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putDay(value);
    }
    pub fn AddDays(self: *@This(), days: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddDays(days);
    }
    pub fn DayAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.DayAsString();
    }
    pub fn DayAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.DayAsPaddedString(minDigits);
    }
    pub fn getDayOfWeek(self: *@This()) core.HResult!DayOfWeek {
        const this: *ICalendar = @ptrCast(self);
        return try this.getDayOfWeek();
    }
    pub fn DayOfWeekAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.DayOfWeekAsString();
    }
    pub fn DayOfWeekAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.DayOfWeekAsString(idealLength);
    }
    pub fn DayOfWeekAsSoloString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.DayOfWeekAsSoloString();
    }
    pub fn DayOfWeekAsSoloString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.DayOfWeekAsSoloString(idealLength);
    }
    pub fn getFirstPeriodInThisDay(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getFirstPeriodInThisDay();
    }
    pub fn getLastPeriodInThisDay(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getLastPeriodInThisDay();
    }
    pub fn getNumberOfPeriodsInThisDay(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNumberOfPeriodsInThisDay();
    }
    pub fn getPeriod(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getPeriod();
    }
    pub fn putPeriod(self: *@This(), value: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putPeriod(value);
    }
    pub fn AddPeriods(self: *@This(), periods: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddPeriods(periods);
    }
    pub fn PeriodAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.PeriodAsString();
    }
    pub fn PeriodAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.PeriodAsString(idealLength);
    }
    pub fn getFirstHourInThisPeriod(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getFirstHourInThisPeriod();
    }
    pub fn getLastHourInThisPeriod(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getLastHourInThisPeriod();
    }
    pub fn getNumberOfHoursInThisPeriod(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNumberOfHoursInThisPeriod();
    }
    pub fn getHour(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getHour();
    }
    pub fn putHour(self: *@This(), value: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putHour(value);
    }
    pub fn AddHours(self: *@This(), hours: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddHours(hours);
    }
    pub fn HourAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.HourAsString();
    }
    pub fn HourAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.HourAsPaddedString(minDigits);
    }
    pub fn getMinute(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getMinute();
    }
    pub fn putMinute(self: *@This(), value: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putMinute(value);
    }
    pub fn AddMinutes(self: *@This(), minutes: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddMinutes(minutes);
    }
    pub fn MinuteAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.MinuteAsString();
    }
    pub fn MinuteAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.MinuteAsPaddedString(minDigits);
    }
    pub fn getSecond(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getSecond();
    }
    pub fn putSecond(self: *@This(), value: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putSecond(value);
    }
    pub fn AddSeconds(self: *@This(), seconds: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddSeconds(seconds);
    }
    pub fn SecondAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.SecondAsString();
    }
    pub fn SecondAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.SecondAsPaddedString(minDigits);
    }
    pub fn getNanosecond(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNanosecond();
    }
    pub fn putNanosecond(self: *@This(), value: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.putNanosecond(value);
    }
    pub fn AddNanoseconds(self: *@This(), nanoseconds: i32) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.AddNanoseconds(nanoseconds);
    }
    pub fn NanosecondAsString(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.NanosecondAsString();
    }
    pub fn NanosecondAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.NanosecondAsPaddedString(minDigits);
    }
    pub fn Compare(self: *@This(), other: *Calendar) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.Compare(other);
    }
    pub fn CompareDateTime(self: *@This(), other: DateTime) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.CompareDateTime(other);
    }
    pub fn CopyTo(self: *@This(), other: *Calendar) core.HResult!void {
        const this: *ICalendar = @ptrCast(self);
        return try this.CopyTo(other);
    }
    pub fn getFirstMinuteInThisHour(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getFirstMinuteInThisHour();
    }
    pub fn getLastMinuteInThisHour(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getLastMinuteInThisHour();
    }
    pub fn getNumberOfMinutesInThisHour(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNumberOfMinutesInThisHour();
    }
    pub fn getFirstSecondInThisMinute(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getFirstSecondInThisMinute();
    }
    pub fn getLastSecondInThisMinute(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getLastSecondInThisMinute();
    }
    pub fn getNumberOfSecondsInThisMinute(self: *@This()) core.HResult!i32 {
        const this: *ICalendar = @ptrCast(self);
        return try this.getNumberOfSecondsInThisMinute();
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendar = @ptrCast(self);
        return try this.getResolvedLanguage();
    }
    pub fn getIsDaylightSavingTime(self: *@This()) core.HResult!bool {
        const this: *ICalendar = @ptrCast(self);
        return try this.getIsDaylightSavingTime();
    }
    pub fn GetTimeZone(self: *@This()) core.HResult!HSTRING {
        var this: ?*ITimeZoneOnCalendar = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimeZoneOnCalendar.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetTimeZone();
    }
    pub fn ChangeTimeZone(self: *@This(), timeZoneId: HSTRING) core.HResult!void {
        var this: ?*ITimeZoneOnCalendar = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimeZoneOnCalendar.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ChangeTimeZone(timeZoneId);
    }
    pub fn TimeZoneAsString(self: *@This()) core.HResult!HSTRING {
        var this: ?*ITimeZoneOnCalendar = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimeZoneOnCalendar.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TimeZoneAsString();
    }
    pub fn TimeZoneAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        var this: ?*ITimeZoneOnCalendar = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimeZoneOnCalendar.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TimeZoneAsString(idealLength);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICalendar.IID)));
    }
    pub fn CreateCalendarDefaultCalendarAndClock(languages: *IIterable(HSTRING)) core.HResult!*Calendar {
        const factory = @This().ICalendarFactoryCache.get();
        return try factory.CreateCalendarDefaultCalendarAndClock(languages);
    }
    pub fn CreateCalendar(languages: *IIterable(HSTRING), calendar: HSTRING, clock: HSTRING) core.HResult!*Calendar {
        const factory = @This().ICalendarFactoryCache.get();
        return try factory.CreateCalendar(languages, calendar, clock);
    }
    pub fn CreateCalendarWithTimeZone(languages: *IIterable(HSTRING), calendar: HSTRING, clock: HSTRING, timeZoneId: HSTRING) core.HResult!*Calendar {
        const factory = @This().ICalendarFactory2Cache.get();
        return try factory.CreateCalendarWithTimeZone(languages, calendar, clock, timeZoneId);
    }
    pub const NAME: []const u8 = "Windows.Globalization.Calendar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICalendar.GUID;
    pub const IID: Guid = ICalendar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICalendar.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ICalendarFactoryCache: FactoryCache(ICalendarFactory, RUNTIME_NAME) = .{};
    var _ICalendarFactory2Cache: FactoryCache(ICalendarFactory2, RUNTIME_NAME) = .{};
};
pub const CalendarIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ChineseLunar() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStatics3Cache.get();
        return try factory.getChineseLunar();
    }
    pub fn get_JapaneseLunar() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStatics3Cache.get();
        return try factory.getJapaneseLunar();
    }
    pub fn get_KoreanLunar() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStatics3Cache.get();
        return try factory.getKoreanLunar();
    }
    pub fn get_TaiwanLunar() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStatics3Cache.get();
        return try factory.getTaiwanLunar();
    }
    pub fn get_VietnameseLunar() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStatics3Cache.get();
        return try factory.getVietnameseLunar();
    }
    pub fn get_Persian() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStatics2Cache.get();
        return try factory.getPersian();
    }
    pub fn get_Gregorian() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStaticsCache.get();
        return try factory.getGregorian();
    }
    pub fn get_Hebrew() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStaticsCache.get();
        return try factory.getHebrew();
    }
    pub fn get_Hijri() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStaticsCache.get();
        return try factory.getHijri();
    }
    pub fn get_Japanese() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStaticsCache.get();
        return try factory.getJapanese();
    }
    pub fn get_Julian() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStaticsCache.get();
        return try factory.getJulian();
    }
    pub fn get_Korean() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStaticsCache.get();
        return try factory.getKorean();
    }
    pub fn get_Taiwan() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStaticsCache.get();
        return try factory.getTaiwan();
    }
    pub fn get_Thai() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStaticsCache.get();
        return try factory.getThai();
    }
    pub fn get_UmAlQura() core.HResult!HSTRING {
        const factory = @This().ICalendarIdentifiersStaticsCache.get();
        return try factory.getUmAlQura();
    }
    pub const NAME: []const u8 = "Windows.Globalization.CalendarIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICalendarIdentifiersStatics3Cache: FactoryCache(ICalendarIdentifiersStatics3, RUNTIME_NAME) = .{};
    var _ICalendarIdentifiersStatics2Cache: FactoryCache(ICalendarIdentifiersStatics2, RUNTIME_NAME) = .{};
    var _ICalendarIdentifiersStaticsCache: FactoryCache(ICalendarIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const ClockIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_TwelveHour() core.HResult!HSTRING {
        const factory = @This().IClockIdentifiersStaticsCache.get();
        return try factory.getTwelveHour();
    }
    pub fn get_TwentyFourHour() core.HResult!HSTRING {
        const factory = @This().IClockIdentifiersStaticsCache.get();
        return try factory.getTwentyFourHour();
    }
    pub const NAME: []const u8 = "Windows.Globalization.ClockIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IClockIdentifiersStaticsCache: FactoryCache(IClockIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const CurrencyAmount = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAmount(self: *@This()) core.HResult!HSTRING {
        const this: *ICurrencyAmount = @ptrCast(self);
        return try this.getAmount();
    }
    pub fn getCurrency(self: *@This()) core.HResult!HSTRING {
        const this: *ICurrencyAmount = @ptrCast(self);
        return try this.getCurrency();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(amount: HSTRING, currency: HSTRING) core.HResult!*CurrencyAmount {
        const factory = @This().ICurrencyAmountFactoryCache.get();
        return try factory.Create(amount, currency);
    }
    pub const NAME: []const u8 = "Windows.Globalization.CurrencyAmount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICurrencyAmount.GUID;
    pub const IID: Guid = ICurrencyAmount.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICurrencyAmount.SIGNATURE);
    var _ICurrencyAmountFactoryCache: FactoryCache(ICurrencyAmountFactory, RUNTIME_NAME) = .{};
};
pub const CurrencyIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_BYN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStatics2Cache.get();
        return try factory.getBYN();
    }
    pub fn get_MRU() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStatics3Cache.get();
        return try factory.getMRU();
    }
    pub fn get_SSP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStatics3Cache.get();
        return try factory.getSSP();
    }
    pub fn get_STN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStatics3Cache.get();
        return try factory.getSTN();
    }
    pub fn get_VES() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStatics3Cache.get();
        return try factory.getVES();
    }
    pub fn get_AED() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getAED();
    }
    pub fn get_AFN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getAFN();
    }
    pub fn get_ALL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getALL();
    }
    pub fn get_AMD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getAMD();
    }
    pub fn get_ANG() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getANG();
    }
    pub fn get_AOA() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getAOA();
    }
    pub fn get_ARS() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getARS();
    }
    pub fn get_AUD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getAUD();
    }
    pub fn get_AWG() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getAWG();
    }
    pub fn get_AZN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getAZN();
    }
    pub fn get_BAM() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBAM();
    }
    pub fn get_BBD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBBD();
    }
    pub fn get_BDT() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBDT();
    }
    pub fn get_BGN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBGN();
    }
    pub fn get_BHD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBHD();
    }
    pub fn get_BIF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBIF();
    }
    pub fn get_BMD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBMD();
    }
    pub fn get_BND() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBND();
    }
    pub fn get_BOB() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBOB();
    }
    pub fn get_BRL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBRL();
    }
    pub fn get_BSD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBSD();
    }
    pub fn get_BTN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBTN();
    }
    pub fn get_BWP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBWP();
    }
    pub fn get_BYR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBYR();
    }
    pub fn get_BZD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getBZD();
    }
    pub fn get_CAD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCAD();
    }
    pub fn get_CDF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCDF();
    }
    pub fn get_CHF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCHF();
    }
    pub fn get_CLP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCLP();
    }
    pub fn get_CNY() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCNY();
    }
    pub fn get_COP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCOP();
    }
    pub fn get_CRC() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCRC();
    }
    pub fn get_CUP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCUP();
    }
    pub fn get_CVE() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCVE();
    }
    pub fn get_CZK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getCZK();
    }
    pub fn get_DJF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getDJF();
    }
    pub fn get_DKK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getDKK();
    }
    pub fn get_DOP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getDOP();
    }
    pub fn get_DZD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getDZD();
    }
    pub fn get_EGP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getEGP();
    }
    pub fn get_ERN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getERN();
    }
    pub fn get_ETB() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getETB();
    }
    pub fn get_EUR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getEUR();
    }
    pub fn get_FJD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getFJD();
    }
    pub fn get_FKP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getFKP();
    }
    pub fn get_GBP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getGBP();
    }
    pub fn get_GEL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getGEL();
    }
    pub fn get_GHS() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getGHS();
    }
    pub fn get_GIP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getGIP();
    }
    pub fn get_GMD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getGMD();
    }
    pub fn get_GNF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getGNF();
    }
    pub fn get_GTQ() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getGTQ();
    }
    pub fn get_GYD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getGYD();
    }
    pub fn get_HKD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getHKD();
    }
    pub fn get_HNL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getHNL();
    }
    pub fn get_HRK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getHRK();
    }
    pub fn get_HTG() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getHTG();
    }
    pub fn get_HUF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getHUF();
    }
    pub fn get_IDR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getIDR();
    }
    pub fn get_ILS() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getILS();
    }
    pub fn get_INR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getINR();
    }
    pub fn get_IQD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getIQD();
    }
    pub fn get_IRR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getIRR();
    }
    pub fn get_ISK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getISK();
    }
    pub fn get_JMD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getJMD();
    }
    pub fn get_JOD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getJOD();
    }
    pub fn get_JPY() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getJPY();
    }
    pub fn get_KES() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getKES();
    }
    pub fn get_KGS() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getKGS();
    }
    pub fn get_KHR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getKHR();
    }
    pub fn get_KMF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getKMF();
    }
    pub fn get_KPW() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getKPW();
    }
    pub fn get_KRW() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getKRW();
    }
    pub fn get_KWD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getKWD();
    }
    pub fn get_KYD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getKYD();
    }
    pub fn get_KZT() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getKZT();
    }
    pub fn get_LAK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getLAK();
    }
    pub fn get_LBP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getLBP();
    }
    pub fn get_LKR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getLKR();
    }
    pub fn get_LRD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getLRD();
    }
    pub fn get_LSL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getLSL();
    }
    pub fn get_LTL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getLTL();
    }
    pub fn get_LVL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getLVL();
    }
    pub fn get_LYD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getLYD();
    }
    pub fn get_MAD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMAD();
    }
    pub fn get_MDL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMDL();
    }
    pub fn get_MGA() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMGA();
    }
    pub fn get_MKD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMKD();
    }
    pub fn get_MMK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMMK();
    }
    pub fn get_MNT() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMNT();
    }
    pub fn get_MOP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMOP();
    }
    pub fn get_MRO() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMRO();
    }
    pub fn get_MUR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMUR();
    }
    pub fn get_MVR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMVR();
    }
    pub fn get_MWK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMWK();
    }
    pub fn get_MXN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMXN();
    }
    pub fn get_MYR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMYR();
    }
    pub fn get_MZN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getMZN();
    }
    pub fn get_NAD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getNAD();
    }
    pub fn get_NGN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getNGN();
    }
    pub fn get_NIO() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getNIO();
    }
    pub fn get_NOK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getNOK();
    }
    pub fn get_NPR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getNPR();
    }
    pub fn get_NZD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getNZD();
    }
    pub fn get_OMR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getOMR();
    }
    pub fn get_PAB() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getPAB();
    }
    pub fn get_PEN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getPEN();
    }
    pub fn get_PGK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getPGK();
    }
    pub fn get_PHP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getPHP();
    }
    pub fn get_PKR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getPKR();
    }
    pub fn get_PLN() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getPLN();
    }
    pub fn get_PYG() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getPYG();
    }
    pub fn get_QAR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getQAR();
    }
    pub fn get_RON() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getRON();
    }
    pub fn get_RSD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getRSD();
    }
    pub fn get_RUB() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getRUB();
    }
    pub fn get_RWF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getRWF();
    }
    pub fn get_SAR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSAR();
    }
    pub fn get_SBD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSBD();
    }
    pub fn get_SCR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSCR();
    }
    pub fn get_SDG() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSDG();
    }
    pub fn get_SEK() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSEK();
    }
    pub fn get_SGD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSGD();
    }
    pub fn get_SHP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSHP();
    }
    pub fn get_SLL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSLL();
    }
    pub fn get_SOS() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSOS();
    }
    pub fn get_SRD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSRD();
    }
    pub fn get_STD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSTD();
    }
    pub fn get_SYP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSYP();
    }
    pub fn get_SZL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getSZL();
    }
    pub fn get_THB() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getTHB();
    }
    pub fn get_TJS() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getTJS();
    }
    pub fn get_TMT() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getTMT();
    }
    pub fn get_TND() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getTND();
    }
    pub fn get_TOP() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getTOP();
    }
    pub fn get_TRY() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getTRY();
    }
    pub fn get_TTD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getTTD();
    }
    pub fn get_TWD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getTWD();
    }
    pub fn get_TZS() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getTZS();
    }
    pub fn get_UAH() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getUAH();
    }
    pub fn get_UGX() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getUGX();
    }
    pub fn get_USD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getUSD();
    }
    pub fn get_UYU() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getUYU();
    }
    pub fn get_UZS() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getUZS();
    }
    pub fn get_VEF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getVEF();
    }
    pub fn get_VND() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getVND();
    }
    pub fn get_VUV() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getVUV();
    }
    pub fn get_WST() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getWST();
    }
    pub fn get_XAF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getXAF();
    }
    pub fn get_XCD() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getXCD();
    }
    pub fn get_XOF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getXOF();
    }
    pub fn get_XPF() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getXPF();
    }
    pub fn get_XXX() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getXXX();
    }
    pub fn get_YER() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getYER();
    }
    pub fn get_ZAR() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getZAR();
    }
    pub fn get_ZMW() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getZMW();
    }
    pub fn get_ZWL() core.HResult!HSTRING {
        const factory = @This().ICurrencyIdentifiersStaticsCache.get();
        return try factory.getZWL();
    }
    pub const NAME: []const u8 = "Windows.Globalization.CurrencyIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICurrencyIdentifiersStatics2Cache: FactoryCache(ICurrencyIdentifiersStatics2, RUNTIME_NAME) = .{};
    var _ICurrencyIdentifiersStatics3Cache: FactoryCache(ICurrencyIdentifiersStatics3, RUNTIME_NAME) = .{};
    var _ICurrencyIdentifiersStaticsCache: FactoryCache(ICurrencyIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const DayOfWeek = enum(i32) {
    Sunday = 0,
    Monday = 1,
    Tuesday = 2,
    Wednesday = 3,
    Thursday = 4,
    Friday = 5,
    Saturday = 6,
};
pub const GeographicRegion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCode(self: *@This()) core.HResult!HSTRING {
        const this: *IGeographicRegion = @ptrCast(self);
        return try this.getCode();
    }
    pub fn getCodeTwoLetter(self: *@This()) core.HResult!HSTRING {
        const this: *IGeographicRegion = @ptrCast(self);
        return try this.getCodeTwoLetter();
    }
    pub fn getCodeThreeLetter(self: *@This()) core.HResult!HSTRING {
        const this: *IGeographicRegion = @ptrCast(self);
        return try this.getCodeThreeLetter();
    }
    pub fn getCodeThreeDigit(self: *@This()) core.HResult!HSTRING {
        const this: *IGeographicRegion = @ptrCast(self);
        return try this.getCodeThreeDigit();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IGeographicRegion = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getNativeName(self: *@This()) core.HResult!HSTRING {
        const this: *IGeographicRegion = @ptrCast(self);
        return try this.getNativeName();
    }
    pub fn getCurrenciesInUse(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IGeographicRegion = @ptrCast(self);
        return try this.getCurrenciesInUse();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGeographicRegion.IID)));
    }
    pub fn CreateGeographicRegion(geographicRegionCode: HSTRING) core.HResult!*GeographicRegion {
        const factory = @This().IGeographicRegionFactoryCache.get();
        return try factory.CreateGeographicRegion(geographicRegionCode);
    }
    pub fn IsSupported(geographicRegionCode: HSTRING) core.HResult!bool {
        const factory = @This().IGeographicRegionStaticsCache.get();
        return try factory.IsSupported(geographicRegionCode);
    }
    pub const NAME: []const u8 = "Windows.Globalization.GeographicRegion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeographicRegion.GUID;
    pub const IID: Guid = IGeographicRegion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeographicRegion.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IGeographicRegionFactoryCache: FactoryCache(IGeographicRegionFactory, RUNTIME_NAME) = .{};
    var _IGeographicRegionStaticsCache: FactoryCache(IGeographicRegionStatics, RUNTIME_NAME) = .{};
};
pub const IApplicationLanguagesStatics = extern struct {
    vtable: *const VTable,
    pub fn getPrimaryLanguageOverride(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrimaryLanguageOverride(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrimaryLanguageOverride(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PrimaryLanguageOverride(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Languages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManifestLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_ManifestLanguages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.IApplicationLanguagesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75b40847-0a4c-4a92-9565-fd63c95f7aed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrimaryLanguageOverride: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PrimaryLanguageOverride: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Languages: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_ManifestLanguages: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationLanguagesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetLanguagesForUser(self: *@This(), user: *User) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.GetLanguagesForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.IApplicationLanguagesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1df0de4f-072b-4d7b-8f06-cb2db40f2bb5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetLanguagesForUser: *const fn(self: *anyopaque, user: *User, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ICalendar = extern struct {
    vtable: *const VTable,
    pub fn Clone(self: *@This()) core.HResult!*Calendar {
        var _r: *Calendar = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetToMin(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetToMin(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetToMax(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetToMax(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Languages(@ptrCast(self), &_r);
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
    pub fn GetCalendarSystem(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetCalendarSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeCalendarSystem(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.ChangeCalendarSystem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetClock(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetClock(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeClock(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.ChangeClock(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDateTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.GetDateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDateTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.SetDateTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetToNow(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetToNow(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFirstEra(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstEra(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastEra(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastEra(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfEras(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NumberOfEras(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEra(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Era(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEra(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Era(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddEras(self: *@This(), eras: i32) core.HResult!void {
        const _c = self.vtable.AddEras(@ptrCast(self), eras);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EraAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.EraAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EraAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.EraAsString(@ptrCast(self), idealLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstYearInThisEra(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstYearInThisEra(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastYearInThisEra(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastYearInThisEra(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfYearsInThisEra(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NumberOfYearsInThisEra(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYear(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Year(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYear(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Year(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddYears(self: *@This(), years: i32) core.HResult!void {
        const _c = self.vtable.AddYears(@ptrCast(self), years);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn YearAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.YearAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn YearAsTruncatedString(self: *@This(), remainingDigits: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.YearAsTruncatedString(@ptrCast(self), remainingDigits, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn YearAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.YearAsPaddedString(@ptrCast(self), minDigits, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstMonthInThisYear(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstMonthInThisYear(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastMonthInThisYear(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastMonthInThisYear(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfMonthsInThisYear(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NumberOfMonthsInThisYear(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMonth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Month(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMonth(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Month(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddMonths(self: *@This(), months: i32) core.HResult!void {
        const _c = self.vtable.AddMonths(@ptrCast(self), months);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MonthAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.MonthAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MonthAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.MonthAsString(@ptrCast(self), idealLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MonthAsSoloString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.MonthAsSoloString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MonthAsSoloString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.MonthAsSoloString(@ptrCast(self), idealLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MonthAsNumericString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.MonthAsNumericString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MonthAsPaddedNumericString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.MonthAsPaddedNumericString(@ptrCast(self), minDigits, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddWeeks(self: *@This(), weeks: i32) core.HResult!void {
        const _c = self.vtable.AddWeeks(@ptrCast(self), weeks);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFirstDayInThisMonth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstDayInThisMonth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastDayInThisMonth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastDayInThisMonth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfDaysInThisMonth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NumberOfDaysInThisMonth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDay(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Day(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDay(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Day(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDays(self: *@This(), days: i32) core.HResult!void {
        const _c = self.vtable.AddDays(@ptrCast(self), days);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DayAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.DayAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DayAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.DayAsPaddedString(@ptrCast(self), minDigits, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDayOfWeek(self: *@This()) core.HResult!DayOfWeek {
        var _r: DayOfWeek = undefined;
        const _c = self.vtable.get_DayOfWeek(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DayOfWeekAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.DayOfWeekAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DayOfWeekAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.DayOfWeekAsString(@ptrCast(self), idealLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DayOfWeekAsSoloString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.DayOfWeekAsSoloString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DayOfWeekAsSoloString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.DayOfWeekAsSoloString(@ptrCast(self), idealLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstPeriodInThisDay(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstPeriodInThisDay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastPeriodInThisDay(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastPeriodInThisDay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfPeriodsInThisDay(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NumberOfPeriodsInThisDay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeriod(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Period(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPeriod(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Period(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddPeriods(self: *@This(), periods: i32) core.HResult!void {
        const _c = self.vtable.AddPeriods(@ptrCast(self), periods);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PeriodAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.PeriodAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PeriodAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.PeriodAsString(@ptrCast(self), idealLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstHourInThisPeriod(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstHourInThisPeriod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastHourInThisPeriod(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastHourInThisPeriod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfHoursInThisPeriod(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NumberOfHoursInThisPeriod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHour(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Hour(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHour(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Hour(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddHours(self: *@This(), hours: i32) core.HResult!void {
        const _c = self.vtable.AddHours(@ptrCast(self), hours);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn HourAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.HourAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HourAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.HourAsPaddedString(@ptrCast(self), minDigits, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinute(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Minute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinute(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Minute(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddMinutes(self: *@This(), minutes: i32) core.HResult!void {
        const _c = self.vtable.AddMinutes(@ptrCast(self), minutes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MinuteAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.MinuteAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MinuteAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.MinuteAsPaddedString(@ptrCast(self), minDigits, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecond(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Second(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSecond(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Second(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddSeconds(self: *@This(), seconds: i32) core.HResult!void {
        const _c = self.vtable.AddSeconds(@ptrCast(self), seconds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SecondAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.SecondAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SecondAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.SecondAsPaddedString(@ptrCast(self), minDigits, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNanosecond(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Nanosecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNanosecond(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Nanosecond(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddNanoseconds(self: *@This(), nanoseconds: i32) core.HResult!void {
        const _c = self.vtable.AddNanoseconds(@ptrCast(self), nanoseconds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NanosecondAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.NanosecondAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn NanosecondAsPaddedString(self: *@This(), minDigits: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.NanosecondAsPaddedString(@ptrCast(self), minDigits, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Compare(self: *@This(), other: *Calendar) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.Compare(@ptrCast(self), other, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CompareDateTime(self: *@This(), other: DateTime) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.CompareDateTime(@ptrCast(self), other, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyTo(self: *@This(), other: *Calendar) core.HResult!void {
        const _c = self.vtable.CopyTo(@ptrCast(self), other);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFirstMinuteInThisHour(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstMinuteInThisHour(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastMinuteInThisHour(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastMinuteInThisHour(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfMinutesInThisHour(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NumberOfMinutesInThisHour(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstSecondInThisMinute(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstSecondInThisMinute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastSecondInThisMinute(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastSecondInThisMinute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfSecondsInThisMinute(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NumberOfSecondsInThisMinute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResolvedLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDaylightSavingTime(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDaylightSavingTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICalendar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca30221d-86d9-40fb-a26b-d44eb7cf08ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **Calendar) callconv(.winapi) HRESULT,
        SetToMin: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetToMax: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_Languages: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_NumeralSystem: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_NumeralSystem: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        GetCalendarSystem: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ChangeCalendarSystem: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        GetClock: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ChangeClock: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        GetDateTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        SetDateTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        SetToNow: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_FirstEra: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LastEra: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NumberOfEras: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Era: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Era: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        AddEras: *const fn(self: *anyopaque, eras: i32) callconv(.winapi) HRESULT,
        EraAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        EraAsString: *const fn(self: *anyopaque, idealLength: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirstYearInThisEra: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LastYearInThisEra: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NumberOfYearsInThisEra: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Year: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Year: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        AddYears: *const fn(self: *anyopaque, years: i32) callconv(.winapi) HRESULT,
        YearAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        YearAsTruncatedString: *const fn(self: *anyopaque, remainingDigits: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        YearAsPaddedString: *const fn(self: *anyopaque, minDigits: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirstMonthInThisYear: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LastMonthInThisYear: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NumberOfMonthsInThisYear: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Month: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Month: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        AddMonths: *const fn(self: *anyopaque, months: i32) callconv(.winapi) HRESULT,
        MonthAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        MonthAsString: *const fn(self: *anyopaque, idealLength: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        MonthAsSoloString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        MonthAsSoloString: *const fn(self: *anyopaque, idealLength: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        MonthAsNumericString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        MonthAsPaddedNumericString: *const fn(self: *anyopaque, minDigits: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        AddWeeks: *const fn(self: *anyopaque, weeks: i32) callconv(.winapi) HRESULT,
        get_FirstDayInThisMonth: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LastDayInThisMonth: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NumberOfDaysInThisMonth: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Day: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Day: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        AddDays: *const fn(self: *anyopaque, days: i32) callconv(.winapi) HRESULT,
        DayAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        DayAsPaddedString: *const fn(self: *anyopaque, minDigits: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DayOfWeek: *const fn(self: *anyopaque, _r: *DayOfWeek) callconv(.winapi) HRESULT,
        DayOfWeekAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        DayOfWeekAsString: *const fn(self: *anyopaque, idealLength: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        DayOfWeekAsSoloString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        DayOfWeekAsSoloString: *const fn(self: *anyopaque, idealLength: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirstPeriodInThisDay: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LastPeriodInThisDay: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NumberOfPeriodsInThisDay: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Period: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Period: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        AddPeriods: *const fn(self: *anyopaque, periods: i32) callconv(.winapi) HRESULT,
        PeriodAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        PeriodAsString: *const fn(self: *anyopaque, idealLength: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirstHourInThisPeriod: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LastHourInThisPeriod: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NumberOfHoursInThisPeriod: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Hour: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Hour: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        AddHours: *const fn(self: *anyopaque, hours: i32) callconv(.winapi) HRESULT,
        HourAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        HourAsPaddedString: *const fn(self: *anyopaque, minDigits: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Minute: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Minute: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        AddMinutes: *const fn(self: *anyopaque, minutes: i32) callconv(.winapi) HRESULT,
        MinuteAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        MinuteAsPaddedString: *const fn(self: *anyopaque, minDigits: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Second: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Second: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        AddSeconds: *const fn(self: *anyopaque, seconds: i32) callconv(.winapi) HRESULT,
        SecondAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SecondAsPaddedString: *const fn(self: *anyopaque, minDigits: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Nanosecond: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Nanosecond: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        AddNanoseconds: *const fn(self: *anyopaque, nanoseconds: i32) callconv(.winapi) HRESULT,
        NanosecondAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        NanosecondAsPaddedString: *const fn(self: *anyopaque, minDigits: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
        Compare: *const fn(self: *anyopaque, other: *Calendar, _r: *i32) callconv(.winapi) HRESULT,
        CompareDateTime: *const fn(self: *anyopaque, other: DateTime, _r: *i32) callconv(.winapi) HRESULT,
        CopyTo: *const fn(self: *anyopaque, other: *Calendar) callconv(.winapi) HRESULT,
        get_FirstMinuteInThisHour: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LastMinuteInThisHour: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NumberOfMinutesInThisHour: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_FirstSecondInThisMinute: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LastSecondInThisMinute: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NumberOfSecondsInThisMinute: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ResolvedLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsDaylightSavingTime: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICalendarFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateCalendarDefaultCalendarAndClock(self: *@This(), languages: *IIterable(HSTRING)) core.HResult!*Calendar {
        var _r: *Calendar = undefined;
        const _c = self.vtable.CreateCalendarDefaultCalendarAndClock(@ptrCast(self), languages, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCalendar(self: *@This(), languages: *IIterable(HSTRING), calendar: HSTRING, clock: HSTRING) core.HResult!*Calendar {
        var _r: *Calendar = undefined;
        const _c = self.vtable.CreateCalendar(@ptrCast(self), languages, calendar, clock, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICalendarFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83f58412-e56b-4c75-a66e-0f63d57758a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCalendarDefaultCalendarAndClock: *const fn(self: *anyopaque, languages: *IIterable(HSTRING), _r: **Calendar) callconv(.winapi) HRESULT,
        CreateCalendar: *const fn(self: *anyopaque, languages: *IIterable(HSTRING), calendar: HSTRING, clock: HSTRING, _r: **Calendar) callconv(.winapi) HRESULT,
    };
};
pub const ICalendarFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateCalendarWithTimeZone(self: *@This(), languages: *IIterable(HSTRING), calendar: HSTRING, clock: HSTRING, timeZoneId: HSTRING) core.HResult!*Calendar {
        var _r: *Calendar = undefined;
        const _c = self.vtable.CreateCalendarWithTimeZone(@ptrCast(self), languages, calendar, clock, timeZoneId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICalendarFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b44b378c-ca7e-4590-9e72-ea2bec1a5115";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCalendarWithTimeZone: *const fn(self: *anyopaque, languages: *IIterable(HSTRING), calendar: HSTRING, clock: HSTRING, timeZoneId: HSTRING, _r: **Calendar) callconv(.winapi) HRESULT,
    };
};
pub const ICalendarIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getGregorian(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Gregorian(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHebrew(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Hebrew(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHijri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Hijri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJapanese(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Japanese(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJulian(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Julian(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKorean(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Korean(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTaiwan(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Taiwan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThai(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Thai(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUmAlQura(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UmAlQura(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICalendarIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80653f68-2cb2-4c1f-b590-f0f52bf4fd1a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Gregorian: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Hebrew: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Hijri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Japanese: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Julian: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Korean: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Taiwan: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Thai: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UmAlQura: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICalendarIdentifiersStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getPersian(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Persian(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICalendarIdentifiersStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7df4d488-5fd0-42a7-95b5-7d98d823075f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Persian: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICalendarIdentifiersStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getChineseLunar(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ChineseLunar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJapaneseLunar(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_JapaneseLunar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKoreanLunar(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KoreanLunar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTaiwanLunar(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TaiwanLunar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVietnameseLunar(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VietnameseLunar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICalendarIdentifiersStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c225423-1fad-40c0-9334-a8eb90db04f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChineseLunar: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_JapaneseLunar: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KoreanLunar: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TaiwanLunar: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VietnameseLunar: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IClockIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getTwelveHour(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TwelveHour(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTwentyFourHour(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TwentyFourHour(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.IClockIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "523805bb-12ec-4f83-bc31-b1b4376b0808";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TwelveHour: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TwentyFourHour: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICurrencyAmount = extern struct {
    vtable: *const VTable,
    pub fn getAmount(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Amount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrency(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Currency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICurrencyAmount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74b49942-eb75-443a-95b3-7d723f56f93c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Amount: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Currency: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICurrencyAmountFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), amount: HSTRING, currency: HSTRING) core.HResult!*CurrencyAmount {
        var _r: *CurrencyAmount = undefined;
        const _c = self.vtable.Create(@ptrCast(self), amount, currency, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICurrencyAmountFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48d7168f-ef3b-4aee-a6a1-4b036fe03ff0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, amount: HSTRING, currency: HSTRING, _r: **CurrencyAmount) callconv(.winapi) HRESULT,
    };
};
pub const ICurrencyIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getAED(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AED(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAFN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AFN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getALL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ALL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAMD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AMD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getANG(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ANG(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAOA(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AOA(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getARS(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ARS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAUD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AUD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAWG(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AWG(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAZN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AZN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBAM(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BAM(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBBD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BBD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBDT(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BDT(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBGN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BGN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBHD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BHD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBIF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BIF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBMD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BMD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBND(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BND(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBOB(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BOB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBRL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BRL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBSD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BSD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBTN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BTN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBWP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BWP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBYR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BYR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBZD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BZD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCAD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CAD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCDF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CDF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCHF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CHF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCLP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CLP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCNY(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CNY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCOP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_COP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCRC(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CRC(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCUP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CUP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCVE(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CVE(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCZK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CZK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDJF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DJF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDKK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DKK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDOP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DOP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDZD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DZD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEGP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EGP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getERN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ERN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getETB(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ETB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEUR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EUR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFJD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FJD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFKP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FKP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGBP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GBP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGEL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GEL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGHS(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GHS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGIP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GIP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGMD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GMD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGNF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GNF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGTQ(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GTQ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGYD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GYD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHKD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HKD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHNL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HNL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHRK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HRK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHTG(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HTG(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHUF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HUF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIDR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IDR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getILS(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ILS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getINR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_INR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIQD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IQD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIRR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IRR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getISK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ISK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJMD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_JMD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJOD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_JOD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJPY(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_JPY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKES(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KES(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKGS(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KGS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKHR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KHR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKMF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KMF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKPW(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KPW(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKRW(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KRW(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKWD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KWD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKYD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KYD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKZT(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KZT(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLAK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LAK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLBP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LBP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLKR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LKR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLRD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LRD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLSL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LSL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLTL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LTL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLVL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LVL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLYD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LYD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMAD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MAD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMDL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MDL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMGA(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MGA(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMKD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MKD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMMK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MMK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMNT(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MNT(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMOP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MOP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMRO(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MRO(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMUR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MUR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMVR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MVR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMWK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MWK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMXN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MXN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMYR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MYR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMZN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MZN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNAD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NAD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNGN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NGN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNIO(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NIO(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNOK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NOK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNPR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NPR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNZD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NZD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOMR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OMR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPAB(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PAB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPEN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PEN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPGK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PGK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPHP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PHP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPKR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PKR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPLN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PLN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPYG(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PYG(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQAR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QAR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRON(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RON(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRSD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RSD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRUB(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RUB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRWF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RWF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSAR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SAR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSBD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SBD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSCR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SCR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSDG(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SDG(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSEK(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SEK(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSGD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SGD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSHP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SHP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSLL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SLL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSOS(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SOS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSRD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SRD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSTD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_STD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSYP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SYP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSZL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SZL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTHB(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_THB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTJS(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TJS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTMT(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TMT(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTND(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TND(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTOP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TOP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTRY(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TRY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTTD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TTD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTWD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TWD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTZS(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TZS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUAH(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UAH(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUGX(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UGX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUSD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_USD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUYU(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UYU(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUZS(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UZS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVEF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VEF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVND(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VND(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVUV(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VUV(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWST(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WST(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXAF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XAF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXCD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XCD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXOF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XOF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXPF(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XPF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXXX(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_XXX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYER(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_YER(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZAR(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ZAR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZMW(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ZMW(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZWL(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ZWL(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICurrencyIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f1d091b-d586-4913-9b6a-a9bd2dc12874";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AED: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AFN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ALL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AMD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ANG: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AOA: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ARS: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AUD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AWG: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AZN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BAM: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BBD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BDT: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BGN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BHD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BIF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BMD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BND: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BOB: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BRL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BSD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BTN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BWP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BYR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BZD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CAD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CDF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CHF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CLP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CNY: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_COP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CRC: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CUP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CVE: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CZK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DJF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DKK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DOP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DZD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EGP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ERN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ETB: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EUR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FJD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FKP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GBP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GEL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GHS: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GIP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GMD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GNF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GTQ: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GYD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HKD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HNL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HRK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HTG: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HUF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IDR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ILS: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_INR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IQD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IRR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ISK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_JMD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_JOD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_JPY: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KES: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KGS: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KHR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KMF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KPW: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KRW: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KWD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KYD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KZT: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LAK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LBP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LKR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LRD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LSL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LTL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LVL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LYD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MAD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MDL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MGA: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MKD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MMK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MNT: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MOP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MRO: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MUR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MVR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MWK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MXN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MYR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MZN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NAD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NGN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NIO: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NOK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NPR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NZD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OMR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PAB: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PEN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PGK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PHP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PKR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PLN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PYG: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_QAR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RON: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RSD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RUB: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RWF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SAR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SBD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SCR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SDG: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SEK: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SGD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SHP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SLL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SOS: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SRD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_STD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SYP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SZL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_THB: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TJS: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TMT: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TND: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TOP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TRY: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TTD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TWD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TZS: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UAH: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UGX: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_USD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UYU: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UZS: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VEF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VND: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VUV: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WST: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XAF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XCD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XOF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XPF: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_XXX: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_YER: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ZAR: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ZMW: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ZWL: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICurrencyIdentifiersStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getBYN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BYN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICurrencyIdentifiersStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1814797f-c3b2-4c33-9591-980011950d37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BYN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICurrencyIdentifiersStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getMRU(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MRU(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSSP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SSP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSTN(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_STN(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVES(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VES(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ICurrencyIdentifiersStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4fb23bfa-ed25-4f4d-857f-237f1748c21c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MRU: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SSP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_STN: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VES: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IGeographicRegion = extern struct {
    vtable: *const VTable,
    pub fn getCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Code(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCodeTwoLetter(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CodeTwoLetter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCodeThreeLetter(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CodeThreeLetter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCodeThreeDigit(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CodeThreeDigit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNativeName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NativeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrenciesInUse(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_CurrenciesInUse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.IGeographicRegion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01e9a621-4a64-4ed9-954f-9edeb07bd903";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Code: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CodeTwoLetter: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CodeThreeLetter: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CodeThreeDigit: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NativeName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CurrenciesInUse: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IGeographicRegionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateGeographicRegion(self: *@This(), geographicRegionCode: HSTRING) core.HResult!*GeographicRegion {
        var _r: *GeographicRegion = undefined;
        const _c = self.vtable.CreateGeographicRegion(@ptrCast(self), geographicRegionCode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.IGeographicRegionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53425270-77b4-426b-859f-81e19d512546";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateGeographicRegion: *const fn(self: *anyopaque, geographicRegionCode: HSTRING, _r: **GeographicRegion) callconv(.winapi) HRESULT,
    };
};
pub const IGeographicRegionStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This(), geographicRegionCode: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), geographicRegionCode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.IGeographicRegionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29e28974-7ad9-4ef4-8799-b3b44fadec08";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, geographicRegionCode: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ILanguage = extern struct {
    vtable: *const VTable,
    pub fn getLanguageTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LanguageTag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNativeName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NativeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScript(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Script(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ILanguage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea79a752-f7c2-4265-b1bd-c4dec4e4f080";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LanguageTag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NativeName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Script: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILanguage2 = extern struct {
    vtable: *const VTable,
    pub fn getLayoutDirection(self: *@This()) core.HResult!LanguageLayoutDirection {
        var _r: LanguageLayoutDirection = undefined;
        const _c = self.vtable.get_LayoutDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ILanguage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a47e5b5-d94d-4886-a404-a5a5b9d5b494";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LayoutDirection: *const fn(self: *anyopaque, _r: *LanguageLayoutDirection) callconv(.winapi) HRESULT,
    };
};
pub const ILanguage3 = extern struct {
    vtable: *const VTable,
    pub fn getAbbreviatedName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AbbreviatedName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ILanguage3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6af3d10-641a-5ba4-bb43-5e12aed75954";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AbbreviatedName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILanguageExtensionSubtags = extern struct {
    vtable: *const VTable,
    pub fn GetExtensionSubtags(self: *@This(), singleton: HSTRING) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.GetExtensionSubtags(@ptrCast(self), singleton, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ILanguageExtensionSubtags";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d7daf45-368d-4364-852b-dec927037b85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetExtensionSubtags: *const fn(self: *anyopaque, singleton: HSTRING, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ILanguageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateLanguage(self: *@This(), languageTag: HSTRING) core.HResult!*Language {
        var _r: *Language = undefined;
        const _c = self.vtable.CreateLanguage(@ptrCast(self), languageTag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ILanguageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b0252ac-0c27-44f8-b792-9793fb66c63e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateLanguage: *const fn(self: *anyopaque, languageTag: HSTRING, _r: **Language) callconv(.winapi) HRESULT,
    };
};
pub const ILanguageStatics = extern struct {
    vtable: *const VTable,
    pub fn IsWellFormed(self: *@This(), languageTag: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsWellFormed(@ptrCast(self), languageTag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentInputMethodLanguageTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrentInputMethodLanguageTag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ILanguageStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b23cd557-0865-46d4-89b8-d59be8990f0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsWellFormed: *const fn(self: *anyopaque, languageTag: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        get_CurrentInputMethodLanguageTag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILanguageStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TrySetInputMethodLanguageTag(self: *@This(), languageTag: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetInputMethodLanguageTag(@ptrCast(self), languageTag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ILanguageStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30199f6e-914b-4b2a-9d6e-e3b0e27dbe4f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TrySetInputMethodLanguageTag: *const fn(self: *anyopaque, languageTag: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ILanguageStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetMuiCompatibleLanguageListFromLanguageTags(self: *@This(), languageTags: *IIterable(HSTRING)) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetMuiCompatibleLanguageListFromLanguageTags(@ptrCast(self), languageTags, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ILanguageStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d15ecb5a-71de-5752-9542-fac5b4f27261";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetMuiCompatibleLanguageListFromLanguageTags: *const fn(self: *anyopaque, languageTags: *IIterable(HSTRING), _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const INumeralSystemIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getArab(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Arab(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArabExt(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ArabExt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBali(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Bali(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBeng(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Beng(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCham(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Cham(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeva(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Deva(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFullWide(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FullWide(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGujr(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Gujr(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGuru(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Guru(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHaniDec(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HaniDec(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJava(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Java(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKali(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Kali(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKhmr(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Khmr(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKnda(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Knda(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLana(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Lana(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanaTham(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LanaTham(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLaoo(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Laoo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLatn(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Latn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLepc(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Lepc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLimb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Limb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMlym(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mlym(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMong(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mong(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMtei(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mtei(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMymr(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Mymr(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMymrShan(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MymrShan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNkoo(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Nkoo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOlck(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Olck(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrya(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Orya(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSaur(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Saur(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSund(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sund(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTalu(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Talu(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTamlDec(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TamlDec(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTelu(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Telu(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThai(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Thai(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTibt(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tibt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVaii(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Vaii(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.INumeralSystemIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5c662c3-68c9-4d3d-b765-972029e21dec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Arab: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ArabExt: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Bali: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Beng: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Cham: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Deva: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FullWide: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Gujr: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Guru: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HaniDec: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Java: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kali: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Khmr: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Knda: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Lana: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LanaTham: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Laoo: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Latn: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Lepc: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Limb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mlym: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mong: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mtei: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Mymr: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MymrShan: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Nkoo: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Olck: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Orya: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Saur: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sund: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Talu: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TamlDec: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Telu: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Thai: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Tibt: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Vaii: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INumeralSystemIdentifiersStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getBrah(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Brah(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOsma(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Osma(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMathBold(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MathBold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMathDbl(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MathDbl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMathSans(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MathSans(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMathSanb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MathSanb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMathMono(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MathMono(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZmthBold(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ZmthBold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZmthDbl(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ZmthDbl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZmthSans(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ZmthSans(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZmthSanb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ZmthSanb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZmthMono(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ZmthMono(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.INumeralSystemIdentifiersStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f003228-9ddb-4a34-9104-0260c091a7c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Brah: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Osma: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MathBold: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MathDbl: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MathSans: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MathSanb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MathMono: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ZmthBold: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ZmthDbl: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ZmthSans: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ZmthSanb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ZmthMono: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITimeZoneOnCalendar = extern struct {
    vtable: *const VTable,
    pub fn GetTimeZone(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetTimeZone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeTimeZone(self: *@This(), timeZoneId: HSTRING) core.HResult!void {
        const _c = self.vtable.ChangeTimeZone(@ptrCast(self), timeZoneId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TimeZoneAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.TimeZoneAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TimeZoneAsString(self: *@This(), idealLength: i32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.TimeZoneAsString(@ptrCast(self), idealLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.ITimeZoneOnCalendar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb3c25e5-46cf-4317-a3f5-02621ad54478";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetTimeZone: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ChangeTimeZone: *const fn(self: *anyopaque, timeZoneId: HSTRING) callconv(.winapi) HRESULT,
        TimeZoneAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        TimeZoneAsString: *const fn(self: *anyopaque, idealLength: i32, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const Language = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguageTag(self: *@This()) core.HResult!HSTRING {
        const this: *ILanguage = @ptrCast(self);
        return try this.getLanguageTag();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *ILanguage = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getNativeName(self: *@This()) core.HResult!HSTRING {
        const this: *ILanguage = @ptrCast(self);
        return try this.getNativeName();
    }
    pub fn getScript(self: *@This()) core.HResult!HSTRING {
        const this: *ILanguage = @ptrCast(self);
        return try this.getScript();
    }
    pub fn GetExtensionSubtags(self: *@This(), singleton: HSTRING) core.HResult!*IVectorView(HSTRING) {
        var this: ?*ILanguageExtensionSubtags = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILanguageExtensionSubtags.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetExtensionSubtags(singleton);
    }
    pub fn getLayoutDirection(self: *@This()) core.HResult!LanguageLayoutDirection {
        var this: ?*ILanguage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILanguage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLayoutDirection();
    }
    pub fn getAbbreviatedName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILanguage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILanguage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAbbreviatedName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateLanguage(languageTag: HSTRING) core.HResult!*Language {
        const factory = @This().ILanguageFactoryCache.get();
        return try factory.CreateLanguage(languageTag);
    }
    pub fn IsWellFormed(languageTag: HSTRING) core.HResult!bool {
        const factory = @This().ILanguageStaticsCache.get();
        return try factory.IsWellFormed(languageTag);
    }
    pub fn get_CurrentInputMethodLanguageTag() core.HResult!HSTRING {
        const factory = @This().ILanguageStaticsCache.get();
        return try factory.getCurrentInputMethodLanguageTag();
    }
    pub fn TrySetInputMethodLanguageTag(languageTag: HSTRING) core.HResult!bool {
        const factory = @This().ILanguageStatics2Cache.get();
        return try factory.TrySetInputMethodLanguageTag(languageTag);
    }
    pub fn GetMuiCompatibleLanguageListFromLanguageTags(languageTags: *IIterable(HSTRING)) core.HResult!*IVector(HSTRING) {
        const factory = @This().ILanguageStatics3Cache.get();
        return try factory.GetMuiCompatibleLanguageListFromLanguageTags(languageTags);
    }
    pub const NAME: []const u8 = "Windows.Globalization.Language";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILanguage.GUID;
    pub const IID: Guid = ILanguage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILanguage.SIGNATURE);
    var _ILanguageFactoryCache: FactoryCache(ILanguageFactory, RUNTIME_NAME) = .{};
    var _ILanguageStaticsCache: FactoryCache(ILanguageStatics, RUNTIME_NAME) = .{};
    var _ILanguageStatics2Cache: FactoryCache(ILanguageStatics2, RUNTIME_NAME) = .{};
    var _ILanguageStatics3Cache: FactoryCache(ILanguageStatics3, RUNTIME_NAME) = .{};
};
pub const LanguageLayoutDirection = enum(i32) {
    Ltr = 0,
    Rtl = 1,
    TtbLtr = 2,
    TtbRtl = 3,
};
pub const NumeralSystemIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Brah() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getBrah();
    }
    pub fn get_Osma() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getOsma();
    }
    pub fn get_MathBold() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getMathBold();
    }
    pub fn get_MathDbl() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getMathDbl();
    }
    pub fn get_MathSans() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getMathSans();
    }
    pub fn get_MathSanb() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getMathSanb();
    }
    pub fn get_MathMono() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getMathMono();
    }
    pub fn get_ZmthBold() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getZmthBold();
    }
    pub fn get_ZmthDbl() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getZmthDbl();
    }
    pub fn get_ZmthSans() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getZmthSans();
    }
    pub fn get_ZmthSanb() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getZmthSanb();
    }
    pub fn get_ZmthMono() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStatics2Cache.get();
        return try factory.getZmthMono();
    }
    pub fn get_Arab() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getArab();
    }
    pub fn get_ArabExt() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getArabExt();
    }
    pub fn get_Bali() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getBali();
    }
    pub fn get_Beng() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getBeng();
    }
    pub fn get_Cham() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getCham();
    }
    pub fn get_Deva() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getDeva();
    }
    pub fn get_FullWide() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getFullWide();
    }
    pub fn get_Gujr() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getGujr();
    }
    pub fn get_Guru() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getGuru();
    }
    pub fn get_HaniDec() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getHaniDec();
    }
    pub fn get_Java() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getJava();
    }
    pub fn get_Kali() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getKali();
    }
    pub fn get_Khmr() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getKhmr();
    }
    pub fn get_Knda() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getKnda();
    }
    pub fn get_Lana() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getLana();
    }
    pub fn get_LanaTham() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getLanaTham();
    }
    pub fn get_Laoo() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getLaoo();
    }
    pub fn get_Latn() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getLatn();
    }
    pub fn get_Lepc() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getLepc();
    }
    pub fn get_Limb() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getLimb();
    }
    pub fn get_Mlym() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getMlym();
    }
    pub fn get_Mong() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getMong();
    }
    pub fn get_Mtei() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getMtei();
    }
    pub fn get_Mymr() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getMymr();
    }
    pub fn get_MymrShan() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getMymrShan();
    }
    pub fn get_Nkoo() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getNkoo();
    }
    pub fn get_Olck() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getOlck();
    }
    pub fn get_Orya() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getOrya();
    }
    pub fn get_Saur() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getSaur();
    }
    pub fn get_Sund() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getSund();
    }
    pub fn get_Talu() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getTalu();
    }
    pub fn get_TamlDec() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getTamlDec();
    }
    pub fn get_Telu() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getTelu();
    }
    pub fn get_Thai() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getThai();
    }
    pub fn get_Tibt() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getTibt();
    }
    pub fn get_Vaii() core.HResult!HSTRING {
        const factory = @This().INumeralSystemIdentifiersStaticsCache.get();
        return try factory.getVaii();
    }
    pub const NAME: []const u8 = "Windows.Globalization.NumeralSystemIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _INumeralSystemIdentifiersStatics2Cache: FactoryCache(INumeralSystemIdentifiersStatics2, RUNTIME_NAME) = .{};
    var _INumeralSystemIdentifiersStaticsCache: FactoryCache(INumeralSystemIdentifiersStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("./root.zig").IUnknown;
const IActivationFactory = @import("./Foundation.zig").IActivationFactory;
const Guid = @import("./root.zig").Guid;
const IVectorView = @import("./Foundation/Collections.zig").IVectorView;
const IInspectable = @import("./Foundation.zig").IInspectable;
const IIterable = @import("./Foundation/Collections.zig").IIterable;
const IVector = @import("./Foundation/Collections.zig").IVector;
const DateTime = @import("./Foundation.zig").DateTime;
const HRESULT = @import("./root.zig").HRESULT;
const FactoryCache = @import("./core.zig").FactoryCache;
const core = @import("./root.zig").core;
const TrustLevel = @import("./root.zig").TrustLevel;
const User = @import("./System.zig").User;
const HSTRING = @import("./root.zig").HSTRING;
pub const Collation = @import("./Globalization/Collation.zig");
pub const DateTimeFormatting = @import("./Globalization/DateTimeFormatting.zig");
pub const Fonts = @import("./Globalization/Fonts.zig");
pub const NumberFormatting = @import("./Globalization/NumberFormatting.zig");
pub const PhoneNumberFormatting = @import("./Globalization/PhoneNumberFormatting.zig");
