pub const FeatureElementKindPreview = enum(i32) {
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
pub const IImageVariableDescriptorPreview = extern struct {
    vtable: *const VTable,
    pub fn getBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        var _r: BitmapPixelFormat = undefined;
        const _c = self.vtable.get_BitmapPixelFormat(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.IImageVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ae1fa72-029e-4dc5-a2f8-5fb763154150";
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
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IInferencingOptionsPreview = extern struct {
    vtable: *const VTable,
    pub fn getPreferredDeviceKind(self: *@This()) core.HResult!LearningModelDeviceKindPreview {
        var _r: LearningModelDeviceKindPreview = undefined;
        const _c = self.vtable.get_PreferredDeviceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredDeviceKind(self: *@This(), value: LearningModelDeviceKindPreview) core.HResult!void {
        const _c = self.vtable.put_PreferredDeviceKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsTracingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTracingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTracingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTracingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxBatchSize(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MaxBatchSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinimizeMemoryAllocation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_MinimizeMemoryAllocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinimizeMemoryAllocation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_MinimizeMemoryAllocation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReclaimMemoryAfterEvaluation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ReclaimMemoryAfterEvaluation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReclaimMemoryAfterEvaluation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ReclaimMemoryAfterEvaluation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.IInferencingOptionsPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47bc8205-4d36-47a9-8f68-ffcb339dd0fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreferredDeviceKind: *const fn(self: *anyopaque, _r: *LearningModelDeviceKindPreview) callconv(.winapi) HRESULT,
        put_PreferredDeviceKind: *const fn(self: *anyopaque, value: LearningModelDeviceKindPreview) callconv(.winapi) HRESULT,
        get_IsTracingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsTracingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MaxBatchSize: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MaxBatchSize: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_MinimizeMemoryAllocation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_MinimizeMemoryAllocation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ReclaimMemoryAfterEvaluation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ReclaimMemoryAfterEvaluation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelBindingPreview = extern struct {
    vtable: *const VTable,
    pub fn Bind(self: *@This(), name: HSTRING, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.Bind(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn BindWithValueWithMetadata(self: *@This(), name: HSTRING, value: *IInspectable, metadata: *IPropertySet) core.HResult!void {
        const _c = self.vtable.BindWithValueWithMetadata(@ptrCast(self), name, value, metadata);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ILearningModelBindingPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93c901e8-6c78-4b4f-aec1-a6bb9e691624";
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
        BindWithValueWithMetadata: *const fn(self: *anyopaque, name: HSTRING, value: *IInspectable, metadata: *IPropertySet) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelBindingPreviewFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromModel(self: *@This(), model: *LearningModelPreview) core.HResult!*LearningModelBindingPreview {
        var _r: *LearningModelBindingPreview = undefined;
        const _c = self.vtable.CreateFromModel(@ptrCast(self), model, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ILearningModelBindingPreviewFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48b8219f-1e51-4d77-ae50-3ec164ad3480";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromModel: *const fn(self: *anyopaque, model: *LearningModelPreview, _r: **LearningModelBindingPreview) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelDescriptionPreview = extern struct {
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
    pub fn getInputFeatures(self: *@This()) core.HResult!*IIterable(ILearningModelVariableDescriptorPreview) {
        var _r: *IIterable(ILearningModelVariableDescriptorPreview) = undefined;
        const _c = self.vtable.get_InputFeatures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputFeatures(self: *@This()) core.HResult!*IIterable(ILearningModelVariableDescriptorPreview) {
        var _r: *IIterable(ILearningModelVariableDescriptorPreview) = undefined;
        const _c = self.vtable.get_OutputFeatures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ILearningModelDescriptionPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f52c09c6-8611-40ad-8e59-de3fd7030a40";
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
        get_InputFeatures: *const fn(self: *anyopaque, _r: **IIterable(ILearningModelVariableDescriptorPreview)) callconv(.winapi) HRESULT,
        get_OutputFeatures: *const fn(self: *anyopaque, _r: **IIterable(ILearningModelVariableDescriptorPreview)) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelEvaluationResultPreview = extern struct {
    vtable: *const VTable,
    pub fn getCorrelationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputs(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Outputs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ILearningModelEvaluationResultPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df25ea9f-9863-4088-8498-87a1f4686f92";
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
        get_Outputs: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelPreview = extern struct {
    vtable: *const VTable,
    pub fn EvaluateAsync(self: *@This(), binding: *LearningModelBindingPreview, correlationId: HSTRING) core.HResult!*IAsyncOperation(LearningModelEvaluationResultPreview) {
        var _r: *IAsyncOperation(LearningModelEvaluationResultPreview) = undefined;
        const _c = self.vtable.EvaluateAsync(@ptrCast(self), binding, correlationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EvaluateFeaturesAsync(self: *@This(), features: *IMap(HSTRING,IInspectable), correlationId: HSTRING) core.HResult!*IAsyncOperation(LearningModelEvaluationResultPreview) {
        var _r: *IAsyncOperation(LearningModelEvaluationResultPreview) = undefined;
        const _c = self.vtable.EvaluateFeaturesAsync(@ptrCast(self), features, correlationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!*LearningModelDescriptionPreview {
        var _r: *LearningModelDescriptionPreview = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInferencingOptions(self: *@This()) core.HResult!*InferencingOptionsPreview {
        var _r: *InferencingOptionsPreview = undefined;
        const _c = self.vtable.get_InferencingOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInferencingOptions(self: *@This(), value: *InferencingOptionsPreview) core.HResult!void {
        const _c = self.vtable.put_InferencingOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ILearningModelPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "049c266a-93b4-478c-aeb8-70157bf0ff94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        EvaluateAsync: *const fn(self: *anyopaque, binding: *LearningModelBindingPreview, correlationId: HSTRING, _r: **IAsyncOperation(LearningModelEvaluationResultPreview)) callconv(.winapi) HRESULT,
        EvaluateFeaturesAsync: *const fn(self: *anyopaque, features: *IMap(HSTRING,IInspectable), correlationId: HSTRING, _r: **IAsyncOperation(LearningModelEvaluationResultPreview)) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: **LearningModelDescriptionPreview) callconv(.winapi) HRESULT,
        get_InferencingOptions: *const fn(self: *anyopaque, _r: **InferencingOptionsPreview) callconv(.winapi) HRESULT,
        put_InferencingOptions: *const fn(self: *anyopaque, value: *InferencingOptionsPreview) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn LoadModelFromStorageFileAsync(self: *@This(), modelFile: *IStorageFile) core.HResult!*IAsyncOperation(LearningModelPreview) {
        var _r: *IAsyncOperation(LearningModelPreview) = undefined;
        const _c = self.vtable.LoadModelFromStorageFileAsync(@ptrCast(self), modelFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadModelFromStreamAsync(self: *@This(), modelStream: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(LearningModelPreview) {
        var _r: *IAsyncOperation(LearningModelPreview) = undefined;
        const _c = self.vtable.LoadModelFromStreamAsync(@ptrCast(self), modelStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ILearningModelPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "164bbb60-8465-4786-8b93-2c16a89289d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadModelFromStorageFileAsync: *const fn(self: *anyopaque, modelFile: *IStorageFile, _r: **IAsyncOperation(LearningModelPreview)) callconv(.winapi) HRESULT,
        LoadModelFromStreamAsync: *const fn(self: *anyopaque, modelStream: *IRandomAccessStreamReference, _r: **IAsyncOperation(LearningModelPreview)) callconv(.winapi) HRESULT,
    };
};
pub const ILearningModelVariableDescriptorPreview = extern struct {
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
    pub fn getModelFeatureKind(self: *@This()) core.HResult!LearningModelFeatureKindPreview {
        var _r: LearningModelFeatureKindPreview = undefined;
        const _c = self.vtable.get_ModelFeatureKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ILearningModelVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b13df682-fc30-492b-8ea0-ed1f53c0b038";
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
        get_ModelFeatureKind: *const fn(self: *anyopaque, _r: *LearningModelFeatureKindPreview) callconv(.winapi) HRESULT,
        get_IsRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapVariableDescriptorPreview = extern struct {
    vtable: *const VTable,
    pub fn getKeyKind(self: *@This()) core.HResult!FeatureElementKindPreview {
        var _r: FeatureElementKindPreview = undefined;
        const _c = self.vtable.get_KeyKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValidStringKeys(self: *@This()) core.HResult!*IIterable(HSTRING) {
        var _r: *IIterable(HSTRING) = undefined;
        const _c = self.vtable.get_ValidStringKeys(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValidIntegerKeys(self: *@This()) core.HResult!*IIterable(i64) {
        var _r: *IIterable(i64) = undefined;
        const _c = self.vtable.get_ValidIntegerKeys(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFields(self: *@This()) core.HResult!*ILearningModelVariableDescriptorPreview {
        var _r: *ILearningModelVariableDescriptorPreview = undefined;
        const _c = self.vtable.get_Fields(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.IMapVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3cb38370-c02b-4236-b3e8-6bdca49c3129";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyKind: *const fn(self: *anyopaque, _r: *FeatureElementKindPreview) callconv(.winapi) HRESULT,
        get_ValidStringKeys: *const fn(self: *anyopaque, _r: **IIterable(HSTRING)) callconv(.winapi) HRESULT,
        get_ValidIntegerKeys: *const fn(self: *anyopaque, _r: **IIterable(i64)) callconv(.winapi) HRESULT,
        get_Fields: *const fn(self: *anyopaque, _r: **ILearningModelVariableDescriptorPreview) callconv(.winapi) HRESULT,
    };
};
pub const ISequenceVariableDescriptorPreview = extern struct {
    vtable: *const VTable,
    pub fn getElementType(self: *@This()) core.HResult!*ILearningModelVariableDescriptorPreview {
        var _r: *ILearningModelVariableDescriptorPreview = undefined;
        const _c = self.vtable.get_ElementType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ISequenceVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9cd8f292-98b2-4530-a1b6-2ded5fecbc26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ElementType: *const fn(self: *anyopaque, _r: **ILearningModelVariableDescriptorPreview) callconv(.winapi) HRESULT,
    };
};
pub const ITensorVariableDescriptorPreview = extern struct {
    vtable: *const VTable,
    pub fn getDataType(self: *@This()) core.HResult!FeatureElementKindPreview {
        var _r: FeatureElementKindPreview = undefined;
        const _c = self.vtable.get_DataType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShape(self: *@This()) core.HResult!*IIterable(i64) {
        var _r: *IIterable(i64) = undefined;
        const _c = self.vtable.get_Shape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ITensorVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a80f501a-9aac-4233-9784-aceaf92510b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataType: *const fn(self: *anyopaque, _r: *FeatureElementKindPreview) callconv(.winapi) HRESULT,
        get_Shape: *const fn(self: *anyopaque, _r: **IIterable(i64)) callconv(.winapi) HRESULT,
    };
};
pub const ImageVariableDescriptorPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        const this: *IImageVariableDescriptorPreview = @ptrCast(self);
        return try this.getBitmapPixelFormat();
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IImageVariableDescriptorPreview = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IImageVariableDescriptorPreview = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getModelFeatureKind(self: *@This()) core.HResult!LearningModelFeatureKindPreview {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getModelFeatureKind();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRequired();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.ImageVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageVariableDescriptorPreview.GUID;
    pub const IID: Guid = IImageVariableDescriptorPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageVariableDescriptorPreview.SIGNATURE);
};
pub const InferencingOptionsPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPreferredDeviceKind(self: *@This()) core.HResult!LearningModelDeviceKindPreview {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.getPreferredDeviceKind();
    }
    pub fn putPreferredDeviceKind(self: *@This(), value: LearningModelDeviceKindPreview) core.HResult!void {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.putPreferredDeviceKind(value);
    }
    pub fn getIsTracingEnabled(self: *@This()) core.HResult!bool {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.getIsTracingEnabled();
    }
    pub fn putIsTracingEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.putIsTracingEnabled(value);
    }
    pub fn getMaxBatchSize(self: *@This()) core.HResult!i32 {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.getMaxBatchSize();
    }
    pub fn putMaxBatchSize(self: *@This(), value: i32) core.HResult!void {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.putMaxBatchSize(value);
    }
    pub fn getMinimizeMemoryAllocation(self: *@This()) core.HResult!bool {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.getMinimizeMemoryAllocation();
    }
    pub fn putMinimizeMemoryAllocation(self: *@This(), value: bool) core.HResult!void {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.putMinimizeMemoryAllocation(value);
    }
    pub fn getReclaimMemoryAfterEvaluation(self: *@This()) core.HResult!bool {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.getReclaimMemoryAfterEvaluation();
    }
    pub fn putReclaimMemoryAfterEvaluation(self: *@This(), value: bool) core.HResult!void {
        const this: *IInferencingOptionsPreview = @ptrCast(self);
        return try this.putReclaimMemoryAfterEvaluation(value);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.InferencingOptionsPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInferencingOptionsPreview.GUID;
    pub const IID: Guid = IInferencingOptionsPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInferencingOptionsPreview.SIGNATURE);
};
pub const LearningModelBindingPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Bind(self: *@This(), name: HSTRING, value: *IInspectable) core.HResult!void {
        const this: *ILearningModelBindingPreview = @ptrCast(self);
        return try this.Bind(name, value);
    }
    pub fn BindWithMetadata(self: *@This(), name: HSTRING, value: *IInspectable, metadata: *IPropertySet) core.HResult!void {
        const this: *ILearningModelBindingPreview = @ptrCast(self);
        return try this.BindWithMetadata(name, value, metadata);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *ILearningModelBindingPreview = @ptrCast(self);
        return try this.Clear();
    }
    pub fn Lookup(self: *@This(), key: core.generic(K)) core.HResult!core.generic(V) {
        var this: ?*IMapView(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMapView(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn HasKey(self: *@This(), key: core.generic(K)) core.HResult!bool {
        var this: ?*IMapView(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasKey(key);
    }
    pub fn Split(self: *@This(), first: *IMapView(K,V), second: *IMapView(K,V)) core.HResult!void {
        var this: ?*IMapView(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Split(first, second);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,IInspectable)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromModel(model: *LearningModelPreview) core.HResult!*LearningModelBindingPreview {
        const factory = @This().ILearningModelBindingPreviewFactoryCache.get();
        return try factory.CreateFromModel(model);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.LearningModelBindingPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelBindingPreview.GUID;
    pub const IID: Guid = ILearningModelBindingPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelBindingPreview.SIGNATURE);
    var _ILearningModelBindingPreviewFactoryCache: FactoryCache(ILearningModelBindingPreviewFactory, RUNTIME_NAME) = .{};
};
pub const LearningModelDescriptionPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuthor(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModelDescriptionPreview = @ptrCast(self);
        return try this.getAuthor();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModelDescriptionPreview = @ptrCast(self);
        return try this.getName();
    }
    pub fn getDomain(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModelDescriptionPreview = @ptrCast(self);
        return try this.getDomain();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModelDescriptionPreview = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getVersion(self: *@This()) core.HResult!i64 {
        const this: *ILearningModelDescriptionPreview = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn getMetadata(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        const this: *ILearningModelDescriptionPreview = @ptrCast(self);
        return try this.getMetadata();
    }
    pub fn getInputFeatures(self: *@This()) core.HResult!*IIterable(ILearningModelVariableDescriptorPreview) {
        const this: *ILearningModelDescriptionPreview = @ptrCast(self);
        return try this.getInputFeatures();
    }
    pub fn getOutputFeatures(self: *@This()) core.HResult!*IIterable(ILearningModelVariableDescriptorPreview) {
        const this: *ILearningModelDescriptionPreview = @ptrCast(self);
        return try this.getOutputFeatures();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.LearningModelDescriptionPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelDescriptionPreview.GUID;
    pub const IID: Guid = ILearningModelDescriptionPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelDescriptionPreview.SIGNATURE);
};
pub const LearningModelDeviceKindPreview = enum(i32) {
    LearningDeviceAny = 0,
    LearningDeviceCpu = 1,
    LearningDeviceGpu = 2,
    LearningDeviceNpu = 3,
    LearningDeviceDsp = 4,
    LearningDeviceFpga = 5,
};
pub const LearningModelEvaluationResultPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCorrelationId(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModelEvaluationResultPreview = @ptrCast(self);
        return try this.getCorrelationId();
    }
    pub fn getOutputs(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *ILearningModelEvaluationResultPreview = @ptrCast(self);
        return try this.getOutputs();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.LearningModelEvaluationResultPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelEvaluationResultPreview.GUID;
    pub const IID: Guid = ILearningModelEvaluationResultPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelEvaluationResultPreview.SIGNATURE);
};
pub const LearningModelFeatureKindPreview = enum(i32) {
    Undefined = 0,
    Tensor = 1,
    Sequence = 2,
    Map = 3,
    Image = 4,
};
pub const LearningModelPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn EvaluateAsync(self: *@This(), binding: *LearningModelBindingPreview, correlationId: HSTRING) core.HResult!*IAsyncOperation(LearningModelEvaluationResultPreview) {
        const this: *ILearningModelPreview = @ptrCast(self);
        return try this.EvaluateAsync(binding, correlationId);
    }
    pub fn EvaluateFeaturesAsync(self: *@This(), features: *IMap(HSTRING,IInspectable), correlationId: HSTRING) core.HResult!*IAsyncOperation(LearningModelEvaluationResultPreview) {
        const this: *ILearningModelPreview = @ptrCast(self);
        return try this.EvaluateFeaturesAsync(features, correlationId);
    }
    pub fn getDescription(self: *@This()) core.HResult!*LearningModelDescriptionPreview {
        const this: *ILearningModelPreview = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getInferencingOptions(self: *@This()) core.HResult!*InferencingOptionsPreview {
        const this: *ILearningModelPreview = @ptrCast(self);
        return try this.getInferencingOptions();
    }
    pub fn putInferencingOptions(self: *@This(), value: *InferencingOptionsPreview) core.HResult!void {
        const this: *ILearningModelPreview = @ptrCast(self);
        return try this.putInferencingOptions(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn LoadModelFromStorageFileAsync(modelFile: *IStorageFile) core.HResult!*IAsyncOperation(LearningModelPreview) {
        const factory = @This().ILearningModelPreviewStaticsCache.get();
        return try factory.LoadModelFromStorageFileAsync(modelFile);
    }
    pub fn LoadModelFromStreamAsync(modelStream: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(LearningModelPreview) {
        const factory = @This().ILearningModelPreviewStaticsCache.get();
        return try factory.LoadModelFromStreamAsync(modelStream);
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.LearningModelPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelPreview.GUID;
    pub const IID: Guid = ILearningModelPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelPreview.SIGNATURE);
    var _ILearningModelPreviewStaticsCache: FactoryCache(ILearningModelPreviewStatics, RUNTIME_NAME) = .{};
};
pub const LearningModelVariableDescriptorPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModelVariableDescriptorPreview = @ptrCast(self);
        return try this.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *ILearningModelVariableDescriptorPreview = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getModelFeatureKind(self: *@This()) core.HResult!LearningModelFeatureKindPreview {
        const this: *ILearningModelVariableDescriptorPreview = @ptrCast(self);
        return try this.getModelFeatureKind();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        const this: *ILearningModelVariableDescriptorPreview = @ptrCast(self);
        return try this.getIsRequired();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.LearningModelVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILearningModelVariableDescriptorPreview.GUID;
    pub const IID: Guid = ILearningModelVariableDescriptorPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILearningModelVariableDescriptorPreview.SIGNATURE);
};
pub const MapVariableDescriptorPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyKind(self: *@This()) core.HResult!FeatureElementKindPreview {
        const this: *IMapVariableDescriptorPreview = @ptrCast(self);
        return try this.getKeyKind();
    }
    pub fn getValidStringKeys(self: *@This()) core.HResult!*IIterable(HSTRING) {
        const this: *IMapVariableDescriptorPreview = @ptrCast(self);
        return try this.getValidStringKeys();
    }
    pub fn getValidIntegerKeys(self: *@This()) core.HResult!*IIterable(i64) {
        const this: *IMapVariableDescriptorPreview = @ptrCast(self);
        return try this.getValidIntegerKeys();
    }
    pub fn getFields(self: *@This()) core.HResult!*ILearningModelVariableDescriptorPreview {
        const this: *IMapVariableDescriptorPreview = @ptrCast(self);
        return try this.getFields();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getModelFeatureKind(self: *@This()) core.HResult!LearningModelFeatureKindPreview {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getModelFeatureKind();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRequired();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.MapVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapVariableDescriptorPreview.GUID;
    pub const IID: Guid = IMapVariableDescriptorPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapVariableDescriptorPreview.SIGNATURE);
};
pub const SequenceVariableDescriptorPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getElementType(self: *@This()) core.HResult!*ILearningModelVariableDescriptorPreview {
        const this: *ISequenceVariableDescriptorPreview = @ptrCast(self);
        return try this.getElementType();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getModelFeatureKind(self: *@This()) core.HResult!LearningModelFeatureKindPreview {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getModelFeatureKind();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRequired();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.SequenceVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISequenceVariableDescriptorPreview.GUID;
    pub const IID: Guid = ISequenceVariableDescriptorPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISequenceVariableDescriptorPreview.SIGNATURE);
};
pub const TensorVariableDescriptorPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDataType(self: *@This()) core.HResult!FeatureElementKindPreview {
        const this: *ITensorVariableDescriptorPreview = @ptrCast(self);
        return try this.getDataType();
    }
    pub fn getShape(self: *@This()) core.HResult!*IIterable(i64) {
        const this: *ITensorVariableDescriptorPreview = @ptrCast(self);
        return try this.getShape();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getModelFeatureKind(self: *@This()) core.HResult!LearningModelFeatureKindPreview {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getModelFeatureKind();
    }
    pub fn getIsRequired(self: *@This()) core.HResult!bool {
        var this: ?*ILearningModelVariableDescriptorPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILearningModelVariableDescriptorPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRequired();
    }
    pub const NAME: []const u8 = "Windows.AI.MachineLearning.Preview.TensorVariableDescriptorPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITensorVariableDescriptorPreview.GUID;
    pub const IID: Guid = ITensorVariableDescriptorPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITensorVariableDescriptorPreview.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IMap = @import("../../Foundation/Collections.zig").IMap;
const IKeyValuePair = @import("../../Foundation/Collections.zig").IKeyValuePair;
const IRandomAccessStreamReference = @import("../../Storage/Streams.zig").IRandomAccessStreamReference;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const IStorageFile = @import("../../Storage.zig").IStorageFile;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IPropertySet = @import("../../Foundation/Collections.zig").IPropertySet;
const TrustLevel = @import("../../root.zig").TrustLevel;
const BitmapPixelFormat = @import("../../Graphics/Imaging.zig").BitmapPixelFormat;
