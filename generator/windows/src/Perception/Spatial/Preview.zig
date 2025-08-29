pub const ISpatialGraphInteropFrameOfReferencePreview = extern struct {
    vtable: *const VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.get_CoordinateSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNodeId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_NodeId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCoordinateSystemToNodeTransform(self: *@This()) core.HResult!Matrix4x4 {
        var _r: Matrix4x4 = undefined;
        const _c = self.vtable.get_CoordinateSystemToNodeTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Preview.ISpatialGraphInteropFrameOfReferencePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8271b23-735f-5729-a98e-e64ed189abc5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CoordinateSystem: *const fn(self: *anyopaque, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
        get_NodeId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_CoordinateSystemToNodeTransform: *const fn(self: *anyopaque, _r: *Matrix4x4) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialGraphInteropPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateCoordinateSystemForNode(self: *@This(), nodeId: *Guid) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.CreateCoordinateSystemForNode(@ptrCast(self), nodeId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCoordinateSystemForNodeWithRelativePosition(self: *@This(), nodeId: *Guid, relativePosition: Vector3) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.CreateCoordinateSystemForNodeWithRelativePosition(@ptrCast(self), nodeId, relativePosition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCoordinateSystemForNodeWithRelativeOrientation(self: *@This(), nodeId: *Guid, relativePosition: Vector3, relativeOrientation: Quaternion) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.CreateCoordinateSystemForNodeWithRelativeOrientation(@ptrCast(self), nodeId, relativePosition, relativeOrientation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateLocatorForNode(self: *@This(), nodeId: *Guid) core.HResult!*SpatialLocator {
        var _r: *SpatialLocator = undefined;
        const _c = self.vtable.CreateLocatorForNode(@ptrCast(self), nodeId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Preview.ISpatialGraphInteropPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c042644c-20d8-4ed0-aef7-6805b8e53f55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCoordinateSystemForNode: *const fn(self: *anyopaque, nodeId: *Guid, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
        CreateCoordinateSystemForNodeWithRelativePosition: *const fn(self: *anyopaque, nodeId: *Guid, relativePosition: Vector3, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
        CreateCoordinateSystemForNodeWithRelativeOrientation: *const fn(self: *anyopaque, nodeId: *Guid, relativePosition: Vector3, relativeOrientation: Quaternion, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
        CreateLocatorForNode: *const fn(self: *anyopaque, nodeId: *Guid, _r: **SpatialLocator) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialGraphInteropPreviewStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TryCreateFrameOfReference(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialGraphInteropFrameOfReferencePreview {
        var _r: *SpatialGraphInteropFrameOfReferencePreview = undefined;
        const _c = self.vtable.TryCreateFrameOfReference(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateFrameOfReferenceWithRelativePosition(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, relativePosition: Vector3) core.HResult!*SpatialGraphInteropFrameOfReferencePreview {
        var _r: *SpatialGraphInteropFrameOfReferencePreview = undefined;
        const _c = self.vtable.TryCreateFrameOfReferenceWithRelativePosition(@ptrCast(self), coordinateSystem, relativePosition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateFrameOfReferenceWithRelativeOrientation(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, relativePosition: Vector3, relativeOrientation: Quaternion) core.HResult!*SpatialGraphInteropFrameOfReferencePreview {
        var _r: *SpatialGraphInteropFrameOfReferencePreview = undefined;
        const _c = self.vtable.TryCreateFrameOfReferenceWithRelativeOrientation(@ptrCast(self), coordinateSystem, relativePosition, relativeOrientation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Preview.ISpatialGraphInteropPreviewStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2490b15f-6cbd-4b1e-b765-31e462a32df2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreateFrameOfReference: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialGraphInteropFrameOfReferencePreview) callconv(.winapi) HRESULT,
        TryCreateFrameOfReferenceWithRelativePosition: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, relativePosition: Vector3, _r: **SpatialGraphInteropFrameOfReferencePreview) callconv(.winapi) HRESULT,
        TryCreateFrameOfReferenceWithRelativeOrientation: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, relativePosition: Vector3, relativeOrientation: Quaternion, _r: **SpatialGraphInteropFrameOfReferencePreview) callconv(.winapi) HRESULT,
    };
};
pub const SpatialGraphInteropFrameOfReferencePreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        const this: *ISpatialGraphInteropFrameOfReferencePreview = @ptrCast(self);
        return try this.getCoordinateSystem();
    }
    pub fn getNodeId(self: *@This()) core.HResult!*Guid {
        const this: *ISpatialGraphInteropFrameOfReferencePreview = @ptrCast(self);
        return try this.getNodeId();
    }
    pub fn getCoordinateSystemToNodeTransform(self: *@This()) core.HResult!Matrix4x4 {
        const this: *ISpatialGraphInteropFrameOfReferencePreview = @ptrCast(self);
        return try this.getCoordinateSystemToNodeTransform();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Preview.SpatialGraphInteropFrameOfReferencePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialGraphInteropFrameOfReferencePreview.GUID;
    pub const IID: Guid = ISpatialGraphInteropFrameOfReferencePreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialGraphInteropFrameOfReferencePreview.SIGNATURE);
};
pub const SpatialGraphInteropPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryCreateFrameOfReference(coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialGraphInteropFrameOfReferencePreview {
        const factory = @This().ISpatialGraphInteropPreviewStatics2Cache.get();
        return try factory.TryCreateFrameOfReference(coordinateSystem);
    }
    pub fn TryCreateFrameOfReferenceWithRelativePosition(coordinateSystem: *SpatialCoordinateSystem, relativePosition: Vector3) core.HResult!*SpatialGraphInteropFrameOfReferencePreview {
        const factory = @This().ISpatialGraphInteropPreviewStatics2Cache.get();
        return try factory.TryCreateFrameOfReferenceWithRelativePosition(coordinateSystem, relativePosition);
    }
    pub fn TryCreateFrameOfReferenceWithRelativePositionWithRelativeOrientation(coordinateSystem: *SpatialCoordinateSystem, relativePosition: Vector3, relativeOrientation: Quaternion) core.HResult!*SpatialGraphInteropFrameOfReferencePreview {
        const factory = @This().ISpatialGraphInteropPreviewStatics2Cache.get();
        return try factory.TryCreateFrameOfReferenceWithRelativePositionWithRelativeOrientation(coordinateSystem, relativePosition, relativeOrientation);
    }
    pub fn CreateCoordinateSystemForNode(nodeId: *Guid) core.HResult!*SpatialCoordinateSystem {
        const factory = @This().ISpatialGraphInteropPreviewStaticsCache.get();
        return try factory.CreateCoordinateSystemForNode(nodeId);
    }
    pub fn CreateCoordinateSystemForNodeWithRelativePosition(nodeId: *Guid, relativePosition: Vector3) core.HResult!*SpatialCoordinateSystem {
        const factory = @This().ISpatialGraphInteropPreviewStaticsCache.get();
        return try factory.CreateCoordinateSystemForNodeWithRelativePosition(nodeId, relativePosition);
    }
    pub fn CreateCoordinateSystemForNodeWithRelativePositionWithRelativeOrientation(nodeId: *Guid, relativePosition: Vector3, relativeOrientation: Quaternion) core.HResult!*SpatialCoordinateSystem {
        const factory = @This().ISpatialGraphInteropPreviewStaticsCache.get();
        return try factory.CreateCoordinateSystemForNodeWithRelativePositionWithRelativeOrientation(nodeId, relativePosition, relativeOrientation);
    }
    pub fn CreateLocatorForNode(nodeId: *Guid) core.HResult!*SpatialLocator {
        const factory = @This().ISpatialGraphInteropPreviewStaticsCache.get();
        return try factory.CreateLocatorForNode(nodeId);
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Preview.SpatialGraphInteropPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISpatialGraphInteropPreviewStatics2Cache: FactoryCache(ISpatialGraphInteropPreviewStatics2, RUNTIME_NAME) = .{};
    var _ISpatialGraphInteropPreviewStaticsCache: FactoryCache(ISpatialGraphInteropPreviewStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const SpatialLocator = @import("../Spatial.zig").SpatialLocator;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Vector3 = @import("../../Foundation/Numerics.zig").Vector3;
const Matrix4x4 = @import("../../Foundation/Numerics.zig").Matrix4x4;
const SpatialCoordinateSystem = @import("../Spatial.zig").SpatialCoordinateSystem;
const Quaternion = @import("../../Foundation/Numerics.zig").Quaternion;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
