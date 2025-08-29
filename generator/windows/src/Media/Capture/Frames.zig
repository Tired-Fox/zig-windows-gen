pub const AudioMediaFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        const this: *IAudioMediaFrame = @ptrCast(self);
        return try this.getFrameReference();
    }
    pub fn getAudioEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        const this: *IAudioMediaFrame = @ptrCast(self);
        return try this.getAudioEncodingProperties();
    }
    pub fn GetAudioFrame(self: *@This()) core.HResult!*AudioFrame {
        const this: *IAudioMediaFrame = @ptrCast(self);
        return try this.GetAudioFrame();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.AudioMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioMediaFrame.GUID;
    pub const IID: Guid = IAudioMediaFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioMediaFrame.SIGNATURE);
};
pub const BufferMediaFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        const this: *IBufferMediaFrame = @ptrCast(self);
        return try this.getFrameReference();
    }
    pub fn getBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IBufferMediaFrame = @ptrCast(self);
        return try this.getBuffer();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.BufferMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBufferMediaFrame.GUID;
    pub const IID: Guid = IBufferMediaFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBufferMediaFrame.SIGNATURE);
};
pub const DepthMediaFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        const this: *IDepthMediaFrame = @ptrCast(self);
        return try this.getFrameReference();
    }
    pub fn getVideoMediaFrame(self: *@This()) core.HResult!*VideoMediaFrame {
        const this: *IDepthMediaFrame = @ptrCast(self);
        return try this.getVideoMediaFrame();
    }
    pub fn getDepthFormat(self: *@This()) core.HResult!*DepthMediaFrameFormat {
        const this: *IDepthMediaFrame = @ptrCast(self);
        return try this.getDepthFormat();
    }
    pub fn TryCreateCoordinateMapper(self: *@This(), cameraIntrinsics: *CameraIntrinsics, coordinateSystem: *SpatialCoordinateSystem) core.HResult!*DepthCorrelatedCoordinateMapper {
        const this: *IDepthMediaFrame = @ptrCast(self);
        return try this.TryCreateCoordinateMapper(cameraIntrinsics, coordinateSystem);
    }
    pub fn getMaxReliableDepth(self: *@This()) core.HResult!u32 {
        var this: ?*IDepthMediaFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDepthMediaFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxReliableDepth();
    }
    pub fn getMinReliableDepth(self: *@This()) core.HResult!u32 {
        var this: ?*IDepthMediaFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDepthMediaFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinReliableDepth();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.DepthMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDepthMediaFrame.GUID;
    pub const IID: Guid = IDepthMediaFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDepthMediaFrame.SIGNATURE);
};
pub const DepthMediaFrameFormat = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoFormat(self: *@This()) core.HResult!*VideoMediaFrameFormat {
        const this: *IDepthMediaFrameFormat = @ptrCast(self);
        return try this.getVideoFormat();
    }
    pub fn getDepthScaleInMeters(self: *@This()) core.HResult!f64 {
        const this: *IDepthMediaFrameFormat = @ptrCast(self);
        return try this.getDepthScaleInMeters();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.DepthMediaFrameFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDepthMediaFrameFormat.GUID;
    pub const IID: Guid = IDepthMediaFrameFormat.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDepthMediaFrameFormat.SIGNATURE);
};
pub const IAudioMediaFrame = extern struct {
    vtable: *const VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        var _r: *MediaFrameReference = undefined;
        const _c = self.vtable.get_FrameReference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.get_AudioEncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAudioFrame(self: *@This()) core.HResult!*AudioFrame {
        var _r: *AudioFrame = undefined;
        const _c = self.vtable.GetAudioFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IAudioMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3a9feff-8021-441b-9a46-e7f0137b7981";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameReference: *const fn(self: *anyopaque, _r: **MediaFrameReference) callconv(.winapi) HRESULT,
        get_AudioEncodingProperties: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        GetAudioFrame: *const fn(self: *anyopaque, _r: **AudioFrame) callconv(.winapi) HRESULT,
    };
};
pub const IBufferMediaFrame = extern struct {
    vtable: *const VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        var _r: *MediaFrameReference = undefined;
        const _c = self.vtable.get_FrameReference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Buffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IBufferMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5b153c7-9b84-4062-b79c-a365b2596854";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameReference: *const fn(self: *anyopaque, _r: **MediaFrameReference) callconv(.winapi) HRESULT,
        get_Buffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IDepthMediaFrame = extern struct {
    vtable: *const VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        var _r: *MediaFrameReference = undefined;
        const _c = self.vtable.get_FrameReference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoMediaFrame(self: *@This()) core.HResult!*VideoMediaFrame {
        var _r: *VideoMediaFrame = undefined;
        const _c = self.vtable.get_VideoMediaFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDepthFormat(self: *@This()) core.HResult!*DepthMediaFrameFormat {
        var _r: *DepthMediaFrameFormat = undefined;
        const _c = self.vtable.get_DepthFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateCoordinateMapper(self: *@This(), cameraIntrinsics: *CameraIntrinsics, coordinateSystem: *SpatialCoordinateSystem) core.HResult!*DepthCorrelatedCoordinateMapper {
        var _r: *DepthCorrelatedCoordinateMapper = undefined;
        const _c = self.vtable.TryCreateCoordinateMapper(@ptrCast(self), cameraIntrinsics, coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IDepthMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47135e4f-8549-45c0-925b-80d35efdb10a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameReference: *const fn(self: *anyopaque, _r: **MediaFrameReference) callconv(.winapi) HRESULT,
        get_VideoMediaFrame: *const fn(self: *anyopaque, _r: **VideoMediaFrame) callconv(.winapi) HRESULT,
        get_DepthFormat: *const fn(self: *anyopaque, _r: **DepthMediaFrameFormat) callconv(.winapi) HRESULT,
        TryCreateCoordinateMapper: *const fn(self: *anyopaque, cameraIntrinsics: *CameraIntrinsics, coordinateSystem: *SpatialCoordinateSystem, _r: **DepthCorrelatedCoordinateMapper) callconv(.winapi) HRESULT,
    };
};
pub const IDepthMediaFrame2 = extern struct {
    vtable: *const VTable,
    pub fn getMaxReliableDepth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxReliableDepth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinReliableDepth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinReliableDepth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IDepthMediaFrame2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6cca473d-c4a4-4176-b0cd-33eae3b35aa3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxReliableDepth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MinReliableDepth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IDepthMediaFrameFormat = extern struct {
    vtable: *const VTable,
    pub fn getVideoFormat(self: *@This()) core.HResult!*VideoMediaFrameFormat {
        var _r: *VideoMediaFrameFormat = undefined;
        const _c = self.vtable.get_VideoFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDepthScaleInMeters(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DepthScaleInMeters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IDepthMediaFrameFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c312cf40-d729-453e-8780-2e04f140d28e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoFormat: *const fn(self: *anyopaque, _r: **VideoMediaFrameFormat) callconv(.winapi) HRESULT,
        get_DepthScaleInMeters: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IInfraredMediaFrame = extern struct {
    vtable: *const VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        var _r: *MediaFrameReference = undefined;
        const _c = self.vtable.get_FrameReference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoMediaFrame(self: *@This()) core.HResult!*VideoMediaFrame {
        var _r: *VideoMediaFrame = undefined;
        const _c = self.vtable.get_VideoMediaFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsIlluminated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIlluminated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IInfraredMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fd13503-004b-4f0e-91ac-465299b41658";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameReference: *const fn(self: *anyopaque, _r: **MediaFrameReference) callconv(.winapi) HRESULT,
        get_VideoMediaFrame: *const fn(self: *anyopaque, _r: **VideoMediaFrame) callconv(.winapi) HRESULT,
        get_IsIlluminated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameArrivedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0b430add-a490-4435-ada1-9affd55239f7";
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
pub const IMediaFrameFormat = extern struct {
    vtable: *const VTable,
    pub fn getMajorType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MajorType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subtype(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameRate(self: *@This()) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.get_FrameRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormat(self: *@This()) core.HResult!*VideoMediaFrameFormat {
        var _r: *VideoMediaFrameFormat = undefined;
        const _c = self.vtable.get_VideoFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71902b4e-b279-4a97-a9db-bd5a2fb78f39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MajorType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Subtype: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FrameRate: *const fn(self: *anyopaque, _r: **MediaRatio) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
        get_VideoFormat: *const fn(self: *anyopaque, _r: **VideoMediaFrameFormat) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameFormat2 = extern struct {
    vtable: *const VTable,
    pub fn getAudioEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.get_AudioEncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameFormat2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63856340-5e87-4c10-86d1-6df097a6c6a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioEncodingProperties: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameReader = extern struct {
    vtable: *const VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(MediaFrameReader,MediaFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameArrived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryAcquireLatestFrame(self: *@This()) core.HResult!*MediaFrameReference {
        var _r: *MediaFrameReference = undefined;
        const _c = self.vtable.TryAcquireLatestFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(MediaFrameReaderStartStatus) {
        var _r: *IAsyncOperation(MediaFrameReaderStartStatus) = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4c94395-2028-48ed-90b0-d1c1b162e24c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_FrameArrived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaFrameReader,MediaFrameArrivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        TryAcquireLatestFrame: *const fn(self: *anyopaque, _r: **MediaFrameReference) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MediaFrameReaderStartStatus)) callconv(.winapi) HRESULT,
        StopAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameReader2 = extern struct {
    vtable: *const VTable,
    pub fn putAcquisitionMode(self: *@This(), value: MediaFrameReaderAcquisitionMode) core.HResult!void {
        const _c = self.vtable.put_AcquisitionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAcquisitionMode(self: *@This()) core.HResult!MediaFrameReaderAcquisitionMode {
        var _r: MediaFrameReaderAcquisitionMode = undefined;
        const _c = self.vtable.get_AcquisitionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameReader2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "871127b3-8531-4050-87cc-a13733cf3e9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_AcquisitionMode: *const fn(self: *anyopaque, value: MediaFrameReaderAcquisitionMode) callconv(.winapi) HRESULT,
        get_AcquisitionMode: *const fn(self: *anyopaque, _r: *MediaFrameReaderAcquisitionMode) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameReference = extern struct {
    vtable: *const VTable,
    pub fn getSourceKind(self: *@This()) core.HResult!MediaFrameSourceKind {
        var _r: MediaFrameSourceKind = undefined;
        const _c = self.vtable.get_SourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormat(self: *@This()) core.HResult!*MediaFrameFormat {
        var _r: *MediaFrameFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemRelativeTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_SystemRelativeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBufferMediaFrame(self: *@This()) core.HResult!*BufferMediaFrame {
        var _r: *BufferMediaFrame = undefined;
        const _c = self.vtable.get_BufferMediaFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoMediaFrame(self: *@This()) core.HResult!*VideoMediaFrame {
        var _r: *VideoMediaFrame = undefined;
        const _c = self.vtable.get_VideoMediaFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.get_CoordinateSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6b88641-f0dc-4044-8dc9-961cedd05bad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceKind: *const fn(self: *anyopaque, _r: *MediaFrameSourceKind) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: **MediaFrameFormat) callconv(.winapi) HRESULT,
        get_SystemRelativeTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
        get_BufferMediaFrame: *const fn(self: *anyopaque, _r: **BufferMediaFrame) callconv(.winapi) HRESULT,
        get_VideoMediaFrame: *const fn(self: *anyopaque, _r: **VideoMediaFrame) callconv(.winapi) HRESULT,
        get_CoordinateSystem: *const fn(self: *anyopaque, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameReference2 = extern struct {
    vtable: *const VTable,
    pub fn getAudioMediaFrame(self: *@This()) core.HResult!*AudioMediaFrame {
        var _r: *AudioMediaFrame = undefined;
        const _c = self.vtable.get_AudioMediaFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameReference2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ddbc3ecc-d5b2-49ef-836a-947d989b80c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioMediaFrame: *const fn(self: *anyopaque, _r: **AudioMediaFrame) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSource = extern struct {
    vtable: *const VTable,
    pub fn getInfo(self: *@This()) core.HResult!*MediaFrameSourceInfo {
        var _r: *MediaFrameSourceInfo = undefined;
        const _c = self.vtable.get_Info(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getController(self: *@This()) core.HResult!*MediaFrameSourceController {
        var _r: *MediaFrameSourceController = undefined;
        const _c = self.vtable.get_Controller(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedFormats(self: *@This()) core.HResult!*IVectorView(MediaFrameFormat) {
        var _r: *IVectorView(MediaFrameFormat) = undefined;
        const _c = self.vtable.get_SupportedFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentFormat(self: *@This()) core.HResult!*MediaFrameFormat {
        var _r: *MediaFrameFormat = undefined;
        const _c = self.vtable.get_CurrentFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetFormatAsync(self: *@This(), format: *MediaFrameFormat) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetFormatAsync(@ptrCast(self), format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addFormatChanged(self: *@This(), handler: *TypedEventHandler(MediaFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FormatChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFormatChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FormatChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryGetCameraIntrinsics(self: *@This(), format: *MediaFrameFormat) core.HResult!*CameraIntrinsics {
        var _r: *CameraIntrinsics = undefined;
        const _c = self.vtable.TryGetCameraIntrinsics(@ptrCast(self), format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6782953-90db-46a8-8add-2aa884a8d253";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Info: *const fn(self: *anyopaque, _r: **MediaFrameSourceInfo) callconv(.winapi) HRESULT,
        get_Controller: *const fn(self: *anyopaque, _r: **MediaFrameSourceController) callconv(.winapi) HRESULT,
        get_SupportedFormats: *const fn(self: *anyopaque, _r: **IVectorView(MediaFrameFormat)) callconv(.winapi) HRESULT,
        get_CurrentFormat: *const fn(self: *anyopaque, _r: **MediaFrameFormat) callconv(.winapi) HRESULT,
        SetFormatAsync: *const fn(self: *anyopaque, format: *MediaFrameFormat, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_FormatChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FormatChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        TryGetCameraIntrinsics: *const fn(self: *anyopaque, format: *MediaFrameFormat, _r: **CameraIntrinsics) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceController = extern struct {
    vtable: *const VTable,
    pub fn GetPropertyAsync(self: *@This(), propertyId: HSTRING) core.HResult!*IAsyncOperation(MediaFrameSourceGetPropertyResult) {
        var _r: *IAsyncOperation(MediaFrameSourceGetPropertyResult) = undefined;
        const _c = self.vtable.GetPropertyAsync(@ptrCast(self), propertyId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPropertyAsync(self: *@This(), propertyId: HSTRING, propertyValue: *IInspectable) core.HResult!*IAsyncOperation(MediaFrameSourceSetPropertyStatus) {
        var _r: *IAsyncOperation(MediaFrameSourceSetPropertyStatus) = undefined;
        const _c = self.vtable.SetPropertyAsync(@ptrCast(self), propertyId, propertyValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoDeviceController(self: *@This()) core.HResult!*VideoDeviceController {
        var _r: *VideoDeviceController = undefined;
        const _c = self.vtable.get_VideoDeviceController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d076635-316d-4b8f-b7b6-eeb04a8c6525";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPropertyAsync: *const fn(self: *anyopaque, propertyId: HSTRING, _r: **IAsyncOperation(MediaFrameSourceGetPropertyResult)) callconv(.winapi) HRESULT,
        SetPropertyAsync: *const fn(self: *anyopaque, propertyId: HSTRING, propertyValue: *IInspectable, _r: **IAsyncOperation(MediaFrameSourceSetPropertyStatus)) callconv(.winapi) HRESULT,
        get_VideoDeviceController: *const fn(self: *anyopaque, _r: **VideoDeviceController) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceController2 = extern struct {
    vtable: *const VTable,
    pub fn GetPropertyByExtendedIdAsync(self: *@This(), extendedPropertyId: [*]u8, maxPropertyValueSize: *IReference(u32)) core.HResult!*IAsyncOperation(MediaFrameSourceGetPropertyResult) {
        var _r: *IAsyncOperation(MediaFrameSourceGetPropertyResult) = undefined;
        const _c = self.vtable.GetPropertyByExtendedIdAsync(@ptrCast(self), extendedPropertyId, maxPropertyValueSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPropertyByExtendedIdAsync(self: *@This(), extendedPropertyId: [*]u8, propertyValue: [*]u8) core.HResult!*IAsyncOperation(MediaFrameSourceSetPropertyStatus) {
        var _r: *IAsyncOperation(MediaFrameSourceSetPropertyStatus) = undefined;
        const _c = self.vtable.SetPropertyByExtendedIdAsync(@ptrCast(self), extendedPropertyId, propertyValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceController2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efc49fd4-fcf2-4a03-b4e4-ac9628739bee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPropertyByExtendedIdAsync: *const fn(self: *anyopaque, extendedPropertyId: [*]u8, maxPropertyValueSize: *IReference(u32), _r: **IAsyncOperation(MediaFrameSourceGetPropertyResult)) callconv(.winapi) HRESULT,
        SetPropertyByExtendedIdAsync: *const fn(self: *anyopaque, extendedPropertyId: [*]u8, propertyValue: [*]u8, _r: **IAsyncOperation(MediaFrameSourceSetPropertyStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceController3 = extern struct {
    vtable: *const VTable,
    pub fn getAudioDeviceController(self: *@This()) core.HResult!*AudioDeviceController {
        var _r: *AudioDeviceController = undefined;
        const _c = self.vtable.get_AudioDeviceController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceController3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f0cf815-2464-4651-b1e8-4a82dbdb54de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioDeviceController: *const fn(self: *anyopaque, _r: **AudioDeviceController) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceGetPropertyResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!MediaFrameSourceGetPropertyStatus {
        var _r: MediaFrameSourceGetPropertyStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceGetPropertyResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "088616c2-3a64-4bd5-bd2b-e7c898d2f37a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MediaFrameSourceGetPropertyStatus) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceGroup = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceInfos(self: *@This()) core.HResult!*IVectorView(MediaFrameSourceInfo) {
        var _r: *IVectorView(MediaFrameSourceInfo) = undefined;
        const _c = self.vtable.get_SourceInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f605b87-4832-4b5f-ae3d-412faab37d34";
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
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SourceInfos: *const fn(self: *anyopaque, _r: **IVectorView(MediaFrameSourceInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceGroupStatics = extern struct {
    vtable: *const VTable,
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(MediaFrameSourceGroup)) {
        var _r: *IAsyncOperation(IVectorView(MediaFrameSourceGroup)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(MediaFrameSourceGroup) {
        var _r: *IAsyncOperation(MediaFrameSourceGroup) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceGroupStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c48bfc5-436f-4508-94cf-d5d8b7326445";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(MediaFrameSourceGroup))) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(MediaFrameSourceGroup)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceInfo = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaStreamType(self: *@This()) core.HResult!MediaStreamType {
        var _r: MediaStreamType = undefined;
        const _c = self.vtable.get_MediaStreamType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceKind(self: *@This()) core.HResult!MediaFrameSourceKind {
        var _r: MediaFrameSourceKind = undefined;
        const _c = self.vtable.get_SourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceGroup(self: *@This()) core.HResult!*MediaFrameSourceGroup {
        var _r: *MediaFrameSourceGroup = undefined;
        const _c = self.vtable.get_SourceGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        var _r: *SpatialCoordinateSystem = undefined;
        const _c = self.vtable.get_CoordinateSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87bdc9cd-4601-408f-91cf-038318cd0af3";
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
        get_MediaStreamType: *const fn(self: *anyopaque, _r: *MediaStreamType) callconv(.winapi) HRESULT,
        get_SourceKind: *const fn(self: *anyopaque, _r: *MediaFrameSourceKind) callconv(.winapi) HRESULT,
        get_SourceGroup: *const fn(self: *anyopaque, _r: **MediaFrameSourceGroup) callconv(.winapi) HRESULT,
        get_DeviceInformation: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
        get_CoordinateSystem: *const fn(self: *anyopaque, _r: **SpatialCoordinateSystem) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getProfileId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProfileId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoProfileMediaDescription(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfileMediaDescription) {
        var _r: *IVectorView(MediaCaptureVideoProfileMediaDescription) = undefined;
        const _c = self.vtable.get_VideoProfileMediaDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "195a7855-6457-42c6-a769-19b65bd32e6e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProfileId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoProfileMediaDescription: *const fn(self: *anyopaque, _r: **IVectorView(MediaCaptureVideoProfileMediaDescription)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceInfo3 = extern struct {
    vtable: *const VTable,
    pub fn GetRelativePanel(self: *@This(), displayRegion: *DisplayRegion) core.HResult!Panel {
        var _r: Panel = undefined;
        const _c = self.vtable.GetRelativePanel(@ptrCast(self), displayRegion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceInfo3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca824ab6-66ea-5885-a2b6-26c0eeec3c7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetRelativePanel: *const fn(self: *anyopaque, displayRegion: *DisplayRegion, _r: *Panel) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrameSourceInfo4 = extern struct {
    vtable: *const VTable,
    pub fn getIsShareable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsShareable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMediaFrameSourceInfo4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4817d721-85eb-470c-8f37-43ca5498e41d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsShareable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMultiSourceMediaFrameArrivedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMultiSourceMediaFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63115e01-cf51-48fd-aab0-6d693eb48127";
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
pub const IMultiSourceMediaFrameReader = extern struct {
    vtable: *const VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(MultiSourceMediaFrameReader,MultiSourceMediaFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameArrived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryAcquireLatestFrame(self: *@This()) core.HResult!*MultiSourceMediaFrameReference {
        var _r: *MultiSourceMediaFrameReference = undefined;
        const _c = self.vtable.TryAcquireLatestFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(MultiSourceMediaFrameReaderStartStatus) {
        var _r: *IAsyncOperation(MultiSourceMediaFrameReaderStartStatus) = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMultiSourceMediaFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d144402-f763-488d-98f2-b437bcf075e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_FrameArrived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MultiSourceMediaFrameReader,MultiSourceMediaFrameArrivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        TryAcquireLatestFrame: *const fn(self: *anyopaque, _r: **MultiSourceMediaFrameReference) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MultiSourceMediaFrameReaderStartStatus)) callconv(.winapi) HRESULT,
        StopAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IMultiSourceMediaFrameReader2 = extern struct {
    vtable: *const VTable,
    pub fn putAcquisitionMode(self: *@This(), value: MediaFrameReaderAcquisitionMode) core.HResult!void {
        const _c = self.vtable.put_AcquisitionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAcquisitionMode(self: *@This()) core.HResult!MediaFrameReaderAcquisitionMode {
        var _r: MediaFrameReaderAcquisitionMode = undefined;
        const _c = self.vtable.get_AcquisitionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMultiSourceMediaFrameReader2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef5c8abd-fc5c-4c6b-9d81-3cb9cc637c26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_AcquisitionMode: *const fn(self: *anyopaque, value: MediaFrameReaderAcquisitionMode) callconv(.winapi) HRESULT,
        get_AcquisitionMode: *const fn(self: *anyopaque, _r: *MediaFrameReaderAcquisitionMode) callconv(.winapi) HRESULT,
    };
};
pub const IMultiSourceMediaFrameReference = extern struct {
    vtable: *const VTable,
    pub fn TryGetFrameReferenceBySourceId(self: *@This(), sourceId: HSTRING) core.HResult!*MediaFrameReference {
        var _r: *MediaFrameReference = undefined;
        const _c = self.vtable.TryGetFrameReferenceBySourceId(@ptrCast(self), sourceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IMultiSourceMediaFrameReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "21964b1a-7fe2-44d6-92e5-298e6d2810e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetFrameReferenceBySourceId: *const fn(self: *anyopaque, sourceId: HSTRING, _r: **MediaFrameReference) callconv(.winapi) HRESULT,
    };
};
pub const IVideoMediaFrame = extern struct {
    vtable: *const VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        var _r: *MediaFrameReference = undefined;
        const _c = self.vtable.get_FrameReference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormat(self: *@This()) core.HResult!*VideoMediaFrameFormat {
        var _r: *VideoMediaFrameFormat = undefined;
        const _c = self.vtable.get_VideoFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSoftwareBitmap(self: *@This()) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.get_SoftwareBitmap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirect3DSurface(self: *@This()) core.HResult!*IDirect3DSurface {
        var _r: *IDirect3DSurface = undefined;
        const _c = self.vtable.get_Direct3DSurface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraIntrinsics(self: *@This()) core.HResult!*CameraIntrinsics {
        var _r: *CameraIntrinsics = undefined;
        const _c = self.vtable.get_CameraIntrinsics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInfraredMediaFrame(self: *@This()) core.HResult!*InfraredMediaFrame {
        var _r: *InfraredMediaFrame = undefined;
        const _c = self.vtable.get_InfraredMediaFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDepthMediaFrame(self: *@This()) core.HResult!*DepthMediaFrame {
        var _r: *DepthMediaFrame = undefined;
        const _c = self.vtable.get_DepthMediaFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.GetVideoFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IVideoMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00dd4ccb-32bd-4fe1-a013-7cc13cf5dbcf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameReference: *const fn(self: *anyopaque, _r: **MediaFrameReference) callconv(.winapi) HRESULT,
        get_VideoFormat: *const fn(self: *anyopaque, _r: **VideoMediaFrameFormat) callconv(.winapi) HRESULT,
        get_SoftwareBitmap: *const fn(self: *anyopaque, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
        get_Direct3DSurface: *const fn(self: *anyopaque, _r: **IDirect3DSurface) callconv(.winapi) HRESULT,
        get_CameraIntrinsics: *const fn(self: *anyopaque, _r: **CameraIntrinsics) callconv(.winapi) HRESULT,
        get_InfraredMediaFrame: *const fn(self: *anyopaque, _r: **InfraredMediaFrame) callconv(.winapi) HRESULT,
        get_DepthMediaFrame: *const fn(self: *anyopaque, _r: **DepthMediaFrame) callconv(.winapi) HRESULT,
        GetVideoFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
    };
};
pub const IVideoMediaFrameFormat = extern struct {
    vtable: *const VTable,
    pub fn getMediaFrameFormat(self: *@This()) core.HResult!*MediaFrameFormat {
        var _r: *MediaFrameFormat = undefined;
        const _c = self.vtable.get_MediaFrameFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDepthFormat(self: *@This()) core.HResult!*DepthMediaFrameFormat {
        var _r: *DepthMediaFrameFormat = undefined;
        const _c = self.vtable.get_DepthFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.IVideoMediaFrameFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46027fc0-d71b-45c7-8f14-6d9a0ae604e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MediaFrameFormat: *const fn(self: *anyopaque, _r: **MediaFrameFormat) callconv(.winapi) HRESULT,
        get_DepthFormat: *const fn(self: *anyopaque, _r: **DepthMediaFrameFormat) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const InfraredMediaFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        const this: *IInfraredMediaFrame = @ptrCast(self);
        return try this.getFrameReference();
    }
    pub fn getVideoMediaFrame(self: *@This()) core.HResult!*VideoMediaFrame {
        const this: *IInfraredMediaFrame = @ptrCast(self);
        return try this.getVideoMediaFrame();
    }
    pub fn getIsIlluminated(self: *@This()) core.HResult!bool {
        const this: *IInfraredMediaFrame = @ptrCast(self);
        return try this.getIsIlluminated();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.InfraredMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInfraredMediaFrame.GUID;
    pub const IID: Guid = IInfraredMediaFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInfraredMediaFrame.SIGNATURE);
};
pub const MediaFrameArrivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFrameArrivedEventArgs.GUID;
    pub const IID: Guid = IMediaFrameArrivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFrameArrivedEventArgs.SIGNATURE);
};
pub const MediaFrameFormat = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMajorType(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaFrameFormat = @ptrCast(self);
        return try this.getMajorType();
    }
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaFrameFormat = @ptrCast(self);
        return try this.getSubtype();
    }
    pub fn getFrameRate(self: *@This()) core.HResult!*MediaRatio {
        const this: *IMediaFrameFormat = @ptrCast(self);
        return try this.getFrameRate();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        const this: *IMediaFrameFormat = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getVideoFormat(self: *@This()) core.HResult!*VideoMediaFrameFormat {
        const this: *IMediaFrameFormat = @ptrCast(self);
        return try this.getVideoFormat();
    }
    pub fn getAudioEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IMediaFrameFormat2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameFormat2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioEncodingProperties();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MediaFrameFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFrameFormat.GUID;
    pub const IID: Guid = IMediaFrameFormat.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFrameFormat.SIGNATURE);
};
pub const MediaFrameReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(MediaFrameReader,MediaFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaFrameReader = @ptrCast(self);
        return try this.addFrameArrived(handler);
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaFrameReader = @ptrCast(self);
        return try this.removeFrameArrived(token);
    }
    pub fn TryAcquireLatestFrame(self: *@This()) core.HResult!*MediaFrameReference {
        const this: *IMediaFrameReader = @ptrCast(self);
        return try this.TryAcquireLatestFrame();
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(MediaFrameReaderStartStatus) {
        const this: *IMediaFrameReader = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMediaFrameReader = @ptrCast(self);
        return try this.StopAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn putAcquisitionMode(self: *@This(), value: MediaFrameReaderAcquisitionMode) core.HResult!void {
        var this: ?*IMediaFrameReader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameReader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAcquisitionMode(value);
    }
    pub fn getAcquisitionMode(self: *@This()) core.HResult!MediaFrameReaderAcquisitionMode {
        var this: ?*IMediaFrameReader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameReader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAcquisitionMode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MediaFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFrameReader.GUID;
    pub const IID: Guid = IMediaFrameReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFrameReader.SIGNATURE);
};
pub const MediaFrameReaderAcquisitionMode = enum(i32) {
    Realtime = 0,
    Buffered = 1,
};
pub const MediaFrameReaderStartStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    DeviceNotAvailable = 2,
    OutputFormatNotSupported = 3,
    ExclusiveControlNotAvailable = 4,
};
pub const MediaFrameReference = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceKind(self: *@This()) core.HResult!MediaFrameSourceKind {
        const this: *IMediaFrameReference = @ptrCast(self);
        return try this.getSourceKind();
    }
    pub fn getFormat(self: *@This()) core.HResult!*MediaFrameFormat {
        const this: *IMediaFrameReference = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn getSystemRelativeTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IMediaFrameReference = @ptrCast(self);
        return try this.getSystemRelativeTime();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaFrameReference = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        const this: *IMediaFrameReference = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getBufferMediaFrame(self: *@This()) core.HResult!*BufferMediaFrame {
        const this: *IMediaFrameReference = @ptrCast(self);
        return try this.getBufferMediaFrame();
    }
    pub fn getVideoMediaFrame(self: *@This()) core.HResult!*VideoMediaFrame {
        const this: *IMediaFrameReference = @ptrCast(self);
        return try this.getVideoMediaFrame();
    }
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        const this: *IMediaFrameReference = @ptrCast(self);
        return try this.getCoordinateSystem();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getAudioMediaFrame(self: *@This()) core.HResult!*AudioMediaFrame {
        var this: ?*IMediaFrameReference2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameReference2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioMediaFrame();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MediaFrameReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFrameReference.GUID;
    pub const IID: Guid = IMediaFrameReference.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFrameReference.SIGNATURE);
};
pub const MediaFrameSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInfo(self: *@This()) core.HResult!*MediaFrameSourceInfo {
        const this: *IMediaFrameSource = @ptrCast(self);
        return try this.getInfo();
    }
    pub fn getController(self: *@This()) core.HResult!*MediaFrameSourceController {
        const this: *IMediaFrameSource = @ptrCast(self);
        return try this.getController();
    }
    pub fn getSupportedFormats(self: *@This()) core.HResult!*IVectorView(MediaFrameFormat) {
        const this: *IMediaFrameSource = @ptrCast(self);
        return try this.getSupportedFormats();
    }
    pub fn getCurrentFormat(self: *@This()) core.HResult!*MediaFrameFormat {
        const this: *IMediaFrameSource = @ptrCast(self);
        return try this.getCurrentFormat();
    }
    pub fn SetFormatAsync(self: *@This(), format: *MediaFrameFormat) core.HResult!*IAsyncAction {
        const this: *IMediaFrameSource = @ptrCast(self);
        return try this.SetFormatAsync(format);
    }
    pub fn addFormatChanged(self: *@This(), handler: *TypedEventHandler(MediaFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaFrameSource = @ptrCast(self);
        return try this.addFormatChanged(handler);
    }
    pub fn removeFormatChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaFrameSource = @ptrCast(self);
        return try this.removeFormatChanged(token);
    }
    pub fn TryGetCameraIntrinsics(self: *@This(), format: *MediaFrameFormat) core.HResult!*CameraIntrinsics {
        const this: *IMediaFrameSource = @ptrCast(self);
        return try this.TryGetCameraIntrinsics(format);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MediaFrameSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFrameSource.GUID;
    pub const IID: Guid = IMediaFrameSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFrameSource.SIGNATURE);
};
pub const MediaFrameSourceController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetPropertyAsync(self: *@This(), propertyId: HSTRING) core.HResult!*IAsyncOperation(MediaFrameSourceGetPropertyResult) {
        const this: *IMediaFrameSourceController = @ptrCast(self);
        return try this.GetPropertyAsync(propertyId);
    }
    pub fn SetPropertyAsync(self: *@This(), propertyId: HSTRING, propertyValue: *IInspectable) core.HResult!*IAsyncOperation(MediaFrameSourceSetPropertyStatus) {
        const this: *IMediaFrameSourceController = @ptrCast(self);
        return try this.SetPropertyAsync(propertyId, propertyValue);
    }
    pub fn getVideoDeviceController(self: *@This()) core.HResult!*VideoDeviceController {
        const this: *IMediaFrameSourceController = @ptrCast(self);
        return try this.getVideoDeviceController();
    }
    pub fn GetPropertyByExtendedIdAsync(self: *@This(), extendedPropertyId: [*]u8, maxPropertyValueSize: *IReference(u32)) core.HResult!*IAsyncOperation(MediaFrameSourceGetPropertyResult) {
        var this: ?*IMediaFrameSourceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameSourceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPropertyByExtendedIdAsync(extendedPropertyId, maxPropertyValueSize);
    }
    pub fn SetPropertyByExtendedIdAsync(self: *@This(), extendedPropertyId: [*]u8, propertyValue: [*]u8) core.HResult!*IAsyncOperation(MediaFrameSourceSetPropertyStatus) {
        var this: ?*IMediaFrameSourceController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameSourceController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPropertyByExtendedIdAsync(extendedPropertyId, propertyValue);
    }
    pub fn getAudioDeviceController(self: *@This()) core.HResult!*AudioDeviceController {
        var this: ?*IMediaFrameSourceController3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameSourceController3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioDeviceController();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MediaFrameSourceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFrameSourceController.GUID;
    pub const IID: Guid = IMediaFrameSourceController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFrameSourceController.SIGNATURE);
};
pub const MediaFrameSourceGetPropertyResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!MediaFrameSourceGetPropertyStatus {
        const this: *IMediaFrameSourceGetPropertyResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IMediaFrameSourceGetPropertyResult = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFrameSourceGetPropertyResult.GUID;
    pub const IID: Guid = IMediaFrameSourceGetPropertyResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFrameSourceGetPropertyResult.SIGNATURE);
};
pub const MediaFrameSourceGetPropertyStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    NotSupported = 2,
    DeviceNotAvailable = 3,
    MaxPropertyValueSizeTooSmall = 4,
    MaxPropertyValueSizeRequired = 5,
};
pub const MediaFrameSourceGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaFrameSourceGroup = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaFrameSourceGroup = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getSourceInfos(self: *@This()) core.HResult!*IVectorView(MediaFrameSourceInfo) {
        const this: *IMediaFrameSourceGroup = @ptrCast(self);
        return try this.getSourceInfos();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(IVectorView(MediaFrameSourceGroup)) {
        const factory = @This().IMediaFrameSourceGroupStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub fn FromIdAsync(id: HSTRING) core.HResult!*IAsyncOperation(MediaFrameSourceGroup) {
        const factory = @This().IMediaFrameSourceGroupStaticsCache.get();
        return try factory.FromIdAsync(id);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IMediaFrameSourceGroupStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MediaFrameSourceGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFrameSourceGroup.GUID;
    pub const IID: Guid = IMediaFrameSourceGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFrameSourceGroup.SIGNATURE);
    var _IMediaFrameSourceGroupStaticsCache: FactoryCache(IMediaFrameSourceGroupStatics, RUNTIME_NAME) = .{};
};
pub const MediaFrameSourceInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaFrameSourceInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn getMediaStreamType(self: *@This()) core.HResult!MediaStreamType {
        const this: *IMediaFrameSourceInfo = @ptrCast(self);
        return try this.getMediaStreamType();
    }
    pub fn getSourceKind(self: *@This()) core.HResult!MediaFrameSourceKind {
        const this: *IMediaFrameSourceInfo = @ptrCast(self);
        return try this.getSourceKind();
    }
    pub fn getSourceGroup(self: *@This()) core.HResult!*MediaFrameSourceGroup {
        const this: *IMediaFrameSourceInfo = @ptrCast(self);
        return try this.getSourceGroup();
    }
    pub fn getDeviceInformation(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IMediaFrameSourceInfo = @ptrCast(self);
        return try this.getDeviceInformation();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        const this: *IMediaFrameSourceInfo = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getCoordinateSystem(self: *@This()) core.HResult!*SpatialCoordinateSystem {
        const this: *IMediaFrameSourceInfo = @ptrCast(self);
        return try this.getCoordinateSystem();
    }
    pub fn getProfileId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaFrameSourceInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameSourceInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProfileId();
    }
    pub fn getVideoProfileMediaDescription(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfileMediaDescription) {
        var this: ?*IMediaFrameSourceInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameSourceInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVideoProfileMediaDescription();
    }
    pub fn GetRelativePanel(self: *@This(), displayRegion: *DisplayRegion) core.HResult!Panel {
        var this: ?*IMediaFrameSourceInfo3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameSourceInfo3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRelativePanel(displayRegion);
    }
    pub fn getIsShareable(self: *@This()) core.HResult!bool {
        var this: ?*IMediaFrameSourceInfo4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrameSourceInfo4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsShareable();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MediaFrameSourceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaFrameSourceInfo.GUID;
    pub const IID: Guid = IMediaFrameSourceInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaFrameSourceInfo.SIGNATURE);
};
pub const MediaFrameSourceKind = enum(i32) {
    Custom = 0,
    Color = 1,
    Infrared = 2,
    Depth = 3,
    Audio = 4,
    Image = 5,
    Metadata = 6,
};
pub const MediaFrameSourceSetPropertyStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    NotSupported = 2,
    InvalidValue = 3,
    DeviceNotAvailable = 4,
    NotInControl = 5,
};
pub const MultiSourceMediaFrameArrivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MultiSourceMediaFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMultiSourceMediaFrameArrivedEventArgs.GUID;
    pub const IID: Guid = IMultiSourceMediaFrameArrivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMultiSourceMediaFrameArrivedEventArgs.SIGNATURE);
};
pub const MultiSourceMediaFrameReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(MultiSourceMediaFrameReader,MultiSourceMediaFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMultiSourceMediaFrameReader = @ptrCast(self);
        return try this.addFrameArrived(handler);
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMultiSourceMediaFrameReader = @ptrCast(self);
        return try this.removeFrameArrived(token);
    }
    pub fn TryAcquireLatestFrame(self: *@This()) core.HResult!*MultiSourceMediaFrameReference {
        const this: *IMultiSourceMediaFrameReader = @ptrCast(self);
        return try this.TryAcquireLatestFrame();
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(MultiSourceMediaFrameReaderStartStatus) {
        const this: *IMultiSourceMediaFrameReader = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMultiSourceMediaFrameReader = @ptrCast(self);
        return try this.StopAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn putAcquisitionMode(self: *@This(), value: MediaFrameReaderAcquisitionMode) core.HResult!void {
        var this: ?*IMultiSourceMediaFrameReader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMultiSourceMediaFrameReader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAcquisitionMode(value);
    }
    pub fn getAcquisitionMode(self: *@This()) core.HResult!MediaFrameReaderAcquisitionMode {
        var this: ?*IMultiSourceMediaFrameReader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMultiSourceMediaFrameReader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAcquisitionMode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MultiSourceMediaFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMultiSourceMediaFrameReader.GUID;
    pub const IID: Guid = IMultiSourceMediaFrameReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMultiSourceMediaFrameReader.SIGNATURE);
};
pub const MultiSourceMediaFrameReaderStartStatus = enum(i32) {
    Success = 0,
    NotSupported = 1,
    InsufficientResources = 2,
    DeviceNotAvailable = 3,
    UnknownFailure = 4,
};
pub const MultiSourceMediaFrameReference = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TryGetFrameReferenceBySourceId(self: *@This(), sourceId: HSTRING) core.HResult!*MediaFrameReference {
        const this: *IMultiSourceMediaFrameReference = @ptrCast(self);
        return try this.TryGetFrameReferenceBySourceId(sourceId);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.MultiSourceMediaFrameReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMultiSourceMediaFrameReference.GUID;
    pub const IID: Guid = IMultiSourceMediaFrameReference.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMultiSourceMediaFrameReference.SIGNATURE);
};
pub const VideoMediaFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameReference(self: *@This()) core.HResult!*MediaFrameReference {
        const this: *IVideoMediaFrame = @ptrCast(self);
        return try this.getFrameReference();
    }
    pub fn getVideoFormat(self: *@This()) core.HResult!*VideoMediaFrameFormat {
        const this: *IVideoMediaFrame = @ptrCast(self);
        return try this.getVideoFormat();
    }
    pub fn getSoftwareBitmap(self: *@This()) core.HResult!*SoftwareBitmap {
        const this: *IVideoMediaFrame = @ptrCast(self);
        return try this.getSoftwareBitmap();
    }
    pub fn getDirect3DSurface(self: *@This()) core.HResult!*IDirect3DSurface {
        const this: *IVideoMediaFrame = @ptrCast(self);
        return try this.getDirect3DSurface();
    }
    pub fn getCameraIntrinsics(self: *@This()) core.HResult!*CameraIntrinsics {
        const this: *IVideoMediaFrame = @ptrCast(self);
        return try this.getCameraIntrinsics();
    }
    pub fn getInfraredMediaFrame(self: *@This()) core.HResult!*InfraredMediaFrame {
        const this: *IVideoMediaFrame = @ptrCast(self);
        return try this.getInfraredMediaFrame();
    }
    pub fn getDepthMediaFrame(self: *@This()) core.HResult!*DepthMediaFrame {
        const this: *IVideoMediaFrame = @ptrCast(self);
        return try this.getDepthMediaFrame();
    }
    pub fn GetVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *IVideoMediaFrame = @ptrCast(self);
        return try this.GetVideoFrame();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.VideoMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoMediaFrame.GUID;
    pub const IID: Guid = IVideoMediaFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoMediaFrame.SIGNATURE);
};
pub const VideoMediaFrameFormat = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMediaFrameFormat(self: *@This()) core.HResult!*MediaFrameFormat {
        const this: *IVideoMediaFrameFormat = @ptrCast(self);
        return try this.getMediaFrameFormat();
    }
    pub fn getDepthFormat(self: *@This()) core.HResult!*DepthMediaFrameFormat {
        const this: *IVideoMediaFrameFormat = @ptrCast(self);
        return try this.getDepthFormat();
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IVideoMediaFrameFormat = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IVideoMediaFrameFormat = @ptrCast(self);
        return try this.getHeight();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Frames.VideoMediaFrameFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoMediaFrameFormat.GUID;
    pub const IID: Guid = IVideoMediaFrameFormat.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoMediaFrameFormat.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const VideoFrame = @import("../../Media.zig").VideoFrame;
const DepthCorrelatedCoordinateMapper = @import("../Devices/Core.zig").DepthCorrelatedCoordinateMapper;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const IReference = @import("../../Foundation.zig").IReference;
const IDirect3DSurface = @import("../../Graphics/DirectX/Direct3D11.zig").IDirect3DSurface;
const VideoDeviceController = @import("../Devices.zig").VideoDeviceController;
const MediaStreamType = @import("../Capture.zig").MediaStreamType;
const SpatialCoordinateSystem = @import("../../Perception/Spatial.zig").SpatialCoordinateSystem;
const AudioFrame = @import("../../Media.zig").AudioFrame;
const FactoryCache = @import("../../core.zig").FactoryCache;
const MediaCaptureVideoProfileMediaDescription = @import("../Capture.zig").MediaCaptureVideoProfileMediaDescription;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const Panel = @import("../../Devices/Enumeration.zig").Panel;
const SoftwareBitmap = @import("../../Graphics/Imaging.zig").SoftwareBitmap;
const HSTRING = @import("../../root.zig").HSTRING;
const IClosable = @import("../../Foundation.zig").IClosable;
const AudioDeviceController = @import("../Devices.zig").AudioDeviceController;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const AudioEncodingProperties = @import("../MediaProperties.zig").AudioEncodingProperties;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const DeviceInformation = @import("../../Devices/Enumeration.zig").DeviceInformation;
const DisplayRegion = @import("../../UI/WindowManagement.zig").DisplayRegion;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const MediaRatio = @import("../MediaProperties.zig").MediaRatio;
const CameraIntrinsics = @import("../Devices/Core.zig").CameraIntrinsics;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
