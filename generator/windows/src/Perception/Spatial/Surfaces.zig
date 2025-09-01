pub const ISpatialSurfaceInfo = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_UpdateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetBounds(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(SpatialBoundingOrientedBox) {
        var _r: *IReference(SpatialBoundingOrientedBox) = undefined;
        const _c = self.vtable.TryGetBounds(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryComputeLatestMeshAsync(self: *@This(), maxTrianglesPerCubicMeter: f64) core.HResult!*IAsyncOperation(SpatialSurfaceMesh) {
        var _r: *IAsyncOperation(SpatialSurfaceMesh) = undefined;
        const _c = self.vtable.TryComputeLatestMeshAsync(@ptrCast(self), maxTrianglesPerCubicMeter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryComputeLatestMeshAsyncWithOptions(self: *@This(), maxTrianglesPerCubicMeter: f64, options: *SpatialSurfaceMeshOptions) core.HResult!*IAsyncOperation(SpatialSurfaceMesh) {
        var _r: *IAsyncOperation(SpatialSurfaceMesh) = undefined;
        const _c = self.vtable.TryComputeLatestMeshAsyncWithOptions(@ptrCast(self), maxTrianglesPerCubicMeter, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8e9ebe7-39b7-3962-bb03-57f56e1fb0a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_UpdateTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        TryGetBounds: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **IReference(SpatialBoundingOrientedBox)) callconv(.winapi) HRESULT,
        TryComputeLatestMeshAsync: *const fn(self: *anyopaque, maxTrianglesPerCubicMeter: f64, _r: **IAsyncOperation(SpatialSurfaceMesh)) callconv(.winapi) HRESULT,
        TryComputeLatestMeshAsyncWithOptions: *const fn(self: *anyopaque, maxTrianglesPerCubicMeter: f64, options: *SpatialSurfaceMeshOptions, _r: **IAsyncOperation(SpatialSurfaceMesh)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialSurfaceMesh = extern struct {
    vtable: *const VTable,
    pub fn getSurfaceInfo(self: *@This()) core.HResult!*SpatialSurfaceInfo {
        var _r: *SpatialSurfaceInfo = undefined;
        const _c = self.vtable.get_SurfaceInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.get_CoordinateSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTriangleIndices(self: *@This()) core.HResult!*SpatialSurfaceMeshBuffer {
        var _r: *SpatialSurfaceMeshBuffer = undefined;
        const _c = self.vtable.get_TriangleIndices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVertexPositions(self: *@This()) core.HResult!*SpatialSurfaceMeshBuffer {
        var _r: *SpatialSurfaceMeshBuffer = undefined;
        const _c = self.vtable.get_VertexPositions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVertexPositionScale(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_VertexPositionScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVertexNormals(self: *@This()) core.HResult!*SpatialSurfaceMeshBuffer {
        var _r: *SpatialSurfaceMeshBuffer = undefined;
        const _c = self.vtable.get_VertexNormals(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "108f57d9-df0d-3950-a0fd-f972c77c27b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SurfaceInfo: *const fn(self: *anyopaque, _r: **SpatialSurfaceInfo) callconv(.winapi) HRESULT,
        get_CoordinateSystem: *const fn(self: *anyopaque, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
        get_TriangleIndices: *const fn(self: *anyopaque, _r: **SpatialSurfaceMeshBuffer) callconv(.winapi) HRESULT,
        get_VertexPositions: *const fn(self: *anyopaque, _r: **SpatialSurfaceMeshBuffer) callconv(.winapi) HRESULT,
        get_VertexPositionScale: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_VertexNormals: *const fn(self: *anyopaque, _r: **SpatialSurfaceMeshBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialSurfaceMeshBuffer = extern struct {
    vtable: *const VTable,
    pub fn getFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStride(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Stride(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElementCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ElementCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93cf59e0-871f-33f8-98b2-03d101458f6f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_Stride: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ElementCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialSurfaceMeshOptions = extern struct {
    vtable: *const VTable,
    pub fn getVertexPositionFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_VertexPositionFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVertexPositionFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const _c = self.vtable.put_VertexPositionFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTriangleIndexFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_TriangleIndexFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTriangleIndexFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const _c = self.vtable.put_TriangleIndexFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVertexNormalFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_VertexNormalFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVertexNormalFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const _c = self.vtable.put_VertexNormalFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncludeVertexNormals(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeVertexNormals(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeVertexNormals(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeVertexNormals(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2759f89-3572-3d2d-a10d-5fee9394aa37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VertexPositionFormat: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        put_VertexPositionFormat: *const fn(self: *anyopaque, value: DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_TriangleIndexFormat: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        put_TriangleIndexFormat: *const fn(self: *anyopaque, value: DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_VertexNormalFormat: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        put_VertexNormalFormat: *const fn(self: *anyopaque, value: DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_IncludeVertexNormals: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeVertexNormals: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialSurfaceMeshOptionsStatics = extern struct {
    vtable: *const VTable,
    pub fn getSupportedVertexPositionFormats(self: *@This()) core.HResult!*IVectorView(DirectXPixelFormat) {
        var _r: *IVectorView(DirectXPixelFormat) = undefined;
        const _c = self.vtable.get_SupportedVertexPositionFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedTriangleIndexFormats(self: *@This()) core.HResult!*IVectorView(DirectXPixelFormat) {
        var _r: *IVectorView(DirectXPixelFormat) = undefined;
        const _c = self.vtable.get_SupportedTriangleIndexFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedVertexNormalFormats(self: *@This()) core.HResult!*IVectorView(DirectXPixelFormat) {
        var _r: *IVectorView(DirectXPixelFormat) = undefined;
        const _c = self.vtable.get_SupportedVertexNormalFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptionsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b340abf-9781-4505-8935-013575caae5e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedVertexPositionFormats: *const fn(self: *anyopaque, _r: **IVectorView(DirectXPixelFormat)) callconv(.winapi) HRESULT,
        get_SupportedTriangleIndexFormats: *const fn(self: *anyopaque, _r: **IVectorView(DirectXPixelFormat)) callconv(.winapi) HRESULT,
        get_SupportedVertexNormalFormats: *const fn(self: *anyopaque, _r: **IVectorView(DirectXPixelFormat)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialSurfaceObserver = extern struct {
    vtable: *const VTable,
    pub fn GetObservedSurfaces(self: *@This()) core.HResult!*IMapView(Guid,SpatialSurfaceInfo) {
        var _r: *IMapView(Guid,SpatialSurfaceInfo) = undefined;
        const _c = self.vtable.GetObservedSurfaces(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetBoundingVolume(self: *@This(), bounds: *SpatialBoundingVolume) core.HResult!void {
        const _c = self.vtable.SetBoundingVolume(@ptrCast(self), bounds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetBoundingVolumes(self: *@This(), bounds: *IIterable(SpatialBoundingVolume)) core.HResult!void {
        const _c = self.vtable.SetBoundingVolumes(@ptrCast(self), bounds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addObservedSurfacesChanged(self: *@This(), handler: *TypedEventHandler(SpatialSurfaceObserver,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ObservedSurfacesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeObservedSurfacesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ObservedSurfacesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10b69819-ddca-3483-ac3a-748fe8c86df5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetObservedSurfaces: *const fn(self: *anyopaque, _r: **IMapView(Guid,SpatialSurfaceInfo)) callconv(.winapi) HRESULT,
        SetBoundingVolume: *const fn(self: *anyopaque, bounds: *SpatialBoundingVolume) callconv(.winapi) HRESULT,
        SetBoundingVolumes: *const fn(self: *anyopaque, bounds: *IIterable(SpatialBoundingVolume)) callconv(.winapi) HRESULT,
        add_ObservedSurfacesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialSurfaceObserver,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ObservedSurfacesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialSurfaceObserverStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(SpatialPerceptionAccessStatus) {
        var _r: *IAsyncOperation(SpatialPerceptionAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserverStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "165951ed-2108-4168-9175-87e027bc9285";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SpatialPerceptionAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialSurfaceObserverStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserverStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f534261-c55d-4e6b-a895-a19de69a42e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const SpatialSurfaceInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        const this: *ISpatialSurfaceInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn getUpdateTime(self: *@This()) core.HResult!DateTime {
        const this: *ISpatialSurfaceInfo = @ptrCast(self);
        return try this.getUpdateTime();
    }
    pub fn TryGetBounds(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(SpatialBoundingOrientedBox) {
        const this: *ISpatialSurfaceInfo = @ptrCast(self);
        return try this.TryGetBounds(coordinateSystem);
    }
    pub fn TryComputeLatestMeshAsync(self: *@This(), maxTrianglesPerCubicMeter: f64) core.HResult!*IAsyncOperation(SpatialSurfaceMesh) {
        const this: *ISpatialSurfaceInfo = @ptrCast(self);
        return try this.TryComputeLatestMeshAsync(maxTrianglesPerCubicMeter);
    }
    pub fn TryComputeLatestMeshAsyncWithOptions(self: *@This(), maxTrianglesPerCubicMeter: f64, options: *SpatialSurfaceMeshOptions) core.HResult!*IAsyncOperation(SpatialSurfaceMesh) {
        const this: *ISpatialSurfaceInfo = @ptrCast(self);
        return try this.TryComputeLatestMeshAsyncWithOptions(maxTrianglesPerCubicMeter, options);
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialSurfaceInfo.GUID;
    pub const IID: Guid = ISpatialSurfaceInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialSurfaceInfo.SIGNATURE);
};
pub const SpatialSurfaceMesh = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSurfaceInfo(self: *@This()) core.HResult!*SpatialSurfaceInfo {
        const this: *ISpatialSurfaceMesh = @ptrCast(self);
        return try this.getSurfaceInfo();
    }
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        const this: *ISpatialSurfaceMesh = @ptrCast(self);
        return try this.getCoordinateSystem();
    }
    pub fn getTriangleIndices(self: *@This()) core.HResult!*SpatialSurfaceMeshBuffer {
        const this: *ISpatialSurfaceMesh = @ptrCast(self);
        return try this.getTriangleIndices();
    }
    pub fn getVertexPositions(self: *@This()) core.HResult!*SpatialSurfaceMeshBuffer {
        const this: *ISpatialSurfaceMesh = @ptrCast(self);
        return try this.getVertexPositions();
    }
    pub fn getVertexPositionScale(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialSurfaceMesh = @ptrCast(self);
        return try this.getVertexPositionScale();
    }
    pub fn getVertexNormals(self: *@This()) core.HResult!*SpatialSurfaceMeshBuffer {
        const this: *ISpatialSurfaceMesh = @ptrCast(self);
        return try this.getVertexNormals();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialSurfaceMesh.GUID;
    pub const IID: Guid = ISpatialSurfaceMesh.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialSurfaceMesh.SIGNATURE);
};
pub const SpatialSurfaceMeshBuffer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *ISpatialSurfaceMeshBuffer = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn getStride(self: *@This()) core.HResult!u32 {
        const this: *ISpatialSurfaceMeshBuffer = @ptrCast(self);
        return try this.getStride();
    }
    pub fn getElementCount(self: *@This()) core.HResult!u32 {
        const this: *ISpatialSurfaceMeshBuffer = @ptrCast(self);
        return try this.getElementCount();
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *ISpatialSurfaceMeshBuffer = @ptrCast(self);
        return try this.getData();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialSurfaceMeshBuffer.GUID;
    pub const IID: Guid = ISpatialSurfaceMeshBuffer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialSurfaceMeshBuffer.SIGNATURE);
};
pub const SpatialSurfaceMeshOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVertexPositionFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *ISpatialSurfaceMeshOptions = @ptrCast(self);
        return try this.getVertexPositionFormat();
    }
    pub fn putVertexPositionFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const this: *ISpatialSurfaceMeshOptions = @ptrCast(self);
        return try this.putVertexPositionFormat(value);
    }
    pub fn getTriangleIndexFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *ISpatialSurfaceMeshOptions = @ptrCast(self);
        return try this.getTriangleIndexFormat();
    }
    pub fn putTriangleIndexFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const this: *ISpatialSurfaceMeshOptions = @ptrCast(self);
        return try this.putTriangleIndexFormat(value);
    }
    pub fn getVertexNormalFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *ISpatialSurfaceMeshOptions = @ptrCast(self);
        return try this.getVertexNormalFormat();
    }
    pub fn putVertexNormalFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const this: *ISpatialSurfaceMeshOptions = @ptrCast(self);
        return try this.putVertexNormalFormat(value);
    }
    pub fn getIncludeVertexNormals(self: *@This()) core.HResult!bool {
        const this: *ISpatialSurfaceMeshOptions = @ptrCast(self);
        return try this.getIncludeVertexNormals();
    }
    pub fn putIncludeVertexNormals(self: *@This(), value: bool) core.HResult!void {
        const this: *ISpatialSurfaceMeshOptions = @ptrCast(self);
        return try this.putIncludeVertexNormals(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISpatialSurfaceMeshOptions.IID)));
    }
    pub fn getSupportedVertexPositionFormats() core.HResult!*IVectorView(DirectXPixelFormat) {
        const _f = @This().ISpatialSurfaceMeshOptionsStaticsCache.get();
        return try _f.getSupportedVertexPositionFormats();
    }
    pub fn getSupportedTriangleIndexFormats() core.HResult!*IVectorView(DirectXPixelFormat) {
        const _f = @This().ISpatialSurfaceMeshOptionsStaticsCache.get();
        return try _f.getSupportedTriangleIndexFormats();
    }
    pub fn getSupportedVertexNormalFormats() core.HResult!*IVectorView(DirectXPixelFormat) {
        const _f = @This().ISpatialSurfaceMeshOptionsStaticsCache.get();
        return try _f.getSupportedVertexNormalFormats();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialSurfaceMeshOptions.GUID;
    pub const IID: Guid = ISpatialSurfaceMeshOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialSurfaceMeshOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISpatialSurfaceMeshOptionsStaticsCache: FactoryCache(ISpatialSurfaceMeshOptionsStatics, RUNTIME_NAME) = .{};
};
pub const SpatialSurfaceObserver = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetObservedSurfaces(self: *@This()) core.HResult!*IMapView(Guid,SpatialSurfaceInfo) {
        const this: *ISpatialSurfaceObserver = @ptrCast(self);
        return try this.GetObservedSurfaces();
    }
    pub fn SetBoundingVolume(self: *@This(), bounds: *SpatialBoundingVolume) core.HResult!void {
        const this: *ISpatialSurfaceObserver = @ptrCast(self);
        return try this.SetBoundingVolume(bounds);
    }
    pub fn SetBoundingVolumes(self: *@This(), bounds: *IIterable(SpatialBoundingVolume)) core.HResult!void {
        const this: *ISpatialSurfaceObserver = @ptrCast(self);
        return try this.SetBoundingVolumes(bounds);
    }
    pub fn addObservedSurfacesChanged(self: *@This(), handler: *TypedEventHandler(SpatialSurfaceObserver,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ISpatialSurfaceObserver = @ptrCast(self);
        return try this.addObservedSurfacesChanged(handler);
    }
    pub fn removeObservedSurfacesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialSurfaceObserver = @ptrCast(self);
        return try this.removeObservedSurfacesChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISpatialSurfaceObserver.IID)));
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(SpatialPerceptionAccessStatus) {
        const _f = @This().ISpatialSurfaceObserverStaticsCache.get();
        return try _f.RequestAccessAsync();
    }
    pub fn IsSupported() core.HResult!bool {
        const _f = @This().ISpatialSurfaceObserverStatics2Cache.get();
        return try _f.IsSupported();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.Surfaces.SpatialSurfaceObserver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialSurfaceObserver.GUID;
    pub const IID: Guid = ISpatialSurfaceObserver.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialSurfaceObserver.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISpatialSurfaceObserverStaticsCache: FactoryCache(ISpatialSurfaceObserverStatics, RUNTIME_NAME) = .{};
    var _ISpatialSurfaceObserverStatics2Cache: FactoryCache(ISpatialSurfaceObserverStatics2, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const Vector3 = @import("../../Foundation/Numerics.zig").Vector3;
const DirectXPixelFormat = @import("../../Graphics/DirectX.zig").DirectXPixelFormat;
const IReference = @import("../../Foundation.zig").IReference;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const SpatialCoordinateSystem = @import("../Spatial.zig").SpatialCoordinateSystem;
const DateTime = @import("../../Foundation.zig").DateTime;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const SpatialBoundingOrientedBox = @import("../Spatial.zig").SpatialBoundingOrientedBox;
const SpatialPerceptionAccessStatus = @import("../Spatial.zig").SpatialPerceptionAccessStatus;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const SpatialBoundingVolume = @import("../Spatial.zig").SpatialBoundingVolume;
const HSTRING = @import("../../root.zig").HSTRING;
