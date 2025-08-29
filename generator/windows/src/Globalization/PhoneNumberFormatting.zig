pub const IPhoneNumberFormatter = extern struct {
    vtable: *const VTable,
    pub fn Format(self: *@This(), number: *PhoneNumberInfo) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.Format(@ptrCast(self), number, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Format(self: *@This(), number: *PhoneNumberInfo, numberFormat: PhoneNumberFormat) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.Format(@ptrCast(self), number, numberFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FormatPartialString(self: *@This(), number: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.FormatPartialString(@ptrCast(self), number, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FormatString(self: *@This(), number: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.FormatString(@ptrCast(self), number, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FormatStringWithLeftToRightMarkers(self: *@This(), number: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.FormatStringWithLeftToRightMarkers(@ptrCast(self), number, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1556b49e-bad4-4b4a-900d-4407adb7c981";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Format: *const fn(self: *anyopaque, number: *PhoneNumberInfo, _r: *HSTRING) callconv(.winapi) HRESULT,
        Format: *const fn(self: *anyopaque, number: *PhoneNumberInfo, numberFormat: PhoneNumberFormat, _r: *HSTRING) callconv(.winapi) HRESULT,
        FormatPartialString: *const fn(self: *anyopaque, number: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        FormatString: *const fn(self: *anyopaque, number: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        FormatStringWithLeftToRightMarkers: *const fn(self: *anyopaque, number: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneNumberFormatterStatics = extern struct {
    vtable: *const VTable,
    pub fn TryCreate(self: *@This(), regionCode: HSTRING, phoneNumber: *PhoneNumberFormatter) core.HResult!void {
        const _c = self.vtable.TryCreate(@ptrCast(self), regionCode, phoneNumber);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetCountryCodeForRegion(self: *@This(), regionCode: HSTRING) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetCountryCodeForRegion(@ptrCast(self), regionCode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNationalDirectDialingPrefixForRegion(self: *@This(), regionCode: HSTRING, stripNonDigit: bool) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetNationalDirectDialingPrefixForRegion(@ptrCast(self), regionCode, stripNonDigit, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WrapWithLeftToRightMarkers(self: *@This(), number: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.WrapWithLeftToRightMarkers(@ptrCast(self), number, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ca6f931-84d9-414b-ab4e-a0552c878602";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreate: *const fn(self: *anyopaque, regionCode: HSTRING, phoneNumber: *PhoneNumberFormatter) callconv(.winapi) HRESULT,
        GetCountryCodeForRegion: *const fn(self: *anyopaque, regionCode: HSTRING, _r: *i32) callconv(.winapi) HRESULT,
        GetNationalDirectDialingPrefixForRegion: *const fn(self: *anyopaque, regionCode: HSTRING, stripNonDigit: bool, _r: *HSTRING) callconv(.winapi) HRESULT,
        WrapWithLeftToRightMarkers: *const fn(self: *anyopaque, number: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneNumberInfo = extern struct {
    vtable: *const VTable,
    pub fn getCountryCode(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CountryCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLengthOfGeographicalAreaCode(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetLengthOfGeographicalAreaCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNationalSignificantNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetNationalSignificantNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLengthOfNationalDestinationCode(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetLengthOfNationalDestinationCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PredictNumberKind(self: *@This()) core.HResult!PredictedPhoneNumberKind {
        var _r: PredictedPhoneNumberKind = undefined;
        const _c = self.vtable.PredictNumberKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGeographicRegionCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetGeographicRegionCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckNumberMatch(self: *@This(), otherNumber: *PhoneNumberInfo) core.HResult!PhoneNumberMatchResult {
        var _r: PhoneNumberMatchResult = undefined;
        const _c = self.vtable.CheckNumberMatch(@ptrCast(self), otherNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c7ce4dd-c8b4-4ea3-9aef-b342e2c5b417";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CountryCode: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetLengthOfGeographicalAreaCode: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetNationalSignificantNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetLengthOfNationalDestinationCode: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        PredictNumberKind: *const fn(self: *anyopaque, _r: *PredictedPhoneNumberKind) callconv(.winapi) HRESULT,
        GetGeographicRegionCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        CheckNumberMatch: *const fn(self: *anyopaque, otherNumber: *PhoneNumberInfo, _r: *PhoneNumberMatchResult) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneNumberInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), number: HSTRING) core.HResult!*PhoneNumberInfo {
        var _r: *PhoneNumberInfo = undefined;
        const _c = self.vtable.Create(@ptrCast(self), number, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8202b964-adaa-4cff-8fcf-17e7516a28ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, number: HSTRING, _r: **PhoneNumberInfo) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneNumberInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn TryParse(self: *@This(), input: HSTRING, phoneNumber: *PhoneNumberInfo) core.HResult!PhoneNumberParseResult {
        var _r: PhoneNumberParseResult = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, phoneNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, regionCode: HSTRING, phoneNumber: *PhoneNumberInfo) core.HResult!PhoneNumberParseResult {
        var _r: PhoneNumberParseResult = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, regionCode, phoneNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b3f4f6a-86a9-40e9-8649-6d61161928d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, phoneNumber: *PhoneNumberInfo, _r: *PhoneNumberParseResult) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, regionCode: HSTRING, phoneNumber: *PhoneNumberInfo, _r: *PhoneNumberParseResult) callconv(.winapi) HRESULT,
    };
};
pub const PhoneNumberFormat = enum(i32) {
    E164 = 0,
    International = 1,
    National = 2,
    Rfc3966 = 3,
};
pub const PhoneNumberFormatter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Format(self: *@This(), number: *PhoneNumberInfo) core.HResult!HSTRING {
        const this: *IPhoneNumberFormatter = @ptrCast(self);
        return try this.Format(number);
    }
    pub fn Format(self: *@This(), number: *PhoneNumberInfo, numberFormat: PhoneNumberFormat) core.HResult!HSTRING {
        const this: *IPhoneNumberFormatter = @ptrCast(self);
        return try this.Format(number, numberFormat);
    }
    pub fn FormatPartialString(self: *@This(), number: HSTRING) core.HResult!HSTRING {
        const this: *IPhoneNumberFormatter = @ptrCast(self);
        return try this.FormatPartialString(number);
    }
    pub fn FormatString(self: *@This(), number: HSTRING) core.HResult!HSTRING {
        const this: *IPhoneNumberFormatter = @ptrCast(self);
        return try this.FormatString(number);
    }
    pub fn FormatStringWithLeftToRightMarkers(self: *@This(), number: HSTRING) core.HResult!HSTRING {
        const this: *IPhoneNumberFormatter = @ptrCast(self);
        return try this.FormatStringWithLeftToRightMarkers(number);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPhoneNumberFormatter.IID)));
    }
    pub fn TryCreate(regionCode: HSTRING, phoneNumber: *PhoneNumberFormatter) core.HResult!void {
        const factory = @This().IPhoneNumberFormatterStaticsCache.get();
        return try factory.TryCreate(regionCode, phoneNumber);
    }
    pub fn GetCountryCodeForRegion(regionCode: HSTRING) core.HResult!i32 {
        const factory = @This().IPhoneNumberFormatterStaticsCache.get();
        return try factory.GetCountryCodeForRegion(regionCode);
    }
    pub fn GetNationalDirectDialingPrefixForRegion(regionCode: HSTRING, stripNonDigit: bool) core.HResult!HSTRING {
        const factory = @This().IPhoneNumberFormatterStaticsCache.get();
        return try factory.GetNationalDirectDialingPrefixForRegion(regionCode, stripNonDigit);
    }
    pub fn WrapWithLeftToRightMarkers(number: HSTRING) core.HResult!HSTRING {
        const factory = @This().IPhoneNumberFormatterStaticsCache.get();
        return try factory.WrapWithLeftToRightMarkers(number);
    }
    pub const NAME: []const u8 = "Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneNumberFormatter.GUID;
    pub const IID: Guid = IPhoneNumberFormatter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneNumberFormatter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPhoneNumberFormatterStaticsCache: FactoryCache(IPhoneNumberFormatterStatics, RUNTIME_NAME) = .{};
};
pub const PhoneNumberInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCountryCode(self: *@This()) core.HResult!i32 {
        const this: *IPhoneNumberInfo = @ptrCast(self);
        return try this.getCountryCode();
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneNumberInfo = @ptrCast(self);
        return try this.getPhoneNumber();
    }
    pub fn GetLengthOfGeographicalAreaCode(self: *@This()) core.HResult!i32 {
        const this: *IPhoneNumberInfo = @ptrCast(self);
        return try this.GetLengthOfGeographicalAreaCode();
    }
    pub fn GetNationalSignificantNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneNumberInfo = @ptrCast(self);
        return try this.GetNationalSignificantNumber();
    }
    pub fn GetLengthOfNationalDestinationCode(self: *@This()) core.HResult!i32 {
        const this: *IPhoneNumberInfo = @ptrCast(self);
        return try this.GetLengthOfNationalDestinationCode();
    }
    pub fn PredictNumberKind(self: *@This()) core.HResult!PredictedPhoneNumberKind {
        const this: *IPhoneNumberInfo = @ptrCast(self);
        return try this.PredictNumberKind();
    }
    pub fn GetGeographicRegionCode(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneNumberInfo = @ptrCast(self);
        return try this.GetGeographicRegionCode();
    }
    pub fn CheckNumberMatch(self: *@This(), otherNumber: *PhoneNumberInfo) core.HResult!PhoneNumberMatchResult {
        const this: *IPhoneNumberInfo = @ptrCast(self);
        return try this.CheckNumberMatch(otherNumber);
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(number: HSTRING) core.HResult!*PhoneNumberInfo {
        const factory = @This().IPhoneNumberInfoFactoryCache.get();
        return try factory.Create(number);
    }
    pub fn TryParse(input: HSTRING, phoneNumber: *PhoneNumberInfo) core.HResult!PhoneNumberParseResult {
        const factory = @This().IPhoneNumberInfoStaticsCache.get();
        return try factory.TryParse(input, phoneNumber);
    }
    pub fn TryParse(input: HSTRING, regionCode: HSTRING, phoneNumber: *PhoneNumberInfo) core.HResult!PhoneNumberParseResult {
        const factory = @This().IPhoneNumberInfoStaticsCache.get();
        return try factory.TryParse(input, regionCode, phoneNumber);
    }
    pub const NAME: []const u8 = "Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneNumberInfo.GUID;
    pub const IID: Guid = IPhoneNumberInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneNumberInfo.SIGNATURE);
    var _IPhoneNumberInfoFactoryCache: FactoryCache(IPhoneNumberInfoFactory, RUNTIME_NAME) = .{};
    var _IPhoneNumberInfoStaticsCache: FactoryCache(IPhoneNumberInfoStatics, RUNTIME_NAME) = .{};
};
pub const PhoneNumberMatchResult = enum(i32) {
    NoMatch = 0,
    ShortNationalSignificantNumberMatch = 1,
    NationalSignificantNumberMatch = 2,
    ExactMatch = 3,
};
pub const PhoneNumberParseResult = enum(i32) {
    Valid = 0,
    NotANumber = 1,
    InvalidCountryCode = 2,
    TooShort = 3,
    TooLong = 4,
};
pub const PredictedPhoneNumberKind = enum(i32) {
    FixedLine = 0,
    Mobile = 1,
    FixedLineOrMobile = 2,
    TollFree = 3,
    PremiumRate = 4,
    SharedCost = 5,
    Voip = 6,
    PersonalNumber = 7,
    Pager = 8,
    UniversalAccountNumber = 9,
    Voicemail = 10,
    Unknown = 11,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const IStringable = @import("../Foundation.zig").IStringable;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
