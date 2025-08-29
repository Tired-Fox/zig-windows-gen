pub const IKnownCameraIntrinsicsPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getFocalLength(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FocalLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrincipalPoint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PrincipalPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRadialDistortion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RadialDistortion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTangentialDistortion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TangentialDistortion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IKnownCameraIntrinsicsPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08c03978-437a-4d97-a663-fd3195600249";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FocalLength: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PrincipalPoint: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RadialDistortion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TangentialDistortion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownPerceptionColorFrameSourcePropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getExposure(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Exposure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoExposureEnabled(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AutoExposureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExposureCompensation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExposureCompensation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IKnownPerceptionColorFrameSourcePropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5df1cca2-01f8-4a87-b859-d5e5b7e1de4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Exposure: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AutoExposureEnabled: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExposureCompensation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownPerceptionDepthFrameSourcePropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getMinDepth(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MinDepth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxDepth(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MaxDepth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IKnownPerceptionDepthFrameSourcePropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5df1cca2-01f8-4a87-b859-d5e5b7e1de4a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinDepth: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MaxDepth: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownPerceptionFrameSourcePropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalDeviceIds(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhysicalDeviceIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FrameKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceModelVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceModelVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnclosureLocation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnclosureLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IKnownPerceptionFrameSourcePropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5df1cca2-01f8-4a87-b859-d5e5b7e1de47";
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
        get_PhysicalDeviceIds: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FrameKind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceModelVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EnclosureLocation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownPerceptionFrameSourcePropertiesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IKnownPerceptionFrameSourcePropertiesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9c86871-05dc-4a4d-8a5c-a4ecf26bbc46";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownPerceptionInfraredFrameSourcePropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getExposure(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Exposure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoExposureEnabled(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AutoExposureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExposureCompensation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExposureCompensation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActiveIlluminationEnabled(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ActiveIlluminationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAmbientSubtractionEnabled(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AmbientSubtractionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStructureLightPatternEnabled(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StructureLightPatternEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterleavedIlluminationEnabled(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InterleavedIlluminationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IKnownPerceptionInfraredFrameSourcePropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5df1cca2-01f8-4a87-b859-d5e5b7e1de49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Exposure: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AutoExposureEnabled: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExposureCompensation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ActiveIlluminationEnabled: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AmbientSubtractionEnabled: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StructureLightPatternEnabled: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InterleavedIlluminationEnabled: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownPerceptionVideoFrameSourcePropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getVideoProfile(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedVideoProfiles(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SupportedVideoProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailableVideoProfiles(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AvailableVideoProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMirrored(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IsMirrored(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraIntrinsics(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CameraIntrinsics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IKnownPerceptionVideoFrameSourcePropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5df1cca2-01f8-4a87-b859-d5e5b7e1de48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoProfile: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportedVideoProfiles: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AvailableVideoProfiles: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsMirrored: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CameraIntrinsics: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKnownPerceptionVideoProfilePropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getBitmapPixelFormat(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BitmapPixelFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitmapAlphaMode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BitmapAlphaMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidth(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeight(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameDuration(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FrameDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IKnownPerceptionVideoProfilePropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f08e2e7-5a76-43e3-a13a-da3d91a9ef98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BitmapPixelFormat: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BitmapAlphaMode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FrameDuration: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionColorFrame = extern struct {
    vtable: *const VTable,
    pub fn getVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_VideoFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionColorFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe621549-2cbf-4f94-9861-f817ea317747";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionColorFrameArrivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRelativeTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RelativeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryOpenFrame(self: *@This()) core.HResult!*PerceptionColorFrame {
        var _r: *PerceptionColorFrame = undefined;
        const _c = self.vtable.TryOpenFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionColorFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8fad02d5-86f7-4d8d-b966-5a3761ba9f59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RelativeTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        TryOpenFrame: *const fn(self: *anyopaque, _r: **PerceptionColorFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionColorFrameReader = extern struct {
    vtable: *const VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameReader,PerceptionColorFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameArrived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*PerceptionColorFrameSource {
        var _r: *PerceptionColorFrameSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPaused(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPaused(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPaused(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPaused(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryReadLatestFrame(self: *@This()) core.HResult!*PerceptionColorFrame {
        var _r: *PerceptionColorFrame = undefined;
        const _c = self.vtable.TryReadLatestFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionColorFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7650f56e-b9f5-461b-83ad-f222af2aaadc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_FrameArrived: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameReader,PerceptionColorFrameArrivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **PerceptionColorFrameSource) callconv(.winapi) HRESULT,
        get_IsPaused: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPaused: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        TryReadLatestFrame: *const fn(self: *anyopaque, _r: **PerceptionColorFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionColorFrameSource = extern struct {
    vtable: *const VTable,
    pub fn addAvailableChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AvailableChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AvailableChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActiveChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActiveChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActiveChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPropertiesChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,PerceptionFrameSourcePropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PropertiesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PropertiesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVideoProfileChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VideoProfileChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVideoProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VideoProfileChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCameraIntrinsicsChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CameraIntrinsicsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCameraIntrinsicsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CameraIntrinsicsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getDeviceKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Available(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Active(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsControlled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsControlled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        var _r: *IVectorView(PerceptionVideoProfile) = undefined;
        const _c = self.vtable.get_SupportedVideoProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailableVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        var _r: *IVectorView(PerceptionVideoProfile) = undefined;
        const _c = self.vtable.get_AvailableVideoProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoProfile(self: *@This()) core.HResult!*PerceptionVideoProfile {
        var _r: *PerceptionVideoProfile = undefined;
        const _c = self.vtable.get_VideoProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraIntrinsics(self: *@This()) core.HResult!*CameraIntrinsics {
        var _r: *CameraIntrinsics = undefined;
        const _c = self.vtable.get_CameraIntrinsics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcquireControlSession(self: *@This()) core.HResult!*PerceptionControlSession {
        var _r: *PerceptionControlSession = undefined;
        const _c = self.vtable.AcquireControlSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanControlIndependentlyFrom(self: *@This(), targetId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanControlIndependentlyFrom(@ptrCast(self), targetId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCorrelatedWith(self: *@This(), targetId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCorrelatedWith(@ptrCast(self), targetId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetTransformTo(self: *@This(), targetId: HSTRING, result: Matrix4x4) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetTransformTo(@ptrCast(self), targetId, result, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetDepthCorrelatedCameraIntrinsicsAsync(self: *@This(), correlatedDepthFrameSource: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics) {
        var _r: *IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics) = undefined;
        const _c = self.vtable.TryGetDepthCorrelatedCameraIntrinsicsAsync(@ptrCast(self), correlatedDepthFrameSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetDepthCorrelatedCoordinateMapperAsync(self: *@This(), targetSourceId: HSTRING, correlatedDepthFrameSource: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper) {
        var _r: *IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper) = undefined;
        const _c = self.vtable.TryGetDepthCorrelatedCoordinateMapperAsync(@ptrCast(self), targetSourceId, correlatedDepthFrameSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetVideoProfileAsync(self: *@This(), controlSession: *PerceptionControlSession, profile: *PerceptionVideoProfile) core.HResult!*IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) {
        var _r: *IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) = undefined;
        const _c = self.vtable.TrySetVideoProfileAsync(@ptrCast(self), controlSession, profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenReader(self: *@This()) core.HResult!*PerceptionColorFrameReader {
        var _r: *PerceptionColorFrameReader = undefined;
        const _c = self.vtable.OpenReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionColorFrameSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc6dba7c-0b58-468d-9ca1-6db04cc0477c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AvailableChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AvailableChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ActiveChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActiveChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PropertiesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameSource,PerceptionFrameSourcePropertiesChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PropertiesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VideoProfileChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VideoProfileChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CameraIntrinsicsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CameraIntrinsicsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceKind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Available: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Active: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsControlled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
        get_SupportedVideoProfiles: *const fn(self: *anyopaque, _r: **IVectorView(PerceptionVideoProfile)) callconv(.winapi) HRESULT,
        get_AvailableVideoProfiles: *const fn(self: *anyopaque, _r: **IVectorView(PerceptionVideoProfile)) callconv(.winapi) HRESULT,
        get_VideoProfile: *const fn(self: *anyopaque, _r: **PerceptionVideoProfile) callconv(.winapi) HRESULT,
        get_CameraIntrinsics: *const fn(self: *anyopaque, _r: **CameraIntrinsics) callconv(.winapi) HRESULT,
        AcquireControlSession: *const fn(self: *anyopaque, _r: **PerceptionControlSession) callconv(.winapi) HRESULT,
        CanControlIndependentlyFrom: *const fn(self: *anyopaque, targetId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsCorrelatedWith: *const fn(self: *anyopaque, targetId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        TryGetTransformTo: *const fn(self: *anyopaque, targetId: HSTRING, result: Matrix4x4, _r: *bool) callconv(.winapi) HRESULT,
        TryGetDepthCorrelatedCameraIntrinsicsAsync: *const fn(self: *anyopaque, correlatedDepthFrameSource: *PerceptionDepthFrameSource, _r: **IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics)) callconv(.winapi) HRESULT,
        TryGetDepthCorrelatedCoordinateMapperAsync: *const fn(self: *anyopaque, targetSourceId: HSTRING, correlatedDepthFrameSource: *PerceptionDepthFrameSource, _r: **IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper)) callconv(.winapi) HRESULT,
        TrySetVideoProfileAsync: *const fn(self: *anyopaque, controlSession: *PerceptionControlSession, profile: *PerceptionVideoProfile, _r: **IAsyncOperation(PerceptionFrameSourcePropertyChangeResult)) callconv(.winapi) HRESULT,
        OpenReader: *const fn(self: *anyopaque, _r: **PerceptionColorFrameReader) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionColorFrameSource2 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionColorFrameSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f88008e5-5631-45ed-ad98-8c6aa04cfb91";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionColorFrameSourceAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionColorFrameSource {
        var _r: *PerceptionColorFrameSource = undefined;
        const _c = self.vtable.get_FrameSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionColorFrameSourceAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d16bf4e6-da24-442c-bbd5-55549b5b94f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameSource: *const fn(self: *anyopaque, _r: **PerceptionColorFrameSource) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionColorFrameSourceRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionColorFrameSource {
        var _r: *PerceptionColorFrameSource = undefined;
        const _c = self.vtable.get_FrameSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionColorFrameSourceRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d277fa69-eb4c-42ef-ba4f-288f615c93c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameSource: *const fn(self: *anyopaque, _r: **PerceptionColorFrameSource) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionColorFrameSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateWatcher(self: *@This()) core.HResult!*PerceptionColorFrameSourceWatcher {
        var _r: *PerceptionColorFrameSourceWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PerceptionColorFrameSource)) {
        var _r: *IAsyncOperation(IVectorView(PerceptionColorFrameSource)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(PerceptionColorFrameSource) {
        var _r: *IAsyncOperation(PerceptionColorFrameSource) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(PerceptionFrameSourceAccessStatus) {
        var _r: *IAsyncOperation(PerceptionFrameSourceAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionColorFrameSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5df3cca2-01f8-4a87-b859-d5e5b7e1de49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **PerceptionColorFrameSourceWatcher) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(PerceptionColorFrameSource))) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(PerceptionColorFrameSource)) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PerceptionFrameSourceAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionColorFrameSourceWatcher = extern struct {
    vtable: *const VTable,
    pub fn addSourceAdded(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,PerceptionColorFrameSourceAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceRemoved(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,PerceptionColorFrameSourceRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        var _r: DeviceWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionColorFrameSourceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96bd1392-e667-40c4-89f9-1462dea6a9cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SourceAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,PerceptionColorFrameSourceAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,PerceptionColorFrameSourceRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DeviceWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionControlSession = extern struct {
    vtable: *const VTable,
    pub fn addControlLost(self: *@This(), handler: *TypedEventHandler(PerceptionControlSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ControlLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeControlLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ControlLost(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TrySetPropertyAsync(self: *@This(), name: HSTRING, value: *IInspectable) core.HResult!*IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) {
        var _r: *IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) = undefined;
        const _c = self.vtable.TrySetPropertyAsync(@ptrCast(self), name, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionControlSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99998653-5a3d-417f-9239-f1889e548b48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ControlLost: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionControlSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ControlLost: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        TrySetPropertyAsync: *const fn(self: *anyopaque, name: HSTRING, value: *IInspectable, _r: **IAsyncOperation(PerceptionFrameSourcePropertyChangeResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthCorrelatedCameraIntrinsics = extern struct {
    vtable: *const VTable,
    pub fn UnprojectPixelAtCorrelatedDepth(self: *@This(), pixelCoordinate: Point, depthFrame: *PerceptionDepthFrame) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.UnprojectPixelAtCorrelatedDepth(@ptrCast(self), pixelCoordinate, depthFrame, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprojectPixelsAtCorrelatedDepth(self: *@This(), sourceCoordinates: [*]Point, depthFrame: *PerceptionDepthFrame, results: [*]Vector3) core.HResult!void {
        const _c = self.vtable.UnprojectPixelsAtCorrelatedDepth(@ptrCast(self), sourceCoordinates, depthFrame, results);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnprojectRegionPixelsAtCorrelatedDepthAsync(self: *@This(), region: Rect, depthFrame: *PerceptionDepthFrame, results: [*]Vector3) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnprojectRegionPixelsAtCorrelatedDepthAsync(@ptrCast(self), region, depthFrame, results, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprojectAllPixelsAtCorrelatedDepthAsync(self: *@This(), depthFrame: *PerceptionDepthFrame, results: [*]Vector3) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnprojectAllPixelsAtCorrelatedDepthAsync(@ptrCast(self), depthFrame, results, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthCorrelatedCameraIntrinsics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6548ca01-86de-5be1-6582-807fcf4c95cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UnprojectPixelAtCorrelatedDepth: *const fn(self: *anyopaque, pixelCoordinate: Point, depthFrame: *PerceptionDepthFrame, _r: *Vector3) callconv(.winapi) HRESULT,
        UnprojectPixelsAtCorrelatedDepth: *const fn(self: *anyopaque, sourceCoordinates: [*]Point, depthFrame: *PerceptionDepthFrame, results: [*]Vector3) callconv(.winapi) HRESULT,
        UnprojectRegionPixelsAtCorrelatedDepthAsync: *const fn(self: *anyopaque, region: Rect, depthFrame: *PerceptionDepthFrame, results: [*]Vector3, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UnprojectAllPixelsAtCorrelatedDepthAsync: *const fn(self: *anyopaque, depthFrame: *PerceptionDepthFrame, results: [*]Vector3, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthCorrelatedCoordinateMapper = extern struct {
    vtable: *const VTable,
    pub fn MapPixelToTarget(self: *@This(), sourcePixelCoordinate: Point, depthFrame: *PerceptionDepthFrame) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.MapPixelToTarget(@ptrCast(self), sourcePixelCoordinate, depthFrame, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MapPixelsToTarget(self: *@This(), sourceCoordinates: [*]Point, depthFrame: *PerceptionDepthFrame, results: [*]Point) core.HResult!void {
        const _c = self.vtable.MapPixelsToTarget(@ptrCast(self), sourceCoordinates, depthFrame, results);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MapRegionOfPixelsToTargetAsync(self: *@This(), region: Rect, depthFrame: *PerceptionDepthFrame, targetCoordinates: [*]Point) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MapRegionOfPixelsToTargetAsync(@ptrCast(self), region, depthFrame, targetCoordinates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MapAllPixelsToTargetAsync(self: *@This(), depthFrame: *PerceptionDepthFrame, targetCoordinates: [*]Point) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MapAllPixelsToTargetAsync(@ptrCast(self), depthFrame, targetCoordinates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthCorrelatedCoordinateMapper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b4d9d1d-b5f6-469c-b8c2-b97a45e6863b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        MapPixelToTarget: *const fn(self: *anyopaque, sourcePixelCoordinate: Point, depthFrame: *PerceptionDepthFrame, _r: *Point) callconv(.winapi) HRESULT,
        MapPixelsToTarget: *const fn(self: *anyopaque, sourceCoordinates: [*]Point, depthFrame: *PerceptionDepthFrame, results: [*]Point) callconv(.winapi) HRESULT,
        MapRegionOfPixelsToTargetAsync: *const fn(self: *anyopaque, region: Rect, depthFrame: *PerceptionDepthFrame, targetCoordinates: [*]Point, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MapAllPixelsToTargetAsync: *const fn(self: *anyopaque, depthFrame: *PerceptionDepthFrame, targetCoordinates: [*]Point, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthFrame = extern struct {
    vtable: *const VTable,
    pub fn getVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_VideoFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a37b81fc-9906-4ffd-9161-0024b360b657";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthFrameArrivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRelativeTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RelativeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryOpenFrame(self: *@This()) core.HResult!*PerceptionDepthFrame {
        var _r: *PerceptionDepthFrame = undefined;
        const _c = self.vtable.TryOpenFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "443d25b2-b282-4637-9173-ac978435c985";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RelativeTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        TryOpenFrame: *const fn(self: *anyopaque, _r: **PerceptionDepthFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthFrameReader = extern struct {
    vtable: *const VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameReader,PerceptionDepthFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameArrived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*PerceptionDepthFrameSource {
        var _r: *PerceptionDepthFrameSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPaused(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPaused(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPaused(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPaused(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryReadLatestFrame(self: *@This()) core.HResult!*PerceptionDepthFrame {
        var _r: *PerceptionDepthFrame = undefined;
        const _c = self.vtable.TryReadLatestFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1a3c09f-299b-4612-a4f7-270f25a096ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_FrameArrived: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameReader,PerceptionDepthFrameArrivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **PerceptionDepthFrameSource) callconv(.winapi) HRESULT,
        get_IsPaused: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPaused: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        TryReadLatestFrame: *const fn(self: *anyopaque, _r: **PerceptionDepthFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthFrameSource = extern struct {
    vtable: *const VTable,
    pub fn addAvailableChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AvailableChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AvailableChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActiveChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActiveChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActiveChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPropertiesChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,PerceptionFrameSourcePropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PropertiesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PropertiesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVideoProfileChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VideoProfileChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVideoProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VideoProfileChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCameraIntrinsicsChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CameraIntrinsicsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCameraIntrinsicsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CameraIntrinsicsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getDeviceKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Available(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Active(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsControlled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsControlled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        var _r: *IVectorView(PerceptionVideoProfile) = undefined;
        const _c = self.vtable.get_SupportedVideoProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailableVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        var _r: *IVectorView(PerceptionVideoProfile) = undefined;
        const _c = self.vtable.get_AvailableVideoProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoProfile(self: *@This()) core.HResult!*PerceptionVideoProfile {
        var _r: *PerceptionVideoProfile = undefined;
        const _c = self.vtable.get_VideoProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraIntrinsics(self: *@This()) core.HResult!*CameraIntrinsics {
        var _r: *CameraIntrinsics = undefined;
        const _c = self.vtable.get_CameraIntrinsics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcquireControlSession(self: *@This()) core.HResult!*PerceptionControlSession {
        var _r: *PerceptionControlSession = undefined;
        const _c = self.vtable.AcquireControlSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanControlIndependentlyFrom(self: *@This(), targetId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanControlIndependentlyFrom(@ptrCast(self), targetId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCorrelatedWith(self: *@This(), targetId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCorrelatedWith(@ptrCast(self), targetId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetTransformTo(self: *@This(), targetId: HSTRING, result: Matrix4x4) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetTransformTo(@ptrCast(self), targetId, result, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetDepthCorrelatedCameraIntrinsicsAsync(self: *@This(), target: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics) {
        var _r: *IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics) = undefined;
        const _c = self.vtable.TryGetDepthCorrelatedCameraIntrinsicsAsync(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetDepthCorrelatedCoordinateMapperAsync(self: *@This(), targetId: HSTRING, depthFrameSourceToMapWith: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper) {
        var _r: *IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper) = undefined;
        const _c = self.vtable.TryGetDepthCorrelatedCoordinateMapperAsync(@ptrCast(self), targetId, depthFrameSourceToMapWith, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetVideoProfileAsync(self: *@This(), controlSession: *PerceptionControlSession, profile: *PerceptionVideoProfile) core.HResult!*IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) {
        var _r: *IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) = undefined;
        const _c = self.vtable.TrySetVideoProfileAsync(@ptrCast(self), controlSession, profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenReader(self: *@This()) core.HResult!*PerceptionDepthFrameReader {
        var _r: *PerceptionDepthFrameReader = undefined;
        const _c = self.vtable.OpenReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthFrameSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79d433d6-47fb-4df1-bfc9-f01d40bd9942";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AvailableChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AvailableChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ActiveChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActiveChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PropertiesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameSource,PerceptionFrameSourcePropertiesChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PropertiesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VideoProfileChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VideoProfileChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CameraIntrinsicsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CameraIntrinsicsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceKind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Available: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Active: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsControlled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
        get_SupportedVideoProfiles: *const fn(self: *anyopaque, _r: **IVectorView(PerceptionVideoProfile)) callconv(.winapi) HRESULT,
        get_AvailableVideoProfiles: *const fn(self: *anyopaque, _r: **IVectorView(PerceptionVideoProfile)) callconv(.winapi) HRESULT,
        get_VideoProfile: *const fn(self: *anyopaque, _r: **PerceptionVideoProfile) callconv(.winapi) HRESULT,
        get_CameraIntrinsics: *const fn(self: *anyopaque, _r: **CameraIntrinsics) callconv(.winapi) HRESULT,
        AcquireControlSession: *const fn(self: *anyopaque, _r: **PerceptionControlSession) callconv(.winapi) HRESULT,
        CanControlIndependentlyFrom: *const fn(self: *anyopaque, targetId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsCorrelatedWith: *const fn(self: *anyopaque, targetId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        TryGetTransformTo: *const fn(self: *anyopaque, targetId: HSTRING, result: Matrix4x4, _r: *bool) callconv(.winapi) HRESULT,
        TryGetDepthCorrelatedCameraIntrinsicsAsync: *const fn(self: *anyopaque, target: *PerceptionDepthFrameSource, _r: **IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics)) callconv(.winapi) HRESULT,
        TryGetDepthCorrelatedCoordinateMapperAsync: *const fn(self: *anyopaque, targetId: HSTRING, depthFrameSourceToMapWith: *PerceptionDepthFrameSource, _r: **IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper)) callconv(.winapi) HRESULT,
        TrySetVideoProfileAsync: *const fn(self: *anyopaque, controlSession: *PerceptionControlSession, profile: *PerceptionVideoProfile, _r: **IAsyncOperation(PerceptionFrameSourcePropertyChangeResult)) callconv(.winapi) HRESULT,
        OpenReader: *const fn(self: *anyopaque, _r: **PerceptionDepthFrameReader) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthFrameSource2 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthFrameSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3d23d2e-6e2c-4e6d-91d9-704cd8dff79d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthFrameSourceAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionDepthFrameSource {
        var _r: *PerceptionDepthFrameSource = undefined;
        const _c = self.vtable.get_FrameSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthFrameSourceAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93a48168-8bf8-45d2-a2f8-4ac0931cc7a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameSource: *const fn(self: *anyopaque, _r: **PerceptionDepthFrameSource) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthFrameSourceRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionDepthFrameSource {
        var _r: *PerceptionDepthFrameSource = undefined;
        const _c = self.vtable.get_FrameSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthFrameSourceRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0c0cc4d-e96c-4d81-86dd-38b95e49c6df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameSource: *const fn(self: *anyopaque, _r: **PerceptionDepthFrameSource) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthFrameSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateWatcher(self: *@This()) core.HResult!*PerceptionDepthFrameSourceWatcher {
        var _r: *PerceptionDepthFrameSourceWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PerceptionDepthFrameSource)) {
        var _r: *IAsyncOperation(IVectorView(PerceptionDepthFrameSource)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(PerceptionDepthFrameSource) {
        var _r: *IAsyncOperation(PerceptionDepthFrameSource) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(PerceptionFrameSourceAccessStatus) {
        var _r: *IAsyncOperation(PerceptionFrameSourceAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthFrameSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5df3cca2-01f8-4a87-b859-d5e5b7e1de48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **PerceptionDepthFrameSourceWatcher) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(PerceptionDepthFrameSource))) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(PerceptionDepthFrameSource)) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PerceptionFrameSourceAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionDepthFrameSourceWatcher = extern struct {
    vtable: *const VTable,
    pub fn addSourceAdded(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,PerceptionDepthFrameSourceAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceRemoved(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,PerceptionDepthFrameSourceRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        var _r: DeviceWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionDepthFrameSourceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "780e96d1-8d02-4d2b-ada4-5ba624a0eb10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SourceAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,PerceptionDepthFrameSourceAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,PerceptionDepthFrameSourceRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DeviceWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionFrameSourcePropertiesChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCollectionChange(self: *@This()) core.HResult!CollectionChange {
        var _r: CollectionChange = undefined;
        const _c = self.vtable.get_CollectionChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKey(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Key(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionFrameSourcePropertiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c68e068-bcf1-4ecc-b891-7625d1244b6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CollectionChange: *const fn(self: *anyopaque, _r: *CollectionChange) callconv(.winapi) HRESULT,
        get_Key: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionFrameSourcePropertyChangeResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!PerceptionFrameSourcePropertyChangeStatus {
        var _r: PerceptionFrameSourcePropertyChangeStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_NewValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionFrameSourcePropertyChangeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e33390a-3c90-4d22-b898-f42bba6418ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PerceptionFrameSourcePropertyChangeStatus) callconv(.winapi) HRESULT,
        get_NewValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionInfraredFrame = extern struct {
    vtable: *const VTable,
    pub fn getVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_VideoFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionInfraredFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0886276-849e-4c7a-8ae6-b56064532153";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionInfraredFrameArrivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRelativeTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RelativeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryOpenFrame(self: *@This()) core.HResult!*PerceptionInfraredFrame {
        var _r: *PerceptionInfraredFrame = undefined;
        const _c = self.vtable.TryOpenFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionInfraredFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f77fac7-b4bd-4857-9d50-be8ef075daef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RelativeTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        TryOpenFrame: *const fn(self: *anyopaque, _r: **PerceptionInfraredFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionInfraredFrameReader = extern struct {
    vtable: *const VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameReader,PerceptionInfraredFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameArrived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*PerceptionInfraredFrameSource {
        var _r: *PerceptionInfraredFrameSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPaused(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPaused(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPaused(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPaused(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryReadLatestFrame(self: *@This()) core.HResult!*PerceptionInfraredFrame {
        var _r: *PerceptionInfraredFrame = undefined;
        const _c = self.vtable.TryReadLatestFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionInfraredFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7960ce18-d39b-4fc8-a04a-929734c6756c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_FrameArrived: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameReader,PerceptionInfraredFrameArrivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **PerceptionInfraredFrameSource) callconv(.winapi) HRESULT,
        get_IsPaused: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPaused: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        TryReadLatestFrame: *const fn(self: *anyopaque, _r: **PerceptionInfraredFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionInfraredFrameSource = extern struct {
    vtable: *const VTable,
    pub fn addAvailableChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AvailableChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AvailableChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActiveChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActiveChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActiveChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPropertiesChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,PerceptionFrameSourcePropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PropertiesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PropertiesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVideoProfileChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VideoProfileChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVideoProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VideoProfileChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCameraIntrinsicsChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CameraIntrinsicsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCameraIntrinsicsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CameraIntrinsicsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getDeviceKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Available(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Active(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsControlled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsControlled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        var _r: *IVectorView(PerceptionVideoProfile) = undefined;
        const _c = self.vtable.get_SupportedVideoProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailableVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        var _r: *IVectorView(PerceptionVideoProfile) = undefined;
        const _c = self.vtable.get_AvailableVideoProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoProfile(self: *@This()) core.HResult!*PerceptionVideoProfile {
        var _r: *PerceptionVideoProfile = undefined;
        const _c = self.vtable.get_VideoProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraIntrinsics(self: *@This()) core.HResult!*CameraIntrinsics {
        var _r: *CameraIntrinsics = undefined;
        const _c = self.vtable.get_CameraIntrinsics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcquireControlSession(self: *@This()) core.HResult!*PerceptionControlSession {
        var _r: *PerceptionControlSession = undefined;
        const _c = self.vtable.AcquireControlSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanControlIndependentlyFrom(self: *@This(), targetId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanControlIndependentlyFrom(@ptrCast(self), targetId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCorrelatedWith(self: *@This(), targetId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCorrelatedWith(@ptrCast(self), targetId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetTransformTo(self: *@This(), targetId: HSTRING, result: Matrix4x4) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetTransformTo(@ptrCast(self), targetId, result, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetDepthCorrelatedCameraIntrinsicsAsync(self: *@This(), target: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics) {
        var _r: *IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics) = undefined;
        const _c = self.vtable.TryGetDepthCorrelatedCameraIntrinsicsAsync(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetDepthCorrelatedCoordinateMapperAsync(self: *@This(), targetId: HSTRING, depthFrameSourceToMapWith: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper) {
        var _r: *IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper) = undefined;
        const _c = self.vtable.TryGetDepthCorrelatedCoordinateMapperAsync(@ptrCast(self), targetId, depthFrameSourceToMapWith, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetVideoProfileAsync(self: *@This(), controlSession: *PerceptionControlSession, profile: *PerceptionVideoProfile) core.HResult!*IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) {
        var _r: *IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) = undefined;
        const _c = self.vtable.TrySetVideoProfileAsync(@ptrCast(self), controlSession, profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenReader(self: *@This()) core.HResult!*PerceptionInfraredFrameReader {
        var _r: *PerceptionInfraredFrameReader = undefined;
        const _c = self.vtable.OpenReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionInfraredFrameSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55b08742-1808-494e-9e30-9d2a7be8f700";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AvailableChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AvailableChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ActiveChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActiveChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PropertiesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameSource,PerceptionFrameSourcePropertiesChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PropertiesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VideoProfileChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VideoProfileChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CameraIntrinsicsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CameraIntrinsicsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceKind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Available: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Active: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsControlled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
        get_SupportedVideoProfiles: *const fn(self: *anyopaque, _r: **IVectorView(PerceptionVideoProfile)) callconv(.winapi) HRESULT,
        get_AvailableVideoProfiles: *const fn(self: *anyopaque, _r: **IVectorView(PerceptionVideoProfile)) callconv(.winapi) HRESULT,
        get_VideoProfile: *const fn(self: *anyopaque, _r: **PerceptionVideoProfile) callconv(.winapi) HRESULT,
        get_CameraIntrinsics: *const fn(self: *anyopaque, _r: **CameraIntrinsics) callconv(.winapi) HRESULT,
        AcquireControlSession: *const fn(self: *anyopaque, _r: **PerceptionControlSession) callconv(.winapi) HRESULT,
        CanControlIndependentlyFrom: *const fn(self: *anyopaque, targetId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsCorrelatedWith: *const fn(self: *anyopaque, targetId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        TryGetTransformTo: *const fn(self: *anyopaque, targetId: HSTRING, result: Matrix4x4, _r: *bool) callconv(.winapi) HRESULT,
        TryGetDepthCorrelatedCameraIntrinsicsAsync: *const fn(self: *anyopaque, target: *PerceptionDepthFrameSource, _r: **IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics)) callconv(.winapi) HRESULT,
        TryGetDepthCorrelatedCoordinateMapperAsync: *const fn(self: *anyopaque, targetId: HSTRING, depthFrameSourceToMapWith: *PerceptionDepthFrameSource, _r: **IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper)) callconv(.winapi) HRESULT,
        TrySetVideoProfileAsync: *const fn(self: *anyopaque, controlSession: *PerceptionControlSession, profile: *PerceptionVideoProfile, _r: **IAsyncOperation(PerceptionFrameSourcePropertyChangeResult)) callconv(.winapi) HRESULT,
        OpenReader: *const fn(self: *anyopaque, _r: **PerceptionInfraredFrameReader) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionInfraredFrameSource2 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionInfraredFrameSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dcd4d798-4b0b-4300-8d85-410817faa032";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionInfraredFrameSourceAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionInfraredFrameSource {
        var _r: *PerceptionInfraredFrameSource = undefined;
        const _c = self.vtable.get_FrameSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionInfraredFrameSourceAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d334120-95ce-4660-907a-d98035aa2b7c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameSource: *const fn(self: *anyopaque, _r: **PerceptionInfraredFrameSource) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionInfraredFrameSourceRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionInfraredFrameSource {
        var _r: *PerceptionInfraredFrameSource = undefined;
        const _c = self.vtable.get_FrameSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionInfraredFrameSourceRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea1a8071-7a70-4a61-af94-07303853f695";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameSource: *const fn(self: *anyopaque, _r: **PerceptionInfraredFrameSource) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionInfraredFrameSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateWatcher(self: *@This()) core.HResult!*PerceptionInfraredFrameSourceWatcher {
        var _r: *PerceptionInfraredFrameSourceWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PerceptionInfraredFrameSource)) {
        var _r: *IAsyncOperation(IVectorView(PerceptionInfraredFrameSource)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(PerceptionInfraredFrameSource) {
        var _r: *IAsyncOperation(PerceptionInfraredFrameSource) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(PerceptionFrameSourceAccessStatus) {
        var _r: *IAsyncOperation(PerceptionFrameSourceAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionInfraredFrameSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5df3cca2-01f8-4a87-b859-d5e5b7e1de47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **PerceptionInfraredFrameSourceWatcher) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(PerceptionInfraredFrameSource))) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(PerceptionInfraredFrameSource)) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PerceptionFrameSourceAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionInfraredFrameSourceWatcher = extern struct {
    vtable: *const VTable,
    pub fn addSourceAdded(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,PerceptionInfraredFrameSourceAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceRemoved(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,PerceptionInfraredFrameSourceRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        var _r: DeviceWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionInfraredFrameSourceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "383cff99-d70c-444d-a8b0-720c2e66fe3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SourceAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,PerceptionInfraredFrameSourceAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,PerceptionInfraredFrameSourceRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DeviceWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionVideoProfile = extern struct {
    vtable: *const VTable,
    pub fn getBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        var _r: BitmapPixelFormat = undefined;
        const _c = self.vtable.get_BitmapPixelFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitmapAlphaMode(self: *@This()) core.HResult!BitmapAlphaMode {
        var _r: BitmapAlphaMode = undefined;
        const _c = self.vtable.get_BitmapAlphaMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeight(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_FrameDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEqual(self: *@This(), other: *PerceptionVideoProfile) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEqual(@ptrCast(self), other, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.IPerceptionVideoProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75763ea3-011a-470e-8225-6f05ade25648";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BitmapPixelFormat: *const fn(self: *anyopaque, _r: *BitmapPixelFormat) callconv(.winapi) HRESULT,
        get_BitmapAlphaMode: *const fn(self: *anyopaque, _r: *BitmapAlphaMode) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_FrameDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        IsEqual: *const fn(self: *anyopaque, other: *PerceptionVideoProfile, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const KnownCameraIntrinsicsProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getFocalLength() core.HResult!HSTRING {
        const factory = @This().IKnownCameraIntrinsicsPropertiesStaticsCache.get();
        return try factory.getFocalLength();
    }
    pub fn getPrincipalPoint() core.HResult!HSTRING {
        const factory = @This().IKnownCameraIntrinsicsPropertiesStaticsCache.get();
        return try factory.getPrincipalPoint();
    }
    pub fn getRadialDistortion() core.HResult!HSTRING {
        const factory = @This().IKnownCameraIntrinsicsPropertiesStaticsCache.get();
        return try factory.getRadialDistortion();
    }
    pub fn getTangentialDistortion() core.HResult!HSTRING {
        const factory = @This().IKnownCameraIntrinsicsPropertiesStaticsCache.get();
        return try factory.getTangentialDistortion();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.KnownCameraIntrinsicsProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownCameraIntrinsicsPropertiesStaticsCache: FactoryCache(IKnownCameraIntrinsicsPropertiesStatics, RUNTIME_NAME) = .{};
};
pub const KnownPerceptionColorFrameSourceProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getExposure() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionColorFrameSourcePropertiesStaticsCache.get();
        return try factory.getExposure();
    }
    pub fn getAutoExposureEnabled() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionColorFrameSourcePropertiesStaticsCache.get();
        return try factory.getAutoExposureEnabled();
    }
    pub fn getExposureCompensation() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionColorFrameSourcePropertiesStaticsCache.get();
        return try factory.getExposureCompensation();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.KnownPerceptionColorFrameSourceProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownPerceptionColorFrameSourcePropertiesStaticsCache: FactoryCache(IKnownPerceptionColorFrameSourcePropertiesStatics, RUNTIME_NAME) = .{};
};
pub const KnownPerceptionDepthFrameSourceProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMinDepth() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionDepthFrameSourcePropertiesStaticsCache.get();
        return try factory.getMinDepth();
    }
    pub fn getMaxDepth() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionDepthFrameSourcePropertiesStaticsCache.get();
        return try factory.getMaxDepth();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.KnownPerceptionDepthFrameSourceProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownPerceptionDepthFrameSourcePropertiesStaticsCache: FactoryCache(IKnownPerceptionDepthFrameSourcePropertiesStatics, RUNTIME_NAME) = .{};
};
pub const KnownPerceptionFrameSourceProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getDeviceId() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionFrameSourcePropertiesStatics2Cache.get();
        return try factory.getDeviceId();
    }
    pub fn getId() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionFrameSourcePropertiesStaticsCache.get();
        return try factory.getId();
    }
    pub fn getPhysicalDeviceIds() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionFrameSourcePropertiesStaticsCache.get();
        return try factory.getPhysicalDeviceIds();
    }
    pub fn getFrameKind() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionFrameSourcePropertiesStaticsCache.get();
        return try factory.getFrameKind();
    }
    pub fn getDeviceModelVersion() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionFrameSourcePropertiesStaticsCache.get();
        return try factory.getDeviceModelVersion();
    }
    pub fn getEnclosureLocation() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionFrameSourcePropertiesStaticsCache.get();
        return try factory.getEnclosureLocation();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.KnownPerceptionFrameSourceProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownPerceptionFrameSourcePropertiesStatics2Cache: FactoryCache(IKnownPerceptionFrameSourcePropertiesStatics2, RUNTIME_NAME) = .{};
    var _IKnownPerceptionFrameSourcePropertiesStaticsCache: FactoryCache(IKnownPerceptionFrameSourcePropertiesStatics, RUNTIME_NAME) = .{};
};
pub const KnownPerceptionInfraredFrameSourceProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getExposure() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionInfraredFrameSourcePropertiesStaticsCache.get();
        return try factory.getExposure();
    }
    pub fn getAutoExposureEnabled() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionInfraredFrameSourcePropertiesStaticsCache.get();
        return try factory.getAutoExposureEnabled();
    }
    pub fn getExposureCompensation() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionInfraredFrameSourcePropertiesStaticsCache.get();
        return try factory.getExposureCompensation();
    }
    pub fn getActiveIlluminationEnabled() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionInfraredFrameSourcePropertiesStaticsCache.get();
        return try factory.getActiveIlluminationEnabled();
    }
    pub fn getAmbientSubtractionEnabled() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionInfraredFrameSourcePropertiesStaticsCache.get();
        return try factory.getAmbientSubtractionEnabled();
    }
    pub fn getStructureLightPatternEnabled() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionInfraredFrameSourcePropertiesStaticsCache.get();
        return try factory.getStructureLightPatternEnabled();
    }
    pub fn getInterleavedIlluminationEnabled() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionInfraredFrameSourcePropertiesStaticsCache.get();
        return try factory.getInterleavedIlluminationEnabled();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.KnownPerceptionInfraredFrameSourceProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownPerceptionInfraredFrameSourcePropertiesStaticsCache: FactoryCache(IKnownPerceptionInfraredFrameSourcePropertiesStatics, RUNTIME_NAME) = .{};
};
pub const KnownPerceptionVideoFrameSourceProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getVideoProfile() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoFrameSourcePropertiesStaticsCache.get();
        return try factory.getVideoProfile();
    }
    pub fn getSupportedVideoProfiles() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoFrameSourcePropertiesStaticsCache.get();
        return try factory.getSupportedVideoProfiles();
    }
    pub fn getAvailableVideoProfiles() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoFrameSourcePropertiesStaticsCache.get();
        return try factory.getAvailableVideoProfiles();
    }
    pub fn getIsMirrored() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoFrameSourcePropertiesStaticsCache.get();
        return try factory.getIsMirrored();
    }
    pub fn getCameraIntrinsics() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoFrameSourcePropertiesStaticsCache.get();
        return try factory.getCameraIntrinsics();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.KnownPerceptionVideoFrameSourceProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownPerceptionVideoFrameSourcePropertiesStaticsCache: FactoryCache(IKnownPerceptionVideoFrameSourcePropertiesStatics, RUNTIME_NAME) = .{};
};
pub const KnownPerceptionVideoProfileProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getBitmapPixelFormat() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoProfilePropertiesStaticsCache.get();
        return try factory.getBitmapPixelFormat();
    }
    pub fn getBitmapAlphaMode() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoProfilePropertiesStaticsCache.get();
        return try factory.getBitmapAlphaMode();
    }
    pub fn getWidth() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoProfilePropertiesStaticsCache.get();
        return try factory.getWidth();
    }
    pub fn getHeight() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoProfilePropertiesStaticsCache.get();
        return try factory.getHeight();
    }
    pub fn getFrameDuration() core.HResult!HSTRING {
        const factory = @This().IKnownPerceptionVideoProfilePropertiesStaticsCache.get();
        return try factory.getFrameDuration();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.KnownPerceptionVideoProfileProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownPerceptionVideoProfilePropertiesStaticsCache: FactoryCache(IKnownPerceptionVideoProfilePropertiesStatics, RUNTIME_NAME) = .{};
};
pub const PerceptionColorFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *IPerceptionColorFrame = @ptrCast(self);
        return try this.getVideoFrame();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionColorFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionColorFrame.GUID;
    pub const IID: Guid = IPerceptionColorFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionColorFrame.SIGNATURE);
};
pub const PerceptionColorFrameArrivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRelativeTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IPerceptionColorFrameArrivedEventArgs = @ptrCast(self);
        return try this.getRelativeTime();
    }
    pub fn TryOpenFrame(self: *@This()) core.HResult!*PerceptionColorFrame {
        const this: *IPerceptionColorFrameArrivedEventArgs = @ptrCast(self);
        return try this.TryOpenFrame();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionColorFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionColorFrameArrivedEventArgs.GUID;
    pub const IID: Guid = IPerceptionColorFrameArrivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionColorFrameArrivedEventArgs.SIGNATURE);
};
pub const PerceptionColorFrameReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameReader,PerceptionColorFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameReader = @ptrCast(self);
        return try this.addFrameArrived(handler);
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameReader = @ptrCast(self);
        return try this.removeFrameArrived(token);
    }
    pub fn getSource(self: *@This()) core.HResult!*PerceptionColorFrameSource {
        const this: *IPerceptionColorFrameReader = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getIsPaused(self: *@This()) core.HResult!bool {
        const this: *IPerceptionColorFrameReader = @ptrCast(self);
        return try this.getIsPaused();
    }
    pub fn putIsPaused(self: *@This(), value: bool) core.HResult!void {
        const this: *IPerceptionColorFrameReader = @ptrCast(self);
        return try this.putIsPaused(value);
    }
    pub fn TryReadLatestFrame(self: *@This()) core.HResult!*PerceptionColorFrame {
        const this: *IPerceptionColorFrameReader = @ptrCast(self);
        return try this.TryReadLatestFrame();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionColorFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionColorFrameReader.GUID;
    pub const IID: Guid = IPerceptionColorFrameReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionColorFrameReader.SIGNATURE);
};
pub const PerceptionColorFrameSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAvailableChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.addAvailableChanged(handler);
    }
    pub fn removeAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.removeAvailableChanged(token);
    }
    pub fn addActiveChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.addActiveChanged(handler);
    }
    pub fn removeActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.removeActiveChanged(token);
    }
    pub fn addPropertiesChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,PerceptionFrameSourcePropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.addPropertiesChanged(handler);
    }
    pub fn removePropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.removePropertiesChanged(token);
    }
    pub fn addVideoProfileChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.addVideoProfileChanged(handler);
    }
    pub fn removeVideoProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.removeVideoProfileChanged(token);
    }
    pub fn addCameraIntrinsicsChanged(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.addCameraIntrinsicsChanged(handler);
    }
    pub fn removeCameraIntrinsicsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.removeCameraIntrinsicsChanged(token);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDeviceKind(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getDeviceKind();
    }
    pub fn getAvailable(self: *@This()) core.HResult!bool {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getAvailable();
    }
    pub fn getActive(self: *@This()) core.HResult!bool {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getActive();
    }
    pub fn getIsControlled(self: *@This()) core.HResult!bool {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getIsControlled();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getSupportedVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getSupportedVideoProfiles();
    }
    pub fn getAvailableVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getAvailableVideoProfiles();
    }
    pub fn getVideoProfile(self: *@This()) core.HResult!*PerceptionVideoProfile {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getVideoProfile();
    }
    pub fn getCameraIntrinsics(self: *@This()) core.HResult!*CameraIntrinsics {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.getCameraIntrinsics();
    }
    pub fn AcquireControlSession(self: *@This()) core.HResult!*PerceptionControlSession {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.AcquireControlSession();
    }
    pub fn CanControlIndependentlyFrom(self: *@This(), targetId: HSTRING) core.HResult!bool {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.CanControlIndependentlyFrom(targetId);
    }
    pub fn IsCorrelatedWith(self: *@This(), targetId: HSTRING) core.HResult!bool {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.IsCorrelatedWith(targetId);
    }
    pub fn TryGetTransformTo(self: *@This(), targetId: HSTRING, result: Matrix4x4) core.HResult!bool {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.TryGetTransformTo(targetId, result);
    }
    pub fn TryGetDepthCorrelatedCameraIntrinsicsAsync(self: *@This(), correlatedDepthFrameSource: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics) {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.TryGetDepthCorrelatedCameraIntrinsicsAsync(correlatedDepthFrameSource);
    }
    pub fn TryGetDepthCorrelatedCoordinateMapperAsync(self: *@This(), targetSourceId: HSTRING, correlatedDepthFrameSource: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper) {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.TryGetDepthCorrelatedCoordinateMapperAsync(targetSourceId, correlatedDepthFrameSource);
    }
    pub fn TrySetVideoProfileAsync(self: *@This(), controlSession: *PerceptionControlSession, profile: *PerceptionVideoProfile) core.HResult!*IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.TrySetVideoProfileAsync(controlSession, profile);
    }
    pub fn OpenReader(self: *@This()) core.HResult!*PerceptionColorFrameReader {
        const this: *IPerceptionColorFrameSource = @ptrCast(self);
        return try this.OpenReader();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPerceptionColorFrameSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPerceptionColorFrameSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWatcher() core.HResult!*PerceptionColorFrameSourceWatcher {
        const factory = @This().IPerceptionColorFrameSourceStaticsCache.get();
        return try factory.CreateWatcher();
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(IVectorView(PerceptionColorFrameSource)) {
        const factory = @This().IPerceptionColorFrameSourceStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub fn FromIdAsync(id: HSTRING) core.HResult!*IAsyncOperation(PerceptionColorFrameSource) {
        const factory = @This().IPerceptionColorFrameSourceStaticsCache.get();
        return try factory.FromIdAsync(id);
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(PerceptionFrameSourceAccessStatus) {
        const factory = @This().IPerceptionColorFrameSourceStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionColorFrameSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionColorFrameSource.GUID;
    pub const IID: Guid = IPerceptionColorFrameSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionColorFrameSource.SIGNATURE);
    var _IPerceptionColorFrameSourceStaticsCache: FactoryCache(IPerceptionColorFrameSourceStatics, RUNTIME_NAME) = .{};
};
pub const PerceptionColorFrameSourceAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionColorFrameSource {
        const this: *IPerceptionColorFrameSourceAddedEventArgs = @ptrCast(self);
        return try this.getFrameSource();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionColorFrameSourceAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionColorFrameSourceAddedEventArgs.GUID;
    pub const IID: Guid = IPerceptionColorFrameSourceAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionColorFrameSourceAddedEventArgs.SIGNATURE);
};
pub const PerceptionColorFrameSourceRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionColorFrameSource {
        const this: *IPerceptionColorFrameSourceRemovedEventArgs = @ptrCast(self);
        return try this.getFrameSource();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionColorFrameSourceRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionColorFrameSourceRemovedEventArgs.GUID;
    pub const IID: Guid = IPerceptionColorFrameSourceRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionColorFrameSourceRemovedEventArgs.SIGNATURE);
};
pub const PerceptionColorFrameSourceWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSourceAdded(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,PerceptionColorFrameSourceAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.addSourceAdded(handler);
    }
    pub fn removeSourceAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.removeSourceAdded(token);
    }
    pub fn addSourceRemoved(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,PerceptionColorFrameSourceRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.addSourceRemoved(handler);
    }
    pub fn removeSourceRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.removeSourceRemoved(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PerceptionColorFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IPerceptionColorFrameSourceWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionColorFrameSourceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionColorFrameSourceWatcher.GUID;
    pub const IID: Guid = IPerceptionColorFrameSourceWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionColorFrameSourceWatcher.SIGNATURE);
};
pub const PerceptionControlSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addControlLost(self: *@This(), handler: *TypedEventHandler(PerceptionControlSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionControlSession = @ptrCast(self);
        return try this.addControlLost(handler);
    }
    pub fn removeControlLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionControlSession = @ptrCast(self);
        return try this.removeControlLost(token);
    }
    pub fn TrySetPropertyAsync(self: *@This(), name: HSTRING, value: *IInspectable) core.HResult!*IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) {
        const this: *IPerceptionControlSession = @ptrCast(self);
        return try this.TrySetPropertyAsync(name, value);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionControlSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionControlSession.GUID;
    pub const IID: Guid = IPerceptionControlSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionControlSession.SIGNATURE);
};
pub const PerceptionDepthCorrelatedCameraIntrinsics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn UnprojectPixelAtCorrelatedDepth(self: *@This(), pixelCoordinate: Point, depthFrame: *PerceptionDepthFrame) core.HResult!Vector3 {
        const this: *IPerceptionDepthCorrelatedCameraIntrinsics = @ptrCast(self);
        return try this.UnprojectPixelAtCorrelatedDepth(pixelCoordinate, depthFrame);
    }
    pub fn UnprojectPixelsAtCorrelatedDepth(self: *@This(), sourceCoordinates: [*]Point, depthFrame: *PerceptionDepthFrame, results: [*]Vector3) core.HResult!void {
        const this: *IPerceptionDepthCorrelatedCameraIntrinsics = @ptrCast(self);
        return try this.UnprojectPixelsAtCorrelatedDepth(sourceCoordinates, depthFrame, results);
    }
    pub fn UnprojectRegionPixelsAtCorrelatedDepthAsync(self: *@This(), region: Rect, depthFrame: *PerceptionDepthFrame, results: [*]Vector3) core.HResult!*IAsyncAction {
        const this: *IPerceptionDepthCorrelatedCameraIntrinsics = @ptrCast(self);
        return try this.UnprojectRegionPixelsAtCorrelatedDepthAsync(region, depthFrame, results);
    }
    pub fn UnprojectAllPixelsAtCorrelatedDepthAsync(self: *@This(), depthFrame: *PerceptionDepthFrame, results: [*]Vector3) core.HResult!*IAsyncAction {
        const this: *IPerceptionDepthCorrelatedCameraIntrinsics = @ptrCast(self);
        return try this.UnprojectAllPixelsAtCorrelatedDepthAsync(depthFrame, results);
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionDepthCorrelatedCameraIntrinsics.GUID;
    pub const IID: Guid = IPerceptionDepthCorrelatedCameraIntrinsics.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionDepthCorrelatedCameraIntrinsics.SIGNATURE);
};
pub const PerceptionDepthCorrelatedCoordinateMapper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn MapPixelToTarget(self: *@This(), sourcePixelCoordinate: Point, depthFrame: *PerceptionDepthFrame) core.HResult!Point {
        const this: *IPerceptionDepthCorrelatedCoordinateMapper = @ptrCast(self);
        return try this.MapPixelToTarget(sourcePixelCoordinate, depthFrame);
    }
    pub fn MapPixelsToTarget(self: *@This(), sourceCoordinates: [*]Point, depthFrame: *PerceptionDepthFrame, results: [*]Point) core.HResult!void {
        const this: *IPerceptionDepthCorrelatedCoordinateMapper = @ptrCast(self);
        return try this.MapPixelsToTarget(sourceCoordinates, depthFrame, results);
    }
    pub fn MapRegionOfPixelsToTargetAsync(self: *@This(), region: Rect, depthFrame: *PerceptionDepthFrame, targetCoordinates: [*]Point) core.HResult!*IAsyncAction {
        const this: *IPerceptionDepthCorrelatedCoordinateMapper = @ptrCast(self);
        return try this.MapRegionOfPixelsToTargetAsync(region, depthFrame, targetCoordinates);
    }
    pub fn MapAllPixelsToTargetAsync(self: *@This(), depthFrame: *PerceptionDepthFrame, targetCoordinates: [*]Point) core.HResult!*IAsyncAction {
        const this: *IPerceptionDepthCorrelatedCoordinateMapper = @ptrCast(self);
        return try this.MapAllPixelsToTargetAsync(depthFrame, targetCoordinates);
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionDepthCorrelatedCoordinateMapper.GUID;
    pub const IID: Guid = IPerceptionDepthCorrelatedCoordinateMapper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionDepthCorrelatedCoordinateMapper.SIGNATURE);
};
pub const PerceptionDepthFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *IPerceptionDepthFrame = @ptrCast(self);
        return try this.getVideoFrame();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionDepthFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionDepthFrame.GUID;
    pub const IID: Guid = IPerceptionDepthFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionDepthFrame.SIGNATURE);
};
pub const PerceptionDepthFrameArrivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRelativeTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IPerceptionDepthFrameArrivedEventArgs = @ptrCast(self);
        return try this.getRelativeTime();
    }
    pub fn TryOpenFrame(self: *@This()) core.HResult!*PerceptionDepthFrame {
        const this: *IPerceptionDepthFrameArrivedEventArgs = @ptrCast(self);
        return try this.TryOpenFrame();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionDepthFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionDepthFrameArrivedEventArgs.GUID;
    pub const IID: Guid = IPerceptionDepthFrameArrivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionDepthFrameArrivedEventArgs.SIGNATURE);
};
pub const PerceptionDepthFrameReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameReader,PerceptionDepthFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameReader = @ptrCast(self);
        return try this.addFrameArrived(handler);
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameReader = @ptrCast(self);
        return try this.removeFrameArrived(token);
    }
    pub fn getSource(self: *@This()) core.HResult!*PerceptionDepthFrameSource {
        const this: *IPerceptionDepthFrameReader = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getIsPaused(self: *@This()) core.HResult!bool {
        const this: *IPerceptionDepthFrameReader = @ptrCast(self);
        return try this.getIsPaused();
    }
    pub fn putIsPaused(self: *@This(), value: bool) core.HResult!void {
        const this: *IPerceptionDepthFrameReader = @ptrCast(self);
        return try this.putIsPaused(value);
    }
    pub fn TryReadLatestFrame(self: *@This()) core.HResult!*PerceptionDepthFrame {
        const this: *IPerceptionDepthFrameReader = @ptrCast(self);
        return try this.TryReadLatestFrame();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionDepthFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionDepthFrameReader.GUID;
    pub const IID: Guid = IPerceptionDepthFrameReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionDepthFrameReader.SIGNATURE);
};
pub const PerceptionDepthFrameSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAvailableChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.addAvailableChanged(handler);
    }
    pub fn removeAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.removeAvailableChanged(token);
    }
    pub fn addActiveChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.addActiveChanged(handler);
    }
    pub fn removeActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.removeActiveChanged(token);
    }
    pub fn addPropertiesChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,PerceptionFrameSourcePropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.addPropertiesChanged(handler);
    }
    pub fn removePropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.removePropertiesChanged(token);
    }
    pub fn addVideoProfileChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.addVideoProfileChanged(handler);
    }
    pub fn removeVideoProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.removeVideoProfileChanged(token);
    }
    pub fn addCameraIntrinsicsChanged(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.addCameraIntrinsicsChanged(handler);
    }
    pub fn removeCameraIntrinsicsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.removeCameraIntrinsicsChanged(token);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDeviceKind(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getDeviceKind();
    }
    pub fn getAvailable(self: *@This()) core.HResult!bool {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getAvailable();
    }
    pub fn getActive(self: *@This()) core.HResult!bool {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getActive();
    }
    pub fn getIsControlled(self: *@This()) core.HResult!bool {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getIsControlled();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getSupportedVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getSupportedVideoProfiles();
    }
    pub fn getAvailableVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getAvailableVideoProfiles();
    }
    pub fn getVideoProfile(self: *@This()) core.HResult!*PerceptionVideoProfile {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getVideoProfile();
    }
    pub fn getCameraIntrinsics(self: *@This()) core.HResult!*CameraIntrinsics {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.getCameraIntrinsics();
    }
    pub fn AcquireControlSession(self: *@This()) core.HResult!*PerceptionControlSession {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.AcquireControlSession();
    }
    pub fn CanControlIndependentlyFrom(self: *@This(), targetId: HSTRING) core.HResult!bool {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.CanControlIndependentlyFrom(targetId);
    }
    pub fn IsCorrelatedWith(self: *@This(), targetId: HSTRING) core.HResult!bool {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.IsCorrelatedWith(targetId);
    }
    pub fn TryGetTransformTo(self: *@This(), targetId: HSTRING, result: Matrix4x4) core.HResult!bool {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.TryGetTransformTo(targetId, result);
    }
    pub fn TryGetDepthCorrelatedCameraIntrinsicsAsync(self: *@This(), target: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics) {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.TryGetDepthCorrelatedCameraIntrinsicsAsync(target);
    }
    pub fn TryGetDepthCorrelatedCoordinateMapperAsync(self: *@This(), targetId: HSTRING, depthFrameSourceToMapWith: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper) {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.TryGetDepthCorrelatedCoordinateMapperAsync(targetId, depthFrameSourceToMapWith);
    }
    pub fn TrySetVideoProfileAsync(self: *@This(), controlSession: *PerceptionControlSession, profile: *PerceptionVideoProfile) core.HResult!*IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.TrySetVideoProfileAsync(controlSession, profile);
    }
    pub fn OpenReader(self: *@This()) core.HResult!*PerceptionDepthFrameReader {
        const this: *IPerceptionDepthFrameSource = @ptrCast(self);
        return try this.OpenReader();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPerceptionDepthFrameSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPerceptionDepthFrameSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWatcher() core.HResult!*PerceptionDepthFrameSourceWatcher {
        const factory = @This().IPerceptionDepthFrameSourceStaticsCache.get();
        return try factory.CreateWatcher();
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(IVectorView(PerceptionDepthFrameSource)) {
        const factory = @This().IPerceptionDepthFrameSourceStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub fn FromIdAsync(id: HSTRING) core.HResult!*IAsyncOperation(PerceptionDepthFrameSource) {
        const factory = @This().IPerceptionDepthFrameSourceStaticsCache.get();
        return try factory.FromIdAsync(id);
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(PerceptionFrameSourceAccessStatus) {
        const factory = @This().IPerceptionDepthFrameSourceStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionDepthFrameSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionDepthFrameSource.GUID;
    pub const IID: Guid = IPerceptionDepthFrameSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionDepthFrameSource.SIGNATURE);
    var _IPerceptionDepthFrameSourceStaticsCache: FactoryCache(IPerceptionDepthFrameSourceStatics, RUNTIME_NAME) = .{};
};
pub const PerceptionDepthFrameSourceAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionDepthFrameSource {
        const this: *IPerceptionDepthFrameSourceAddedEventArgs = @ptrCast(self);
        return try this.getFrameSource();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionDepthFrameSourceAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionDepthFrameSourceAddedEventArgs.GUID;
    pub const IID: Guid = IPerceptionDepthFrameSourceAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionDepthFrameSourceAddedEventArgs.SIGNATURE);
};
pub const PerceptionDepthFrameSourceRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionDepthFrameSource {
        const this: *IPerceptionDepthFrameSourceRemovedEventArgs = @ptrCast(self);
        return try this.getFrameSource();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionDepthFrameSourceRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionDepthFrameSourceRemovedEventArgs.GUID;
    pub const IID: Guid = IPerceptionDepthFrameSourceRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionDepthFrameSourceRemovedEventArgs.SIGNATURE);
};
pub const PerceptionDepthFrameSourceWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSourceAdded(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,PerceptionDepthFrameSourceAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.addSourceAdded(handler);
    }
    pub fn removeSourceAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.removeSourceAdded(token);
    }
    pub fn addSourceRemoved(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,PerceptionDepthFrameSourceRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.addSourceRemoved(handler);
    }
    pub fn removeSourceRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.removeSourceRemoved(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PerceptionDepthFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IPerceptionDepthFrameSourceWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionDepthFrameSourceWatcher.GUID;
    pub const IID: Guid = IPerceptionDepthFrameSourceWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionDepthFrameSourceWatcher.SIGNATURE);
};
pub const PerceptionFrameSourceAccessStatus = enum(i32) {
    Unspecified = 0,
    Allowed = 1,
    DeniedByUser = 2,
    DeniedBySystem = 3,
};
pub const PerceptionFrameSourcePropertiesChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCollectionChange(self: *@This()) core.HResult!CollectionChange {
        const this: *IPerceptionFrameSourcePropertiesChangedEventArgs = @ptrCast(self);
        return try this.getCollectionChange();
    }
    pub fn getKey(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionFrameSourcePropertiesChangedEventArgs = @ptrCast(self);
        return try this.getKey();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionFrameSourcePropertiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionFrameSourcePropertiesChangedEventArgs.GUID;
    pub const IID: Guid = IPerceptionFrameSourcePropertiesChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionFrameSourcePropertiesChangedEventArgs.SIGNATURE);
};
pub const PerceptionFrameSourcePropertyChangeResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!PerceptionFrameSourcePropertyChangeStatus {
        const this: *IPerceptionFrameSourcePropertyChangeResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getNewValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPerceptionFrameSourcePropertyChangeResult = @ptrCast(self);
        return try this.getNewValue();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionFrameSourcePropertyChangeResult.GUID;
    pub const IID: Guid = IPerceptionFrameSourcePropertyChangeResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionFrameSourcePropertyChangeResult.SIGNATURE);
};
pub const PerceptionFrameSourcePropertyChangeStatus = enum(i32) {
    Unknown = 0,
    Accepted = 1,
    LostControl = 2,
    PropertyNotSupported = 3,
    PropertyReadOnly = 4,
    ValueOutOfRange = 5,
};
pub const PerceptionInfraredFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *IPerceptionInfraredFrame = @ptrCast(self);
        return try this.getVideoFrame();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionInfraredFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionInfraredFrame.GUID;
    pub const IID: Guid = IPerceptionInfraredFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionInfraredFrame.SIGNATURE);
};
pub const PerceptionInfraredFrameArrivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRelativeTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IPerceptionInfraredFrameArrivedEventArgs = @ptrCast(self);
        return try this.getRelativeTime();
    }
    pub fn TryOpenFrame(self: *@This()) core.HResult!*PerceptionInfraredFrame {
        const this: *IPerceptionInfraredFrameArrivedEventArgs = @ptrCast(self);
        return try this.TryOpenFrame();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionInfraredFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionInfraredFrameArrivedEventArgs.GUID;
    pub const IID: Guid = IPerceptionInfraredFrameArrivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionInfraredFrameArrivedEventArgs.SIGNATURE);
};
pub const PerceptionInfraredFrameReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameReader,PerceptionInfraredFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameReader = @ptrCast(self);
        return try this.addFrameArrived(handler);
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameReader = @ptrCast(self);
        return try this.removeFrameArrived(token);
    }
    pub fn getSource(self: *@This()) core.HResult!*PerceptionInfraredFrameSource {
        const this: *IPerceptionInfraredFrameReader = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getIsPaused(self: *@This()) core.HResult!bool {
        const this: *IPerceptionInfraredFrameReader = @ptrCast(self);
        return try this.getIsPaused();
    }
    pub fn putIsPaused(self: *@This(), value: bool) core.HResult!void {
        const this: *IPerceptionInfraredFrameReader = @ptrCast(self);
        return try this.putIsPaused(value);
    }
    pub fn TryReadLatestFrame(self: *@This()) core.HResult!*PerceptionInfraredFrame {
        const this: *IPerceptionInfraredFrameReader = @ptrCast(self);
        return try this.TryReadLatestFrame();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionInfraredFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionInfraredFrameReader.GUID;
    pub const IID: Guid = IPerceptionInfraredFrameReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionInfraredFrameReader.SIGNATURE);
};
pub const PerceptionInfraredFrameSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAvailableChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.addAvailableChanged(handler);
    }
    pub fn removeAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.removeAvailableChanged(token);
    }
    pub fn addActiveChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.addActiveChanged(handler);
    }
    pub fn removeActiveChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.removeActiveChanged(token);
    }
    pub fn addPropertiesChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,PerceptionFrameSourcePropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.addPropertiesChanged(handler);
    }
    pub fn removePropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.removePropertiesChanged(token);
    }
    pub fn addVideoProfileChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.addVideoProfileChanged(handler);
    }
    pub fn removeVideoProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.removeVideoProfileChanged(token);
    }
    pub fn addCameraIntrinsicsChanged(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.addCameraIntrinsicsChanged(handler);
    }
    pub fn removeCameraIntrinsicsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.removeCameraIntrinsicsChanged(token);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDeviceKind(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getDeviceKind();
    }
    pub fn getAvailable(self: *@This()) core.HResult!bool {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getAvailable();
    }
    pub fn getActive(self: *@This()) core.HResult!bool {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getActive();
    }
    pub fn getIsControlled(self: *@This()) core.HResult!bool {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getIsControlled();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getSupportedVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getSupportedVideoProfiles();
    }
    pub fn getAvailableVideoProfiles(self: *@This()) core.HResult!*IVectorView(PerceptionVideoProfile) {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getAvailableVideoProfiles();
    }
    pub fn getVideoProfile(self: *@This()) core.HResult!*PerceptionVideoProfile {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getVideoProfile();
    }
    pub fn getCameraIntrinsics(self: *@This()) core.HResult!*CameraIntrinsics {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.getCameraIntrinsics();
    }
    pub fn AcquireControlSession(self: *@This()) core.HResult!*PerceptionControlSession {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.AcquireControlSession();
    }
    pub fn CanControlIndependentlyFrom(self: *@This(), targetId: HSTRING) core.HResult!bool {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.CanControlIndependentlyFrom(targetId);
    }
    pub fn IsCorrelatedWith(self: *@This(), targetId: HSTRING) core.HResult!bool {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.IsCorrelatedWith(targetId);
    }
    pub fn TryGetTransformTo(self: *@This(), targetId: HSTRING, result: Matrix4x4) core.HResult!bool {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.TryGetTransformTo(targetId, result);
    }
    pub fn TryGetDepthCorrelatedCameraIntrinsicsAsync(self: *@This(), target: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCameraIntrinsics) {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.TryGetDepthCorrelatedCameraIntrinsicsAsync(target);
    }
    pub fn TryGetDepthCorrelatedCoordinateMapperAsync(self: *@This(), targetId: HSTRING, depthFrameSourceToMapWith: *PerceptionDepthFrameSource) core.HResult!*IAsyncOperation(PerceptionDepthCorrelatedCoordinateMapper) {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.TryGetDepthCorrelatedCoordinateMapperAsync(targetId, depthFrameSourceToMapWith);
    }
    pub fn TrySetVideoProfileAsync(self: *@This(), controlSession: *PerceptionControlSession, profile: *PerceptionVideoProfile) core.HResult!*IAsyncOperation(PerceptionFrameSourcePropertyChangeResult) {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.TrySetVideoProfileAsync(controlSession, profile);
    }
    pub fn OpenReader(self: *@This()) core.HResult!*PerceptionInfraredFrameReader {
        const this: *IPerceptionInfraredFrameSource = @ptrCast(self);
        return try this.OpenReader();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPerceptionInfraredFrameSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPerceptionInfraredFrameSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWatcher() core.HResult!*PerceptionInfraredFrameSourceWatcher {
        const factory = @This().IPerceptionInfraredFrameSourceStaticsCache.get();
        return try factory.CreateWatcher();
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(IVectorView(PerceptionInfraredFrameSource)) {
        const factory = @This().IPerceptionInfraredFrameSourceStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub fn FromIdAsync(id: HSTRING) core.HResult!*IAsyncOperation(PerceptionInfraredFrameSource) {
        const factory = @This().IPerceptionInfraredFrameSourceStaticsCache.get();
        return try factory.FromIdAsync(id);
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(PerceptionFrameSourceAccessStatus) {
        const factory = @This().IPerceptionInfraredFrameSourceStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionInfraredFrameSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionInfraredFrameSource.GUID;
    pub const IID: Guid = IPerceptionInfraredFrameSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionInfraredFrameSource.SIGNATURE);
    var _IPerceptionInfraredFrameSourceStaticsCache: FactoryCache(IPerceptionInfraredFrameSourceStatics, RUNTIME_NAME) = .{};
};
pub const PerceptionInfraredFrameSourceAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionInfraredFrameSource {
        const this: *IPerceptionInfraredFrameSourceAddedEventArgs = @ptrCast(self);
        return try this.getFrameSource();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionInfraredFrameSourceAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionInfraredFrameSourceAddedEventArgs.GUID;
    pub const IID: Guid = IPerceptionInfraredFrameSourceAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionInfraredFrameSourceAddedEventArgs.SIGNATURE);
};
pub const PerceptionInfraredFrameSourceRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameSource(self: *@This()) core.HResult!*PerceptionInfraredFrameSource {
        const this: *IPerceptionInfraredFrameSourceRemovedEventArgs = @ptrCast(self);
        return try this.getFrameSource();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionInfraredFrameSourceRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionInfraredFrameSourceRemovedEventArgs.GUID;
    pub const IID: Guid = IPerceptionInfraredFrameSourceRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionInfraredFrameSourceRemovedEventArgs.SIGNATURE);
};
pub const PerceptionInfraredFrameSourceWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSourceAdded(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,PerceptionInfraredFrameSourceAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.addSourceAdded(handler);
    }
    pub fn removeSourceAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.removeSourceAdded(token);
    }
    pub fn addSourceRemoved(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,PerceptionInfraredFrameSourceRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.addSourceRemoved(handler);
    }
    pub fn removeSourceRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.removeSourceRemoved(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PerceptionInfraredFrameSourceWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!DeviceWatcherStatus {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IPerceptionInfraredFrameSourceWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionInfraredFrameSourceWatcher.GUID;
    pub const IID: Guid = IPerceptionInfraredFrameSourceWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionInfraredFrameSourceWatcher.SIGNATURE);
};
pub const PerceptionVideoProfile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        const this: *IPerceptionVideoProfile = @ptrCast(self);
        return try this.getBitmapPixelFormat();
    }
    pub fn getBitmapAlphaMode(self: *@This()) core.HResult!BitmapAlphaMode {
        const this: *IPerceptionVideoProfile = @ptrCast(self);
        return try this.getBitmapAlphaMode();
    }
    pub fn getWidth(self: *@This()) core.HResult!i32 {
        const this: *IPerceptionVideoProfile = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!i32 {
        const this: *IPerceptionVideoProfile = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getFrameDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IPerceptionVideoProfile = @ptrCast(self);
        return try this.getFrameDuration();
    }
    pub fn IsEqual(self: *@This(), other: *PerceptionVideoProfile) core.HResult!bool {
        const this: *IPerceptionVideoProfile = @ptrCast(self);
        return try this.IsEqual(other);
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.PerceptionVideoProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionVideoProfile.GUID;
    pub const IID: Guid = IPerceptionVideoProfile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionVideoProfile.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const VideoFrame = @import("../Media.zig").VideoFrame;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const Point = @import("../Foundation.zig").Point;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const DeviceWatcherStatus = @import("./Enumeration.zig").DeviceWatcherStatus;
const TrustLevel = @import("../root.zig").TrustLevel;
const BitmapPixelFormat = @import("../Graphics/Imaging.zig").BitmapPixelFormat;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const CollectionChange = @import("../Foundation/Collections.zig").CollectionChange;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Vector3 = @import("../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Matrix4x4 = @import("../Foundation/Numerics.zig").Matrix4x4;
const BitmapAlphaMode = @import("../Graphics/Imaging.zig").BitmapAlphaMode;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const CameraIntrinsics = @import("../Media/Devices/Core.zig").CameraIntrinsics;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
pub const Provider = @import("./Perception/Provider.zig");
