pub const HolographicKeyboard = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetPlacementOverride(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, orientation: Quaternion) core.HResult!void {
        const this: *IHolographicKeyboard = @ptrCast(self);
        return try this.SetPlacementOverride(coordinateSystem, topCenterPosition, orientation);
    }
    pub fn SetPlacementOverrideWithMaxSize(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, orientation: Quaternion, maxSize: Vector2) core.HResult!void {
        const this: *IHolographicKeyboard = @ptrCast(self);
        return try this.SetPlacementOverrideWithMaxSize(coordinateSystem, topCenterPosition, orientation, maxSize);
    }
    pub fn ResetPlacementOverride(self: *@This()) core.HResult!void {
        const this: *IHolographicKeyboard = @ptrCast(self);
        return try this.ResetPlacementOverride();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*HolographicKeyboard {
        const factory = @This().IHolographicKeyboardStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Holographic.HolographicKeyboard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicKeyboard.GUID;
    pub const IID: Guid = IHolographicKeyboard.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicKeyboard.SIGNATURE);
    var _IHolographicKeyboardStaticsCache: FactoryCache(IHolographicKeyboardStatics, RUNTIME_NAME) = .{};
};
pub const IHolographicKeyboard = extern struct {
    vtable: *const VTable,
    pub fn SetPlacementOverride(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, orientation: Quaternion) core.HResult!void {
        const _c = self.vtable.SetPlacementOverride(@ptrCast(self), coordinateSystem, topCenterPosition, orientation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPlacementOverrideWithTopCenterPositionWithOrientationWithMaxSize(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, orientation: Quaternion, maxSize: Vector2) core.HResult!void {
        const _c = self.vtable.SetPlacementOverrideWithTopCenterPositionWithOrientationWithMaxSize(@ptrCast(self), coordinateSystem, topCenterPosition, orientation, maxSize);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResetPlacementOverride(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResetPlacementOverride(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Holographic.IHolographicKeyboard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07dd0893-aa21-5e6f-a91b-11b2b3fd7be3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetPlacementOverride: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, orientation: Quaternion) callconv(.winapi) HRESULT,
        SetPlacementOverrideWithTopCenterPositionWithOrientationWithMaxSize: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, orientation: Quaternion, maxSize: Vector2) callconv(.winapi) HRESULT,
        ResetPlacementOverride: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicKeyboardStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*HolographicKeyboard {
        var _r: *HolographicKeyboard = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Holographic.IHolographicKeyboardStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b676c624-63d7-58cf-b06b-08baa032a23f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **HolographicKeyboard) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Vector2 = @import("../Foundation/Numerics.zig").Vector2;
const Vector3 = @import("../Foundation/Numerics.zig").Vector3;
const SpatialCoordinateSystem = @import("../Perception/Spatial.zig").SpatialCoordinateSystem;
const Quaternion = @import("../Foundation/Numerics.zig").Quaternion;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
