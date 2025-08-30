pub const ISpatialAnchor = extern struct {
    vtable: *const VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.get_CoordinateSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.get_RawCoordinateSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRawCoordinateSystemAdjusted(self: *@This(), handler: *TypedEventHandler(SpatialAnchor,SpatialAnchorRawCoordinateSystemAdjustedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RawCoordinateSystemAdjusted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRawCoordinateSystemAdjusted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RawCoordinateSystemAdjusted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0529e5ce-1d34-3702-bcec-eabff578a869";
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
        get_RawCoordinateSystem: *const fn(self: *anyopaque, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
        add_RawCoordinateSystemAdjusted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialAnchor,SpatialAnchorRawCoordinateSystemAdjustedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RawCoordinateSystemAdjusted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAnchor2 = extern struct {
    vtable: *const VTable,
    pub fn getRemovedByUser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RemovedByUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed17c908-a695-4cf6-92fd-97263ba71047";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemovedByUser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAnchorExportSufficiency = extern struct {
    vtable: *const VTable,
    pub fn getIsMinimallySufficient(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMinimallySufficient(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSufficiencyLevel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SufficiencyLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecommendedSufficiencyLevel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RecommendedSufficiencyLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchorExportSufficiency";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77c25b2b-3409-4088-b91b-fdfd05d1648f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsMinimallySufficient: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SufficiencyLevel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_RecommendedSufficiencyLevel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAnchorExporter = extern struct {
    vtable: *const VTable,
    pub fn GetAnchorExportSufficiencyAsync(self: *@This(), anchor: *SpatialAnchor, purpose: SpatialAnchorExportPurpose) core.HResult!*IAsyncOperation(SpatialAnchorExportSufficiency) {
        var _r: *IAsyncOperation(SpatialAnchorExportSufficiency) = undefined;
        const _c = self.vtable.GetAnchorExportSufficiencyAsync(@ptrCast(self), anchor, purpose, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryExportAnchorAsync(self: *@This(), anchor: *SpatialAnchor, purpose: SpatialAnchorExportPurpose, stream: *IOutputStream) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryExportAnchorAsync(@ptrCast(self), anchor, purpose, stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchorExporter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a2a4338-24fb-4269-89c5-88304aeef20f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAnchorExportSufficiencyAsync: *const fn(self: *anyopaque, anchor: *SpatialAnchor, purpose: SpatialAnchorExportPurpose, _r: **IAsyncOperation(SpatialAnchorExportSufficiency)) callconv(.winapi) HRESULT,
        TryExportAnchorAsync: *const fn(self: *anyopaque, anchor: *SpatialAnchor, purpose: SpatialAnchorExportPurpose, stream: *IOutputStream, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAnchorExporterStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*SpatialAnchorExporter {
        var _r: *SpatialAnchorExporter = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(SpatialPerceptionAccessStatus) {
        var _r: *IAsyncOperation(SpatialPerceptionAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchorExporterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed2507b8-2475-439c-85ff-7fed341fdc88";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **SpatialAnchorExporter) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SpatialPerceptionAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAnchorManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This()) core.HResult!*IAsyncOperation(SpatialAnchorStore) {
        var _r: *IAsyncOperation(SpatialAnchorStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchorManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88e30eab-f3b7-420b-b086-8a80c07d910d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SpatialAnchorStore)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAnchorRawCoordinateSystemAdjustedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldRawCoordinateSystemToNewRawCoordinateSystemTransform(self: *@This()) core.HResult!Matrix4x4 {
        var _r: Matrix4x4 = undefined;
        const _c = self.vtable.get_OldRawCoordinateSystemToNewRawCoordinateSystemTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchorRawCoordinateSystemAdjustedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1e81eb8-56c7-3117-a2e4-81e0fcf28e00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldRawCoordinateSystemToNewRawCoordinateSystemTransform: *const fn(self: *anyopaque, _r: *Matrix4x4) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAnchorStatics = extern struct {
    vtable: *const VTable,
    pub fn TryCreateRelativeTo(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialAnchor {
        var _r: *SpatialAnchor = undefined;
        const _c = self.vtable.TryCreateRelativeTo(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateRelativeToWithPosition(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3) core.HResult!*SpatialAnchor {
        var _r: *SpatialAnchor = undefined;
        const _c = self.vtable.TryCreateRelativeToWithPosition(@ptrCast(self), coordinateSystem, position, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateRelativeToWithOrientation(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3, orientation: Quaternion) core.HResult!*SpatialAnchor {
        var _r: *SpatialAnchor = undefined;
        const _c = self.vtable.TryCreateRelativeToWithOrientation(@ptrCast(self), coordinateSystem, position, orientation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9928642-0174-311c-ae79-0e5107669f16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreateRelativeTo: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialAnchor) callconv(.winapi) HRESULT,
        TryCreateRelativeToWithPosition: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, position: Vector3, _r: **SpatialAnchor) callconv(.winapi) HRESULT,
        TryCreateRelativeToWithOrientation: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, position: Vector3, orientation: Quaternion, _r: **SpatialAnchor) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAnchorStore = extern struct {
    vtable: *const VTable,
    pub fn GetAllSavedAnchors(self: *@This()) core.HResult!*IMapView(HSTRING,SpatialAnchor) {
        var _r: *IMapView(HSTRING,SpatialAnchor) = undefined;
        const _c = self.vtable.GetAllSavedAnchors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySave(self: *@This(), id: HSTRING, anchor: *SpatialAnchor) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySave(@ptrCast(self), id, anchor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Remove(self: *@This(), id: HSTRING) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), id);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchorStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0bc3636-486a-3cb0-9e6f-1245165c4db6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAllSavedAnchors: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,SpatialAnchor)) callconv(.winapi) HRESULT,
        TrySave: *const fn(self: *anyopaque, id: HSTRING, anchor: *SpatialAnchor, _r: *bool) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, id: HSTRING) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialAnchorTransferManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn TryImportAnchorsAsync(self: *@This(), stream: *IInputStream) core.HResult!*IAsyncOperation(IMapView(HSTRING,SpatialAnchor)) {
        var _r: *IAsyncOperation(IMapView(HSTRING,SpatialAnchor)) = undefined;
        const _c = self.vtable.TryImportAnchorsAsync(@ptrCast(self), stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryExportAnchorsAsync(self: *@This(), anchors: *IIterable(IKeyValuePair(HSTRING,SpatialAnchor)), stream: *IOutputStream) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryExportAnchorsAsync(@ptrCast(self), anchors, stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(SpatialPerceptionAccessStatus) {
        var _r: *IAsyncOperation(SpatialPerceptionAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialAnchorTransferManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03bbf9b9-12d8-4bce-8835-c5df3ac0adab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryImportAnchorsAsync: *const fn(self: *anyopaque, stream: *IInputStream, _r: **IAsyncOperation(IMapView(HSTRING,SpatialAnchor))) callconv(.winapi) HRESULT,
        TryExportAnchorsAsync: *const fn(self: *anyopaque, anchors: *IIterable(IKeyValuePair(HSTRING,SpatialAnchor)), stream: *IOutputStream, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SpatialPerceptionAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialBoundingVolume = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialBoundingVolume";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb2065da-68c3-33df-b7af-4c787207999c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialBoundingVolumeStatics = extern struct {
    vtable: *const VTable,
    pub fn FromBox(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, box: SpatialBoundingBox) core.HResult!*SpatialBoundingVolume {
        var _r: *SpatialBoundingVolume = undefined;
        const _c = self.vtable.FromBox(@ptrCast(self), coordinateSystem, box, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromOrientedBox(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, box: SpatialBoundingOrientedBox) core.HResult!*SpatialBoundingVolume {
        var _r: *SpatialBoundingVolume = undefined;
        const _c = self.vtable.FromOrientedBox(@ptrCast(self), coordinateSystem, box, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromSphere(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, sphere: SpatialBoundingSphere) core.HResult!*SpatialBoundingVolume {
        var _r: *SpatialBoundingVolume = undefined;
        const _c = self.vtable.FromSphere(@ptrCast(self), coordinateSystem, sphere, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromFrustum(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, frustum: SpatialBoundingFrustum) core.HResult!*SpatialBoundingVolume {
        var _r: *SpatialBoundingVolume = undefined;
        const _c = self.vtable.FromFrustum(@ptrCast(self), coordinateSystem, frustum, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialBoundingVolumeStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05889117-b3e1-36d8-b017-566181a5b196";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromBox: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, box: SpatialBoundingBox, _r: **SpatialBoundingVolume) callconv(.winapi) HRESULT,
        FromOrientedBox: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, box: SpatialBoundingOrientedBox, _r: **SpatialBoundingVolume) callconv(.winapi) HRESULT,
        FromSphere: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, sphere: SpatialBoundingSphere, _r: **SpatialBoundingVolume) callconv(.winapi) HRESULT,
        FromFrustum: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, frustum: SpatialBoundingFrustum, _r: **SpatialBoundingVolume) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialCoordinateSystem = extern struct {
    vtable: *const VTable,
    pub fn TryGetTransformTo(self: *@This(), target: *SpatialCoordinateSystem) core.HResult!*IReference(Matrix4x4) {
        var _r: *IReference(Matrix4x4) = undefined;
        const _c = self.vtable.TryGetTransformTo(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialCoordinateSystem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69ebca4b-60a3-3586-a653-59a7bd676d07";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetTransformTo: *const fn(self: *anyopaque, target: *SpatialCoordinateSystem, _r: **IReference(Matrix4x4)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialEntity = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAnchor(self: *@This()) core.HResult!*SpatialAnchor {
        var _r: *SpatialAnchor = undefined;
        const _c = self.vtable.get_Anchor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "166de955-e1eb-454c-ba08-e6c0668ddc65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Anchor: *const fn(self: *anyopaque, _r: **SpatialAnchor) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialEntityAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEntity(self: *@This()) core.HResult!*SpatialEntity {
        var _r: *SpatialEntity = undefined;
        const _c = self.vtable.get_Entity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialEntityAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a397f49b-156a-4707-ac2c-d31d570ed399";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Entity: *const fn(self: *anyopaque, _r: **SpatialEntity) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialEntityFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithSpatialAnchor(self: *@This(), spatialAnchor: *SpatialAnchor) core.HResult!*SpatialEntity {
        var _r: *SpatialEntity = undefined;
        const _c = self.vtable.CreateWithSpatialAnchor(@ptrCast(self), spatialAnchor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithSpatialAnchorAndProperties(self: *@This(), spatialAnchor: *SpatialAnchor, propertySet: *ValueSet) core.HResult!*SpatialEntity {
        var _r: *SpatialEntity = undefined;
        const _c = self.vtable.CreateWithSpatialAnchorAndProperties(@ptrCast(self), spatialAnchor, propertySet, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialEntityFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1f1e325-349f-4225-a2f3-4b01c15fe056";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithSpatialAnchor: *const fn(self: *anyopaque, spatialAnchor: *SpatialAnchor, _r: **SpatialEntity) callconv(.winapi) HRESULT,
        CreateWithSpatialAnchorAndProperties: *const fn(self: *anyopaque, spatialAnchor: *SpatialAnchor, propertySet: *ValueSet, _r: **SpatialEntity) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialEntityRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEntity(self: *@This()) core.HResult!*SpatialEntity {
        var _r: *SpatialEntity = undefined;
        const _c = self.vtable.get_Entity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialEntityRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91741800-536d-4e9f-abf6-415b5444d651";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Entity: *const fn(self: *anyopaque, _r: **SpatialEntity) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialEntityStore = extern struct {
    vtable: *const VTable,
    pub fn SaveAsync(self: *@This(), entity: *SpatialEntity) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), entity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveAsync(self: *@This(), entity: *SpatialEntity) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RemoveAsync(@ptrCast(self), entity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEntityWatcher(self: *@This()) core.HResult!*SpatialEntityWatcher {
        var _r: *SpatialEntityWatcher = undefined;
        const _c = self.vtable.CreateEntityWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialEntityStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "329788ba-e513-4f06-889d-1be30ecf43e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, entity: *SpatialEntity, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RemoveAsync: *const fn(self: *anyopaque, entity: *SpatialEntity, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CreateEntityWatcher: *const fn(self: *anyopaque, _r: **SpatialEntityWatcher) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialEntityStoreStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGet(self: *@This(), session: *RemoteSystemSession) core.HResult!*SpatialEntityStore {
        var _r: *SpatialEntityStore = undefined;
        const _c = self.vtable.TryGet(@ptrCast(self), session, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialEntityStoreStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b4b389e-7c50-4e92-8a62-4d1d4b7ccd3e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TryGet: *const fn(self: *anyopaque, session: *RemoteSystemSession, _r: **SpatialEntityStore) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialEntityUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEntity(self: *@This()) core.HResult!*SpatialEntity {
        var _r: *SpatialEntity = undefined;
        const _c = self.vtable.get_Entity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialEntityUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5671766-627b-43cb-a49f-b3be6d47deed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Entity: *const fn(self: *anyopaque, _r: **SpatialEntity) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialEntityWatcher = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SpatialEntityWatcherStatus {
        var _r: SpatialEntityWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(SpatialEntityWatcher,SpatialEntityAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(SpatialEntityWatcher,SpatialEntityUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(SpatialEntityWatcher,SpatialEntityRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(SpatialEntityWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialEntityWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SpatialEntityWatcherStatus) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialEntityWatcher,SpatialEntityAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialEntityWatcher,SpatialEntityUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialEntityWatcher,SpatialEntityRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialEntityWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialLocation = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAbsoluteLinearVelocity(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_AbsoluteLinearVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAbsoluteLinearAcceleration(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_AbsoluteLinearAcceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAbsoluteAngularVelocity(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_AbsoluteAngularVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAbsoluteAngularAcceleration(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_AbsoluteAngularAcceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d81d29d-24a1-37d5-8fa1-39b4f9ad67e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
        get_AbsoluteLinearVelocity: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_AbsoluteLinearAcceleration: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_AbsoluteAngularVelocity: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
        get_AbsoluteAngularAcceleration: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialLocation2 = extern struct {
    vtable: *const VTable,
    pub fn getAbsoluteAngularVelocityAxisAngle(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_AbsoluteAngularVelocityAxisAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAbsoluteAngularAccelerationAxisAngle(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_AbsoluteAngularAccelerationAxisAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialLocation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "117f2416-38a7-4a18-b404-ab8fabe1d78b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AbsoluteAngularVelocityAxisAngle: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_AbsoluteAngularAccelerationAxisAngle: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialLocator = extern struct {
    vtable: *const VTable,
    pub fn getLocatability(self: *@This()) core.HResult!SpatialLocatability {
        var _r: SpatialLocatability = undefined;
        const _c = self.vtable.get_Locatability(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addLocatabilityChanged(self: *@This(), handler: *TypedEventHandler(SpatialLocator,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LocatabilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLocatabilityChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LocatabilityChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPositionalTrackingDeactivating(self: *@This(), handler: *TypedEventHandler(SpatialLocator,SpatialLocatorPositionalTrackingDeactivatingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PositionalTrackingDeactivating(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePositionalTrackingDeactivating(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PositionalTrackingDeactivating(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryLocateAtTimestamp(self: *@This(), timestamp: *PerceptionTimestamp, coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialLocation {
        var _r: *SpatialLocation = undefined;
        const _c = self.vtable.TryLocateAtTimestamp(@ptrCast(self), timestamp, coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAttachedFrameOfReferenceAtCurrentHeading(self: *@This()) core.HResult!*SpatialLocatorAttachedFrameOfReference {
        var _r: *SpatialLocatorAttachedFrameOfReference = undefined;
        const _c = self.vtable.CreateAttachedFrameOfReferenceAtCurrentHeading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAttachedFrameOfReferenceAtCurrentHeading(self: *@This(), relativePosition: Vector3) core.HResult!*SpatialLocatorAttachedFrameOfReference {
        var _r: *SpatialLocatorAttachedFrameOfReference = undefined;
        const _c = self.vtable.CreateAttachedFrameOfReferenceAtCurrentHeading(@ptrCast(self), relativePosition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAttachedFrameOfReferenceAtCurrentHeading(self: *@This(), relativePosition: Vector3, relativeOrientation: Quaternion) core.HResult!*SpatialLocatorAttachedFrameOfReference {
        var _r: *SpatialLocatorAttachedFrameOfReference = undefined;
        const _c = self.vtable.CreateAttachedFrameOfReferenceAtCurrentHeading(@ptrCast(self), relativePosition, relativeOrientation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAttachedFrameOfReferenceAtCurrentHeading(self: *@This(), relativePosition: Vector3, relativeOrientation: Quaternion, relativeHeadingInRadians: f64) core.HResult!*SpatialLocatorAttachedFrameOfReference {
        var _r: *SpatialLocatorAttachedFrameOfReference = undefined;
        const _c = self.vtable.CreateAttachedFrameOfReferenceAtCurrentHeading(@ptrCast(self), relativePosition, relativeOrientation, relativeHeadingInRadians, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStationaryFrameOfReferenceAtCurrentLocation(self: *@This()) core.HResult!*SpatialStationaryFrameOfReference {
        var _r: *SpatialStationaryFrameOfReference = undefined;
        const _c = self.vtable.CreateStationaryFrameOfReferenceAtCurrentLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStationaryFrameOfReferenceAtCurrentLocation(self: *@This(), relativePosition: Vector3) core.HResult!*SpatialStationaryFrameOfReference {
        var _r: *SpatialStationaryFrameOfReference = undefined;
        const _c = self.vtable.CreateStationaryFrameOfReferenceAtCurrentLocation(@ptrCast(self), relativePosition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStationaryFrameOfReferenceAtCurrentLocation(self: *@This(), relativePosition: Vector3, relativeOrientation: Quaternion) core.HResult!*SpatialStationaryFrameOfReference {
        var _r: *SpatialStationaryFrameOfReference = undefined;
        const _c = self.vtable.CreateStationaryFrameOfReferenceAtCurrentLocation(@ptrCast(self), relativePosition, relativeOrientation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStationaryFrameOfReferenceAtCurrentLocation(self: *@This(), relativePosition: Vector3, relativeOrientation: Quaternion, relativeHeadingInRadians: f64) core.HResult!*SpatialStationaryFrameOfReference {
        var _r: *SpatialStationaryFrameOfReference = undefined;
        const _c = self.vtable.CreateStationaryFrameOfReferenceAtCurrentLocation(@ptrCast(self), relativePosition, relativeOrientation, relativeHeadingInRadians, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialLocator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6478925-9e0c-3bb6-997e-b64ecca24cf4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Locatability: *const fn(self: *anyopaque, _r: *SpatialLocatability) callconv(.winapi) HRESULT,
        add_LocatabilityChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialLocator,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LocatabilityChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PositionalTrackingDeactivating: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialLocator,SpatialLocatorPositionalTrackingDeactivatingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PositionalTrackingDeactivating: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        TryLocateAtTimestamp: *const fn(self: *anyopaque, timestamp: *PerceptionTimestamp, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialLocation) callconv(.winapi) HRESULT,
        CreateAttachedFrameOfReferenceAtCurrentHeading: *const fn(self: *anyopaque, _r: **SpatialLocatorAttachedFrameOfReference) callconv(.winapi) HRESULT,
        CreateAttachedFrameOfReferenceAtCurrentHeading: *const fn(self: *anyopaque, relativePosition: Vector3, _r: **SpatialLocatorAttachedFrameOfReference) callconv(.winapi) HRESULT,
        CreateAttachedFrameOfReferenceAtCurrentHeading: *const fn(self: *anyopaque, relativePosition: Vector3, relativeOrientation: Quaternion, _r: **SpatialLocatorAttachedFrameOfReference) callconv(.winapi) HRESULT,
        CreateAttachedFrameOfReferenceAtCurrentHeading: *const fn(self: *anyopaque, relativePosition: Vector3, relativeOrientation: Quaternion, relativeHeadingInRadians: f64, _r: **SpatialLocatorAttachedFrameOfReference) callconv(.winapi) HRESULT,
        CreateStationaryFrameOfReferenceAtCurrentLocation: *const fn(self: *anyopaque, _r: **SpatialStationaryFrameOfReference) callconv(.winapi) HRESULT,
        CreateStationaryFrameOfReferenceAtCurrentLocation: *const fn(self: *anyopaque, relativePosition: Vector3, _r: **SpatialStationaryFrameOfReference) callconv(.winapi) HRESULT,
        CreateStationaryFrameOfReferenceAtCurrentLocation: *const fn(self: *anyopaque, relativePosition: Vector3, relativeOrientation: Quaternion, _r: **SpatialStationaryFrameOfReference) callconv(.winapi) HRESULT,
        CreateStationaryFrameOfReferenceAtCurrentLocation: *const fn(self: *anyopaque, relativePosition: Vector3, relativeOrientation: Quaternion, relativeHeadingInRadians: f64, _r: **SpatialStationaryFrameOfReference) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialLocatorAttachedFrameOfReference = extern struct {
    vtable: *const VTable,
    pub fn getRelativePosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_RelativePosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelativePosition(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_RelativePosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelativeOrientation(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_RelativeOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelativeOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const _c = self.vtable.put_RelativeOrientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AdjustHeading(self: *@This(), headingOffsetInRadians: f64) core.HResult!void {
        const _c = self.vtable.AdjustHeading(@ptrCast(self), headingOffsetInRadians);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetStationaryCoordinateSystemAtTimestamp(self: *@This(), timestamp: *PerceptionTimestamp) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.GetStationaryCoordinateSystemAtTimestamp(@ptrCast(self), timestamp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetRelativeHeadingAtTimestamp(self: *@This(), timestamp: *PerceptionTimestamp) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.TryGetRelativeHeadingAtTimestamp(@ptrCast(self), timestamp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialLocatorAttachedFrameOfReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1774ef6-1f4f-499c-9625-ef5e6ed7a048";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RelativePosition: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_RelativePosition: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_RelativeOrientation: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
        put_RelativeOrientation: *const fn(self: *anyopaque, value: Quaternion) callconv(.winapi) HRESULT,
        AdjustHeading: *const fn(self: *anyopaque, headingOffsetInRadians: f64) callconv(.winapi) HRESULT,
        GetStationaryCoordinateSystemAtTimestamp: *const fn(self: *anyopaque, timestamp: *PerceptionTimestamp, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
        TryGetRelativeHeadingAtTimestamp: *const fn(self: *anyopaque, timestamp: *PerceptionTimestamp, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialLocatorPositionalTrackingDeactivatingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Canceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanceled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Canceled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialLocatorPositionalTrackingDeactivatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8a84063-e3f4-368b-9061-9ea9d1d6cc16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Canceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Canceled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialLocatorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*SpatialLocator {
        var _r: *SpatialLocator = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialLocatorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b76e3340-a7c2-361b-bb82-56e93b89b1bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **SpatialLocator) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialStageFrameOfReference = extern struct {
    vtable: *const VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.get_CoordinateSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMovementRange(self: *@This()) core.HResult!SpatialMovementRange {
        var _r: SpatialMovementRange = undefined;
        const _c = self.vtable.get_MovementRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLookDirectionRange(self: *@This()) core.HResult!SpatialLookDirectionRange {
        var _r: SpatialLookDirectionRange = undefined;
        const _c = self.vtable.get_LookDirectionRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCoordinateSystemAtCurrentLocation(self: *@This(), locator: *SpatialLocator) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.GetCoordinateSystemAtCurrentLocation(@ptrCast(self), locator, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetMovementBounds(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult![*]Vector3 {
        var _r: [*]Vector3 = undefined;
        const _c = self.vtable.TryGetMovementBounds(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialStageFrameOfReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a8a3464-ad0d-4590-ab86-33062b674926";
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
        get_MovementRange: *const fn(self: *anyopaque, _r: *SpatialMovementRange) callconv(.winapi) HRESULT,
        get_LookDirectionRange: *const fn(self: *anyopaque, _r: *SpatialLookDirectionRange) callconv(.winapi) HRESULT,
        GetCoordinateSystemAtCurrentLocation: *const fn(self: *anyopaque, locator: *SpatialLocator, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
        TryGetMovementBounds: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: *[*]Vector3) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialStageFrameOfReferenceStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*SpatialStageFrameOfReference {
        var _r: *SpatialStageFrameOfReference = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCurrentChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestNewStageAsync(self: *@This()) core.HResult!*IAsyncOperation(SpatialStageFrameOfReference) {
        var _r: *IAsyncOperation(SpatialStageFrameOfReference) = undefined;
        const _c = self.vtable.RequestNewStageAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialStageFrameOfReferenceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f78d5c4d-a0a4-499c-8d91-a8c965d40654";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **SpatialStageFrameOfReference) callconv(.winapi) HRESULT,
        add_CurrentChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        RequestNewStageAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SpatialStageFrameOfReference)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialStationaryFrameOfReference = extern struct {
    vtable: *const VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.get_CoordinateSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.ISpatialStationaryFrameOfReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09dbccb9-bcf8-3e7f-be7e-7edccbb178a8";
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
    };
};
pub const SpatialAnchor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        const this: *ISpatialAnchor = @ptrCast(self);
        return try this.getCoordinateSystem();
    }
    pub fn getRawCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        const this: *ISpatialAnchor = @ptrCast(self);
        return try this.getRawCoordinateSystem();
    }
    pub fn addRawCoordinateSystemAdjusted(self: *@This(), handler: *TypedEventHandler(SpatialAnchor,SpatialAnchorRawCoordinateSystemAdjustedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialAnchor = @ptrCast(self);
        return try this.addRawCoordinateSystemAdjusted(handler);
    }
    pub fn removeRawCoordinateSystemAdjusted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialAnchor = @ptrCast(self);
        return try this.removeRawCoordinateSystemAdjusted(cookie);
    }
    pub fn getRemovedByUser(self: *@This()) core.HResult!bool {
        var this: ?*ISpatialAnchor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialAnchor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemovedByUser();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryCreateRelativeTo(coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialAnchor {
        const factory = @This().ISpatialAnchorStaticsCache.get();
        return try factory.TryCreateRelativeTo(coordinateSystem);
    }
    pub fn TryCreateRelativeToWithPosition(coordinateSystem: *SpatialCoordinateSystem, position: Vector3) core.HResult!*SpatialAnchor {
        const factory = @This().ISpatialAnchorStaticsCache.get();
        return try factory.TryCreateRelativeToWithPosition(coordinateSystem, position);
    }
    pub fn TryCreateRelativeToWithPositionWithOrientation(coordinateSystem: *SpatialCoordinateSystem, position: Vector3, orientation: Quaternion) core.HResult!*SpatialAnchor {
        const factory = @This().ISpatialAnchorStaticsCache.get();
        return try factory.TryCreateRelativeToWithPositionWithOrientation(coordinateSystem, position, orientation);
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialAnchor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialAnchor.GUID;
    pub const IID: Guid = ISpatialAnchor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialAnchor.SIGNATURE);
    var _ISpatialAnchorStaticsCache: FactoryCache(ISpatialAnchorStatics, RUNTIME_NAME) = .{};
};
pub const SpatialAnchorExportPurpose = enum(i32) {
    Relocalization = 0,
    Sharing = 1,
};
pub const SpatialAnchorExportSufficiency = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsMinimallySufficient(self: *@This()) core.HResult!bool {
        const this: *ISpatialAnchorExportSufficiency = @ptrCast(self);
        return try this.getIsMinimallySufficient();
    }
    pub fn getSufficiencyLevel(self: *@This()) core.HResult!f64 {
        const this: *ISpatialAnchorExportSufficiency = @ptrCast(self);
        return try this.getSufficiencyLevel();
    }
    pub fn getRecommendedSufficiencyLevel(self: *@This()) core.HResult!f64 {
        const this: *ISpatialAnchorExportSufficiency = @ptrCast(self);
        return try this.getRecommendedSufficiencyLevel();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialAnchorExportSufficiency";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialAnchorExportSufficiency.GUID;
    pub const IID: Guid = ISpatialAnchorExportSufficiency.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialAnchorExportSufficiency.SIGNATURE);
};
pub const SpatialAnchorExporter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAnchorExportSufficiencyAsync(self: *@This(), anchor: *SpatialAnchor, purpose: SpatialAnchorExportPurpose) core.HResult!*IAsyncOperation(SpatialAnchorExportSufficiency) {
        const this: *ISpatialAnchorExporter = @ptrCast(self);
        return try this.GetAnchorExportSufficiencyAsync(anchor, purpose);
    }
    pub fn TryExportAnchorAsync(self: *@This(), anchor: *SpatialAnchor, purpose: SpatialAnchorExportPurpose, stream: *IOutputStream) core.HResult!*IAsyncOperation(bool) {
        const this: *ISpatialAnchorExporter = @ptrCast(self);
        return try this.TryExportAnchorAsync(anchor, purpose, stream);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*SpatialAnchorExporter {
        const factory = @This().ISpatialAnchorExporterStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(SpatialPerceptionAccessStatus) {
        const factory = @This().ISpatialAnchorExporterStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialAnchorExporter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialAnchorExporter.GUID;
    pub const IID: Guid = ISpatialAnchorExporter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialAnchorExporter.SIGNATURE);
    var _ISpatialAnchorExporterStaticsCache: FactoryCache(ISpatialAnchorExporterStatics, RUNTIME_NAME) = .{};
};
pub const SpatialAnchorManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestStoreAsync() core.HResult!*IAsyncOperation(SpatialAnchorStore) {
        const factory = @This().ISpatialAnchorManagerStaticsCache.get();
        return try factory.RequestStoreAsync();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialAnchorManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISpatialAnchorManagerStaticsCache: FactoryCache(ISpatialAnchorManagerStatics, RUNTIME_NAME) = .{};
};
pub const SpatialAnchorRawCoordinateSystemAdjustedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldRawCoordinateSystemToNewRawCoordinateSystemTransform(self: *@This()) core.HResult!Matrix4x4 {
        const this: *ISpatialAnchorRawCoordinateSystemAdjustedEventArgs = @ptrCast(self);
        return try this.getOldRawCoordinateSystemToNewRawCoordinateSystemTransform();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialAnchorRawCoordinateSystemAdjustedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialAnchorRawCoordinateSystemAdjustedEventArgs.GUID;
    pub const IID: Guid = ISpatialAnchorRawCoordinateSystemAdjustedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialAnchorRawCoordinateSystemAdjustedEventArgs.SIGNATURE);
};
pub const SpatialAnchorStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAllSavedAnchors(self: *@This()) core.HResult!*IMapView(HSTRING,SpatialAnchor) {
        const this: *ISpatialAnchorStore = @ptrCast(self);
        return try this.GetAllSavedAnchors();
    }
    pub fn TrySave(self: *@This(), id: HSTRING, anchor: *SpatialAnchor) core.HResult!bool {
        const this: *ISpatialAnchorStore = @ptrCast(self);
        return try this.TrySave(id, anchor);
    }
    pub fn Remove(self: *@This(), id: HSTRING) core.HResult!void {
        const this: *ISpatialAnchorStore = @ptrCast(self);
        return try this.Remove(id);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *ISpatialAnchorStore = @ptrCast(self);
        return try this.Clear();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialAnchorStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialAnchorStore.GUID;
    pub const IID: Guid = ISpatialAnchorStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialAnchorStore.SIGNATURE);
};
pub const SpatialAnchorTransferManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryImportAnchorsAsync(stream: *IInputStream) core.HResult!*IAsyncOperation(IMapView(HSTRING,SpatialAnchor)) {
        const factory = @This().ISpatialAnchorTransferManagerStaticsCache.get();
        return try factory.TryImportAnchorsAsync(stream);
    }
    pub fn TryExportAnchorsAsync(anchors: *IIterable(IKeyValuePair(HSTRING,SpatialAnchor)), stream: *IOutputStream) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ISpatialAnchorTransferManagerStaticsCache.get();
        return try factory.TryExportAnchorsAsync(anchors, stream);
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(SpatialPerceptionAccessStatus) {
        const factory = @This().ISpatialAnchorTransferManagerStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialAnchorTransferManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISpatialAnchorTransferManagerStaticsCache: FactoryCache(ISpatialAnchorTransferManagerStatics, RUNTIME_NAME) = .{};
};
pub const SpatialBoundingBox = extern struct {
    Center: Vector3,
    Extents: Vector3,
};
pub const SpatialBoundingFrustum = extern struct {
    Near: Plane,
    Far: Plane,
    Right: Plane,
    Left: Plane,
    Top: Plane,
    Bottom: Plane,
};
pub const SpatialBoundingOrientedBox = extern struct {
    Center: Vector3,
    Extents: Vector3,
    Orientation: Quaternion,
};
pub const SpatialBoundingSphere = extern struct {
    Center: Vector3,
    Radius: f32,
};
pub const SpatialBoundingVolume = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromBox(coordinateSystem: *SpatialCoordinateSystem, box: SpatialBoundingBox) core.HResult!*SpatialBoundingVolume {
        const factory = @This().ISpatialBoundingVolumeStaticsCache.get();
        return try factory.FromBox(coordinateSystem, box);
    }
    pub fn FromOrientedBox(coordinateSystem: *SpatialCoordinateSystem, box: SpatialBoundingOrientedBox) core.HResult!*SpatialBoundingVolume {
        const factory = @This().ISpatialBoundingVolumeStaticsCache.get();
        return try factory.FromOrientedBox(coordinateSystem, box);
    }
    pub fn FromSphere(coordinateSystem: *SpatialCoordinateSystem, sphere: SpatialBoundingSphere) core.HResult!*SpatialBoundingVolume {
        const factory = @This().ISpatialBoundingVolumeStaticsCache.get();
        return try factory.FromSphere(coordinateSystem, sphere);
    }
    pub fn FromFrustum(coordinateSystem: *SpatialCoordinateSystem, frustum: SpatialBoundingFrustum) core.HResult!*SpatialBoundingVolume {
        const factory = @This().ISpatialBoundingVolumeStaticsCache.get();
        return try factory.FromFrustum(coordinateSystem, frustum);
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialBoundingVolume";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialBoundingVolume.GUID;
    pub const IID: Guid = ISpatialBoundingVolume.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialBoundingVolume.SIGNATURE);
    var _ISpatialBoundingVolumeStaticsCache: FactoryCache(ISpatialBoundingVolumeStatics, RUNTIME_NAME) = .{};
};
pub const SpatialCoordinateSystem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TryGetTransformTo(self: *@This(), target: *SpatialCoordinateSystem) core.HResult!*IReference(Matrix4x4) {
        const this: *ISpatialCoordinateSystem = @ptrCast(self);
        return try this.TryGetTransformTo(target);
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialCoordinateSystem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialCoordinateSystem.GUID;
    pub const IID: Guid = ISpatialCoordinateSystem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialCoordinateSystem.SIGNATURE);
};
pub const SpatialEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ISpatialEntity = @ptrCast(self);
        return try this.getId();
    }
    pub fn getAnchor(self: *@This()) core.HResult!*SpatialAnchor {
        const this: *ISpatialEntity = @ptrCast(self);
        return try this.getAnchor();
    }
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        const this: *ISpatialEntity = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithSpatialAnchor(spatialAnchor: *SpatialAnchor) core.HResult!*SpatialEntity {
        const factory = @This().ISpatialEntityFactoryCache.get();
        return try factory.CreateWithSpatialAnchor(spatialAnchor);
    }
    pub fn CreateWithSpatialAnchorAndProperties(spatialAnchor: *SpatialAnchor, propertySet: *ValueSet) core.HResult!*SpatialEntity {
        const factory = @This().ISpatialEntityFactoryCache.get();
        return try factory.CreateWithSpatialAnchorAndProperties(spatialAnchor, propertySet);
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialEntity.GUID;
    pub const IID: Guid = ISpatialEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialEntity.SIGNATURE);
    var _ISpatialEntityFactoryCache: FactoryCache(ISpatialEntityFactory, RUNTIME_NAME) = .{};
};
pub const SpatialEntityAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEntity(self: *@This()) core.HResult!*SpatialEntity {
        const this: *ISpatialEntityAddedEventArgs = @ptrCast(self);
        return try this.getEntity();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialEntityAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialEntityAddedEventArgs.GUID;
    pub const IID: Guid = ISpatialEntityAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialEntityAddedEventArgs.SIGNATURE);
};
pub const SpatialEntityRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEntity(self: *@This()) core.HResult!*SpatialEntity {
        const this: *ISpatialEntityRemovedEventArgs = @ptrCast(self);
        return try this.getEntity();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialEntityRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialEntityRemovedEventArgs.GUID;
    pub const IID: Guid = ISpatialEntityRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialEntityRemovedEventArgs.SIGNATURE);
};
pub const SpatialEntityStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SaveAsync(self: *@This(), entity: *SpatialEntity) core.HResult!*IAsyncAction {
        const this: *ISpatialEntityStore = @ptrCast(self);
        return try this.SaveAsync(entity);
    }
    pub fn RemoveAsync(self: *@This(), entity: *SpatialEntity) core.HResult!*IAsyncAction {
        const this: *ISpatialEntityStore = @ptrCast(self);
        return try this.RemoveAsync(entity);
    }
    pub fn CreateEntityWatcher(self: *@This()) core.HResult!*SpatialEntityWatcher {
        const this: *ISpatialEntityStore = @ptrCast(self);
        return try this.CreateEntityWatcher();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IsSupported() core.HResult!bool {
        const factory = @This().ISpatialEntityStoreStaticsCache.get();
        return try factory.getIsSupported();
    }
    pub fn TryGet(session: *RemoteSystemSession) core.HResult!*SpatialEntityStore {
        const factory = @This().ISpatialEntityStoreStaticsCache.get();
        return try factory.TryGet(session);
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialEntityStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialEntityStore.GUID;
    pub const IID: Guid = ISpatialEntityStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialEntityStore.SIGNATURE);
    var _ISpatialEntityStoreStaticsCache: FactoryCache(ISpatialEntityStoreStatics, RUNTIME_NAME) = .{};
};
pub const SpatialEntityUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEntity(self: *@This()) core.HResult!*SpatialEntity {
        const this: *ISpatialEntityUpdatedEventArgs = @ptrCast(self);
        return try this.getEntity();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialEntityUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialEntityUpdatedEventArgs.GUID;
    pub const IID: Guid = ISpatialEntityUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialEntityUpdatedEventArgs.SIGNATURE);
};
pub const SpatialEntityWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SpatialEntityWatcherStatus {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(SpatialEntityWatcher,SpatialEntityAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(SpatialEntityWatcher,SpatialEntityUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(SpatialEntityWatcher,SpatialEntityRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(SpatialEntityWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *ISpatialEntityWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialEntityWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialEntityWatcher.GUID;
    pub const IID: Guid = ISpatialEntityWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialEntityWatcher.SIGNATURE);
};
pub const SpatialEntityWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const SpatialLocatability = enum(i32) {
    Unavailable = 0,
    OrientationOnly = 1,
    PositionalTrackingActivating = 2,
    PositionalTrackingActive = 3,
    PositionalTrackingInhibited = 4,
};
pub const SpatialLocation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialLocation = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        const this: *ISpatialLocation = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn getAbsoluteLinearVelocity(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialLocation = @ptrCast(self);
        return try this.getAbsoluteLinearVelocity();
    }
    pub fn getAbsoluteLinearAcceleration(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialLocation = @ptrCast(self);
        return try this.getAbsoluteLinearAcceleration();
    }
    pub fn getAbsoluteAngularVelocity(self: *@This()) core.HResult!Quaternion {
        const this: *ISpatialLocation = @ptrCast(self);
        return try this.getAbsoluteAngularVelocity();
    }
    pub fn getAbsoluteAngularAcceleration(self: *@This()) core.HResult!Quaternion {
        const this: *ISpatialLocation = @ptrCast(self);
        return try this.getAbsoluteAngularAcceleration();
    }
    pub fn getAbsoluteAngularVelocityAxisAngle(self: *@This()) core.HResult!Vector3 {
        var this: ?*ISpatialLocation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialLocation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAbsoluteAngularVelocityAxisAngle();
    }
    pub fn getAbsoluteAngularAccelerationAxisAngle(self: *@This()) core.HResult!Vector3 {
        var this: ?*ISpatialLocation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialLocation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAbsoluteAngularAccelerationAxisAngle();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialLocation.GUID;
    pub const IID: Guid = ISpatialLocation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialLocation.SIGNATURE);
};
pub const SpatialLocator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocatability(self: *@This()) core.HResult!SpatialLocatability {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.getLocatability();
    }
    pub fn addLocatabilityChanged(self: *@This(), handler: *TypedEventHandler(SpatialLocator,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.addLocatabilityChanged(handler);
    }
    pub fn removeLocatabilityChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.removeLocatabilityChanged(cookie);
    }
    pub fn addPositionalTrackingDeactivating(self: *@This(), handler: *TypedEventHandler(SpatialLocator,SpatialLocatorPositionalTrackingDeactivatingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.addPositionalTrackingDeactivating(handler);
    }
    pub fn removePositionalTrackingDeactivating(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.removePositionalTrackingDeactivating(cookie);
    }
    pub fn TryLocateAtTimestamp(self: *@This(), timestamp: *PerceptionTimestamp, coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialLocation {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.TryLocateAtTimestamp(timestamp, coordinateSystem);
    }
    pub fn CreateAttachedFrameOfReferenceAtCurrentHeading(self: *@This()) core.HResult!*SpatialLocatorAttachedFrameOfReference {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.CreateAttachedFrameOfReferenceAtCurrentHeading();
    }
    pub fn CreateAttachedFrameOfReferenceAtCurrentHeadingWithRelativePosition(self: *@This(), relativePosition: Vector3) core.HResult!*SpatialLocatorAttachedFrameOfReference {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.CreateAttachedFrameOfReferenceAtCurrentHeadingWithRelativePosition(relativePosition);
    }
    pub fn CreateAttachedFrameOfReferenceAtCurrentHeadingWithRelativePositionWithRelativeOrientation(self: *@This(), relativePosition: Vector3, relativeOrientation: Quaternion) core.HResult!*SpatialLocatorAttachedFrameOfReference {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.CreateAttachedFrameOfReferenceAtCurrentHeadingWithRelativePositionWithRelativeOrientation(relativePosition, relativeOrientation);
    }
    pub fn CreateAttachedFrameOfReferenceAtCurrentHeadingWithRelativePositionWithRelativeOrientationWithRelativeHeadingInRadians(self: *@This(), relativePosition: Vector3, relativeOrientation: Quaternion, relativeHeadingInRadians: f64) core.HResult!*SpatialLocatorAttachedFrameOfReference {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.CreateAttachedFrameOfReferenceAtCurrentHeadingWithRelativePositionWithRelativeOrientationWithRelativeHeadingInRadians(relativePosition, relativeOrientation, relativeHeadingInRadians);
    }
    pub fn CreateStationaryFrameOfReferenceAtCurrentLocation(self: *@This()) core.HResult!*SpatialStationaryFrameOfReference {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.CreateStationaryFrameOfReferenceAtCurrentLocation();
    }
    pub fn CreateStationaryFrameOfReferenceAtCurrentLocationWithRelativePosition(self: *@This(), relativePosition: Vector3) core.HResult!*SpatialStationaryFrameOfReference {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.CreateStationaryFrameOfReferenceAtCurrentLocationWithRelativePosition(relativePosition);
    }
    pub fn CreateStationaryFrameOfReferenceAtCurrentLocationWithRelativePositionWithRelativeOrientation(self: *@This(), relativePosition: Vector3, relativeOrientation: Quaternion) core.HResult!*SpatialStationaryFrameOfReference {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.CreateStationaryFrameOfReferenceAtCurrentLocationWithRelativePositionWithRelativeOrientation(relativePosition, relativeOrientation);
    }
    pub fn CreateStationaryFrameOfReferenceAtCurrentLocationWithRelativePositionWithRelativeOrientationWithRelativeHeadingInRadians(self: *@This(), relativePosition: Vector3, relativeOrientation: Quaternion, relativeHeadingInRadians: f64) core.HResult!*SpatialStationaryFrameOfReference {
        const this: *ISpatialLocator = @ptrCast(self);
        return try this.CreateStationaryFrameOfReferenceAtCurrentLocationWithRelativePositionWithRelativeOrientationWithRelativeHeadingInRadians(relativePosition, relativeOrientation, relativeHeadingInRadians);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*SpatialLocator {
        const factory = @This().ISpatialLocatorStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialLocator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialLocator.GUID;
    pub const IID: Guid = ISpatialLocator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialLocator.SIGNATURE);
    var _ISpatialLocatorStaticsCache: FactoryCache(ISpatialLocatorStatics, RUNTIME_NAME) = .{};
};
pub const SpatialLocatorAttachedFrameOfReference = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRelativePosition(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialLocatorAttachedFrameOfReference = @ptrCast(self);
        return try this.getRelativePosition();
    }
    pub fn putRelativePosition(self: *@This(), value: Vector3) core.HResult!void {
        const this: *ISpatialLocatorAttachedFrameOfReference = @ptrCast(self);
        return try this.putRelativePosition(value);
    }
    pub fn getRelativeOrientation(self: *@This()) core.HResult!Quaternion {
        const this: *ISpatialLocatorAttachedFrameOfReference = @ptrCast(self);
        return try this.getRelativeOrientation();
    }
    pub fn putRelativeOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const this: *ISpatialLocatorAttachedFrameOfReference = @ptrCast(self);
        return try this.putRelativeOrientation(value);
    }
    pub fn AdjustHeading(self: *@This(), headingOffsetInRadians: f64) core.HResult!void {
        const this: *ISpatialLocatorAttachedFrameOfReference = @ptrCast(self);
        return try this.AdjustHeading(headingOffsetInRadians);
    }
    pub fn GetStationaryCoordinateSystemAtTimestamp(self: *@This(), timestamp: *PerceptionTimestamp) core.HResult!*SpatialCoordinateSystem {
        const this: *ISpatialLocatorAttachedFrameOfReference = @ptrCast(self);
        return try this.GetStationaryCoordinateSystemAtTimestamp(timestamp);
    }
    pub fn TryGetRelativeHeadingAtTimestamp(self: *@This(), timestamp: *PerceptionTimestamp) core.HResult!*IReference(f64) {
        const this: *ISpatialLocatorAttachedFrameOfReference = @ptrCast(self);
        return try this.TryGetRelativeHeadingAtTimestamp(timestamp);
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialLocatorAttachedFrameOfReference.GUID;
    pub const IID: Guid = ISpatialLocatorAttachedFrameOfReference.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialLocatorAttachedFrameOfReference.SIGNATURE);
};
pub const SpatialLocatorPositionalTrackingDeactivatingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanceled(self: *@This()) core.HResult!bool {
        const this: *ISpatialLocatorPositionalTrackingDeactivatingEventArgs = @ptrCast(self);
        return try this.getCanceled();
    }
    pub fn putCanceled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISpatialLocatorPositionalTrackingDeactivatingEventArgs = @ptrCast(self);
        return try this.putCanceled(value);
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialLocatorPositionalTrackingDeactivatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialLocatorPositionalTrackingDeactivatingEventArgs.GUID;
    pub const IID: Guid = ISpatialLocatorPositionalTrackingDeactivatingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialLocatorPositionalTrackingDeactivatingEventArgs.SIGNATURE);
};
pub const SpatialLookDirectionRange = enum(i32) {
    ForwardOnly = 0,
    Omnidirectional = 1,
};
pub const SpatialMovementRange = enum(i32) {
    NoMovement = 0,
    Bounded = 1,
};
pub const SpatialPerceptionAccessStatus = enum(i32) {
    Unspecified = 0,
    Allowed = 1,
    DeniedByUser = 2,
    DeniedBySystem = 3,
};
pub const SpatialRay = extern struct {
    Origin: Vector3,
    Direction: Vector3,
};
pub const SpatialStageFrameOfReference = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        const this: *ISpatialStageFrameOfReference = @ptrCast(self);
        return try this.getCoordinateSystem();
    }
    pub fn getMovementRange(self: *@This()) core.HResult!SpatialMovementRange {
        const this: *ISpatialStageFrameOfReference = @ptrCast(self);
        return try this.getMovementRange();
    }
    pub fn getLookDirectionRange(self: *@This()) core.HResult!SpatialLookDirectionRange {
        const this: *ISpatialStageFrameOfReference = @ptrCast(self);
        return try this.getLookDirectionRange();
    }
    pub fn GetCoordinateSystemAtCurrentLocation(self: *@This(), locator: *SpatialLocator) core.HResult!*SpatialCoordinateSystem {
        const this: *ISpatialStageFrameOfReference = @ptrCast(self);
        return try this.GetCoordinateSystemAtCurrentLocation(locator);
    }
    pub fn TryGetMovementBounds(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult![*]Vector3 {
        const this: *ISpatialStageFrameOfReference = @ptrCast(self);
        return try this.TryGetMovementBounds(coordinateSystem);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Current() core.HResult!*SpatialStageFrameOfReference {
        const factory = @This().ISpatialStageFrameOfReferenceStaticsCache.get();
        return try factory.getCurrent();
    }
    pub fn add_CurrentChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().ISpatialStageFrameOfReferenceStaticsCache.get();
        return try factory.addCurrentChanged(handler);
    }
    pub fn remove_CurrentChanged(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().ISpatialStageFrameOfReferenceStaticsCache.get();
        return try factory.removeCurrentChanged(cookie);
    }
    pub fn RequestNewStageAsync() core.HResult!*IAsyncOperation(SpatialStageFrameOfReference) {
        const factory = @This().ISpatialStageFrameOfReferenceStaticsCache.get();
        return try factory.RequestNewStageAsync();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialStageFrameOfReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialStageFrameOfReference.GUID;
    pub const IID: Guid = ISpatialStageFrameOfReference.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialStageFrameOfReference.SIGNATURE);
    var _ISpatialStageFrameOfReferenceStaticsCache: FactoryCache(ISpatialStageFrameOfReferenceStatics, RUNTIME_NAME) = .{};
};
pub const SpatialStationaryFrameOfReference = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        const this: *ISpatialStationaryFrameOfReference = @ptrCast(self);
        return try this.getCoordinateSystem();
    }
    pub const NAME: []const u8 = "Windows.Perception.Spatial.SpatialStationaryFrameOfReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialStationaryFrameOfReference.GUID;
    pub const IID: Guid = ISpatialStationaryFrameOfReference.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialStationaryFrameOfReference.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const Plane = @import("../Foundation/Numerics.zig").Plane;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IReference = @import("../Foundation.zig").IReference;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const FactoryCache = @import("../core.zig").FactoryCache;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Vector3 = @import("../Foundation/Numerics.zig").Vector3;
const Matrix4x4 = @import("../Foundation/Numerics.zig").Matrix4x4;
const Quaternion = @import("../Foundation/Numerics.zig").Quaternion;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const PerceptionTimestamp = @import("../Perception.zig").PerceptionTimestamp;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const RemoteSystemSession = @import("../System/RemoteSystems.zig").RemoteSystemSession;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
pub const Preview = @import("./Spatial/Preview.zig");
pub const Surfaces = @import("./Spatial/Surfaces.zig");
