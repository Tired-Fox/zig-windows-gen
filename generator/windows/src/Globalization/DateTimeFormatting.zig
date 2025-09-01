pub const DateTimeFormatter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getLanguages();
    }
    pub fn getGeographicRegion(self: *@This()) core.HResult!HSTRING {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getGeographicRegion();
    }
    pub fn getCalendar(self: *@This()) core.HResult!HSTRING {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getCalendar();
    }
    pub fn getClock(self: *@This()) core.HResult!HSTRING {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getClock();
    }
    pub fn getNumeralSystem(self: *@This()) core.HResult!HSTRING {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getNumeralSystem();
    }
    pub fn putNumeralSystem(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.putNumeralSystem(value);
    }
    pub fn getPatterns(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getPatterns();
    }
    pub fn getTemplate(self: *@This()) core.HResult!HSTRING {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getTemplate();
    }
    pub fn Format(self: *@This(), value: DateTime) core.HResult!HSTRING {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.Format(value);
    }
    pub fn getIncludeYear(self: *@This()) core.HResult!YearFormat {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getIncludeYear();
    }
    pub fn getIncludeMonth(self: *@This()) core.HResult!MonthFormat {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getIncludeMonth();
    }
    pub fn getIncludeDayOfWeek(self: *@This()) core.HResult!DayOfWeekFormat {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getIncludeDayOfWeek();
    }
    pub fn getIncludeDay(self: *@This()) core.HResult!DayFormat {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getIncludeDay();
    }
    pub fn getIncludeHour(self: *@This()) core.HResult!HourFormat {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getIncludeHour();
    }
    pub fn getIncludeMinute(self: *@This()) core.HResult!MinuteFormat {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getIncludeMinute();
    }
    pub fn getIncludeSecond(self: *@This()) core.HResult!SecondFormat {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getIncludeSecond();
    }
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getResolvedLanguage();
    }
    pub fn getResolvedGeographicRegion(self: *@This()) core.HResult!HSTRING {
        const this: *IDateTimeFormatter = @ptrCast(self);
        return try this.getResolvedGeographicRegion();
    }
    pub fn FormatWithTimeZoneId(self: *@This(), datetime: DateTime, timeZoneId: HSTRING) core.HResult!HSTRING {
        var this: ?*IDateTimeFormatter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDateTimeFormatter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FormatWithTimeZoneId(datetime, timeZoneId);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateDateTimeFormatter(formatTemplate: HSTRING) core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterFactoryCache.get();
        return try _f.CreateDateTimeFormatter(formatTemplate);
    }
    pub fn CreateDateTimeFormatterLanguages(formatTemplate: HSTRING, languages: *IIterable(HSTRING)) core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterFactoryCache.get();
        return try _f.CreateDateTimeFormatterLanguages(formatTemplate, languages);
    }
    pub fn CreateDateTimeFormatterContext(formatTemplate: HSTRING, languages: *IIterable(HSTRING), geographicRegion: HSTRING, calendar: HSTRING, clock: HSTRING) core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterFactoryCache.get();
        return try _f.CreateDateTimeFormatterContext(formatTemplate, languages, geographicRegion, calendar, clock);
    }
    pub fn CreateDateTimeFormatterDate(yearFormat: YearFormat, monthFormat: MonthFormat, dayFormat: DayFormat, dayOfWeekFormat: DayOfWeekFormat) core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterFactoryCache.get();
        return try _f.CreateDateTimeFormatterDate(yearFormat, monthFormat, dayFormat, dayOfWeekFormat);
    }
    pub fn CreateDateTimeFormatterTime(hourFormat: HourFormat, minuteFormat: MinuteFormat, secondFormat: SecondFormat) core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterFactoryCache.get();
        return try _f.CreateDateTimeFormatterTime(hourFormat, minuteFormat, secondFormat);
    }
    pub fn CreateDateTimeFormatterDateTimeLanguages(yearFormat: YearFormat, monthFormat: MonthFormat, dayFormat: DayFormat, dayOfWeekFormat: DayOfWeekFormat, hourFormat: HourFormat, minuteFormat: MinuteFormat, secondFormat: SecondFormat, languages: *IIterable(HSTRING)) core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterFactoryCache.get();
        return try _f.CreateDateTimeFormatterDateTimeLanguages(yearFormat, monthFormat, dayFormat, dayOfWeekFormat, hourFormat, minuteFormat, secondFormat, languages);
    }
    pub fn CreateDateTimeFormatterDateTimeContext(yearFormat: YearFormat, monthFormat: MonthFormat, dayFormat: DayFormat, dayOfWeekFormat: DayOfWeekFormat, hourFormat: HourFormat, minuteFormat: MinuteFormat, secondFormat: SecondFormat, languages: *IIterable(HSTRING), geographicRegion: HSTRING, calendar: HSTRING, clock: HSTRING) core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterFactoryCache.get();
        return try _f.CreateDateTimeFormatterDateTimeContext(yearFormat, monthFormat, dayFormat, dayOfWeekFormat, hourFormat, minuteFormat, secondFormat, languages, geographicRegion, calendar, clock);
    }
    pub fn getLongDate() core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterStaticsCache.get();
        return try _f.getLongDate();
    }
    pub fn getLongTime() core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterStaticsCache.get();
        return try _f.getLongTime();
    }
    pub fn getShortDate() core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterStaticsCache.get();
        return try _f.getShortDate();
    }
    pub fn getShortTime() core.HResult!*DateTimeFormatter {
        const _f = @This().IDateTimeFormatterStaticsCache.get();
        return try _f.getShortTime();
    }
    pub const NAME: []const u8 = "Windows.Globalization.DateTimeFormatting.DateTimeFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDateTimeFormatter.GUID;
    pub const IID: Guid = IDateTimeFormatter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDateTimeFormatter.SIGNATURE);
    var _IDateTimeFormatterFactoryCache: FactoryCache(IDateTimeFormatterFactory, RUNTIME_NAME) = .{};
    var _IDateTimeFormatterStaticsCache: FactoryCache(IDateTimeFormatterStatics, RUNTIME_NAME) = .{};
};
pub const DayFormat = enum(i32) {
    None = 0,
    Default = 1,
};
pub const DayOfWeekFormat = enum(i32) {
    None = 0,
    Default = 1,
    Abbreviated = 2,
    Full = 3,
};
pub const HourFormat = enum(i32) {
    None = 0,
    Default = 1,
};
pub const IDateTimeFormatter = extern struct {
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
    pub fn getCalendar(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Calendar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClock(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Clock(@ptrCast(self), &_r);
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
    pub fn getPatterns(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Patterns(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTemplate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Template(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Format(self: *@This(), value: DateTime) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.Format(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeYear(self: *@This()) core.HResult!YearFormat {
        var _r: YearFormat = undefined;
        const _c = self.vtable.get_IncludeYear(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeMonth(self: *@This()) core.HResult!MonthFormat {
        var _r: MonthFormat = undefined;
        const _c = self.vtable.get_IncludeMonth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeDayOfWeek(self: *@This()) core.HResult!DayOfWeekFormat {
        var _r: DayOfWeekFormat = undefined;
        const _c = self.vtable.get_IncludeDayOfWeek(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeDay(self: *@This()) core.HResult!DayFormat {
        var _r: DayFormat = undefined;
        const _c = self.vtable.get_IncludeDay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeHour(self: *@This()) core.HResult!HourFormat {
        var _r: HourFormat = undefined;
        const _c = self.vtable.get_IncludeHour(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeMinute(self: *@This()) core.HResult!MinuteFormat {
        var _r: MinuteFormat = undefined;
        const _c = self.vtable.get_IncludeMinute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeSecond(self: *@This()) core.HResult!SecondFormat {
        var _r: SecondFormat = undefined;
        const _c = self.vtable.get_IncludeSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub const NAME: []const u8 = "Windows.Globalization.DateTimeFormatting.IDateTimeFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95eeca10-73e0-4e4b-a183-3d6ad0ba35ec";
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
        get_Calendar: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Clock: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NumeralSystem: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_NumeralSystem: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Patterns: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Template: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        Format: *const fn(self: *anyopaque, value: DateTime, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IncludeYear: *const fn(self: *anyopaque, _r: *YearFormat) callconv(.winapi) HRESULT,
        get_IncludeMonth: *const fn(self: *anyopaque, _r: *MonthFormat) callconv(.winapi) HRESULT,
        get_IncludeDayOfWeek: *const fn(self: *anyopaque, _r: *DayOfWeekFormat) callconv(.winapi) HRESULT,
        get_IncludeDay: *const fn(self: *anyopaque, _r: *DayFormat) callconv(.winapi) HRESULT,
        get_IncludeHour: *const fn(self: *anyopaque, _r: *HourFormat) callconv(.winapi) HRESULT,
        get_IncludeMinute: *const fn(self: *anyopaque, _r: *MinuteFormat) callconv(.winapi) HRESULT,
        get_IncludeSecond: *const fn(self: *anyopaque, _r: *SecondFormat) callconv(.winapi) HRESULT,
        get_ResolvedLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ResolvedGeographicRegion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDateTimeFormatter2 = extern struct {
    vtable: *const VTable,
    pub fn Format(self: *@This(), datetime: DateTime, timeZoneId: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.Format(@ptrCast(self), datetime, timeZoneId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.DateTimeFormatting.IDateTimeFormatter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27c91a86-bdaa-4fd0-9e36-671d5aa5ee03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Format: *const fn(self: *anyopaque, datetime: DateTime, timeZoneId: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDateTimeFormatterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateDateTimeFormatter(self: *@This(), formatTemplate: HSTRING) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.CreateDateTimeFormatter(@ptrCast(self), formatTemplate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTimeFormatterLanguages(self: *@This(), formatTemplate: HSTRING, languages: *IIterable(HSTRING)) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.CreateDateTimeFormatterLanguages(@ptrCast(self), formatTemplate, languages, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTimeFormatterContext(self: *@This(), formatTemplate: HSTRING, languages: *IIterable(HSTRING), geographicRegion: HSTRING, calendar: HSTRING, clock: HSTRING) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.CreateDateTimeFormatterContext(@ptrCast(self), formatTemplate, languages, geographicRegion, calendar, clock, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTimeFormatterDate(self: *@This(), yearFormat: YearFormat, monthFormat: MonthFormat, dayFormat: DayFormat, dayOfWeekFormat: DayOfWeekFormat) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.CreateDateTimeFormatterDate(@ptrCast(self), yearFormat, monthFormat, dayFormat, dayOfWeekFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTimeFormatterTime(self: *@This(), hourFormat: HourFormat, minuteFormat: MinuteFormat, secondFormat: SecondFormat) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.CreateDateTimeFormatterTime(@ptrCast(self), hourFormat, minuteFormat, secondFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTimeFormatterDateTimeLanguages(self: *@This(), yearFormat: YearFormat, monthFormat: MonthFormat, dayFormat: DayFormat, dayOfWeekFormat: DayOfWeekFormat, hourFormat: HourFormat, minuteFormat: MinuteFormat, secondFormat: SecondFormat, languages: *IIterable(HSTRING)) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.CreateDateTimeFormatterDateTimeLanguages(@ptrCast(self), yearFormat, monthFormat, dayFormat, dayOfWeekFormat, hourFormat, minuteFormat, secondFormat, languages, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDateTimeFormatterDateTimeContext(self: *@This(), yearFormat: YearFormat, monthFormat: MonthFormat, dayFormat: DayFormat, dayOfWeekFormat: DayOfWeekFormat, hourFormat: HourFormat, minuteFormat: MinuteFormat, secondFormat: SecondFormat, languages: *IIterable(HSTRING), geographicRegion: HSTRING, calendar: HSTRING, clock: HSTRING) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.CreateDateTimeFormatterDateTimeContext(@ptrCast(self), yearFormat, monthFormat, dayFormat, dayOfWeekFormat, hourFormat, minuteFormat, secondFormat, languages, geographicRegion, calendar, clock, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec8d8a53-1a2e-412d-8815-3b745fb1a2a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDateTimeFormatter: *const fn(self: *anyopaque, formatTemplate: HSTRING, _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
        CreateDateTimeFormatterLanguages: *const fn(self: *anyopaque, formatTemplate: HSTRING, languages: *IIterable(HSTRING), _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
        CreateDateTimeFormatterContext: *const fn(self: *anyopaque, formatTemplate: HSTRING, languages: *IIterable(HSTRING), geographicRegion: HSTRING, calendar: HSTRING, clock: HSTRING, _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
        CreateDateTimeFormatterDate: *const fn(self: *anyopaque, yearFormat: YearFormat, monthFormat: MonthFormat, dayFormat: DayFormat, dayOfWeekFormat: DayOfWeekFormat, _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
        CreateDateTimeFormatterTime: *const fn(self: *anyopaque, hourFormat: HourFormat, minuteFormat: MinuteFormat, secondFormat: SecondFormat, _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
        CreateDateTimeFormatterDateTimeLanguages: *const fn(self: *anyopaque, yearFormat: YearFormat, monthFormat: MonthFormat, dayFormat: DayFormat, dayOfWeekFormat: DayOfWeekFormat, hourFormat: HourFormat, minuteFormat: MinuteFormat, secondFormat: SecondFormat, languages: *IIterable(HSTRING), _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
        CreateDateTimeFormatterDateTimeContext: *const fn(self: *anyopaque, yearFormat: YearFormat, monthFormat: MonthFormat, dayFormat: DayFormat, dayOfWeekFormat: DayOfWeekFormat, hourFormat: HourFormat, minuteFormat: MinuteFormat, secondFormat: SecondFormat, languages: *IIterable(HSTRING), geographicRegion: HSTRING, calendar: HSTRING, clock: HSTRING, _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
    };
};
pub const IDateTimeFormatterStatics = extern struct {
    vtable: *const VTable,
    pub fn getLongDate(self: *@This()) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.get_LongDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLongTime(self: *@This()) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.get_LongTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShortDate(self: *@This()) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.get_ShortDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShortTime(self: *@This()) core.HResult!*DateTimeFormatter {
        var _r: *DateTimeFormatter = undefined;
        const _c = self.vtable.get_ShortTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bfcde7c0-df4c-4a2e-9012-f47daf3f1212";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LongDate: *const fn(self: *anyopaque, _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
        get_LongTime: *const fn(self: *anyopaque, _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
        get_ShortDate: *const fn(self: *anyopaque, _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
        get_ShortTime: *const fn(self: *anyopaque, _r: **DateTimeFormatter) callconv(.winapi) HRESULT,
    };
};
pub const MinuteFormat = enum(i32) {
    None = 0,
    Default = 1,
};
pub const MonthFormat = enum(i32) {
    None = 0,
    Default = 1,
    Abbreviated = 2,
    Full = 3,
    Numeric = 4,
};
pub const SecondFormat = enum(i32) {
    None = 0,
    Default = 1,
};
pub const YearFormat = enum(i32) {
    None = 0,
    Default = 1,
    Abbreviated = 2,
    Full = 3,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const DateTime = @import("../Foundation.zig").DateTime;
const HSTRING = @import("../root.zig").HSTRING;
