pub const EyesPose = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCalibrationValid(self: *@This()) core.HResult!bool {
        const this: *IEyesPose = @ptrCast(self);
        return try this.getIsCalibrationValid();
    }
    pub fn getGaze(self: *@This()) core.HResult!*IReference(SpatialRay) {
        const this: *IEyesPose = @ptrCast(self);
        return try this.getGaze();
    }
    pub fn getUpdateTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        const this: *IEyesPose = @ptrCast(self);
        return try this.getUpdateTimestamp();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().IEyesPoseStaticsCache.get();
        return try factory.IsSupported();
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(GazeInputAccessStatus) {
        const factory = @This().IEyesPoseStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub const NAME: []const u8 = "Windows.Perception.People.EyesPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEyesPose.GUID;
    pub const IID: Guid = IEyesPose.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEyesPose.SIGNATURE);
    var _IEyesPoseStaticsCache: FactoryCache(IEyesPoseStatics, RUNTIME_NAME) = .{};
};
pub const HandJointKind = enum(i32) {
    Palm = 0,
    Wrist = 1,
    ThumbMetacarpal = 2,
    ThumbProximal = 3,
    ThumbDistal = 4,
    ThumbTip = 5,
    IndexMetacarpal = 6,
    IndexProximal = 7,
    IndexIntermediate = 8,
    IndexDistal = 9,
    IndexTip = 10,
    MiddleMetacarpal = 11,
    MiddleProximal = 12,
    MiddleIntermediate = 13,
    MiddleDistal = 14,
    MiddleTip = 15,
    RingMetacarpal = 16,
    RingProximal = 17,
    RingIntermediate = 18,
    RingDistal = 19,
    RingTip = 20,
    LittleMetacarpal = 21,
    LittleProximal = 22,
    LittleIntermediate = 23,
    LittleDistal = 24,
    LittleTip = 25,
};
pub const HandMeshObserver = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*SpatialInteractionSource {
        const this: *IHandMeshObserver = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getTriangleIndexCount(self: *@This()) core.HResult!u32 {
        const this: *IHandMeshObserver = @ptrCast(self);
        return try this.getTriangleIndexCount();
    }
    pub fn getVertexCount(self: *@This()) core.HResult!u32 {
        const this: *IHandMeshObserver = @ptrCast(self);
        return try this.getVertexCount();
    }
    pub fn GetTriangleIndices(self: *@This(), indices: [*]u16) core.HResult!void {
        const this: *IHandMeshObserver = @ptrCast(self);
        return try this.GetTriangleIndices(indices);
    }
    pub fn GetVertexStateForPose(self: *@This(), handPose: *HandPose) core.HResult!*HandMeshVertexState {
        const this: *IHandMeshObserver = @ptrCast(self);
        return try this.GetVertexStateForPose(handPose);
    }
    pub fn getNeutralPose(self: *@This()) core.HResult!*HandPose {
        const this: *IHandMeshObserver = @ptrCast(self);
        return try this.getNeutralPose();
    }
    pub fn getNeutralPoseVersion(self: *@This()) core.HResult!i32 {
        const this: *IHandMeshObserver = @ptrCast(self);
        return try this.getNeutralPoseVersion();
    }
    pub fn getModelId(self: *@This()) core.HResult!i32 {
        const this: *IHandMeshObserver = @ptrCast(self);
        return try this.getModelId();
    }
    pub const NAME: []const u8 = "Windows.Perception.People.HandMeshObserver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHandMeshObserver.GUID;
    pub const IID: Guid = IHandMeshObserver.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHandMeshObserver.SIGNATURE);
};
pub const HandMeshVertex = extern struct {
    Position: Vector3,
    Normal: Vector3,
};
pub const HandMeshVertexState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        const this: *IHandMeshVertexState = @ptrCast(self);
        return try this.getCoordinateSystem();
    }
    pub fn GetVertices(self: *@This(), vertices: [*]HandMeshVertex) core.HResult!void {
        const this: *IHandMeshVertexState = @ptrCast(self);
        return try this.GetVertices(vertices);
    }
    pub fn getUpdateTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        const this: *IHandMeshVertexState = @ptrCast(self);
        return try this.getUpdateTimestamp();
    }
    pub const NAME: []const u8 = "Windows.Perception.People.HandMeshVertexState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHandMeshVertexState.GUID;
    pub const IID: Guid = IHandMeshVertexState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHandMeshVertexState.SIGNATURE);
};
pub const HandPose = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TryGetJoint(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, joint: HandJointKind, jointPose: JointPose) core.HResult!bool {
        const this: *IHandPose = @ptrCast(self);
        return try this.TryGetJoint(coordinateSystem, joint, jointPose);
    }
    pub fn TryGetJoints(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, joints: [*]HandJointKind, jointPoses: [*]JointPose) core.HResult!bool {
        const this: *IHandPose = @ptrCast(self);
        return try this.TryGetJoints(coordinateSystem, joints, jointPoses);
    }
    pub fn GetRelativeJoint(self: *@This(), joint: HandJointKind, referenceJoint: HandJointKind) core.HResult!JointPose {
        const this: *IHandPose = @ptrCast(self);
        return try this.GetRelativeJoint(joint, referenceJoint);
    }
    pub fn GetRelativeJoints(self: *@This(), joints: [*]HandJointKind, referenceJoints: [*]HandJointKind, jointPoses: [*]JointPose) core.HResult!void {
        const this: *IHandPose = @ptrCast(self);
        return try this.GetRelativeJoints(joints, referenceJoints, jointPoses);
    }
    pub const NAME: []const u8 = "Windows.Perception.People.HandPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHandPose.GUID;
    pub const IID: Guid = IHandPose.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHandPose.SIGNATURE);
};
pub const HeadPose = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IHeadPose = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getForwardDirection(self: *@This()) core.HResult!Vector3 {
        const this: *IHeadPose = @ptrCast(self);
        return try this.getForwardDirection();
    }
    pub fn getUpDirection(self: *@This()) core.HResult!Vector3 {
        const this: *IHeadPose = @ptrCast(self);
        return try this.getUpDirection();
    }
    pub const NAME: []const u8 = "Windows.Perception.People.HeadPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHeadPose.GUID;
    pub const IID: Guid = IHeadPose.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHeadPose.SIGNATURE);
};
pub const IEyesPose = extern struct {
    vtable: *const VTable,
    pub fn getIsCalibrationValid(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCalibrationValid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGaze(self: *@This()) core.HResult!*IReference(SpatialRay) {
        var _r: *IReference(SpatialRay) = undefined;
        const _c = self.vtable.get_Gaze(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        var _r: *PerceptionTimestamp = undefined;
        const _c = self.vtable.get_UpdateTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.People.IEyesPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "682a9b23-8a1e-5b86-a060-906ffacb62a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCalibrationValid: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Gaze: *const fn(self: *anyopaque, _r: **IReference(SpatialRay)) callconv(.winapi) HRESULT,
        get_UpdateTimestamp: *const fn(self: *anyopaque, _r: **PerceptionTimestamp) callconv(.winapi) HRESULT,
    };
};
pub const IEyesPoseStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(GazeInputAccessStatus) {
        var _r: *IAsyncOperation(GazeInputAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.People.IEyesPoseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1cff7413-b21f-54c0-80c1-e60d994ca58c";
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
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GazeInputAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IHandMeshObserver = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*SpatialInteractionSource {
        var _r: *SpatialInteractionSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTriangleIndexCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TriangleIndexCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVertexCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VertexCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTriangleIndices(self: *@This(), indices: [*]u16) core.HResult!void {
        const _c = self.vtable.GetTriangleIndices(@ptrCast(self), indices);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetVertexStateForPose(self: *@This(), handPose: *HandPose) core.HResult!*HandMeshVertexState {
        var _r: *HandMeshVertexState = undefined;
        const _c = self.vtable.GetVertexStateForPose(@ptrCast(self), handPose, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeutralPose(self: *@This()) core.HResult!*HandPose {
        var _r: *HandPose = undefined;
        const _c = self.vtable.get_NeutralPose(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeutralPoseVersion(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NeutralPoseVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.People.IHandMeshObserver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85ae30cb-6fc3-55c4-a7b4-29e33896ca69";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **SpatialInteractionSource) callconv(.winapi) HRESULT,
        get_TriangleIndexCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_VertexCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetTriangleIndices: *const fn(self: *anyopaque, indices: [*]u16) callconv(.winapi) HRESULT,
        GetVertexStateForPose: *const fn(self: *anyopaque, handPose: *HandPose, _r: **HandMeshVertexState) callconv(.winapi) HRESULT,
        get_NeutralPose: *const fn(self: *anyopaque, _r: **HandPose) callconv(.winapi) HRESULT,
        get_NeutralPoseVersion: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ModelId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IHandMeshVertexState = extern struct {
    vtable: *const VTable,
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.get_CoordinateSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVertices(self: *@This(), vertices: [*]HandMeshVertex) core.HResult!void {
        const _c = self.vtable.GetVertices(@ptrCast(self), vertices);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUpdateTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        var _r: *PerceptionTimestamp = undefined;
        const _c = self.vtable.get_UpdateTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.People.IHandMeshVertexState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "046c5fef-1d8b-55de-ab2c-1cd424886d8f";
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
        GetVertices: *const fn(self: *anyopaque, vertices: [*]HandMeshVertex) callconv(.winapi) HRESULT,
        get_UpdateTimestamp: *const fn(self: *anyopaque, _r: **PerceptionTimestamp) callconv(.winapi) HRESULT,
    };
};
pub const IHandPose = extern struct {
    vtable: *const VTable,
    pub fn TryGetJoint(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, joint: HandJointKind, jointPose: JointPose) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetJoint(@ptrCast(self), coordinateSystem, joint, jointPose, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetJoints(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, joints: [*]HandJointKind, jointPoses: [*]JointPose) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetJoints(@ptrCast(self), coordinateSystem, joints, jointPoses, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRelativeJoint(self: *@This(), joint: HandJointKind, referenceJoint: HandJointKind) core.HResult!JointPose {
        var _r: JointPose = undefined;
        const _c = self.vtable.GetRelativeJoint(@ptrCast(self), joint, referenceJoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRelativeJoints(self: *@This(), joints: [*]HandJointKind, referenceJoints: [*]HandJointKind, jointPoses: [*]JointPose) core.HResult!void {
        const _c = self.vtable.GetRelativeJoints(@ptrCast(self), joints, referenceJoints, jointPoses);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Perception.People.IHandPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d98e79a-bb08-5d09-91de-df0dd3fae46c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetJoint: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, joint: HandJointKind, jointPose: JointPose, _r: *bool) callconv(.winapi) HRESULT,
        TryGetJoints: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, joints: [*]HandJointKind, jointPoses: [*]JointPose, _r: *bool) callconv(.winapi) HRESULT,
        GetRelativeJoint: *const fn(self: *anyopaque, joint: HandJointKind, referenceJoint: HandJointKind, _r: *JointPose) callconv(.winapi) HRESULT,
        GetRelativeJoints: *const fn(self: *anyopaque, joints: [*]HandJointKind, referenceJoints: [*]HandJointKind, jointPoses: [*]JointPose) callconv(.winapi) HRESULT,
    };
};
pub const IHeadPose = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForwardDirection(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_ForwardDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpDirection(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_UpDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Perception.People.IHeadPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f5ac5a5-49db-379f-9429-32a2faf34fa6";
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
        get_ForwardDirection: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_UpDirection: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
    };
};
pub const JointPose = extern struct {
    Orientation: Quaternion,
    Position: Vector3,
    Radius: f32,
    Accuracy: JointPoseAccuracy,
};
pub const JointPoseAccuracy = enum(i32) {
    High = 0,
    Approximate = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Vector3 = @import("../Foundation/Numerics.zig").Vector3;
const IReference = @import("../Foundation.zig").IReference;
const SpatialCoordinateSystem = @import("./Spatial.zig").SpatialCoordinateSystem;
const Quaternion = @import("../Foundation/Numerics.zig").Quaternion;
const SpatialRay = @import("./Spatial.zig").SpatialRay;
const PerceptionTimestamp = @import("../Perception.zig").PerceptionTimestamp;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const SpatialInteractionSource = @import("../UI/Input/Spatial.zig").SpatialInteractionSource;
const GazeInputAccessStatus = @import("../UI/Input.zig").GazeInputAccessStatus;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
