pub const ILocalCategoriesStatics = extern struct {
    vtable: *const VTable,
    pub fn getBankAndCreditUnions(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BankAndCreditUnions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEatDrink(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EatDrink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHospitals(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Hospitals(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHotelsAndMotels(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HotelsAndMotels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAll(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_All(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParking(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Parking(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSeeDo(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SeeDo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShop(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Shop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.ILocalCategoriesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f49399f5-8261-4321-9974-ef92d49a8dca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BankAndCreditUnions: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EatDrink: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Hospitals: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HotelsAndMotels: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_All: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Parking: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SeeDo: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Shop: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILocalLocation = extern struct {
    vtable: *const VTable,
    pub fn getAddress(self: *@This()) core.HResult!*MapAddress {
        var _r: *MapAddress = undefined;
        const _c = self.vtable.get_Address(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIdentifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Identifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPoint(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Point(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataAttribution(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DataAttribution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.ILocalLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb0fe9ab-4502-4f2c-94a9-0d60de0e2163";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Address: *const fn(self: *anyopaque, _r: **MapAddress) callconv(.winapi) HRESULT,
        get_Identifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Point: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_PhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DataAttribution: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILocalLocation2 = extern struct {
    vtable: *const VTable,
    pub fn getCategory(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Category(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRatingInfo(self: *@This()) core.HResult!*LocalLocationRatingInfo {
        var _r: *LocalLocationRatingInfo = undefined;
        const _c = self.vtable.get_RatingInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHoursOfOperation(self: *@This()) core.HResult!*IVectorView(LocalLocationHoursOfOperationItem) {
        var _r: *IVectorView(LocalLocationHoursOfOperationItem) = undefined;
        const _c = self.vtable.get_HoursOfOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.ILocalLocation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e9e307c-ecb5-4ffc-bb8c-ba50ba8c2dc6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Category: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RatingInfo: *const fn(self: *anyopaque, _r: **LocalLocationRatingInfo) callconv(.winapi) HRESULT,
        get_HoursOfOperation: *const fn(self: *anyopaque, _r: **IVectorView(LocalLocationHoursOfOperationItem)) callconv(.winapi) HRESULT,
    };
};
pub const ILocalLocationFinderResult = extern struct {
    vtable: *const VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        var _r: *IVectorView(LocalLocation) = undefined;
        const _c = self.vtable.get_LocalLocations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!LocalLocationFinderStatus {
        var _r: LocalLocationFinderStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.ILocalLocationFinderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d09b6cc6-f338-4191-9fd8-5440b9a68f52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalLocations: *const fn(self: *anyopaque, _r: **IVectorView(LocalLocation)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *LocalLocationFinderStatus) callconv(.winapi) HRESULT,
    };
};
pub const ILocalLocationFinderStatics = extern struct {
    vtable: *const VTable,
    pub fn FindLocalLocationsAsync(self: *@This(), searchTerm: HSTRING, searchArea: *Geocircle, localCategory: HSTRING, maxResults: u32) core.HResult!*IAsyncOperation(LocalLocationFinderResult) {
        var _r: *IAsyncOperation(LocalLocationFinderResult) = undefined;
        const _c = self.vtable.FindLocalLocationsAsync(@ptrCast(self), searchTerm, searchArea, localCategory, maxResults, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.ILocalLocationFinderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2ef7344-a0de-48ca-81a8-07c7dcfd37ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindLocalLocationsAsync: *const fn(self: *anyopaque, searchTerm: HSTRING, searchArea: *Geocircle, localCategory: HSTRING, maxResults: u32, _r: **IAsyncOperation(LocalLocationFinderResult)) callconv(.winapi) HRESULT,
    };
};
pub const ILocalLocationHoursOfOperationItem = extern struct {
    vtable: *const VTable,
    pub fn getDay(self: *@This()) core.HResult!DayOfWeek {
        var _r: DayOfWeek = undefined;
        const _c = self.vtable.get_Day(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStart(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Start(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpan(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Span(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.ILocalLocationHoursOfOperationItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23548c72-a1c7-43f1-a4f0-1091c39ec640";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Day: *const fn(self: *anyopaque, _r: *DayOfWeek) callconv(.winapi) HRESULT,
        get_Start: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Span: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ILocalLocationRatingInfo = extern struct {
    vtable: *const VTable,
    pub fn getAggregateRating(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_AggregateRating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRatingCount(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_RatingCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderIdentifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderIdentifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.ILocalLocationRatingInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb1dab56-3354-4311-8bc0-a2d4d5eb806e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AggregateRating: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_RatingCount: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_ProviderIdentifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPlaceInfoHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromLocalLocation(self: *@This(), location: *LocalLocation) core.HResult!*PlaceInfo {
        var _r: *PlaceInfo = undefined;
        const _c = self.vtable.CreateFromLocalLocation(@ptrCast(self), location, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.IPlaceInfoHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd1ca9a7-a9c6-491b-bc09-e80fcea48ee6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromLocalLocation: *const fn(self: *anyopaque, location: *LocalLocation, _r: **PlaceInfo) callconv(.winapi) HRESULT,
    };
};
pub const LocalCategories = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_BankAndCreditUnions() core.HResult!HSTRING {
        const factory = @This().ILocalCategoriesStaticsCache.get();
        return try factory.getBankAndCreditUnions();
    }
    pub fn get_EatDrink() core.HResult!HSTRING {
        const factory = @This().ILocalCategoriesStaticsCache.get();
        return try factory.getEatDrink();
    }
    pub fn get_Hospitals() core.HResult!HSTRING {
        const factory = @This().ILocalCategoriesStaticsCache.get();
        return try factory.getHospitals();
    }
    pub fn get_HotelsAndMotels() core.HResult!HSTRING {
        const factory = @This().ILocalCategoriesStaticsCache.get();
        return try factory.getHotelsAndMotels();
    }
    pub fn get_All() core.HResult!HSTRING {
        const factory = @This().ILocalCategoriesStaticsCache.get();
        return try factory.getAll();
    }
    pub fn get_Parking() core.HResult!HSTRING {
        const factory = @This().ILocalCategoriesStaticsCache.get();
        return try factory.getParking();
    }
    pub fn get_SeeDo() core.HResult!HSTRING {
        const factory = @This().ILocalCategoriesStaticsCache.get();
        return try factory.getSeeDo();
    }
    pub fn get_Shop() core.HResult!HSTRING {
        const factory = @This().ILocalCategoriesStaticsCache.get();
        return try factory.getShop();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.LocalCategories";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ILocalCategoriesStaticsCache: FactoryCache(ILocalCategoriesStatics, RUNTIME_NAME) = .{};
};
pub const LocalLocation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAddress(self: *@This()) core.HResult!*MapAddress {
        const this: *ILocalLocation = @ptrCast(self);
        return try this.getAddress();
    }
    pub fn getIdentifier(self: *@This()) core.HResult!HSTRING {
        const this: *ILocalLocation = @ptrCast(self);
        return try this.getIdentifier();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *ILocalLocation = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *ILocalLocation = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getPoint(self: *@This()) core.HResult!*Geopoint {
        const this: *ILocalLocation = @ptrCast(self);
        return try this.getPoint();
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *ILocalLocation = @ptrCast(self);
        return try this.getPhoneNumber();
    }
    pub fn getDataAttribution(self: *@This()) core.HResult!HSTRING {
        const this: *ILocalLocation = @ptrCast(self);
        return try this.getDataAttribution();
    }
    pub fn getCategory(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILocalLocation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILocalLocation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCategory();
    }
    pub fn getRatingInfo(self: *@This()) core.HResult!*LocalLocationRatingInfo {
        var this: ?*ILocalLocation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILocalLocation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRatingInfo();
    }
    pub fn getHoursOfOperation(self: *@This()) core.HResult!*IVectorView(LocalLocationHoursOfOperationItem) {
        var this: ?*ILocalLocation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILocalLocation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHoursOfOperation();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.LocalLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILocalLocation.GUID;
    pub const IID: Guid = ILocalLocation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILocalLocation.SIGNATURE);
};
pub const LocalLocationFinder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindLocalLocationsAsync(searchTerm: HSTRING, searchArea: *Geocircle, localCategory: HSTRING, maxResults: u32) core.HResult!*IAsyncOperation(LocalLocationFinderResult) {
        const factory = @This().ILocalLocationFinderStaticsCache.get();
        return try factory.FindLocalLocationsAsync(searchTerm, searchArea, localCategory, maxResults);
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.LocalLocationFinder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ILocalLocationFinderStaticsCache: FactoryCache(ILocalLocationFinderStatics, RUNTIME_NAME) = .{};
};
pub const LocalLocationFinderResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        const this: *ILocalLocationFinderResult = @ptrCast(self);
        return try this.getLocalLocations();
    }
    pub fn getStatus(self: *@This()) core.HResult!LocalLocationFinderStatus {
        const this: *ILocalLocationFinderResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.LocalLocationFinderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILocalLocationFinderResult.GUID;
    pub const IID: Guid = ILocalLocationFinderResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILocalLocationFinderResult.SIGNATURE);
};
pub const LocalLocationFinderStatus = enum(i32) {
    Success = 0,
    UnknownError = 1,
    InvalidCredentials = 2,
    InvalidCategory = 3,
    InvalidSearchTerm = 4,
    InvalidSearchArea = 5,
    NetworkFailure = 6,
    NotSupported = 7,
};
pub const LocalLocationHoursOfOperationItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDay(self: *@This()) core.HResult!DayOfWeek {
        const this: *ILocalLocationHoursOfOperationItem = @ptrCast(self);
        return try this.getDay();
    }
    pub fn getStart(self: *@This()) core.HResult!TimeSpan {
        const this: *ILocalLocationHoursOfOperationItem = @ptrCast(self);
        return try this.getStart();
    }
    pub fn getSpan(self: *@This()) core.HResult!TimeSpan {
        const this: *ILocalLocationHoursOfOperationItem = @ptrCast(self);
        return try this.getSpan();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.LocalLocationHoursOfOperationItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILocalLocationHoursOfOperationItem.GUID;
    pub const IID: Guid = ILocalLocationHoursOfOperationItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILocalLocationHoursOfOperationItem.SIGNATURE);
};
pub const LocalLocationRatingInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAggregateRating(self: *@This()) core.HResult!*IReference(f64) {
        const this: *ILocalLocationRatingInfo = @ptrCast(self);
        return try this.getAggregateRating();
    }
    pub fn getRatingCount(self: *@This()) core.HResult!*IReference(i32) {
        const this: *ILocalLocationRatingInfo = @ptrCast(self);
        return try this.getRatingCount();
    }
    pub fn getProviderIdentifier(self: *@This()) core.HResult!HSTRING {
        const this: *ILocalLocationRatingInfo = @ptrCast(self);
        return try this.getProviderIdentifier();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.LocalLocationRatingInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILocalLocationRatingInfo.GUID;
    pub const IID: Guid = ILocalLocationRatingInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILocalLocationRatingInfo.SIGNATURE);
};
pub const PlaceInfoHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromLocalLocation(location: *LocalLocation) core.HResult!*PlaceInfo {
        const factory = @This().IPlaceInfoHelperStaticsCache.get();
        return try factory.CreateFromLocalLocation(location);
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.LocalSearch.PlaceInfoHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPlaceInfoHelperStaticsCache: FactoryCache(IPlaceInfoHelperStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const Geocircle = @import("../../Devices/Geolocation.zig").Geocircle;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const IReference = @import("../../Foundation.zig").IReference;
const Geopoint = @import("../../Devices/Geolocation.zig").Geopoint;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const MapAddress = @import("../Maps.zig").MapAddress;
const DayOfWeek = @import("../../Globalization.zig").DayOfWeek;
const PlaceInfo = @import("../Maps.zig").PlaceInfo;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
