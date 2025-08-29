pub const GeolocationProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsOverridden(self: *@This()) core.HResult!bool {
        const this: *IGeolocationProvider = @ptrCast(self);
        return try this.getIsOverridden();
    }
    pub fn SetOverridePosition(self: *@This(), newPosition: BasicGeoposition, positionSource: PositionSource, accuracyInMeters: f64) core.HResult!LocationOverrideStatus {
        const this: *IGeolocationProvider = @ptrCast(self);
        return try this.SetOverridePosition(newPosition, positionSource, accuracyInMeters);
    }
    pub fn ClearOverridePosition(self: *@This()) core.HResult!void {
        const this: *IGeolocationProvider = @ptrCast(self);
        return try this.ClearOverridePosition();
    }
    pub fn addIsOverriddenChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGeolocationProvider = @ptrCast(self);
        return try this.addIsOverriddenChanged(handler);
    }
    pub fn removeIsOverriddenChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGeolocationProvider = @ptrCast(self);
        return try this.removeIsOverriddenChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGeolocationProvider.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Provider.GeolocationProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeolocationProvider.GUID;
    pub const IID: Guid = IGeolocationProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeolocationProvider.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IGeolocationProvider = extern struct {
    vtable: *const VTable,
    pub fn getIsOverridden(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOverridden(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetOverridePosition(self: *@This(), newPosition: BasicGeoposition, positionSource: PositionSource, accuracyInMeters: f64) core.HResult!LocationOverrideStatus {
        var _r: LocationOverrideStatus = undefined;
        const _c = self.vtable.SetOverridePosition(@ptrCast(self), newPosition, positionSource, accuracyInMeters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearOverridePosition(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearOverridePosition(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addIsOverriddenChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsOverriddenChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsOverriddenChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsOverriddenChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Geolocation.Provider.IGeolocationProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4cf071d-3f64-509f-8dc2-0b74a059829d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsOverridden: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetOverridePosition: *const fn(self: *anyopaque, newPosition: BasicGeoposition, positionSource: PositionSource, accuracyInMeters: f64, _r: *LocationOverrideStatus) callconv(.winapi) HRESULT,
        ClearOverridePosition: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_IsOverriddenChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsOverriddenChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const LocationOverrideStatus = enum(i32) {
    Success = 0,
    AccessDenied = 1,
    AlreadyStarted = 2,
    Other = 3,
};
const HSTRING = @import("../../root.zig").HSTRING;
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const BasicGeoposition = @import("../Geolocation.zig").BasicGeoposition;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const PositionSource = @import("../Geolocation.zig").PositionSource;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const EventHandler = @import("../../Foundation.zig").EventHandler;
