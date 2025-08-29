pub const DetectedFace = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFaceBox(self: *@This()) core.HResult!BitmapBounds {
        const this: *IDetectedFace = @ptrCast(self);
        return try this.getFaceBox();
    }
    pub const NAME: []const u8 = "Windows.Media.FaceAnalysis.DetectedFace";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDetectedFace.GUID;
    pub const IID: Guid = IDetectedFace.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDetectedFace.SIGNATURE);
};
pub const FaceDetector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn DetectFacesAsync(self: *@This(), image: *SoftwareBitmap) core.HResult!*IAsyncOperation(IVector(DetectedFace)) {
        const this: *IFaceDetector = @ptrCast(self);
        return try this.DetectFacesAsync(image);
    }
    pub fn DetectFacesAsyncWithSearchArea(self: *@This(), image: *SoftwareBitmap, searchArea: BitmapBounds) core.HResult!*IAsyncOperation(IVector(DetectedFace)) {
        const this: *IFaceDetector = @ptrCast(self);
        return try this.DetectFacesAsyncWithSearchArea(image, searchArea);
    }
    pub fn getMinDetectableFaceSize(self: *@This()) core.HResult!BitmapSize {
        const this: *IFaceDetector = @ptrCast(self);
        return try this.getMinDetectableFaceSize();
    }
    pub fn putMinDetectableFaceSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const this: *IFaceDetector = @ptrCast(self);
        return try this.putMinDetectableFaceSize(value);
    }
    pub fn getMaxDetectableFaceSize(self: *@This()) core.HResult!BitmapSize {
        const this: *IFaceDetector = @ptrCast(self);
        return try this.getMaxDetectableFaceSize();
    }
    pub fn putMaxDetectableFaceSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const this: *IFaceDetector = @ptrCast(self);
        return try this.putMaxDetectableFaceSize(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAsync() core.HResult!*IAsyncOperation(FaceDetector) {
        const factory = @This().IFaceDetectorStaticsCache.get();
        return try factory.CreateAsync();
    }
    pub fn GetSupportedBitmapPixelFormats() core.HResult!*IVectorView(BitmapPixelFormat) {
        const factory = @This().IFaceDetectorStaticsCache.get();
        return try factory.GetSupportedBitmapPixelFormats();
    }
    pub fn IsBitmapPixelFormatSupported(bitmapPixelFormat: BitmapPixelFormat) core.HResult!bool {
        const factory = @This().IFaceDetectorStaticsCache.get();
        return try factory.IsBitmapPixelFormatSupported(bitmapPixelFormat);
    }
    pub fn getIsSupported() core.HResult!bool {
        const factory = @This().IFaceDetectorStaticsCache.get();
        return try factory.getIsSupported();
    }
    pub const NAME: []const u8 = "Windows.Media.FaceAnalysis.FaceDetector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFaceDetector.GUID;
    pub const IID: Guid = IFaceDetector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFaceDetector.SIGNATURE);
    var _IFaceDetectorStaticsCache: FactoryCache(IFaceDetectorStatics, RUNTIME_NAME) = .{};
};
pub const FaceTracker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ProcessNextFrameAsync(self: *@This(), videoFrame: *VideoFrame) core.HResult!*IAsyncOperation(IVector(DetectedFace)) {
        const this: *IFaceTracker = @ptrCast(self);
        return try this.ProcessNextFrameAsync(videoFrame);
    }
    pub fn getMinDetectableFaceSize(self: *@This()) core.HResult!BitmapSize {
        const this: *IFaceTracker = @ptrCast(self);
        return try this.getMinDetectableFaceSize();
    }
    pub fn putMinDetectableFaceSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const this: *IFaceTracker = @ptrCast(self);
        return try this.putMinDetectableFaceSize(value);
    }
    pub fn getMaxDetectableFaceSize(self: *@This()) core.HResult!BitmapSize {
        const this: *IFaceTracker = @ptrCast(self);
        return try this.getMaxDetectableFaceSize();
    }
    pub fn putMaxDetectableFaceSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const this: *IFaceTracker = @ptrCast(self);
        return try this.putMaxDetectableFaceSize(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateAsync() core.HResult!*IAsyncOperation(FaceTracker) {
        const factory = @This().IFaceTrackerStaticsCache.get();
        return try factory.CreateAsync();
    }
    pub fn GetSupportedBitmapPixelFormats() core.HResult!*IVectorView(BitmapPixelFormat) {
        const factory = @This().IFaceTrackerStaticsCache.get();
        return try factory.GetSupportedBitmapPixelFormats();
    }
    pub fn IsBitmapPixelFormatSupported(bitmapPixelFormat: BitmapPixelFormat) core.HResult!bool {
        const factory = @This().IFaceTrackerStaticsCache.get();
        return try factory.IsBitmapPixelFormatSupported(bitmapPixelFormat);
    }
    pub fn getIsSupported() core.HResult!bool {
        const factory = @This().IFaceTrackerStaticsCache.get();
        return try factory.getIsSupported();
    }
    pub const NAME: []const u8 = "Windows.Media.FaceAnalysis.FaceTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFaceTracker.GUID;
    pub const IID: Guid = IFaceTracker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFaceTracker.SIGNATURE);
    var _IFaceTrackerStaticsCache: FactoryCache(IFaceTrackerStatics, RUNTIME_NAME) = .{};
};
pub const IDetectedFace = extern struct {
    vtable: *const VTable,
    pub fn getFaceBox(self: *@This()) core.HResult!BitmapBounds {
        var _r: BitmapBounds = undefined;
        const _c = self.vtable.get_FaceBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.FaceAnalysis.IDetectedFace";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8200d454-66bc-34df-9410-e89400195414";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FaceBox: *const fn(self: *anyopaque, _r: *BitmapBounds) callconv(.winapi) HRESULT,
    };
};
pub const IFaceDetector = extern struct {
    vtable: *const VTable,
    pub fn DetectFacesAsync(self: *@This(), image: *SoftwareBitmap) core.HResult!*IAsyncOperation(IVector(DetectedFace)) {
        var _r: *IAsyncOperation(IVector(DetectedFace)) = undefined;
        const _c = self.vtable.DetectFacesAsync(@ptrCast(self), image, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DetectFacesAsyncWithSearchArea(self: *@This(), image: *SoftwareBitmap, searchArea: BitmapBounds) core.HResult!*IAsyncOperation(IVector(DetectedFace)) {
        var _r: *IAsyncOperation(IVector(DetectedFace)) = undefined;
        const _c = self.vtable.DetectFacesAsyncWithSearchArea(@ptrCast(self), image, searchArea, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinDetectableFaceSize(self: *@This()) core.HResult!BitmapSize {
        var _r: BitmapSize = undefined;
        const _c = self.vtable.get_MinDetectableFaceSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinDetectableFaceSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const _c = self.vtable.put_MinDetectableFaceSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxDetectableFaceSize(self: *@This()) core.HResult!BitmapSize {
        var _r: BitmapSize = undefined;
        const _c = self.vtable.get_MaxDetectableFaceSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxDetectableFaceSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const _c = self.vtable.put_MaxDetectableFaceSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.FaceAnalysis.IFaceDetector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16b672dc-fe6f-3117-8d95-c3f04d51630c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DetectFacesAsync: *const fn(self: *anyopaque, image: *SoftwareBitmap, _r: **IAsyncOperation(IVector(DetectedFace))) callconv(.winapi) HRESULT,
        DetectFacesAsyncWithSearchArea: *const fn(self: *anyopaque, image: *SoftwareBitmap, searchArea: BitmapBounds, _r: **IAsyncOperation(IVector(DetectedFace))) callconv(.winapi) HRESULT,
        get_MinDetectableFaceSize: *const fn(self: *anyopaque, _r: *BitmapSize) callconv(.winapi) HRESULT,
        put_MinDetectableFaceSize: *const fn(self: *anyopaque, value: BitmapSize) callconv(.winapi) HRESULT,
        get_MaxDetectableFaceSize: *const fn(self: *anyopaque, _r: *BitmapSize) callconv(.winapi) HRESULT,
        put_MaxDetectableFaceSize: *const fn(self: *anyopaque, value: BitmapSize) callconv(.winapi) HRESULT,
    };
};
pub const IFaceDetectorStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAsync(self: *@This()) core.HResult!*IAsyncOperation(FaceDetector) {
        var _r: *IAsyncOperation(FaceDetector) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedBitmapPixelFormats(self: *@This()) core.HResult!*IVectorView(BitmapPixelFormat) {
        var _r: *IVectorView(BitmapPixelFormat) = undefined;
        const _c = self.vtable.GetSupportedBitmapPixelFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsBitmapPixelFormatSupported(self: *@This(), bitmapPixelFormat: BitmapPixelFormat) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsBitmapPixelFormatSupported(@ptrCast(self), bitmapPixelFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.FaceAnalysis.IFaceDetectorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc042d67-9047-33f6-881b-6746c1b218b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(FaceDetector)) callconv(.winapi) HRESULT,
        GetSupportedBitmapPixelFormats: *const fn(self: *anyopaque, _r: **IVectorView(BitmapPixelFormat)) callconv(.winapi) HRESULT,
        IsBitmapPixelFormatSupported: *const fn(self: *anyopaque, bitmapPixelFormat: BitmapPixelFormat, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IFaceTracker = extern struct {
    vtable: *const VTable,
    pub fn ProcessNextFrameAsync(self: *@This(), videoFrame: *VideoFrame) core.HResult!*IAsyncOperation(IVector(DetectedFace)) {
        var _r: *IAsyncOperation(IVector(DetectedFace)) = undefined;
        const _c = self.vtable.ProcessNextFrameAsync(@ptrCast(self), videoFrame, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinDetectableFaceSize(self: *@This()) core.HResult!BitmapSize {
        var _r: BitmapSize = undefined;
        const _c = self.vtable.get_MinDetectableFaceSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinDetectableFaceSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const _c = self.vtable.put_MinDetectableFaceSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxDetectableFaceSize(self: *@This()) core.HResult!BitmapSize {
        var _r: BitmapSize = undefined;
        const _c = self.vtable.get_MaxDetectableFaceSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxDetectableFaceSize(self: *@This(), value: BitmapSize) core.HResult!void {
        const _c = self.vtable.put_MaxDetectableFaceSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.FaceAnalysis.IFaceTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ba67d8c-a841-4420-93e6-2420a1884fcf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProcessNextFrameAsync: *const fn(self: *anyopaque, videoFrame: *VideoFrame, _r: **IAsyncOperation(IVector(DetectedFace))) callconv(.winapi) HRESULT,
        get_MinDetectableFaceSize: *const fn(self: *anyopaque, _r: *BitmapSize) callconv(.winapi) HRESULT,
        put_MinDetectableFaceSize: *const fn(self: *anyopaque, value: BitmapSize) callconv(.winapi) HRESULT,
        get_MaxDetectableFaceSize: *const fn(self: *anyopaque, _r: *BitmapSize) callconv(.winapi) HRESULT,
        put_MaxDetectableFaceSize: *const fn(self: *anyopaque, value: BitmapSize) callconv(.winapi) HRESULT,
    };
};
pub const IFaceTrackerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAsync(self: *@This()) core.HResult!*IAsyncOperation(FaceTracker) {
        var _r: *IAsyncOperation(FaceTracker) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedBitmapPixelFormats(self: *@This()) core.HResult!*IVectorView(BitmapPixelFormat) {
        var _r: *IVectorView(BitmapPixelFormat) = undefined;
        const _c = self.vtable.GetSupportedBitmapPixelFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsBitmapPixelFormatSupported(self: *@This(), bitmapPixelFormat: BitmapPixelFormat) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsBitmapPixelFormatSupported(@ptrCast(self), bitmapPixelFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.FaceAnalysis.IFaceTrackerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9629198-1801-3fa5-932e-31d767af6c4d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(FaceTracker)) callconv(.winapi) HRESULT,
        GetSupportedBitmapPixelFormats: *const fn(self: *anyopaque, _r: **IVectorView(BitmapPixelFormat)) callconv(.winapi) HRESULT,
        IsBitmapPixelFormatSupported: *const fn(self: *anyopaque, bitmapPixelFormat: BitmapPixelFormat, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
const HSTRING = @import("../root.zig").HSTRING;
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const FactoryCache = @import("../core.zig").FactoryCache;
const IVector = @import("../Foundation/Collections.zig").IVector;
const VideoFrame = @import("../Media.zig").VideoFrame;
const TrustLevel = @import("../root.zig").TrustLevel;
const BitmapPixelFormat = @import("../Graphics/Imaging.zig").BitmapPixelFormat;
const SoftwareBitmap = @import("../Graphics/Imaging.zig").SoftwareBitmap;
const BitmapSize = @import("../Graphics/Imaging.zig").BitmapSize;
const BitmapBounds = @import("../Graphics/Imaging.zig").BitmapBounds;
