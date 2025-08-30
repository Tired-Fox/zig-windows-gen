pub const HolographicApplicationPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsCurrentViewPresentedOnHolographicDisplay() core.HResult!bool {
        const factory = @This().IHolographicApplicationPreviewStaticsCache.get();
        return try factory.IsCurrentViewPresentedOnHolographicDisplay();
    }
    pub fn IsHolographicActivation(activatedEventArgs: *IActivatedEventArgs) core.HResult!bool {
        const factory = @This().IHolographicApplicationPreviewStaticsCache.get();
        return try factory.IsHolographicActivation(activatedEventArgs);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Holographic.HolographicApplicationPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IHolographicApplicationPreviewStaticsCache: FactoryCache(IHolographicApplicationPreviewStatics, RUNTIME_NAME) = .{};
};
pub const HolographicKeyboardPlacementOverridePreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetPlacementOverride(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, normal: Vector3) core.HResult!void {
        const this: *IHolographicKeyboardPlacementOverridePreview = @ptrCast(self);
        return try this.SetPlacementOverride(coordinateSystem, topCenterPosition, normal);
    }
    pub fn SetPlacementOverrideWithMaxSize(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, normal: Vector3, maxSize: Vector2) core.HResult!void {
        const this: *IHolographicKeyboardPlacementOverridePreview = @ptrCast(self);
        return try this.SetPlacementOverrideWithMaxSize(coordinateSystem, topCenterPosition, normal, maxSize);
    }
    pub fn ResetPlacementOverride(self: *@This()) core.HResult!void {
        const this: *IHolographicKeyboardPlacementOverridePreview = @ptrCast(self);
        return try this.ResetPlacementOverride();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*HolographicKeyboardPlacementOverridePreview {
        const factory = @This().IHolographicKeyboardPlacementOverridePreviewStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Holographic.HolographicKeyboardPlacementOverridePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicKeyboardPlacementOverridePreview.GUID;
    pub const IID: Guid = IHolographicKeyboardPlacementOverridePreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicKeyboardPlacementOverridePreview.SIGNATURE);
    var _IHolographicKeyboardPlacementOverridePreviewStaticsCache: FactoryCache(IHolographicKeyboardPlacementOverridePreviewStatics, RUNTIME_NAME) = .{};
};
pub const IHolographicApplicationPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn IsCurrentViewPresentedOnHolographicDisplay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCurrentViewPresentedOnHolographicDisplay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsHolographicActivation(self: *@This(), activatedEventArgs: *IActivatedEventArgs) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsHolographicActivation(@ptrCast(self), activatedEventArgs, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Holographic.IHolographicApplicationPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe038691-2a3a-45a9-a208-7bed691919f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsCurrentViewPresentedOnHolographicDisplay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsHolographicActivation: *const fn(self: *anyopaque, activatedEventArgs: *IActivatedEventArgs, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicKeyboardPlacementOverridePreview = extern struct {
    vtable: *const VTable,
    pub fn SetPlacementOverride(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, normal: Vector3) core.HResult!void {
        const _c = self.vtable.SetPlacementOverride(@ptrCast(self), coordinateSystem, topCenterPosition, normal);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPlacementOverrideWithTopCenterPositionWithNormalWithMaxSize(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, normal: Vector3, maxSize: Vector2) core.HResult!void {
        const _c = self.vtable.SetPlacementOverrideWithTopCenterPositionWithNormalWithMaxSize(@ptrCast(self), coordinateSystem, topCenterPosition, normal, maxSize);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResetPlacementOverride(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResetPlacementOverride(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Holographic.IHolographicKeyboardPlacementOverridePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8a8ce3a-dfde-5a14-8d5f-182c526dd9c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetPlacementOverride: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, normal: Vector3) callconv(.winapi) HRESULT,
        SetPlacementOverrideWithTopCenterPositionWithNormalWithMaxSize: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, topCenterPosition: Vector3, normal: Vector3, maxSize: Vector2) callconv(.winapi) HRESULT,
        ResetPlacementOverride: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicKeyboardPlacementOverridePreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*HolographicKeyboardPlacementOverridePreview {
        var _r: *HolographicKeyboardPlacementOverridePreview = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Preview.Holographic.IHolographicKeyboardPlacementOverridePreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "202e6039-1ff6-5a06-aac4-a5e24fa3ec4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **HolographicKeyboardPlacementOverridePreview) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Vector2 = @import("../../Foundation/Numerics.zig").Vector2;
const Vector3 = @import("../../Foundation/Numerics.zig").Vector3;
const IActivatedEventArgs = @import("../Activation.zig").IActivatedEventArgs;
const SpatialCoordinateSystem = @import("../../Perception/Spatial.zig").SpatialCoordinateSystem;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
