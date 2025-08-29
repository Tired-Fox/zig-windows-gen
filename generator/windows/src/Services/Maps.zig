pub const EnhancedWaypoint = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPoint(self: *@This()) core.HResult!*Geopoint {
        const this: *IEnhancedWaypoint = @ptrCast(self);
        return try this.getPoint();
    }
    pub fn getKind(self: *@This()) core.HResult!WaypointKind {
        const this: *IEnhancedWaypoint = @ptrCast(self);
        return try this.getKind();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(point: *Geopoint, kind: WaypointKind) core.HResult!*EnhancedWaypoint {
        const factory = @This().IEnhancedWaypointFactoryCache.get();
        return try factory.Create(point, kind);
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.EnhancedWaypoint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEnhancedWaypoint.GUID;
    pub const IID: Guid = IEnhancedWaypoint.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEnhancedWaypoint.SIGNATURE);
    var _IEnhancedWaypointFactoryCache: FactoryCache(IEnhancedWaypointFactory, RUNTIME_NAME) = .{};
};
pub const IEnhancedWaypoint = extern struct {
    vtable: *const VTable,
    pub fn getPoint(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Point(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!WaypointKind {
        var _r: WaypointKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IEnhancedWaypoint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed268c74-5913-11e6-8b77-86f30ca893d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Point: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *WaypointKind) callconv(.winapi) HRESULT,
    };
};
pub const IEnhancedWaypointFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), point: *Geopoint, kind: WaypointKind) core.HResult!*EnhancedWaypoint {
        var _r: *EnhancedWaypoint = undefined;
        const _c = self.vtable.Create(@ptrCast(self), point, kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IEnhancedWaypointFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af868477-a2aa-46dd-b645-23b31b8aa6c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, point: *Geopoint, kind: WaypointKind, _r: **EnhancedWaypoint) callconv(.winapi) HRESULT,
    };
};
pub const IManeuverWarning = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!ManeuverWarningKind {
        var _r: ManeuverWarningKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSeverity(self: *@This()) core.HResult!ManeuverWarningSeverity {
        var _r: ManeuverWarningSeverity = undefined;
        const _c = self.vtable.get_Severity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IManeuverWarning";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1a36d8a-2630-4378-9e4a-6e44253dceba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ManeuverWarningKind) callconv(.winapi) HRESULT,
        get_Severity: *const fn(self: *anyopaque, _r: *ManeuverWarningSeverity) callconv(.winapi) HRESULT,
    };
};
pub const IMapAddress = extern struct {
    vtable: *const VTable,
    pub fn getBuildingName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BuildingName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBuildingFloor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BuildingFloor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBuildingRoom(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BuildingRoom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBuildingWing(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BuildingWing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreetNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StreetNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreet(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Street(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeighborhood(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Neighborhood(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistrict(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_District(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTown(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Town(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Region(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegionCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RegionCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Country(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCountryCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CountryCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPostCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PostCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContinent(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Continent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfa7a973-a3b4-4494-b3ff-cba94db69699";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BuildingName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BuildingFloor: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BuildingRoom: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BuildingWing: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StreetNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Street: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Neighborhood: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_District: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Town: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Region: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RegionCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Country: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CountryCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PostCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Continent: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMapAddress2 = extern struct {
    vtable: *const VTable,
    pub fn getFormattedAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormattedAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapAddress2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75cd6df1-e5ad-45a9-bf40-6cf256c1dd13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FormattedAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMapLocation = extern struct {
    vtable: *const VTable,
    pub fn getPoint(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Point(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAddress(self: *@This()) core.HResult!*MapAddress {
        var _r: *MapAddress = undefined;
        const _c = self.vtable.get_Address(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c073f57-0da4-42e8-9ee2-a96fcf2371dc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Point: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Address: *const fn(self: *anyopaque, _r: **MapAddress) callconv(.winapi) HRESULT,
    };
};
pub const IMapLocationFinderResult = extern struct {
    vtable: *const VTable,
    pub fn getLocations(self: *@This()) core.HResult!*IVectorView(MapLocation) {
        var _r: *IVectorView(MapLocation) = undefined;
        const _c = self.vtable.get_Locations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!MapLocationFinderStatus {
        var _r: MapLocationFinderStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapLocationFinderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43f1f179-e8cc-45f6-bed2-54ccbf965d9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Locations: *const fn(self: *anyopaque, _r: **IVectorView(MapLocation)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MapLocationFinderStatus) callconv(.winapi) HRESULT,
    };
};
pub const IMapLocationFinderStatics = extern struct {
    vtable: *const VTable,
    pub fn FindLocationsAtAsync(self: *@This(), queryPoint: *Geopoint) core.HResult!*IAsyncOperation(MapLocationFinderResult) {
        var _r: *IAsyncOperation(MapLocationFinderResult) = undefined;
        const _c = self.vtable.FindLocationsAtAsync(@ptrCast(self), queryPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindLocationsAsync(self: *@This(), searchText: HSTRING, referencePoint: *Geopoint) core.HResult!*IAsyncOperation(MapLocationFinderResult) {
        var _r: *IAsyncOperation(MapLocationFinderResult) = undefined;
        const _c = self.vtable.FindLocationsAsync(@ptrCast(self), searchText, referencePoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindLocationsAsyncWithReferencePointWithMaxCount(self: *@This(), searchText: HSTRING, referencePoint: *Geopoint, maxCount: u32) core.HResult!*IAsyncOperation(MapLocationFinderResult) {
        var _r: *IAsyncOperation(MapLocationFinderResult) = undefined;
        const _c = self.vtable.FindLocationsAsyncWithReferencePointWithMaxCount(@ptrCast(self), searchText, referencePoint, maxCount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapLocationFinderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "318adb5d-1c5d-4f35-a2df-aaca94959517";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindLocationsAtAsync: *const fn(self: *anyopaque, queryPoint: *Geopoint, _r: **IAsyncOperation(MapLocationFinderResult)) callconv(.winapi) HRESULT,
        FindLocationsAsync: *const fn(self: *anyopaque, searchText: HSTRING, referencePoint: *Geopoint, _r: **IAsyncOperation(MapLocationFinderResult)) callconv(.winapi) HRESULT,
        FindLocationsAsyncWithReferencePointWithMaxCount: *const fn(self: *anyopaque, searchText: HSTRING, referencePoint: *Geopoint, maxCount: u32, _r: **IAsyncOperation(MapLocationFinderResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMapLocationFinderStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FindLocationsAtAsync(self: *@This(), queryPoint: *Geopoint, accuracy: MapLocationDesiredAccuracy) core.HResult!*IAsyncOperation(MapLocationFinderResult) {
        var _r: *IAsyncOperation(MapLocationFinderResult) = undefined;
        const _c = self.vtable.FindLocationsAtAsync(@ptrCast(self), queryPoint, accuracy, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapLocationFinderStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "959a8b96-6485-4dfd-851a-33ac317e3af6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindLocationsAtAsync: *const fn(self: *anyopaque, queryPoint: *Geopoint, accuracy: MapLocationDesiredAccuracy, _r: **IAsyncOperation(MapLocationFinderResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMapManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn ShowDownloadedMapsUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowDownloadedMapsUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowMapsUpdateUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowMapsUpdateUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "37e3e515-82b4-4d54-8fd9-af2624b3011c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowDownloadedMapsUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ShowMapsUpdateUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMapRoute = extern struct {
    vtable: *const VTable,
    pub fn getBoundingBox(self: *@This()) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.get_BoundingBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLengthInMeters(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LengthInMeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEstimatedDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_EstimatedDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLegs(self: *@This()) core.HResult!*IVectorView(MapRouteLeg) {
        var _r: *IVectorView(MapRouteLeg) = undefined;
        const _c = self.vtable.get_Legs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTrafficBased(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTrafficBased(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRoute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb07b732-584d-4583-9c60-641fea274349";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BoundingBox: *const fn(self: *anyopaque, _r: **GeoboundingBox) callconv(.winapi) HRESULT,
        get_LengthInMeters: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_EstimatedDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **Geopath) callconv(.winapi) HRESULT,
        get_Legs: *const fn(self: *anyopaque, _r: **IVectorView(MapRouteLeg)) callconv(.winapi) HRESULT,
        get_IsTrafficBased: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapRoute2 = extern struct {
    vtable: *const VTable,
    pub fn getViolatedRestrictions(self: *@This()) core.HResult!MapRouteRestrictions {
        var _r: MapRouteRestrictions = undefined;
        const _c = self.vtable.get_ViolatedRestrictions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasBlockedRoads(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasBlockedRoads(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRoute2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1c5d40c-2213-4ab0-a260-46b38169beac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViolatedRestrictions: *const fn(self: *anyopaque, _r: *MapRouteRestrictions) callconv(.winapi) HRESULT,
        get_HasBlockedRoads: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapRoute3 = extern struct {
    vtable: *const VTable,
    pub fn getDurationWithoutTraffic(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DurationWithoutTraffic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrafficCongestion(self: *@This()) core.HResult!TrafficCongestion {
        var _r: TrafficCongestion = undefined;
        const _c = self.vtable.get_TrafficCongestion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRoute3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "858d1eae-f2ad-429f-bb37-cd21094ffc92";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DurationWithoutTraffic: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_TrafficCongestion: *const fn(self: *anyopaque, _r: *TrafficCongestion) callconv(.winapi) HRESULT,
    };
};
pub const IMapRoute4 = extern struct {
    vtable: *const VTable,
    pub fn getIsScenic(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScenic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRoute4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "366c8ca5-3053-4fa1-80ff-d475f3ed1e6e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsScenic: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteDrivingOptions = extern struct {
    vtable: *const VTable,
    pub fn getMaxAlternateRouteCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxAlternateRouteCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxAlternateRouteCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxAlternateRouteCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialHeading(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_InitialHeading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialHeading(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const _c = self.vtable.put_InitialHeading(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRouteOptimization(self: *@This()) core.HResult!MapRouteOptimization {
        var _r: MapRouteOptimization = undefined;
        const _c = self.vtable.get_RouteOptimization(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRouteOptimization(self: *@This(), value: MapRouteOptimization) core.HResult!void {
        const _c = self.vtable.put_RouteOptimization(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRouteRestrictions(self: *@This()) core.HResult!MapRouteRestrictions {
        var _r: MapRouteRestrictions = undefined;
        const _c = self.vtable.get_RouteRestrictions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRouteRestrictions(self: *@This(), value: MapRouteRestrictions) core.HResult!void {
        const _c = self.vtable.put_RouteRestrictions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteDrivingOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6815364d-c6dc-4697-a452-b18f8f0b67a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxAlternateRouteCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxAlternateRouteCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_InitialHeading: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        put_InitialHeading: *const fn(self: *anyopaque, value: *IReference(f64)) callconv(.winapi) HRESULT,
        get_RouteOptimization: *const fn(self: *anyopaque, _r: *MapRouteOptimization) callconv(.winapi) HRESULT,
        put_RouteOptimization: *const fn(self: *anyopaque, value: MapRouteOptimization) callconv(.winapi) HRESULT,
        get_RouteRestrictions: *const fn(self: *anyopaque, _r: *MapRouteRestrictions) callconv(.winapi) HRESULT,
        put_RouteRestrictions: *const fn(self: *anyopaque, value: MapRouteRestrictions) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteDrivingOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getDepartureTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_DepartureTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDepartureTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_DepartureTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteDrivingOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35dc8670-c298-48d0-b5ad-825460645603";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DepartureTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_DepartureTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteFinderResult = extern struct {
    vtable: *const VTable,
    pub fn getRoute(self: *@This()) core.HResult!*MapRoute {
        var _r: *MapRoute = undefined;
        const _c = self.vtable.get_Route(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!MapRouteFinderStatus {
        var _r: MapRouteFinderStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteFinderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a868a31a-9422-46ac-8ca1-b1614d4bfbe2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Route: *const fn(self: *anyopaque, _r: **MapRoute) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MapRouteFinderStatus) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteFinderResult2 = extern struct {
    vtable: *const VTable,
    pub fn getAlternateRoutes(self: *@This()) core.HResult!*IVectorView(MapRoute) {
        var _r: *IVectorView(MapRoute) = undefined;
        const _c = self.vtable.get_AlternateRoutes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteFinderResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20709c6d-d90c-46c8-91c6-7d4be4efb215";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlternateRoutes: *const fn(self: *anyopaque, _r: **IVectorView(MapRoute)) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteFinderStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDrivingRouteAsync(self: *@This(), startPoint: *Geopoint, endPoint: *Geopoint) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteAsync(@ptrCast(self), startPoint, endPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDrivingRouteAsyncWithEndPointWithOptimization(self: *@This(), startPoint: *Geopoint, endPoint: *Geopoint, optimization: MapRouteOptimization) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteAsyncWithEndPointWithOptimization(@ptrCast(self), startPoint, endPoint, optimization, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDrivingRouteAsyncWithOptimizationWithRestrictions(self: *@This(), startPoint: *Geopoint, endPoint: *Geopoint, optimization: MapRouteOptimization, restrictions: MapRouteRestrictions) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteAsyncWithOptimizationWithRestrictions(@ptrCast(self), startPoint, endPoint, optimization, restrictions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDrivingRouteAsyncWithRestrictionsWithHeadingInDegrees(self: *@This(), startPoint: *Geopoint, endPoint: *Geopoint, optimization: MapRouteOptimization, restrictions: MapRouteRestrictions, headingInDegrees: f64) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteAsyncWithRestrictionsWithHeadingInDegrees(@ptrCast(self), startPoint, endPoint, optimization, restrictions, headingInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDrivingRouteFromWaypointsAsync(self: *@This(), wayPoints: *IIterable(Geopoint)) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteFromWaypointsAsync(@ptrCast(self), wayPoints, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDrivingRouteFromWaypointsAsyncWithOptimization(self: *@This(), wayPoints: *IIterable(Geopoint), optimization: MapRouteOptimization) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteFromWaypointsAsyncWithOptimization(@ptrCast(self), wayPoints, optimization, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDrivingRouteFromWaypointsAsyncWithRestrictions(self: *@This(), wayPoints: *IIterable(Geopoint), optimization: MapRouteOptimization, restrictions: MapRouteRestrictions) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteFromWaypointsAsyncWithRestrictions(@ptrCast(self), wayPoints, optimization, restrictions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDrivingRouteFromWaypointsAsyncWithHeadingInDegrees(self: *@This(), wayPoints: *IIterable(Geopoint), optimization: MapRouteOptimization, restrictions: MapRouteRestrictions, headingInDegrees: f64) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteFromWaypointsAsyncWithHeadingInDegrees(@ptrCast(self), wayPoints, optimization, restrictions, headingInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetWalkingRouteAsync(self: *@This(), startPoint: *Geopoint, endPoint: *Geopoint) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetWalkingRouteAsync(@ptrCast(self), startPoint, endPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetWalkingRouteFromWaypointsAsync(self: *@This(), wayPoints: *IIterable(Geopoint)) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetWalkingRouteFromWaypointsAsync(@ptrCast(self), wayPoints, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteFinderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8a5c50f-1c64-4c3a-81eb-1f7c152afbbb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDrivingRouteAsync: *const fn(self: *anyopaque, startPoint: *Geopoint, endPoint: *Geopoint, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetDrivingRouteAsyncWithEndPointWithOptimization: *const fn(self: *anyopaque, startPoint: *Geopoint, endPoint: *Geopoint, optimization: MapRouteOptimization, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetDrivingRouteAsyncWithOptimizationWithRestrictions: *const fn(self: *anyopaque, startPoint: *Geopoint, endPoint: *Geopoint, optimization: MapRouteOptimization, restrictions: MapRouteRestrictions, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetDrivingRouteAsyncWithRestrictionsWithHeadingInDegrees: *const fn(self: *anyopaque, startPoint: *Geopoint, endPoint: *Geopoint, optimization: MapRouteOptimization, restrictions: MapRouteRestrictions, headingInDegrees: f64, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetDrivingRouteFromWaypointsAsync: *const fn(self: *anyopaque, wayPoints: *IIterable(Geopoint), _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetDrivingRouteFromWaypointsAsyncWithOptimization: *const fn(self: *anyopaque, wayPoints: *IIterable(Geopoint), optimization: MapRouteOptimization, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetDrivingRouteFromWaypointsAsyncWithRestrictions: *const fn(self: *anyopaque, wayPoints: *IIterable(Geopoint), optimization: MapRouteOptimization, restrictions: MapRouteRestrictions, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetDrivingRouteFromWaypointsAsyncWithHeadingInDegrees: *const fn(self: *anyopaque, wayPoints: *IIterable(Geopoint), optimization: MapRouteOptimization, restrictions: MapRouteRestrictions, headingInDegrees: f64, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetWalkingRouteAsync: *const fn(self: *anyopaque, startPoint: *Geopoint, endPoint: *Geopoint, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetWalkingRouteFromWaypointsAsync: *const fn(self: *anyopaque, wayPoints: *IIterable(Geopoint), _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteFinderStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDrivingRouteAsync(self: *@This(), startPoint: *Geopoint, endPoint: *Geopoint, options: *MapRouteDrivingOptions) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteAsync(@ptrCast(self), startPoint, endPoint, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteFinderStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "afcc2c73-7760-49af-b3bd-baf135b703e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDrivingRouteAsync: *const fn(self: *anyopaque, startPoint: *Geopoint, endPoint: *Geopoint, options: *MapRouteDrivingOptions, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteFinderStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetDrivingRouteFromEnhancedWaypointsAsync(self: *@This(), waypoints: *IIterable(EnhancedWaypoint)) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteFromEnhancedWaypointsAsync(@ptrCast(self), waypoints, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDrivingRouteFromEnhancedWaypointsAsyncWithOptions(self: *@This(), waypoints: *IIterable(EnhancedWaypoint), options: *MapRouteDrivingOptions) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        var _r: *IAsyncOperation(MapRouteFinderResult) = undefined;
        const _c = self.vtable.GetDrivingRouteFromEnhancedWaypointsAsyncWithOptions(@ptrCast(self), waypoints, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteFinderStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6098134-5913-11e6-8b77-86f30ca893d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDrivingRouteFromEnhancedWaypointsAsync: *const fn(self: *anyopaque, waypoints: *IIterable(EnhancedWaypoint), _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
        GetDrivingRouteFromEnhancedWaypointsAsyncWithOptions: *const fn(self: *anyopaque, waypoints: *IIterable(EnhancedWaypoint), options: *MapRouteDrivingOptions, _r: **IAsyncOperation(MapRouteFinderResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteLeg = extern struct {
    vtable: *const VTable,
    pub fn getBoundingBox(self: *@This()) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.get_BoundingBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLengthInMeters(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LengthInMeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEstimatedDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_EstimatedDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManeuvers(self: *@This()) core.HResult!*IVectorView(MapRouteManeuver) {
        var _r: *IVectorView(MapRouteManeuver) = undefined;
        const _c = self.vtable.get_Maneuvers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteLeg";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96f8b2f6-5bba-4d17-9db6-1a263fec7471";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BoundingBox: *const fn(self: *anyopaque, _r: **GeoboundingBox) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **Geopath) callconv(.winapi) HRESULT,
        get_LengthInMeters: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_EstimatedDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Maneuvers: *const fn(self: *anyopaque, _r: **IVectorView(MapRouteManeuver)) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteLeg2 = extern struct {
    vtable: *const VTable,
    pub fn getDurationWithoutTraffic(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DurationWithoutTraffic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrafficCongestion(self: *@This()) core.HResult!TrafficCongestion {
        var _r: TrafficCongestion = undefined;
        const _c = self.vtable.get_TrafficCongestion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteLeg2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02e2062d-c9c6-45b8-8e54-1a10b57a17e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DurationWithoutTraffic: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_TrafficCongestion: *const fn(self: *anyopaque, _r: *TrafficCongestion) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteManeuver = extern struct {
    vtable: *const VTable,
    pub fn getStartingPoint(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_StartingPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLengthInMeters(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LengthInMeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstructionText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InstructionText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!MapRouteManeuverKind {
        var _r: MapRouteManeuverKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExitNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExitNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManeuverNotices(self: *@This()) core.HResult!MapManeuverNotices {
        var _r: MapManeuverNotices = undefined;
        const _c = self.vtable.get_ManeuverNotices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteManeuver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed5c17f0-a6ab-4d65-a086-fa8a7e340df2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartingPoint: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_LengthInMeters: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_InstructionText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *MapRouteManeuverKind) callconv(.winapi) HRESULT,
        get_ExitNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ManeuverNotices: *const fn(self: *anyopaque, _r: *MapManeuverNotices) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteManeuver2 = extern struct {
    vtable: *const VTable,
    pub fn getStartHeading(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_StartHeading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndHeading(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_EndHeading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StreetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteManeuver2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d7bcd9c-7c9b-41df-838b-eae21e4b05a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartHeading: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_EndHeading: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_StreetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteManeuver3 = extern struct {
    vtable: *const VTable,
    pub fn getWarnings(self: *@This()) core.HResult!*IVectorView(ManeuverWarning) {
        var _r: *IVectorView(ManeuverWarning) = undefined;
        const _c = self.vtable.get_Warnings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapRouteManeuver3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6a138df-0483-4166-85be-b99336c11875";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Warnings: *const fn(self: *anyopaque, _r: **IVectorView(ManeuverWarning)) callconv(.winapi) HRESULT,
    };
};
pub const IMapServiceStatics = extern struct {
    vtable: *const VTable,
    pub fn putServiceToken(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ServiceToken(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapServiceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0144ad85-c04c-4cdd-871a-a0726d097cd4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ServiceToken: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ServiceToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMapServiceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getWorldViewRegionCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WorldViewRegionCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapServiceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8193eed-9c85-40a9-8896-0fc3fd2b7c2a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WorldViewRegionCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMapServiceStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getDataAttributions(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DataAttributions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapServiceStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a11ce20-63a7-4854-b355-d6dcda223d1b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataAttributions: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMapServiceStatics4 = extern struct {
    vtable: *const VTable,
    pub fn putDataUsagePreference(self: *@This(), value: MapServiceDataUsagePreference) core.HResult!void {
        const _c = self.vtable.put_DataUsagePreference(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDataUsagePreference(self: *@This()) core.HResult!MapServiceDataUsagePreference {
        var _r: MapServiceDataUsagePreference = undefined;
        const _c = self.vtable.get_DataUsagePreference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IMapServiceStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "088a2862-6abc-420e-945f-4cfd89c67356";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DataUsagePreference: *const fn(self: *anyopaque, value: MapServiceDataUsagePreference) callconv(.winapi) HRESULT,
        get_DataUsagePreference: *const fn(self: *anyopaque, _r: *MapServiceDataUsagePreference) callconv(.winapi) HRESULT,
    };
};
pub const IPlaceInfo = extern struct {
    vtable: *const VTable,
    pub fn Show(self: *@This(), selection: Rect) core.HResult!void {
        const _c = self.vtable.Show(@ptrCast(self), selection);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!void {
        const _c = self.vtable.ShowWithPreferredPlacement(@ptrCast(self), selection, preferredPlacement);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIdentifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Identifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGeoshape(self: *@This()) core.HResult!*IGeoshape {
        var _r: *IGeoshape = undefined;
        const _c = self.vtable.get_Geoshape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IPlaceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a0810b6-31c8-4f6a-9f18-950b4c38951a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Show: *const fn(self: *anyopaque, selection: Rect) callconv(.winapi) HRESULT,
        ShowWithPreferredPlacement: *const fn(self: *anyopaque, selection: Rect, preferredPlacement: Placement) callconv(.winapi) HRESULT,
        get_Identifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Geoshape: *const fn(self: *anyopaque, _r: **IGeoshape) callconv(.winapi) HRESULT,
    };
};
pub const IPlaceInfoCreateOptions = extern struct {
    vtable: *const VTable,
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IPlaceInfoCreateOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd33c125-67f1-4bb3-9907-ecce939b0399";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPlaceInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), referencePoint: *Geopoint) core.HResult!*PlaceInfo {
        var _r: *PlaceInfo = undefined;
        const _c = self.vtable.Create(@ptrCast(self), referencePoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithOptions(self: *@This(), referencePoint: *Geopoint, options: *PlaceInfoCreateOptions) core.HResult!*PlaceInfo {
        var _r: *PlaceInfo = undefined;
        const _c = self.vtable.CreateWithOptions(@ptrCast(self), referencePoint, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIdentifier(self: *@This(), identifier: HSTRING) core.HResult!*PlaceInfo {
        var _r: *PlaceInfo = undefined;
        const _c = self.vtable.CreateFromIdentifier(@ptrCast(self), identifier, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIdentifierWithOptions(self: *@This(), identifier: HSTRING, defaultPoint: *Geopoint, options: *PlaceInfoCreateOptions) core.HResult!*PlaceInfo {
        var _r: *PlaceInfo = undefined;
        const _c = self.vtable.CreateFromIdentifierWithOptions(@ptrCast(self), identifier, defaultPoint, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromMapLocation(self: *@This(), location: *MapLocation) core.HResult!*PlaceInfo {
        var _r: *PlaceInfo = undefined;
        const _c = self.vtable.CreateFromMapLocation(@ptrCast(self), location, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsShowSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsShowSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IPlaceInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82b9ff71-6cd0-48a4-afd9-5ed82097936b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, referencePoint: *Geopoint, _r: **PlaceInfo) callconv(.winapi) HRESULT,
        CreateWithOptions: *const fn(self: *anyopaque, referencePoint: *Geopoint, options: *PlaceInfoCreateOptions, _r: **PlaceInfo) callconv(.winapi) HRESULT,
        CreateFromIdentifier: *const fn(self: *anyopaque, identifier: HSTRING, _r: **PlaceInfo) callconv(.winapi) HRESULT,
        CreateFromIdentifierWithOptions: *const fn(self: *anyopaque, identifier: HSTRING, defaultPoint: *Geopoint, options: *PlaceInfoCreateOptions, _r: **PlaceInfo) callconv(.winapi) HRESULT,
        CreateFromMapLocation: *const fn(self: *anyopaque, location: *MapLocation, _r: **PlaceInfo) callconv(.winapi) HRESULT,
        get_IsShowSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPlaceInfoStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromAddress(self: *@This(), displayAddress: HSTRING) core.HResult!*PlaceInfo {
        var _r: *PlaceInfo = undefined;
        const _c = self.vtable.CreateFromAddress(@ptrCast(self), displayAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromAddressWithDisplayName(self: *@This(), displayAddress: HSTRING, displayName: HSTRING) core.HResult!*PlaceInfo {
        var _r: *PlaceInfo = undefined;
        const _c = self.vtable.CreateFromAddressWithDisplayName(@ptrCast(self), displayAddress, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.IPlaceInfoStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "730f0249-4047-44a3-8f81-2550a5216370";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromAddress: *const fn(self: *anyopaque, displayAddress: HSTRING, _r: **PlaceInfo) callconv(.winapi) HRESULT,
        CreateFromAddressWithDisplayName: *const fn(self: *anyopaque, displayAddress: HSTRING, displayName: HSTRING, _r: **PlaceInfo) callconv(.winapi) HRESULT,
    };
};
pub const ManeuverWarning = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!ManeuverWarningKind {
        const this: *IManeuverWarning = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getSeverity(self: *@This()) core.HResult!ManeuverWarningSeverity {
        const this: *IManeuverWarning = @ptrCast(self);
        return try this.getSeverity();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.ManeuverWarning";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManeuverWarning.GUID;
    pub const IID: Guid = IManeuverWarning.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManeuverWarning.SIGNATURE);
};
pub const ManeuverWarningKind = enum(i32) {
    None = 0,
    Accident = 1,
    AdministrativeDivisionChange = 2,
    Alert = 3,
    BlockedRoad = 4,
    CheckTimetable = 5,
    Congestion = 6,
    Construction = 7,
    CountryChange = 8,
    DisabledVehicle = 9,
    GateAccess = 10,
    GetOffTransit = 11,
    GetOnTransit = 12,
    IllegalUTurn = 13,
    MassTransit = 14,
    Miscellaneous = 15,
    NoIncident = 16,
    Other = 17,
    OtherNews = 18,
    OtherTrafficIncidents = 19,
    PlannedEvent = 20,
    PrivateRoad = 21,
    RestrictedTurn = 22,
    RoadClosures = 23,
    RoadHazard = 24,
    ScheduledConstruction = 25,
    SeasonalClosures = 26,
    Tollbooth = 27,
    TollRoad = 28,
    TollZoneEnter = 29,
    TollZoneExit = 30,
    TrafficFlow = 31,
    TransitLineChange = 32,
    UnpavedRoad = 33,
    UnscheduledConstruction = 34,
    Weather = 35,
};
pub const ManeuverWarningSeverity = enum(i32) {
    None = 0,
    LowImpact = 1,
    Minor = 2,
    Moderate = 3,
    Serious = 4,
};
pub const MapAddress = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBuildingName(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getBuildingName();
    }
    pub fn getBuildingFloor(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getBuildingFloor();
    }
    pub fn getBuildingRoom(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getBuildingRoom();
    }
    pub fn getBuildingWing(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getBuildingWing();
    }
    pub fn getStreetNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getStreetNumber();
    }
    pub fn getStreet(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getStreet();
    }
    pub fn getNeighborhood(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getNeighborhood();
    }
    pub fn getDistrict(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getDistrict();
    }
    pub fn getTown(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getTown();
    }
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getRegion();
    }
    pub fn getRegionCode(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getRegionCode();
    }
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getCountry();
    }
    pub fn getCountryCode(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getCountryCode();
    }
    pub fn getPostCode(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getPostCode();
    }
    pub fn getContinent(self: *@This()) core.HResult!HSTRING {
        const this: *IMapAddress = @ptrCast(self);
        return try this.getContinent();
    }
    pub fn getFormattedAddress(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMapAddress2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapAddress2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFormattedAddress();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapAddress.GUID;
    pub const IID: Guid = IMapAddress.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapAddress.SIGNATURE);
};
pub const MapLocation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPoint(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapLocation = @ptrCast(self);
        return try this.getPoint();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IMapLocation = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IMapLocation = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getAddress(self: *@This()) core.HResult!*MapAddress {
        const this: *IMapLocation = @ptrCast(self);
        return try this.getAddress();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapLocation.GUID;
    pub const IID: Guid = IMapLocation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapLocation.SIGNATURE);
};
pub const MapLocationDesiredAccuracy = enum(i32) {
    High = 0,
    Low = 1,
};
pub const MapLocationFinder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindLocationsAtAsync(queryPoint: *Geopoint, accuracy: MapLocationDesiredAccuracy) core.HResult!*IAsyncOperation(MapLocationFinderResult) {
        const factory = @This().IMapLocationFinderStatics2Cache.get();
        return try factory.FindLocationsAtAsync(queryPoint, accuracy);
    }
    pub fn FindLocationsAtAsync(queryPoint: *Geopoint) core.HResult!*IAsyncOperation(MapLocationFinderResult) {
        const factory = @This().IMapLocationFinderStaticsCache.get();
        return try factory.FindLocationsAtAsync(queryPoint);
    }
    pub fn FindLocationsAsync(searchText: HSTRING, referencePoint: *Geopoint) core.HResult!*IAsyncOperation(MapLocationFinderResult) {
        const factory = @This().IMapLocationFinderStaticsCache.get();
        return try factory.FindLocationsAsync(searchText, referencePoint);
    }
    pub fn FindLocationsAsyncWithReferencePointWithMaxCount(searchText: HSTRING, referencePoint: *Geopoint, maxCount: u32) core.HResult!*IAsyncOperation(MapLocationFinderResult) {
        const factory = @This().IMapLocationFinderStaticsCache.get();
        return try factory.FindLocationsAsyncWithReferencePointWithMaxCount(searchText, referencePoint, maxCount);
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapLocationFinder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMapLocationFinderStatics2Cache: FactoryCache(IMapLocationFinderStatics2, RUNTIME_NAME) = .{};
    var _IMapLocationFinderStaticsCache: FactoryCache(IMapLocationFinderStatics, RUNTIME_NAME) = .{};
};
pub const MapLocationFinderResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocations(self: *@This()) core.HResult!*IVectorView(MapLocation) {
        const this: *IMapLocationFinderResult = @ptrCast(self);
        return try this.getLocations();
    }
    pub fn getStatus(self: *@This()) core.HResult!MapLocationFinderStatus {
        const this: *IMapLocationFinderResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapLocationFinderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapLocationFinderResult.GUID;
    pub const IID: Guid = IMapLocationFinderResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapLocationFinderResult.SIGNATURE);
};
pub const MapLocationFinderStatus = enum(i32) {
    Success = 0,
    UnknownError = 1,
    InvalidCredentials = 2,
    BadLocation = 3,
    IndexFailure = 4,
    NetworkFailure = 5,
    NotSupported = 6,
};
pub const MapManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ShowDownloadedMapsUI() core.HResult!void {
        const factory = @This().IMapManagerStaticsCache.get();
        return try factory.ShowDownloadedMapsUI();
    }
    pub fn ShowMapsUpdateUI() core.HResult!void {
        const factory = @This().IMapManagerStaticsCache.get();
        return try factory.ShowMapsUpdateUI();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMapManagerStaticsCache: FactoryCache(IMapManagerStatics, RUNTIME_NAME) = .{};
};
pub const MapManeuverNotices = enum(i32) {
    None = 0,
    Toll = 1,
    Unpaved = 2,
};
pub const MapRoute = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBoundingBox(self: *@This()) core.HResult!*GeoboundingBox {
        const this: *IMapRoute = @ptrCast(self);
        return try this.getBoundingBox();
    }
    pub fn getLengthInMeters(self: *@This()) core.HResult!f64 {
        const this: *IMapRoute = @ptrCast(self);
        return try this.getLengthInMeters();
    }
    pub fn getEstimatedDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMapRoute = @ptrCast(self);
        return try this.getEstimatedDuration();
    }
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        const this: *IMapRoute = @ptrCast(self);
        return try this.getPath();
    }
    pub fn getLegs(self: *@This()) core.HResult!*IVectorView(MapRouteLeg) {
        const this: *IMapRoute = @ptrCast(self);
        return try this.getLegs();
    }
    pub fn getIsTrafficBased(self: *@This()) core.HResult!bool {
        const this: *IMapRoute = @ptrCast(self);
        return try this.getIsTrafficBased();
    }
    pub fn getViolatedRestrictions(self: *@This()) core.HResult!MapRouteRestrictions {
        var this: ?*IMapRoute2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRoute2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViolatedRestrictions();
    }
    pub fn getHasBlockedRoads(self: *@This()) core.HResult!bool {
        var this: ?*IMapRoute2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRoute2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHasBlockedRoads();
    }
    pub fn getDurationWithoutTraffic(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMapRoute3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRoute3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDurationWithoutTraffic();
    }
    pub fn getTrafficCongestion(self: *@This()) core.HResult!TrafficCongestion {
        var this: ?*IMapRoute3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRoute3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTrafficCongestion();
    }
    pub fn getIsScenic(self: *@This()) core.HResult!bool {
        var this: ?*IMapRoute4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRoute4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsScenic();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapRoute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapRoute.GUID;
    pub const IID: Guid = IMapRoute.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapRoute.SIGNATURE);
};
pub const MapRouteDrivingOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxAlternateRouteCount(self: *@This()) core.HResult!u32 {
        const this: *IMapRouteDrivingOptions = @ptrCast(self);
        return try this.getMaxAlternateRouteCount();
    }
    pub fn putMaxAlternateRouteCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IMapRouteDrivingOptions = @ptrCast(self);
        return try this.putMaxAlternateRouteCount(value);
    }
    pub fn getInitialHeading(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMapRouteDrivingOptions = @ptrCast(self);
        return try this.getInitialHeading();
    }
    pub fn putInitialHeading(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const this: *IMapRouteDrivingOptions = @ptrCast(self);
        return try this.putInitialHeading(value);
    }
    pub fn getRouteOptimization(self: *@This()) core.HResult!MapRouteOptimization {
        const this: *IMapRouteDrivingOptions = @ptrCast(self);
        return try this.getRouteOptimization();
    }
    pub fn putRouteOptimization(self: *@This(), value: MapRouteOptimization) core.HResult!void {
        const this: *IMapRouteDrivingOptions = @ptrCast(self);
        return try this.putRouteOptimization(value);
    }
    pub fn getRouteRestrictions(self: *@This()) core.HResult!MapRouteRestrictions {
        const this: *IMapRouteDrivingOptions = @ptrCast(self);
        return try this.getRouteRestrictions();
    }
    pub fn putRouteRestrictions(self: *@This(), value: MapRouteRestrictions) core.HResult!void {
        const this: *IMapRouteDrivingOptions = @ptrCast(self);
        return try this.putRouteRestrictions(value);
    }
    pub fn getDepartureTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var this: ?*IMapRouteDrivingOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRouteDrivingOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDepartureTime();
    }
    pub fn putDepartureTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        var this: ?*IMapRouteDrivingOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRouteDrivingOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDepartureTime(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapRouteDrivingOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapRouteDrivingOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapRouteDrivingOptions.GUID;
    pub const IID: Guid = IMapRouteDrivingOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapRouteDrivingOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapRouteFinder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDrivingRouteAsync(startPoint: *Geopoint, endPoint: *Geopoint) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetDrivingRouteAsync(startPoint, endPoint);
    }
    pub fn GetDrivingRouteAsyncWithEndPointWithOptimization(startPoint: *Geopoint, endPoint: *Geopoint, optimization: MapRouteOptimization) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetDrivingRouteAsyncWithEndPointWithOptimization(startPoint, endPoint, optimization);
    }
    pub fn GetDrivingRouteAsyncWithOptimizationWithRestrictions(startPoint: *Geopoint, endPoint: *Geopoint, optimization: MapRouteOptimization, restrictions: MapRouteRestrictions) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetDrivingRouteAsyncWithOptimizationWithRestrictions(startPoint, endPoint, optimization, restrictions);
    }
    pub fn GetDrivingRouteAsyncWithRestrictionsWithHeadingInDegrees(startPoint: *Geopoint, endPoint: *Geopoint, optimization: MapRouteOptimization, restrictions: MapRouteRestrictions, headingInDegrees: f64) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetDrivingRouteAsyncWithRestrictionsWithHeadingInDegrees(startPoint, endPoint, optimization, restrictions, headingInDegrees);
    }
    pub fn GetDrivingRouteFromWaypointsAsync(wayPoints: *IIterable(Geopoint)) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetDrivingRouteFromWaypointsAsync(wayPoints);
    }
    pub fn GetDrivingRouteFromWaypointsAsyncWithOptimization(wayPoints: *IIterable(Geopoint), optimization: MapRouteOptimization) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetDrivingRouteFromWaypointsAsyncWithOptimization(wayPoints, optimization);
    }
    pub fn GetDrivingRouteFromWaypointsAsyncWithRestrictions(wayPoints: *IIterable(Geopoint), optimization: MapRouteOptimization, restrictions: MapRouteRestrictions) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetDrivingRouteFromWaypointsAsyncWithRestrictions(wayPoints, optimization, restrictions);
    }
    pub fn GetDrivingRouteFromWaypointsAsyncWithHeadingInDegrees(wayPoints: *IIterable(Geopoint), optimization: MapRouteOptimization, restrictions: MapRouteRestrictions, headingInDegrees: f64) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetDrivingRouteFromWaypointsAsyncWithHeadingInDegrees(wayPoints, optimization, restrictions, headingInDegrees);
    }
    pub fn GetWalkingRouteAsync(startPoint: *Geopoint, endPoint: *Geopoint) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetWalkingRouteAsync(startPoint, endPoint);
    }
    pub fn GetWalkingRouteFromWaypointsAsync(wayPoints: *IIterable(Geopoint)) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStaticsCache.get();
        return try factory.GetWalkingRouteFromWaypointsAsync(wayPoints);
    }
    pub fn GetDrivingRouteFromEnhancedWaypointsAsync(waypoints: *IIterable(EnhancedWaypoint)) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStatics3Cache.get();
        return try factory.GetDrivingRouteFromEnhancedWaypointsAsync(waypoints);
    }
    pub fn GetDrivingRouteFromEnhancedWaypointsAsyncWithOptions(waypoints: *IIterable(EnhancedWaypoint), options: *MapRouteDrivingOptions) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStatics3Cache.get();
        return try factory.GetDrivingRouteFromEnhancedWaypointsAsyncWithOptions(waypoints, options);
    }
    pub fn GetDrivingRouteAsync(startPoint: *Geopoint, endPoint: *Geopoint, options: *MapRouteDrivingOptions) core.HResult!*IAsyncOperation(MapRouteFinderResult) {
        const factory = @This().IMapRouteFinderStatics2Cache.get();
        return try factory.GetDrivingRouteAsync(startPoint, endPoint, options);
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapRouteFinder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMapRouteFinderStaticsCache: FactoryCache(IMapRouteFinderStatics, RUNTIME_NAME) = .{};
    var _IMapRouteFinderStatics3Cache: FactoryCache(IMapRouteFinderStatics3, RUNTIME_NAME) = .{};
    var _IMapRouteFinderStatics2Cache: FactoryCache(IMapRouteFinderStatics2, RUNTIME_NAME) = .{};
};
pub const MapRouteFinderResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRoute(self: *@This()) core.HResult!*MapRoute {
        const this: *IMapRouteFinderResult = @ptrCast(self);
        return try this.getRoute();
    }
    pub fn getStatus(self: *@This()) core.HResult!MapRouteFinderStatus {
        const this: *IMapRouteFinderResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getAlternateRoutes(self: *@This()) core.HResult!*IVectorView(MapRoute) {
        var this: ?*IMapRouteFinderResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRouteFinderResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAlternateRoutes();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapRouteFinderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapRouteFinderResult.GUID;
    pub const IID: Guid = IMapRouteFinderResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapRouteFinderResult.SIGNATURE);
};
pub const MapRouteFinderStatus = enum(i32) {
    Success = 0,
    UnknownError = 1,
    InvalidCredentials = 2,
    NoRouteFound = 3,
    NoRouteFoundWithGivenOptions = 4,
    StartPointNotFound = 5,
    EndPointNotFound = 6,
    NoPedestrianRouteFound = 7,
    NetworkFailure = 8,
    NotSupported = 9,
};
pub const MapRouteLeg = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBoundingBox(self: *@This()) core.HResult!*GeoboundingBox {
        const this: *IMapRouteLeg = @ptrCast(self);
        return try this.getBoundingBox();
    }
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        const this: *IMapRouteLeg = @ptrCast(self);
        return try this.getPath();
    }
    pub fn getLengthInMeters(self: *@This()) core.HResult!f64 {
        const this: *IMapRouteLeg = @ptrCast(self);
        return try this.getLengthInMeters();
    }
    pub fn getEstimatedDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMapRouteLeg = @ptrCast(self);
        return try this.getEstimatedDuration();
    }
    pub fn getManeuvers(self: *@This()) core.HResult!*IVectorView(MapRouteManeuver) {
        const this: *IMapRouteLeg = @ptrCast(self);
        return try this.getManeuvers();
    }
    pub fn getDurationWithoutTraffic(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMapRouteLeg2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRouteLeg2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDurationWithoutTraffic();
    }
    pub fn getTrafficCongestion(self: *@This()) core.HResult!TrafficCongestion {
        var this: ?*IMapRouteLeg2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRouteLeg2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTrafficCongestion();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapRouteLeg";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapRouteLeg.GUID;
    pub const IID: Guid = IMapRouteLeg.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapRouteLeg.SIGNATURE);
};
pub const MapRouteManeuver = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartingPoint(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapRouteManeuver = @ptrCast(self);
        return try this.getStartingPoint();
    }
    pub fn getLengthInMeters(self: *@This()) core.HResult!f64 {
        const this: *IMapRouteManeuver = @ptrCast(self);
        return try this.getLengthInMeters();
    }
    pub fn getInstructionText(self: *@This()) core.HResult!HSTRING {
        const this: *IMapRouteManeuver = @ptrCast(self);
        return try this.getInstructionText();
    }
    pub fn getKind(self: *@This()) core.HResult!MapRouteManeuverKind {
        const this: *IMapRouteManeuver = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getExitNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IMapRouteManeuver = @ptrCast(self);
        return try this.getExitNumber();
    }
    pub fn getManeuverNotices(self: *@This()) core.HResult!MapManeuverNotices {
        const this: *IMapRouteManeuver = @ptrCast(self);
        return try this.getManeuverNotices();
    }
    pub fn getStartHeading(self: *@This()) core.HResult!f64 {
        var this: ?*IMapRouteManeuver2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRouteManeuver2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStartHeading();
    }
    pub fn getEndHeading(self: *@This()) core.HResult!f64 {
        var this: ?*IMapRouteManeuver2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRouteManeuver2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEndHeading();
    }
    pub fn getStreetName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMapRouteManeuver2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRouteManeuver2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStreetName();
    }
    pub fn getWarnings(self: *@This()) core.HResult!*IVectorView(ManeuverWarning) {
        var this: ?*IMapRouteManeuver3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapRouteManeuver3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarnings();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapRouteManeuver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapRouteManeuver.GUID;
    pub const IID: Guid = IMapRouteManeuver.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapRouteManeuver.SIGNATURE);
};
pub const MapRouteManeuverKind = enum(i32) {
    None = 0,
    Start = 1,
    Stopover = 2,
    StopoverResume = 3,
    End = 4,
    GoStraight = 5,
    UTurnLeft = 6,
    UTurnRight = 7,
    TurnKeepLeft = 8,
    TurnKeepRight = 9,
    TurnLightLeft = 10,
    TurnLightRight = 11,
    TurnLeft = 12,
    TurnRight = 13,
    TurnHardLeft = 14,
    TurnHardRight = 15,
    FreewayEnterLeft = 16,
    FreewayEnterRight = 17,
    FreewayLeaveLeft = 18,
    FreewayLeaveRight = 19,
    FreewayContinueLeft = 20,
    FreewayContinueRight = 21,
    TrafficCircleLeft = 22,
    TrafficCircleRight = 23,
    TakeFerry = 24,
};
pub const MapRouteOptimization = enum(i32) {
    Time = 0,
    Distance = 1,
    TimeWithTraffic = 2,
    Scenic = 3,
};
pub const MapRouteRestrictions = enum(i32) {
    None = 0,
    Highways = 1,
    TollRoads = 2,
    Ferries = 4,
    Tunnels = 8,
    DirtRoads = 16,
    Motorail = 32,
};
pub const MapService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn putDataUsagePreference(value: MapServiceDataUsagePreference) core.HResult!void {
        const factory = @This().IMapServiceStatics4Cache.get();
        return try factory.putDataUsagePreference(value);
    }
    pub fn getDataUsagePreference() core.HResult!MapServiceDataUsagePreference {
        const factory = @This().IMapServiceStatics4Cache.get();
        return try factory.getDataUsagePreference();
    }
    pub fn putServiceToken(value: HSTRING) core.HResult!void {
        const factory = @This().IMapServiceStaticsCache.get();
        return try factory.putServiceToken(value);
    }
    pub fn getServiceToken() core.HResult!HSTRING {
        const factory = @This().IMapServiceStaticsCache.get();
        return try factory.getServiceToken();
    }
    pub fn getWorldViewRegionCode() core.HResult!HSTRING {
        const factory = @This().IMapServiceStatics2Cache.get();
        return try factory.getWorldViewRegionCode();
    }
    pub fn getDataAttributions() core.HResult!HSTRING {
        const factory = @This().IMapServiceStatics3Cache.get();
        return try factory.getDataAttributions();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.MapService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMapServiceStatics4Cache: FactoryCache(IMapServiceStatics4, RUNTIME_NAME) = .{};
    var _IMapServiceStaticsCache: FactoryCache(IMapServiceStatics, RUNTIME_NAME) = .{};
    var _IMapServiceStatics2Cache: FactoryCache(IMapServiceStatics2, RUNTIME_NAME) = .{};
    var _IMapServiceStatics3Cache: FactoryCache(IMapServiceStatics3, RUNTIME_NAME) = .{};
};
pub const MapServiceDataUsagePreference = enum(i32) {
    Default = 0,
    OfflineMapDataOnly = 1,
};
pub const PlaceInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Show(self: *@This(), selection: Rect) core.HResult!void {
        const this: *IPlaceInfo = @ptrCast(self);
        return try this.Show(selection);
    }
    pub fn ShowWithPreferredPlacement(self: *@This(), selection: Rect, preferredPlacement: Placement) core.HResult!void {
        const this: *IPlaceInfo = @ptrCast(self);
        return try this.ShowWithPreferredPlacement(selection, preferredPlacement);
    }
    pub fn getIdentifier(self: *@This()) core.HResult!HSTRING {
        const this: *IPlaceInfo = @ptrCast(self);
        return try this.getIdentifier();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPlaceInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDisplayAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IPlaceInfo = @ptrCast(self);
        return try this.getDisplayAddress();
    }
    pub fn getGeoshape(self: *@This()) core.HResult!*IGeoshape {
        const this: *IPlaceInfo = @ptrCast(self);
        return try this.getGeoshape();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromAddress(displayAddress: HSTRING) core.HResult!*PlaceInfo {
        const factory = @This().IPlaceInfoStatics2Cache.get();
        return try factory.CreateFromAddress(displayAddress);
    }
    pub fn CreateFromAddressWithDisplayName(displayAddress: HSTRING, displayName: HSTRING) core.HResult!*PlaceInfo {
        const factory = @This().IPlaceInfoStatics2Cache.get();
        return try factory.CreateFromAddressWithDisplayName(displayAddress, displayName);
    }
    pub fn Create(referencePoint: *Geopoint) core.HResult!*PlaceInfo {
        const factory = @This().IPlaceInfoStaticsCache.get();
        return try factory.Create(referencePoint);
    }
    pub fn CreateWithOptions(referencePoint: *Geopoint, options: *PlaceInfoCreateOptions) core.HResult!*PlaceInfo {
        const factory = @This().IPlaceInfoStaticsCache.get();
        return try factory.CreateWithOptions(referencePoint, options);
    }
    pub fn CreateFromIdentifier(identifier: HSTRING) core.HResult!*PlaceInfo {
        const factory = @This().IPlaceInfoStaticsCache.get();
        return try factory.CreateFromIdentifier(identifier);
    }
    pub fn CreateFromIdentifierWithOptions(identifier: HSTRING, defaultPoint: *Geopoint, options: *PlaceInfoCreateOptions) core.HResult!*PlaceInfo {
        const factory = @This().IPlaceInfoStaticsCache.get();
        return try factory.CreateFromIdentifierWithOptions(identifier, defaultPoint, options);
    }
    pub fn CreateFromMapLocation(location: *MapLocation) core.HResult!*PlaceInfo {
        const factory = @This().IPlaceInfoStaticsCache.get();
        return try factory.CreateFromMapLocation(location);
    }
    pub fn getIsShowSupported() core.HResult!bool {
        const factory = @This().IPlaceInfoStaticsCache.get();
        return try factory.getIsShowSupported();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.PlaceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaceInfo.GUID;
    pub const IID: Guid = IPlaceInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaceInfo.SIGNATURE);
    var _IPlaceInfoStatics2Cache: FactoryCache(IPlaceInfoStatics2, RUNTIME_NAME) = .{};
    var _IPlaceInfoStaticsCache: FactoryCache(IPlaceInfoStatics, RUNTIME_NAME) = .{};
};
pub const PlaceInfoCreateOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPlaceInfoCreateOptions = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPlaceInfoCreateOptions = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPlaceInfoCreateOptions = @ptrCast(self);
        return try this.putDisplayAddress(value);
    }
    pub fn getDisplayAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IPlaceInfoCreateOptions = @ptrCast(self);
        return try this.getDisplayAddress();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlaceInfoCreateOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.PlaceInfoCreateOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaceInfoCreateOptions.GUID;
    pub const IID: Guid = IPlaceInfoCreateOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaceInfoCreateOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TrafficCongestion = enum(i32) {
    Unknown = 0,
    Light = 1,
    Mild = 2,
    Medium = 3,
    Heavy = 4,
};
pub const WaypointKind = enum(i32) {
    Stop = 0,
    Via = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const Placement = @import("../UI/Popups.zig").Placement;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const IGeoshape = @import("../Devices/Geolocation.zig").IGeoshape;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Geopoint = @import("../Devices/Geolocation.zig").Geopoint;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const GeoboundingBox = @import("../Devices/Geolocation.zig").GeoboundingBox;
const Geopath = @import("../Devices/Geolocation.zig").Geopath;
pub const Guidance = @import("./Maps/Guidance.zig");
pub const LocalSearch = @import("./Maps/LocalSearch.zig");
pub const OfflineMaps = @import("./Maps/OfflineMaps.zig");
