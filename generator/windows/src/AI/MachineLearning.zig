pub const IImageFeatureDescriptor = extern struct {
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
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.IImageFeatureDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "365585a5-171a-4a2a-985f-265159d3895a";
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
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IImageFeatureDescriptor2 = extern struct {
    vtable: *const VTable,
    pub fn getPixelRange(self: *@This()) core.HResult!LearningModelPixelRange {
        var _r: LearningModelPixelRange = undefined;
        const _c = self.vtable.get_PixelRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.IImageFeatureDescriptor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b27cca7-d533-5862-bb98-1611b155b0e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PixelRange: *const fn(self: *anyopaque, _r: *LearningModelPixelRange) callconv(.winapi) HRESULT,
    };
};
pub const IImageFeatureValue = extern struct {
    vtable: *const VTable,
    pub fn getVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_VideoFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.IImageFeatureValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0414fd9-c9aa-4405-b7fb-94f87c8a3037";
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
pub const IImageFeatureValueStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromVideoFrame(self: *@This(), image: *VideoFrame) core.HResult!*ImageFeatureValue {
        var _r: *ImageFeatureValue = undefined;
        const _c = self.vtable.CreateFromVideoFrame(@ptrCast(self), image, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.IImageFeatureValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1bc317fd-23cb-4610-b085-c8e1c87ebaa0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromVideoFrame: *const fn(self: *anyopaque, image: *VideoFrame, _r: **ImageFeatureValue) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModel = extern struct {
    vtable: *const VTable,
    pub fn getAuthor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Author(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDomain(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Domain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVersion(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMetadata(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var _r: *IMapView(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Metadata(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputFeatures(self: *@This()) core.HResult!*IVectorView(ILearningModelFeatureDescriptor) {
        var _r: *IVectorView(ILearningModelFeatureDescriptor) = undefined;
        const _c = self.vtable.get_InputFeatures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputFeatures(self: *@This()) core.HResult!*IVectorView(ILearningModelFeatureDescriptor) {
        var _r: *IVectorView(ILearningModelFeatureDescriptor) = undefined;
        const _c = self.vtable.get_OutputFeatures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b8e4920-489f-4e86-9128-265a327b78fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Author: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Domain: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_Metadata: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        get_InputFeatures: *const fn(self: *anyopaque, _r: **IVectorView(ILearningModelFeatureDescriptor)) callconv(.winapi) HRESULT,
        get_OutputFeatures: *const fn(self: *anyopaque, _r: **IVectorView(ILearningModelFeatureDescriptor)) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelBinding = extern struct {
    vtable: *const VTable,
    pub fn Bind(self: *@This(), name: HSTRING, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.Bind(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn BindWithProps(self: *@This(), name: HSTRING, value: *IInspectable, props: *IPropertySet) core.HResult!void {
        const _c = self.vtable.BindWithProps(@ptrCast(self), name, value, props);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelBinding";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea312f20-168f-4f8c-94fe-2e7ac31b4aa8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Bind: *const fn(self: *anyopaque, name: HSTRING, value: *IInspectable) callconv(.winapi) HRESULT,
        BindWithProps: *const fn(self: *anyopaque, name: HSTRING, value: *IInspectable, props: *IPropertySet) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelBindingFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromSession(self: *@This(), session: *LearningModelSession) core.HResult!*LearningModelBinding {
        var _r: *LearningModelBinding = undefined;
        const _c = self.vtable.CreateFromSession(@ptrCast(self), session, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelBindingFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c95f7a7a-e788-475e-8917-23aa381faf0b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromSession: *const fn(self: *anyopaque, session: *LearningModelSession, _r: **LearningModelBinding) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelDevice = extern struct {
    vtable: *const VTable,
    pub fn getAdapterId(self: *@This()) core.HResult!DisplayAdapterId {
        var _r: DisplayAdapterId = undefined;
        const _c = self.vtable.get_AdapterId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirect3D11Device(self: *@This()) core.HResult!*IDirect3DDevice {
        var _r: *IDirect3DDevice = undefined;
        const _c = self.vtable.get_Direct3D11Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5c2c8fe-3f56-4a8c-ac5f-fdb92d8b8252";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AdapterId: *const fn(self: *anyopaque, _r: *DisplayAdapterId) callconv(.winapi) HRESULT,
        get_Direct3D11Device: *const fn(self: *anyopaque, _r: **IDirect3DDevice) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelDeviceFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), deviceKind: LearningModelDeviceKind) core.HResult!*LearningModelDevice {
        var _r: *LearningModelDevice = undefined;
        const _c = self.vtable.Create(@ptrCast(self), deviceKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelDeviceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9cffd74d-b1e5-4f20-80ad-0a56690db06b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, deviceKind: LearningModelDeviceKind, _r: **LearningModelDevice) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromDirect3D11Device(self: *@This(), device: *IDirect3DDevice) core.HResult!*LearningModelDevice {
        var _r: *LearningModelDevice = undefined;
        const _c = self.vtable.CreateFromDirect3D11Device(@ptrCast(self), device, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49f32107-a8bf-42bb-92c7-10b12dc5d21f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromDirect3D11Device: *const fn(self: *anyopaque, device: *IDirect3DDevice, _r: **LearningModelDevice) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelEvaluationResult = extern struct {
    vtable: *const VTable,
    pub fn getCorrelationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorStatus(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ErrorStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputs(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Outputs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelEvaluationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2f9bfcd-960e-49c0-8593-eb190ae3eee2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CorrelationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ErrorStatus: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Outputs: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelFeatureDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var _r: LearningModelFeatureKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelFeatureDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc08cf7c-6ed0-4004-97ba-b9a2eecd2b4f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *LearningModelFeatureKind) callconv(.winapi) HRESULT,
        get_IsRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelFeatureValue = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var _r: LearningModelFeatureKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelFeatureValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f51005db-4085-4dfe-9fed-95eb0c0cf75c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *LearningModelFeatureKind) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelOperatorProvider = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelOperatorProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a222e5d-afb1-47ed-bfad-b5b3a459ec04";
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
pub const ILearningModelSession = extern struct {
    vtable: *const VTable,
    pub fn getModel(self: *@This()) core.HResult!*LearningModel {
        var _r: *LearningModel = undefined;
        const _c = self.vtable.get_Model(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDevice(self: *@This()) core.HResult!*LearningModelDevice {
        var _r: *LearningModelDevice = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEvaluationProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_EvaluationProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EvaluateAsync(self: *@This(), bindings: *LearningModelBinding, correlationId: HSTRING) core.HResult!*IAsyncOperation(LearningModelEvaluationResult) {
        var _r: *IAsyncOperation(LearningModelEvaluationResult) = undefined;
        const _c = self.vtable.EvaluateAsync(@ptrCast(self), bindings, correlationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EvaluateFeaturesAsync(self: *@This(), features: *IMap(HSTRING,IInspectable), correlationId: HSTRING) core.HResult!*IAsyncOperation(LearningModelEvaluationResult) {
        var _r: *IAsyncOperation(LearningModelEvaluationResult) = undefined;
        const _c = self.vtable.EvaluateFeaturesAsync(@ptrCast(self), features, correlationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Evaluate(self: *@This(), bindings: *LearningModelBinding, correlationId: HSTRING) core.HResult!*LearningModelEvaluationResult {
        var _r: *LearningModelEvaluationResult = undefined;
        const _c = self.vtable.Evaluate(@ptrCast(self), bindings, correlationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EvaluateFeatures(self: *@This(), features: *IMap(HSTRING,IInspectable), correlationId: HSTRING) core.HResult!*LearningModelEvaluationResult {
        var _r: *LearningModelEvaluationResult = undefined;
        const _c = self.vtable.EvaluateFeatures(@ptrCast(self), features, correlationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e58f8f6-b787-4c11-90f0-7129aeca74a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Model: *const fn(self: *anyopaque, _r: **LearningModel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **LearningModelDevice) callconv(.winapi) HRESULT,
        get_EvaluationProperties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        EvaluateAsync: *const fn(self: *anyopaque, bindings: *LearningModelBinding, correlationId: HSTRING, _r: **IAsyncOperation(LearningModelEvaluationResult)) callconv(.winapi) HRESULT,
        EvaluateFeaturesAsync: *const fn(self: *anyopaque, features: *IMap(HSTRING,IInspectable), correlationId: HSTRING, _r: **IAsyncOperation(LearningModelEvaluationResult)) callconv(.winapi) HRESULT,
        Evaluate: *const fn(self: *anyopaque, bindings: *LearningModelBinding, correlationId: HSTRING, _r: **LearningModelEvaluationResult) callconv(.winapi) HRESULT,
        EvaluateFeatures: *const fn(self: *anyopaque, features: *IMap(HSTRING,IInspectable), correlationId: HSTRING, _r: **LearningModelEvaluationResult) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelSessionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromModel(self: *@This(), model: *LearningModel) core.HResult!*LearningModelSession {
        var _r: *LearningModelSession = undefined;
        const _c = self.vtable.CreateFromModel(@ptrCast(self), model, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromModelOnDevice(self: *@This(), model: *LearningModel, deviceToRunOn: *LearningModelDevice) core.HResult!*LearningModelSession {
        var _r: *LearningModelSession = undefined;
        const _c = self.vtable.CreateFromModelOnDevice(@ptrCast(self), model, deviceToRunOn, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelSessionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f6b881d-1c9b-47b6-bfe0-f1cf62a67579";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromModel: *const fn(self: *anyopaque, model: *LearningModel, _r: **LearningModelSession) callconv(.winapi) HRESULT,
        CreateFromModelOnDevice: *const fn(self: *anyopaque, model: *LearningModel, deviceToRunOn: *LearningModelDevice, _r: **LearningModelSession) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelSessionFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromModelOnDeviceWithSessionOptions(self: *@This(), model: *LearningModel, deviceToRunOn: *LearningModelDevice, learningModelSessionOptions: *LearningModelSessionOptions) core.HResult!*LearningModelSession {
        var _r: *LearningModelSession = undefined;
        const _c = self.vtable.CreateFromModelOnDeviceWithSessionOptions(@ptrCast(self), model, deviceToRunOn, learningModelSessionOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelSessionFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e5c88bf-0a1f-5fec-ade0-2fd91e4ef29b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromModelOnDeviceWithSessionOptions: *const fn(self: *anyopaque, model: *LearningModel, deviceToRunOn: *LearningModelDevice, learningModelSessionOptions: *LearningModelSessionOptions, _r: **LearningModelSession) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelSessionOptions = extern struct {
    vtable: *const VTable,
    pub fn getBatchSizeOverride(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BatchSizeOverride(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBatchSizeOverride(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_BatchSizeOverride(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelSessionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8f63fa1-134d-5133-8cff-3a5c3c263beb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BatchSizeOverride: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_BatchSizeOverride: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelSessionOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getCloseModelOnSessionCreation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CloseModelOnSessionCreation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCloseModelOnSessionCreation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CloseModelOnSessionCreation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelSessionOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fcd1dc4-175f-5bd2-8de5-2f2006a25adf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CloseModelOnSessionCreation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CloseModelOnSessionCreation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelSessionOptions3 = extern struct {
    vtable: *const VTable,
    pub fn OverrideNamedDimension(self: *@This(), name: HSTRING, dimension: u32) core.HResult!void {
        const _c = self.vtable.OverrideNamedDimension(@ptrCast(self), name, dimension);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelSessionOptions3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58e15cee-d8c2-56fc-92e8-76d751081086";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OverrideNamedDimension: *const fn(self: *anyopaque, name: HSTRING, dimension: u32) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelStatics = extern struct {
    vtable: *const VTable,
    pub fn LoadFromStorageFileAsync(self: *@This(), modelFile: *IStorageFile) core.HResult!*IAsyncOperation(LearningModel) {
        var _r: *IAsyncOperation(LearningModel) = undefined;
        const _c = self.vtable.LoadFromStorageFileAsync(@ptrCast(self), modelFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromStreamAsync(self: *@This(), modelStream: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(LearningModel) {
        var _r: *IAsyncOperation(LearningModel) = undefined;
        const _c = self.vtable.LoadFromStreamAsync(@ptrCast(self), modelStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromFilePath(self: *@This(), filePath: HSTRING) core.HResult!*LearningModel {
        var _r: *LearningModel = undefined;
        const _c = self.vtable.LoadFromFilePath(@ptrCast(self), filePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromStream(self: *@This(), modelStream: *IRandomAccessStreamReference) core.HResult!*LearningModel {
        var _r: *LearningModel = undefined;
        const _c = self.vtable.LoadFromStream(@ptrCast(self), modelStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromStorageFileAsyncWithOperatorProvider(self: *@This(), modelFile: *IStorageFile, operatorProvider: *ILearningModelOperatorProvider) core.HResult!*IAsyncOperation(LearningModel) {
        var _r: *IAsyncOperation(LearningModel) = undefined;
        const _c = self.vtable.LoadFromStorageFileAsyncWithOperatorProvider(@ptrCast(self), modelFile, operatorProvider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromStreamAsyncWithOperatorProvider(self: *@This(), modelStream: *IRandomAccessStreamReference, operatorProvider: *ILearningModelOperatorProvider) core.HResult!*IAsyncOperation(LearningModel) {
        var _r: *IAsyncOperation(LearningModel) = undefined;
        const _c = self.vtable.LoadFromStreamAsyncWithOperatorProvider(@ptrCast(self), modelStream, operatorProvider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromFilePathWithOperatorProvider(self: *@This(), filePath: HSTRING, operatorProvider: *ILearningModelOperatorProvider) core.HResult!*LearningModel {
        var _r: *LearningModel = undefined;
        const _c = self.vtable.LoadFromFilePathWithOperatorProvider(@ptrCast(self), filePath, operatorProvider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromStreamWithOperatorProvider(self: *@This(), modelStream: *IRandomAccessStreamReference, operatorProvider: *ILearningModelOperatorProvider) core.HResult!*LearningModel {
        var _r: *LearningModel = undefined;
        const _c = self.vtable.LoadFromStreamWithOperatorProvider(@ptrCast(self), modelStream, operatorProvider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ILearningModelStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3b977e8-6952-4e47-8ef4-1f7f07897c6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadFromStorageFileAsync: *const fn(self: *anyopaque, modelFile: *IStorageFile, _r: **IAsyncOperation(LearningModel)) callconv(.winapi) HRESULT,
        LoadFromStreamAsync: *const fn(self: *anyopaque, modelStream: *IRandomAccessStreamReference, _r: **IAsyncOperation(LearningModel)) callconv(.winapi) HRESULT,
        LoadFromFilePath: *const fn(self: *anyopaque, filePath: HSTRING, _r: **LearningModel) callconv(.winapi) HRESULT,
        LoadFromStream: *const fn(self: *anyopaque, modelStream: *IRandomAccessStreamReference, _r: **LearningModel) callconv(.winapi) HRESULT,
        LoadFromStorageFileAsyncWithOperatorProvider: *const fn(self: *anyopaque, modelFile: *IStorageFile, operatorProvider: *ILearningModelOperatorProvider, _r: **IAsyncOperation(LearningModel)) callconv(.winapi) HRESULT,
        LoadFromStreamAsyncWithOperatorProvider: *const fn(self: *anyopaque, modelStream: *IRandomAccessStreamReference, operatorProvider: *ILearningModelOperatorProvider, _r: **IAsyncOperation(LearningModel)) callconv(.winapi) HRESULT,
        LoadFromFilePathWithOperatorProvider: *const fn(self: *anyopaque, filePath: HSTRING, operatorProvider: *ILearningModelOperatorProvider, _r: **LearningModel) callconv(.winapi) HRESULT,
        LoadFromStreamWithOperatorProvider: *const fn(self: *anyopaque, modelStream: *IRandomAccessStreamReference, operatorProvider: *ILearningModelOperatorProvider, _r: **LearningModel) callconv(.winapi) HRESULT,
    };
};
pub const IMapFeatureDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getKeyKind(self: *@This()) core.HResult!TensorKind {
        var _r: TensorKind = undefined;
        const _c = self.vtable.get_KeyKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValueDescriptor(self: *@This()) core.HResult!*ILearningModelFeatureDescriptor {
        var _r: *ILearningModelFeatureDescriptor = undefined;
        const _c = self.vtable.get_ValueDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.IMapFeatureDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "530424bd-a257-436d-9e60-c2981f7cc5c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyKind: *const fn(self: *anyopaque, _r: *TensorKind) callconv(.winapi) HRESULT,
        get_ValueDescriptor: *const fn(self: *anyopaque, _r: **ILearningModelFeatureDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const ISequenceFeatureDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getElementDescriptor(self: *@This()) core.HResult!*ILearningModelFeatureDescriptor {
        var _r: *ILearningModelFeatureDescriptor = undefined;
        const _c = self.vtable.get_ElementDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ISequenceFeatureDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84f6945a-562b-4d62-a851-739aced96668";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ElementDescriptor: *const fn(self: *anyopaque, _r: **ILearningModelFeatureDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const ITensor = extern struct {
    vtable: *const VTable,
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var _r: TensorKind = undefined;
        const _c = self.vtable.get_TensorKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var _r: *IVectorView(i64) = undefined;
        const _c = self.vtable.get_Shape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05489593-a305-4a25-ad09-440119b4b7f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TensorKind: *const fn(self: *anyopaque, _r: *TensorKind) callconv(.winapi) HRESULT,
        get_Shape: *const fn(self: *anyopaque, _r: **IVectorView(i64)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorBoolean = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(bool) {
        var _r: *IVectorView(bool) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorBoolean";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50f311ed-29e9-4a5c-a44d-8fc512584eed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorBooleanStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorBoolean {
        var _r: *TensorBoolean = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorBoolean {
        var _r: *TensorBoolean = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]bool) core.HResult!*TensorBoolean {
        var _r: *TensorBoolean = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(bool)) core.HResult!*TensorBoolean {
        var _r: *TensorBoolean = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorBooleanStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2796862c-2357-49a7-b476-d0aa3dfe6866";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorBoolean) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorBoolean) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]bool, _r: **TensorBoolean) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(bool), _r: **TensorBoolean) callconv(.winapi) HRESULT,
    };
};
pub const ITensorBooleanStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]bool) core.HResult!*TensorBoolean {
        var _r: *TensorBoolean = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorBoolean {
        var _r: *TensorBoolean = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorBooleanStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3a4a501-6a2d-52d7-b04b-c435baee0115";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]bool, _r: **TensorBoolean) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorBoolean) callconv(.winapi) HRESULT,
    };
};
pub const ITensorDouble = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(f64) {
        var _r: *IVectorView(f64) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorDouble";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91e41252-7a8f-4f0e-a28f-9637ffc8a3d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(f64)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorDoubleStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorDouble {
        var _r: *TensorDouble = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorDouble {
        var _r: *TensorDouble = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]f64) core.HResult!*TensorDouble {
        var _r: *TensorDouble = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(f64)) core.HResult!*TensorDouble {
        var _r: *TensorDouble = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorDoubleStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a86693c5-9538-44e7-a3ca-5df374a5a70c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorDouble) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorDouble) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]f64, _r: **TensorDouble) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(f64), _r: **TensorDouble) callconv(.winapi) HRESULT,
    };
};
pub const ITensorDoubleStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]f64) core.HResult!*TensorDouble {
        var _r: *TensorDouble = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorDouble {
        var _r: *TensorDouble = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorDoubleStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93a570de-5e9a-5094-85c8-592c655e68ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]f64, _r: **TensorDouble) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorDouble) callconv(.winapi) HRESULT,
    };
};
pub const ITensorFeatureDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var _r: TensorKind = undefined;
        const _c = self.vtable.get_TensorKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var _r: *IVectorView(i64) = undefined;
        const _c = self.vtable.get_Shape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorFeatureDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74455c80-946a-4310-a19c-ee0af028fce4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TensorKind: *const fn(self: *anyopaque, _r: *TensorKind) callconv(.winapi) HRESULT,
        get_Shape: *const fn(self: *anyopaque, _r: **IVectorView(i64)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorFloat = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(f32) {
        var _r: *IVectorView(f32) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorFloat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2282d82-aa02-42c8-a0c8-df1efc9676e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(f32)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorFloat16Bit = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(f32) {
        var _r: *IVectorView(f32) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorFloat16Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ab994fc-5b89-4c3c-b5e4-5282a5316c0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(f32)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorFloat16BitStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorFloat16Bit {
        var _r: *TensorFloat16Bit = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorFloat16Bit {
        var _r: *TensorFloat16Bit = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]f32) core.HResult!*TensorFloat16Bit {
        var _r: *TensorFloat16Bit = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(f32)) core.HResult!*TensorFloat16Bit {
        var _r: *TensorFloat16Bit = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorFloat16BitStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a52db6f5-318a-44d4-820b-0cdc7054a84a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorFloat16Bit) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorFloat16Bit) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]f32, _r: **TensorFloat16Bit) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(f32), _r: **TensorFloat16Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorFloat16BitStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]f32) core.HResult!*TensorFloat16Bit {
        var _r: *TensorFloat16Bit = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorFloat16Bit {
        var _r: *TensorFloat16Bit = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorFloat16BitStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68545726-2dc7-51bf-b470-0b344cc2a1bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]f32, _r: **TensorFloat16Bit) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorFloat16Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorFloatStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorFloat {
        var _r: *TensorFloat = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorFloat {
        var _r: *TensorFloat = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]f32) core.HResult!*TensorFloat {
        var _r: *TensorFloat = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(f32)) core.HResult!*TensorFloat {
        var _r: *TensorFloat = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorFloatStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbcd395b-3ba3-452f-b10d-3c135e573fa9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorFloat) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorFloat) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]f32, _r: **TensorFloat) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(f32), _r: **TensorFloat) callconv(.winapi) HRESULT,
    };
};
pub const ITensorFloatStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]f32) core.HResult!*TensorFloat {
        var _r: *TensorFloat = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorFloat {
        var _r: *TensorFloat = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorFloatStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24610bc1-5e44-5713-b281-8f4ad4d555e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]f32, _r: **TensorFloat) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorFloat) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt16Bit = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(i16) {
        var _r: *IVectorView(i16) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt16Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98a32d39-e6d6-44af-8afa-baebc44dc020";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(i16)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt16BitStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorInt16Bit {
        var _r: *TensorInt16Bit = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorInt16Bit {
        var _r: *TensorInt16Bit = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]i16) core.HResult!*TensorInt16Bit {
        var _r: *TensorInt16Bit = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(i16)) core.HResult!*TensorInt16Bit {
        var _r: *TensorInt16Bit = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt16BitStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98646293-266e-4b1a-821f-e60d70898b91";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorInt16Bit) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorInt16Bit) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]i16, _r: **TensorInt16Bit) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(i16), _r: **TensorInt16Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt16BitStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]i16) core.HResult!*TensorInt16Bit {
        var _r: *TensorInt16Bit = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorInt16Bit {
        var _r: *TensorInt16Bit = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt16BitStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cd70cf4-696c-5e5f-95d8-5ebf9670148b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]i16, _r: **TensorInt16Bit) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorInt16Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt32Bit = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(i32) {
        var _r: *IVectorView(i32) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt32Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c0c28d3-207c-4486-a7d2-884522c5e589";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(i32)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt32BitStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorInt32Bit {
        var _r: *TensorInt32Bit = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorInt32Bit {
        var _r: *TensorInt32Bit = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]i32) core.HResult!*TensorInt32Bit {
        var _r: *TensorInt32Bit = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(i32)) core.HResult!*TensorInt32Bit {
        var _r: *TensorInt32Bit = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt32BitStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6539864b-52fa-4e35-907c-834cac417b50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorInt32Bit) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorInt32Bit) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]i32, _r: **TensorInt32Bit) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(i32), _r: **TensorInt32Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt32BitStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]i32) core.HResult!*TensorInt32Bit {
        var _r: *TensorInt32Bit = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorInt32Bit {
        var _r: *TensorInt32Bit = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt32BitStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c4b079a-e956-5ce0-a3bd-157d9d79b5ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]i32, _r: **TensorInt32Bit) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorInt32Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt64Bit = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(i64) {
        var _r: *IVectorView(i64) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt64Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "499665ba-1fa2-45ad-af25-a0bd9bda4c87";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(i64)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt64BitStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorInt64Bit {
        var _r: *TensorInt64Bit = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorInt64Bit {
        var _r: *TensorInt64Bit = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]i64) core.HResult!*TensorInt64Bit {
        var _r: *TensorInt64Bit = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(i64)) core.HResult!*TensorInt64Bit {
        var _r: *TensorInt64Bit = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt64BitStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9648ad9d-1198-4d74-9517-783ab62b9cc2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorInt64Bit) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorInt64Bit) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]i64, _r: **TensorInt64Bit) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(i64), _r: **TensorInt64Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt64BitStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]i64) core.HResult!*TensorInt64Bit {
        var _r: *TensorInt64Bit = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorInt64Bit {
        var _r: *TensorInt64Bit = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt64BitStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d3d9dcb-ff40-5ec2-89fe-084e2b6bc6db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]i64, _r: **TensorInt64Bit) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorInt64Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt8Bit = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u8) {
        var _r: *IVectorView(u8) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt8Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cddd97c5-ffd8-4fef-aefb-30e1a485b2ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(u8)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt8BitStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorInt8Bit {
        var _r: *TensorInt8Bit = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorInt8Bit {
        var _r: *TensorInt8Bit = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]u8) core.HResult!*TensorInt8Bit {
        var _r: *TensorInt8Bit = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(u8)) core.HResult!*TensorInt8Bit {
        var _r: *TensorInt8Bit = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt8BitStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1a12284-095c-4c76-a661-ac4cee1f3e8b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorInt8Bit) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorInt8Bit) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]u8, _r: **TensorInt8Bit) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(u8), _r: **TensorInt8Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorInt8BitStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]u8) core.HResult!*TensorInt8Bit {
        var _r: *TensorInt8Bit = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorInt8Bit {
        var _r: *TensorInt8Bit = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorInt8BitStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0d59637-c468-56fb-9535-c052bdb93dc0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]u8, _r: **TensorInt8Bit) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorInt8Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorString = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorString";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "582335c8-bdb1-4610-bc75-35e9cbf009b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorStringStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorString {
        var _r: *TensorString = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorString {
        var _r: *TensorString = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]HSTRING) core.HResult!*TensorString {
        var _r: *TensorString = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(HSTRING)) core.HResult!*TensorString {
        var _r: *TensorString = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorStringStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83623324-cf26-4f17-a2d4-20ef8d097d53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorString) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorString) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]HSTRING, _r: **TensorString) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(HSTRING), _r: **TensorString) callconv(.winapi) HRESULT,
    };
};
pub const ITensorStringStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]HSTRING) core.HResult!*TensorString {
        var _r: *TensorString = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorStringStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e355ed0-c8e2-5254-9137-0193a3668fd8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]HSTRING, _r: **TensorString) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt16Bit = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u16) {
        var _r: *IVectorView(u16) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt16Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68140f4b-23c0-42f3-81f6-a891c011bc3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(u16)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt16BitStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorUInt16Bit {
        var _r: *TensorUInt16Bit = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorUInt16Bit {
        var _r: *TensorUInt16Bit = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]u16) core.HResult!*TensorUInt16Bit {
        var _r: *TensorUInt16Bit = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(u16)) core.HResult!*TensorUInt16Bit {
        var _r: *TensorUInt16Bit = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt16BitStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5df745dd-028a-481a-a27c-c7e6435e52dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorUInt16Bit) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorUInt16Bit) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]u16, _r: **TensorUInt16Bit) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(u16), _r: **TensorUInt16Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt16BitStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]u16) core.HResult!*TensorUInt16Bit {
        var _r: *TensorUInt16Bit = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorUInt16Bit {
        var _r: *TensorUInt16Bit = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt16BitStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8af40c64-d69f-5315-9348-490877bbd642";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]u16, _r: **TensorUInt16Bit) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorUInt16Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt32Bit = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt32Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8c9c2ff-7511-45a3-bfac-c38f370d2237";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt32BitStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorUInt32Bit {
        var _r: *TensorUInt32Bit = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorUInt32Bit {
        var _r: *TensorUInt32Bit = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]u32) core.HResult!*TensorUInt32Bit {
        var _r: *TensorUInt32Bit = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(u32)) core.HResult!*TensorUInt32Bit {
        var _r: *TensorUInt32Bit = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt32BitStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "417c3837-e773-4378-8e7f-0cc33dbea697";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorUInt32Bit) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorUInt32Bit) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]u32, _r: **TensorUInt32Bit) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(u32), _r: **TensorUInt32Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt32BitStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]u32) core.HResult!*TensorUInt32Bit {
        var _r: *TensorUInt32Bit = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorUInt32Bit {
        var _r: *TensorUInt32Bit = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt32BitStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef1a1f1c-314e-569d-b496-5c8447d20cd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]u32, _r: **TensorUInt32Bit) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorUInt32Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt64Bit = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u64) {
        var _r: *IVectorView(u64) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt64Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e70ffad-04bf-4825-839a-82baef8c7886";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(u64)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt64BitStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorUInt64Bit {
        var _r: *TensorUInt64Bit = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorUInt64Bit {
        var _r: *TensorUInt64Bit = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]u64) core.HResult!*TensorUInt64Bit {
        var _r: *TensorUInt64Bit = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(u64)) core.HResult!*TensorUInt64Bit {
        var _r: *TensorUInt64Bit = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt64BitStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a7e20eb-242f-47cb-a9c6-f602ecfbfee4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorUInt64Bit) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorUInt64Bit) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]u64, _r: **TensorUInt64Bit) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(u64), _r: **TensorUInt64Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt64BitStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]u64) core.HResult!*TensorUInt64Bit {
        var _r: *TensorUInt64Bit = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorUInt64Bit {
        var _r: *TensorUInt64Bit = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt64BitStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "085a687d-67e1-5b1e-b232-4fabe9ca20b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]u64, _r: **TensorUInt64Bit) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorUInt64Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt8Bit = extern struct {
    vtable: *const VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u8) {
        var _r: *IVectorView(u8) = undefined;
        const _c = self.vtable.GetAsVectorView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt8Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58e1ae27-622b-48e3-be22-d867aed1daac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAsVectorView: *const fn(self: *anyopaque, _r: **IVectorView(u8)) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt8BitStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This()) core.HResult!*TensorUInt8Bit {
        var _r: *TensorUInt8Bit = undefined;
        const _c = self.vtable.Create(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithShape(self: *@This(), shape: *IIterable(i64)) core.HResult!*TensorUInt8Bit {
        var _r: *TensorUInt8Bit = undefined;
        const _c = self.vtable.CreateWithShape(@ptrCast(self), shape, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromArray(self: *@This(), shape: *IIterable(i64), data: [*]u8) core.HResult!*TensorUInt8Bit {
        var _r: *TensorUInt8Bit = undefined;
        const _c = self.vtable.CreateFromArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIterable(self: *@This(), shape: *IIterable(i64), data: *IIterable(u8)) core.HResult!*TensorUInt8Bit {
        var _r: *TensorUInt8Bit = undefined;
        const _c = self.vtable.CreateFromIterable(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt8BitStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05f67583-bc24-4220-8a41-2dcd8c5ed33c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, _r: **TensorUInt8Bit) callconv(.winapi) HRESULT,
        CreateWithShape: *const fn(self: *anyopaque, shape: *IIterable(i64), _r: **TensorUInt8Bit) callconv(.winapi) HRESULT,
        CreateFromArray: *const fn(self: *anyopaque, shape: *IIterable(i64), data: [*]u8, _r: **TensorUInt8Bit) callconv(.winapi) HRESULT,
        CreateFromIterable: *const fn(self: *anyopaque, shape: *IIterable(i64), data: *IIterable(u8), _r: **TensorUInt8Bit) callconv(.winapi) HRESULT,
    };
};
pub const ITensorUInt8BitStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromShapeArrayAndDataArray(self: *@This(), shape: [*]i64, data: [*]u8) core.HResult!*TensorUInt8Bit {
        var _r: *TensorUInt8Bit = undefined;
        const _c = self.vtable.CreateFromShapeArrayAndDataArray(@ptrCast(self), shape, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBuffer(self: *@This(), shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorUInt8Bit {
        var _r: *TensorUInt8Bit = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), shape, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ITensorUInt8BitStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ba042d6-373e-5a3a-a2fc-a6c41bd52789";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromShapeArrayAndDataArray: *const fn(self: *anyopaque, shape: [*]i64, data: [*]u8, _r: **TensorUInt8Bit) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, shape: [*]i64, buffer: *IBuffer, _r: **TensorUInt8Bit) callconv(.winapi) HRESULT,
    };
};
pub const ImageFeatureDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        const this: *IImageFeatureDescriptor = @ptrCast(self);
        return try this.getBitmapPixelFormat();
    }
    pub fn getBitmapAlphaMode(self: *@This()) core.HResult!BitmapAlphaMode {
        const this: *IImageFeatureDescriptor = @ptrCast(self);
        return try this.getBitmapAlphaMode();
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IImageFeatureDescriptor = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IImageFeatureDescriptor = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getPixelRange(self: *@This()) core.HResult!LearningModelPixelRange {
        var this: ?*IImageFeatureDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageFeatureDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPixelRange();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRequired();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ImageFeatureDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageFeatureDescriptor.GUID;
    pub const IID: Guid = IImageFeatureDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageFeatureDescriptor.SIGNATURE);
};
pub const ImageFeatureValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *IImageFeatureValue = @ptrCast(self);
        return try this.getVideoFrame();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromVideoFrame(image: *VideoFrame) core.HResult!*ImageFeatureValue {
        const _f = @This().IImageFeatureValueStaticsCache.get();
        return try _f.CreateFromVideoFrame(image);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.ImageFeatureValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageFeatureValue.GUID;
    pub const IID: Guid = IImageFeatureValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageFeatureValue.SIGNATURE);
    var _IImageFeatureValueStaticsCache: FactoryCache(IImageFeatureValueStatics, RUNTIME_NAME) = .{};
};
pub const LearningModel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuthor(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModel = @ptrCast(self);
        return try this.getAuthor();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModel = @ptrCast(self);
        return try this.getName();
    }
    pub fn getDomain(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModel = @ptrCast(self);
        return try this.getDomain();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModel = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getVersion(self: *@This()) core.HResult!i64 {
        const this: *ILearningModel = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn getMetadata(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        const this: *ILearningModel = @ptrCast(self);
        return try this.getMetadata();
    }
    pub fn getInputFeatures(self: *@This()) core.HResult!*IVectorView(ILearningModelFeatureDescriptor) {
        const this: *ILearningModel = @ptrCast(self);
        return try this.getInputFeatures();
    }
    pub fn getOutputFeatures(self: *@This()) core.HResult!*IVectorView(ILearningModelFeatureDescriptor) {
        const this: *ILearningModel = @ptrCast(self);
        return try this.getOutputFeatures();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn LoadFromStorageFileAsync(modelFile: *IStorageFile) core.HResult!*IAsyncOperation(LearningModel) {
        const _f = @This().ILearningModelStaticsCache.get();
        return try _f.LoadFromStorageFileAsync(modelFile);
    }
    pub fn LoadFromStreamAsync(modelStream: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(LearningModel) {
        const _f = @This().ILearningModelStaticsCache.get();
        return try _f.LoadFromStreamAsync(modelStream);
    }
    pub fn LoadFromFilePath(filePath: HSTRING) core.HResult!*LearningModel {
        const _f = @This().ILearningModelStaticsCache.get();
        return try _f.LoadFromFilePath(filePath);
    }
    pub fn LoadFromStream(modelStream: *IRandomAccessStreamReference) core.HResult!*LearningModel {
        const _f = @This().ILearningModelStaticsCache.get();
        return try _f.LoadFromStream(modelStream);
    }
    pub fn LoadFromStorageFileAsyncWithOperatorProvider(modelFile: *IStorageFile, operatorProvider: *ILearningModelOperatorProvider) core.HResult!*IAsyncOperation(LearningModel) {
        const _f = @This().ILearningModelStaticsCache.get();
        return try _f.LoadFromStorageFileAsyncWithOperatorProvider(modelFile, operatorProvider);
    }
    pub fn LoadFromStreamAsyncWithOperatorProvider(modelStream: *IRandomAccessStreamReference, operatorProvider: *ILearningModelOperatorProvider) core.HResult!*IAsyncOperation(LearningModel) {
        const _f = @This().ILearningModelStaticsCache.get();
        return try _f.LoadFromStreamAsyncWithOperatorProvider(modelStream, operatorProvider);
    }
    pub fn LoadFromFilePathWithOperatorProvider(filePath: HSTRING, operatorProvider: *ILearningModelOperatorProvider) core.HResult!*LearningModel {
        const _f = @This().ILearningModelStaticsCache.get();
        return try _f.LoadFromFilePathWithOperatorProvider(filePath, operatorProvider);
    }
    pub fn LoadFromStreamWithOperatorProvider(modelStream: *IRandomAccessStreamReference, operatorProvider: *ILearningModelOperatorProvider) core.HResult!*LearningModel {
        const _f = @This().ILearningModelStaticsCache.get();
        return try _f.LoadFromStreamWithOperatorProvider(modelStream, operatorProvider);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.LearningModel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModel.GUID;
    pub const IID: Guid = ILearningModel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModel.SIGNATURE);
    var _ILearningModelStaticsCache: FactoryCache(ILearningModelStatics, RUNTIME_NAME) = .{};
};
pub const LearningModelBinding = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Bind(self: *@This(), name: HSTRING, value: *IInspectable) core.HResult!void {
        const this: *ILearningModelBinding = @ptrCast(self);
        return try this.Bind(name, value);
    }
    pub fn BindWithProps(self: *@This(), name: HSTRING, value: *IInspectable, props: *IPropertySet) core.HResult!void {
        const this: *ILearningModelBinding = @ptrCast(self);
        return try this.BindWithProps(name, value, props);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *ILearningModelBinding = @ptrCast(self);
        return try this.Clear();
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMapView(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn Split(self: *@This(), first: *IMapView(HSTRING,IInspectable), second: *IMapView(HSTRING,IInspectable)) core.HResult!void {
        var this: ?*IMapView(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Split(first, second);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IInspectable)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,IInspectable)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromSession(session: *LearningModelSession) core.HResult!*LearningModelBinding {
        const _f = @This().ILearningModelBindingFactoryCache.get();
        return try _f.CreateFromSession(session);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.LearningModelBinding";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelBinding.GUID;
    pub const IID: Guid = ILearningModelBinding.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelBinding.SIGNATURE);
    var _ILearningModelBindingFactoryCache: FactoryCache(ILearningModelBindingFactory, RUNTIME_NAME) = .{};
};
pub const LearningModelDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAdapterId(self: *@This()) core.HResult!DisplayAdapterId {
        const this: *ILearningModelDevice = @ptrCast(self);
        return try this.getAdapterId();
    }
    pub fn getDirect3D11Device(self: *@This()) core.HResult!*IDirect3DDevice {
        const this: *ILearningModelDevice = @ptrCast(self);
        return try this.getDirect3D11Device();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(deviceKind: LearningModelDeviceKind) core.HResult!*LearningModelDevice {
        const _f = @This().ILearningModelDeviceFactoryCache.get();
        return try _f.Create(deviceKind);
    }
    pub fn CreateFromDirect3D11Device(device: *IDirect3DDevice) core.HResult!*LearningModelDevice {
        const _f = @This().ILearningModelDeviceStaticsCache.get();
        return try _f.CreateFromDirect3D11Device(device);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.LearningModelDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelDevice.GUID;
    pub const IID: Guid = ILearningModelDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelDevice.SIGNATURE);
    var _ILearningModelDeviceFactoryCache: FactoryCache(ILearningModelDeviceFactory, RUNTIME_NAME) = .{};
    var _ILearningModelDeviceStaticsCache: FactoryCache(ILearningModelDeviceStatics, RUNTIME_NAME) = .{};
};
pub const LearningModelDeviceKind = enum(i32) {
    Default = 0,
    Cpu = 1,
    DirectX = 2,
    DirectXHighPerformance = 3,
    DirectXMinPower = 4,
};
pub const LearningModelEvaluationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCorrelationId(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModelEvaluationResult = @ptrCast(self);
        return try this.getCorrelationId();
    }
    pub fn getErrorStatus(self: *@This()) core.HResult!i32 {
        const this: *ILearningModelEvaluationResult = @ptrCast(self);
        return try this.getErrorStatus();
    }
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *ILearningModelEvaluationResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getOutputs(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *ILearningModelEvaluationResult = @ptrCast(self);
        return try this.getOutputs();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.LearningModelEvaluationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelEvaluationResult.GUID;
    pub const IID: Guid = ILearningModelEvaluationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelEvaluationResult.SIGNATURE);
};
pub const LearningModelFeatureKind = enum(i32) {
    Tensor = 0,
    Sequence = 1,
    Map = 2,
    Image = 3,
};
pub const LearningModelPixelRange = enum(i32) {
    ZeroTo255 = 0,
    ZeroToOne = 1,
    MinusOneToOne = 2,
};
pub const LearningModelSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getModel(self: *@This()) core.HResult!*LearningModel {
        const this: *ILearningModelSession = @ptrCast(self);
        return try this.getModel();
    }
    pub fn getDevice(self: *@This()) core.HResult!*LearningModelDevice {
        const this: *ILearningModelSession = @ptrCast(self);
        return try this.getDevice();
    }
    pub fn getEvaluationProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *ILearningModelSession = @ptrCast(self);
        return try this.getEvaluationProperties();
    }
    pub fn EvaluateAsync(self: *@This(), bindings: *LearningModelBinding, correlationId: HSTRING) core.HResult!*IAsyncOperation(LearningModelEvaluationResult) {
        const this: *ILearningModelSession = @ptrCast(self);
        return try this.EvaluateAsync(bindings, correlationId);
    }
    pub fn EvaluateFeaturesAsync(self: *@This(), features: *IMap(HSTRING,IInspectable), correlationId: HSTRING) core.HResult!*IAsyncOperation(LearningModelEvaluationResult) {
        const this: *ILearningModelSession = @ptrCast(self);
        return try this.EvaluateFeaturesAsync(features, correlationId);
    }
    pub fn Evaluate(self: *@This(), bindings: *LearningModelBinding, correlationId: HSTRING) core.HResult!*LearningModelEvaluationResult {
        const this: *ILearningModelSession = @ptrCast(self);
        return try this.Evaluate(bindings, correlationId);
    }
    pub fn EvaluateFeatures(self: *@This(), features: *IMap(HSTRING,IInspectable), correlationId: HSTRING) core.HResult!*LearningModelEvaluationResult {
        const this: *ILearningModelSession = @ptrCast(self);
        return try this.EvaluateFeatures(features, correlationId);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromModelOnDeviceWithSessionOptions(model: *LearningModel, deviceToRunOn: *LearningModelDevice, learningModelSessionOptions: *LearningModelSessionOptions) core.HResult!*LearningModelSession {
        const _f = @This().ILearningModelSessionFactory2Cache.get();
        return try _f.CreateFromModelOnDeviceWithSessionOptions(model, deviceToRunOn, learningModelSessionOptions);
    }
    pub fn CreateFromModel(model: *LearningModel) core.HResult!*LearningModelSession {
        const _f = @This().ILearningModelSessionFactoryCache.get();
        return try _f.CreateFromModel(model);
    }
    pub fn CreateFromModelOnDevice(model: *LearningModel, deviceToRunOn: *LearningModelDevice) core.HResult!*LearningModelSession {
        const _f = @This().ILearningModelSessionFactoryCache.get();
        return try _f.CreateFromModelOnDevice(model, deviceToRunOn);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.LearningModelSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelSession.GUID;
    pub const IID: Guid = ILearningModelSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelSession.SIGNATURE);
    var _ILearningModelSessionFactory2Cache: FactoryCache(ILearningModelSessionFactory2, RUNTIME_NAME) = .{};
    var _ILearningModelSessionFactoryCache: FactoryCache(ILearningModelSessionFactory, RUNTIME_NAME) = .{};
};
pub const LearningModelSessionOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBatchSizeOverride(self: *@This()) core.HResult!u32 {
        const this: *ILearningModelSessionOptions = @ptrCast(self);
        return try this.getBatchSizeOverride();
    }
    pub fn putBatchSizeOverride(self: *@This(), value: u32) core.HResult!void {
        const this: *ILearningModelSessionOptions = @ptrCast(self);
        return try this.putBatchSizeOverride(value);
    }
    pub fn getCloseModelOnSessionCreation(self: *@This()) core.HResult!bool {
        var this: ?*ILearningModelSessionOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelSessionOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCloseModelOnSessionCreation();
    }
    pub fn putCloseModelOnSessionCreation(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ILearningModelSessionOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelSessionOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCloseModelOnSessionCreation(value);
    }
    pub fn OverrideNamedDimension(self: *@This(), name: HSTRING, dimension: u32) core.HResult!void {
        var this: ?*ILearningModelSessionOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelSessionOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OverrideNamedDimension(name, dimension);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILearningModelSessionOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.LearningModelSessionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelSessionOptions.GUID;
    pub const IID: Guid = ILearningModelSessionOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelSessionOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapFeatureDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyKind(self: *@This()) core.HResult!TensorKind {
        const this: *IMapFeatureDescriptor = @ptrCast(self);
        return try this.getKeyKind();
    }
    pub fn getValueDescriptor(self: *@This()) core.HResult!*ILearningModelFeatureDescriptor {
        const this: *IMapFeatureDescriptor = @ptrCast(self);
        return try this.getValueDescriptor();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRequired();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.MapFeatureDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapFeatureDescriptor.GUID;
    pub const IID: Guid = IMapFeatureDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapFeatureDescriptor.SIGNATURE);
};
pub const SequenceFeatureDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getElementDescriptor(self: *@This()) core.HResult!*ILearningModelFeatureDescriptor {
        const this: *ISequenceFeatureDescriptor = @ptrCast(self);
        return try this.getElementDescriptor();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRequired();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.SequenceFeatureDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISequenceFeatureDescriptor.GUID;
    pub const IID: Guid = ISequenceFeatureDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISequenceFeatureDescriptor.SIGNATURE);
};
pub const TensorBoolean = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(bool) {
        const this: *ITensorBoolean = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]bool) core.HResult!*TensorBoolean {
        const _f = @This().ITensorBooleanStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorBoolean {
        const _f = @This().ITensorBooleanStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub fn Create() core.HResult!*TensorBoolean {
        const _f = @This().ITensorBooleanStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorBoolean {
        const _f = @This().ITensorBooleanStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]bool) core.HResult!*TensorBoolean {
        const _f = @This().ITensorBooleanStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(bool)) core.HResult!*TensorBoolean {
        const _f = @This().ITensorBooleanStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorBoolean";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorBoolean.GUID;
    pub const IID: Guid = ITensorBoolean.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorBoolean.SIGNATURE);
    var _ITensorBooleanStatics2Cache: FactoryCache(ITensorBooleanStatics2, RUNTIME_NAME) = .{};
    var _ITensorBooleanStaticsCache: FactoryCache(ITensorBooleanStatics, RUNTIME_NAME) = .{};
};
pub const TensorDouble = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(f64) {
        const this: *ITensorDouble = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create() core.HResult!*TensorDouble {
        const _f = @This().ITensorDoubleStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorDouble {
        const _f = @This().ITensorDoubleStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]f64) core.HResult!*TensorDouble {
        const _f = @This().ITensorDoubleStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(f64)) core.HResult!*TensorDouble {
        const _f = @This().ITensorDoubleStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]f64) core.HResult!*TensorDouble {
        const _f = @This().ITensorDoubleStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorDouble {
        const _f = @This().ITensorDoubleStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorDouble";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorDouble.GUID;
    pub const IID: Guid = ITensorDouble.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorDouble.SIGNATURE);
    var _ITensorDoubleStaticsCache: FactoryCache(ITensorDoubleStatics, RUNTIME_NAME) = .{};
    var _ITensorDoubleStatics2Cache: FactoryCache(ITensorDoubleStatics2, RUNTIME_NAME) = .{};
};
pub const TensorFeatureDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        const this: *ITensorFeatureDescriptor = @ptrCast(self);
        return try this.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        const this: *ITensorFeatureDescriptor = @ptrCast(self);
        return try this.getShape();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var this: ?*ILearningModelFeatureDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRequired();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorFeatureDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorFeatureDescriptor.GUID;
    pub const IID: Guid = ITensorFeatureDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorFeatureDescriptor.SIGNATURE);
};
pub const TensorFloat = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(f32) {
        const this: *ITensorFloat = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create() core.HResult!*TensorFloat {
        const _f = @This().ITensorFloatStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorFloat {
        const _f = @This().ITensorFloatStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]f32) core.HResult!*TensorFloat {
        const _f = @This().ITensorFloatStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(f32)) core.HResult!*TensorFloat {
        const _f = @This().ITensorFloatStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]f32) core.HResult!*TensorFloat {
        const _f = @This().ITensorFloatStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorFloat {
        const _f = @This().ITensorFloatStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorFloat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorFloat.GUID;
    pub const IID: Guid = ITensorFloat.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorFloat.SIGNATURE);
    var _ITensorFloatStaticsCache: FactoryCache(ITensorFloatStatics, RUNTIME_NAME) = .{};
    var _ITensorFloatStatics2Cache: FactoryCache(ITensorFloatStatics2, RUNTIME_NAME) = .{};
};
pub const TensorFloat16Bit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(f32) {
        const this: *ITensorFloat16Bit = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]f32) core.HResult!*TensorFloat16Bit {
        const _f = @This().ITensorFloat16BitStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorFloat16Bit {
        const _f = @This().ITensorFloat16BitStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub fn Create() core.HResult!*TensorFloat16Bit {
        const _f = @This().ITensorFloat16BitStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorFloat16Bit {
        const _f = @This().ITensorFloat16BitStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]f32) core.HResult!*TensorFloat16Bit {
        const _f = @This().ITensorFloat16BitStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(f32)) core.HResult!*TensorFloat16Bit {
        const _f = @This().ITensorFloat16BitStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorFloat16Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorFloat16Bit.GUID;
    pub const IID: Guid = ITensorFloat16Bit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorFloat16Bit.SIGNATURE);
    var _ITensorFloat16BitStatics2Cache: FactoryCache(ITensorFloat16BitStatics2, RUNTIME_NAME) = .{};
    var _ITensorFloat16BitStaticsCache: FactoryCache(ITensorFloat16BitStatics, RUNTIME_NAME) = .{};
};
pub const TensorInt16Bit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(i16) {
        const this: *ITensorInt16Bit = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create() core.HResult!*TensorInt16Bit {
        const _f = @This().ITensorInt16BitStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorInt16Bit {
        const _f = @This().ITensorInt16BitStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]i16) core.HResult!*TensorInt16Bit {
        const _f = @This().ITensorInt16BitStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(i16)) core.HResult!*TensorInt16Bit {
        const _f = @This().ITensorInt16BitStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]i16) core.HResult!*TensorInt16Bit {
        const _f = @This().ITensorInt16BitStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorInt16Bit {
        const _f = @This().ITensorInt16BitStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorInt16Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorInt16Bit.GUID;
    pub const IID: Guid = ITensorInt16Bit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorInt16Bit.SIGNATURE);
    var _ITensorInt16BitStaticsCache: FactoryCache(ITensorInt16BitStatics, RUNTIME_NAME) = .{};
    var _ITensorInt16BitStatics2Cache: FactoryCache(ITensorInt16BitStatics2, RUNTIME_NAME) = .{};
};
pub const TensorInt32Bit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(i32) {
        const this: *ITensorInt32Bit = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create() core.HResult!*TensorInt32Bit {
        const _f = @This().ITensorInt32BitStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorInt32Bit {
        const _f = @This().ITensorInt32BitStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]i32) core.HResult!*TensorInt32Bit {
        const _f = @This().ITensorInt32BitStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(i32)) core.HResult!*TensorInt32Bit {
        const _f = @This().ITensorInt32BitStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]i32) core.HResult!*TensorInt32Bit {
        const _f = @This().ITensorInt32BitStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorInt32Bit {
        const _f = @This().ITensorInt32BitStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorInt32Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorInt32Bit.GUID;
    pub const IID: Guid = ITensorInt32Bit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorInt32Bit.SIGNATURE);
    var _ITensorInt32BitStaticsCache: FactoryCache(ITensorInt32BitStatics, RUNTIME_NAME) = .{};
    var _ITensorInt32BitStatics2Cache: FactoryCache(ITensorInt32BitStatics2, RUNTIME_NAME) = .{};
};
pub const TensorInt64Bit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(i64) {
        const this: *ITensorInt64Bit = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create() core.HResult!*TensorInt64Bit {
        const _f = @This().ITensorInt64BitStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorInt64Bit {
        const _f = @This().ITensorInt64BitStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]i64) core.HResult!*TensorInt64Bit {
        const _f = @This().ITensorInt64BitStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(i64)) core.HResult!*TensorInt64Bit {
        const _f = @This().ITensorInt64BitStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]i64) core.HResult!*TensorInt64Bit {
        const _f = @This().ITensorInt64BitStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorInt64Bit {
        const _f = @This().ITensorInt64BitStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorInt64Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorInt64Bit.GUID;
    pub const IID: Guid = ITensorInt64Bit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorInt64Bit.SIGNATURE);
    var _ITensorInt64BitStaticsCache: FactoryCache(ITensorInt64BitStatics, RUNTIME_NAME) = .{};
    var _ITensorInt64BitStatics2Cache: FactoryCache(ITensorInt64BitStatics2, RUNTIME_NAME) = .{};
};
pub const TensorInt8Bit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u8) {
        const this: *ITensorInt8Bit = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]u8) core.HResult!*TensorInt8Bit {
        const _f = @This().ITensorInt8BitStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorInt8Bit {
        const _f = @This().ITensorInt8BitStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub fn Create() core.HResult!*TensorInt8Bit {
        const _f = @This().ITensorInt8BitStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorInt8Bit {
        const _f = @This().ITensorInt8BitStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]u8) core.HResult!*TensorInt8Bit {
        const _f = @This().ITensorInt8BitStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(u8)) core.HResult!*TensorInt8Bit {
        const _f = @This().ITensorInt8BitStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorInt8Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorInt8Bit.GUID;
    pub const IID: Guid = ITensorInt8Bit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorInt8Bit.SIGNATURE);
    var _ITensorInt8BitStatics2Cache: FactoryCache(ITensorInt8BitStatics2, RUNTIME_NAME) = .{};
    var _ITensorInt8BitStaticsCache: FactoryCache(ITensorInt8BitStatics, RUNTIME_NAME) = .{};
};
pub const TensorKind = enum(i32) {
    Undefined = 0,
    Float = 1,
    UInt8 = 2,
    Int8 = 3,
    UInt16 = 4,
    Int16 = 5,
    Int32 = 6,
    Int64 = 7,
    String = 8,
    Boolean = 9,
    Float16 = 10,
    Double = 11,
    UInt32 = 12,
    UInt64 = 13,
    Complex64 = 14,
    Complex128 = 15,
};
pub const TensorString = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ITensorString = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create() core.HResult!*TensorString {
        const _f = @This().ITensorStringStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorString {
        const _f = @This().ITensorStringStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]HSTRING) core.HResult!*TensorString {
        const _f = @This().ITensorStringStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(HSTRING)) core.HResult!*TensorString {
        const _f = @This().ITensorStringStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]HSTRING) core.HResult!*TensorString {
        const _f = @This().ITensorStringStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorString";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorString.GUID;
    pub const IID: Guid = ITensorString.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorString.SIGNATURE);
    var _ITensorStringStaticsCache: FactoryCache(ITensorStringStatics, RUNTIME_NAME) = .{};
    var _ITensorStringStatics2Cache: FactoryCache(ITensorStringStatics2, RUNTIME_NAME) = .{};
};
pub const TensorUInt16Bit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u16) {
        const this: *ITensorUInt16Bit = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create() core.HResult!*TensorUInt16Bit {
        const _f = @This().ITensorUInt16BitStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorUInt16Bit {
        const _f = @This().ITensorUInt16BitStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]u16) core.HResult!*TensorUInt16Bit {
        const _f = @This().ITensorUInt16BitStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(u16)) core.HResult!*TensorUInt16Bit {
        const _f = @This().ITensorUInt16BitStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]u16) core.HResult!*TensorUInt16Bit {
        const _f = @This().ITensorUInt16BitStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorUInt16Bit {
        const _f = @This().ITensorUInt16BitStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorUInt16Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorUInt16Bit.GUID;
    pub const IID: Guid = ITensorUInt16Bit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorUInt16Bit.SIGNATURE);
    var _ITensorUInt16BitStaticsCache: FactoryCache(ITensorUInt16BitStatics, RUNTIME_NAME) = .{};
    var _ITensorUInt16BitStatics2Cache: FactoryCache(ITensorUInt16BitStatics2, RUNTIME_NAME) = .{};
};
pub const TensorUInt32Bit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *ITensorUInt32Bit = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create() core.HResult!*TensorUInt32Bit {
        const _f = @This().ITensorUInt32BitStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorUInt32Bit {
        const _f = @This().ITensorUInt32BitStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]u32) core.HResult!*TensorUInt32Bit {
        const _f = @This().ITensorUInt32BitStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(u32)) core.HResult!*TensorUInt32Bit {
        const _f = @This().ITensorUInt32BitStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]u32) core.HResult!*TensorUInt32Bit {
        const _f = @This().ITensorUInt32BitStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorUInt32Bit {
        const _f = @This().ITensorUInt32BitStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorUInt32Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorUInt32Bit.GUID;
    pub const IID: Guid = ITensorUInt32Bit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorUInt32Bit.SIGNATURE);
    var _ITensorUInt32BitStaticsCache: FactoryCache(ITensorUInt32BitStatics, RUNTIME_NAME) = .{};
    var _ITensorUInt32BitStatics2Cache: FactoryCache(ITensorUInt32BitStatics2, RUNTIME_NAME) = .{};
};
pub const TensorUInt64Bit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u64) {
        const this: *ITensorUInt64Bit = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create() core.HResult!*TensorUInt64Bit {
        const _f = @This().ITensorUInt64BitStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorUInt64Bit {
        const _f = @This().ITensorUInt64BitStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]u64) core.HResult!*TensorUInt64Bit {
        const _f = @This().ITensorUInt64BitStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(u64)) core.HResult!*TensorUInt64Bit {
        const _f = @This().ITensorUInt64BitStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]u64) core.HResult!*TensorUInt64Bit {
        const _f = @This().ITensorUInt64BitStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorUInt64Bit {
        const _f = @This().ITensorUInt64BitStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorUInt64Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorUInt64Bit.GUID;
    pub const IID: Guid = ITensorUInt64Bit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorUInt64Bit.SIGNATURE);
    var _ITensorUInt64BitStaticsCache: FactoryCache(ITensorUInt64BitStatics, RUNTIME_NAME) = .{};
    var _ITensorUInt64BitStatics2Cache: FactoryCache(ITensorUInt64BitStatics2, RUNTIME_NAME) = .{};
};
pub const TensorUInt8Bit = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAsVectorView(self: *@This()) core.HResult!*IVectorView(u8) {
        const this: *ITensorUInt8Bit = @ptrCast(self);
        return try this.GetAsVectorView();
    }
    pub fn getTensorKind(self: *@This()) core.HResult!TensorKind {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTensorKind();
    }
    pub fn getShape(self: *@This()) core.HResult!*IVectorView(i64) {
        var this: ?*ITensor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITensor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShape();
    }
    pub fn getKind(self: *@This()) core.HResult!LearningModelFeatureKind {
        var this: ?*ILearningModelFeatureValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelFeatureValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromShapeArrayAndDataArray(shape: [*]i64, data: [*]u8) core.HResult!*TensorUInt8Bit {
        const _f = @This().ITensorUInt8BitStatics2Cache.get();
        return try _f.CreateFromShapeArrayAndDataArray(shape, data);
    }
    pub fn CreateFromBuffer(shape: [*]i64, buffer: *IBuffer) core.HResult!*TensorUInt8Bit {
        const _f = @This().ITensorUInt8BitStatics2Cache.get();
        return try _f.CreateFromBuffer(shape, buffer);
    }
    pub fn Create() core.HResult!*TensorUInt8Bit {
        const _f = @This().ITensorUInt8BitStaticsCache.get();
        return try _f.Create();
    }
    pub fn CreateWithShape(shape: *IIterable(i64)) core.HResult!*TensorUInt8Bit {
        const _f = @This().ITensorUInt8BitStaticsCache.get();
        return try _f.CreateWithShape(shape);
    }
    pub fn CreateFromArray(shape: *IIterable(i64), data: [*]u8) core.HResult!*TensorUInt8Bit {
        const _f = @This().ITensorUInt8BitStaticsCache.get();
        return try _f.CreateFromArray(shape, data);
    }
    pub fn CreateFromIterable(shape: *IIterable(i64), data: *IIterable(u8)) core.HResult!*TensorUInt8Bit {
        const _f = @This().ITensorUInt8BitStaticsCache.get();
        return try _f.CreateFromIterable(shape, data);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.TensorUInt8Bit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorUInt8Bit.GUID;
    pub const IID: Guid = ITensorUInt8Bit.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorUInt8Bit.SIGNATURE);
    var _ITensorUInt8BitStatics2Cache: FactoryCache(ITensorUInt8BitStatics2, RUNTIME_NAME) = .{};
    var _ITensorUInt8BitStaticsCache: FactoryCache(ITensorUInt8BitStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const VideoFrame = @import("../Media.zig").VideoFrame;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const BitmapPixelFormat = @import("../Graphics/Imaging.zig").BitmapPixelFormat;
const IClosable = @import("../Foundation.zig").IClosable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IMemoryBufferReference = @import("../Foundation.zig").IMemoryBufferReference;
const BitmapAlphaMode = @import("../Graphics/Imaging.zig").BitmapAlphaMode;
const HRESULT = @import("../root.zig").HRESULT;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IMemoryBuffer = @import("../Foundation.zig").IMemoryBuffer;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const IDirect3DDevice = @import("../Graphics/DirectX/Direct3D11.zig").IDirect3DDevice;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const DisplayAdapterId = @import("../Graphics.zig").DisplayAdapterId;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
pub const Preview = @import("./MachineLearning/Preview.zig");
