pub const BitmapAlphaMode = enum(i32) {
    Premultiplied = 0,
    Straight = 1,
    Ignore = 2,
};
pub const BitmapBounds = extern struct {
    X: u32,
    Y: u32,
    Width: u32,
    Height: u32,
};
pub const BitmapBuffer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetPlaneCount(self: *@This()) core.HResult!i32 {
        const this: *IBitmapBuffer = @ptrCast(self);
        return try this.GetPlaneCount();
    }
    pub fn GetPlaneDescription(self: *@This(), index: i32) core.HResult!BitmapPlaneDescription {
        const this: *IBitmapBuffer = @ptrCast(self);
        return try this.GetPlaneDescription(index);
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
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapBuffer.GUID;
    pub const IID: Guid = IBitmapBuffer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapBuffer.SIGNATURE);
};
pub const BitmapBufferAccessMode = enum(i32) {
    Read = 0,
    ReadWrite = 1,
    Write = 2,
};
pub const BitmapCodecInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCodecId(self: *@This()) core.HResult!*Guid {
        const this: *IBitmapCodecInformation = @ptrCast(self);
        return try this.getCodecId();
    }
    pub fn getFileExtensions(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IBitmapCodecInformation = @ptrCast(self);
        return try this.getFileExtensions();
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IBitmapCodecInformation = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn getMimeTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IBitmapCodecInformation = @ptrCast(self);
        return try this.getMimeTypes();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapCodecInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapCodecInformation.GUID;
    pub const IID: Guid = IBitmapCodecInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapCodecInformation.SIGNATURE);
};
pub const BitmapDecoder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBitmapContainerProperties(self: *@This()) core.HResult!*BitmapPropertiesView {
        const this: *IBitmapDecoder = @ptrCast(self);
        return try this.getBitmapContainerProperties();
    }
    pub fn getDecoderInformation(self: *@This()) core.HResult!*BitmapCodecInformation {
        const this: *IBitmapDecoder = @ptrCast(self);
        return try this.getDecoderInformation();
    }
    pub fn getFrameCount(self: *@This()) core.HResult!u32 {
        const this: *IBitmapDecoder = @ptrCast(self);
        return try this.getFrameCount();
    }
    pub fn GetPreviewAsync(self: *@This()) core.HResult!*IAsyncOperation(ImageStream) {
        const this: *IBitmapDecoder = @ptrCast(self);
        return try this.GetPreviewAsync();
    }
    pub fn GetFrameAsync(self: *@This(), frameIndex: u32) core.HResult!*IAsyncOperation(BitmapFrame) {
        const this: *IBitmapDecoder = @ptrCast(self);
        return try this.GetFrameAsync(frameIndex);
    }
    pub fn GetThumbnailAsync(self: *@This()) core.HResult!*IAsyncOperation(ImageStream) {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailAsync();
    }
    pub fn getBitmapProperties(self: *@This()) core.HResult!*BitmapPropertiesView {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBitmapProperties();
    }
    pub fn getBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBitmapPixelFormat();
    }
    pub fn getBitmapAlphaMode(self: *@This()) core.HResult!BitmapAlphaMode {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBitmapAlphaMode();
    }
    pub fn getDpiX(self: *@This()) core.HResult!f64 {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDpiX();
    }
    pub fn getDpiY(self: *@This()) core.HResult!f64 {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDpiY();
    }
    pub fn getPixelWidth(self: *@This()) core.HResult!u32 {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPixelWidth();
    }
    pub fn getPixelHeight(self: *@This()) core.HResult!u32 {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPixelHeight();
    }
    pub fn getOrientedPixelWidth(self: *@This()) core.HResult!u32 {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOrientedPixelWidth();
    }
    pub fn getOrientedPixelHeight(self: *@This()) core.HResult!u32 {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOrientedPixelHeight();
    }
    pub fn GetPixelDataAsync(self: *@This()) core.HResult!*IAsyncOperation(PixelDataProvider) {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPixelDataAsync();
    }
    pub fn GetPixelDataAsync(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, transform: *BitmapTransform, exifOrientationMode: ExifOrientationMode, colorManagementMode: ColorManagementMode) core.HResult!*IAsyncOperation(PixelDataProvider) {
        var this: ?*IBitmapFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPixelDataAsync(pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode);
    }
    pub fn GetSoftwareBitmapAsync(self: *@This()) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var this: ?*IBitmapFrameWithSoftwareBitmap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrameWithSoftwareBitmap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSoftwareBitmapAsync();
    }
    pub fn GetSoftwareBitmapAsync(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var this: ?*IBitmapFrameWithSoftwareBitmap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrameWithSoftwareBitmap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSoftwareBitmapAsync(pixelFormat, alphaMode);
    }
    pub fn GetSoftwareBitmapAsync(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, transform: *BitmapTransform, exifOrientationMode: ExifOrientationMode, colorManagementMode: ColorManagementMode) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var this: ?*IBitmapFrameWithSoftwareBitmap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrameWithSoftwareBitmap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSoftwareBitmapAsync(pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getBmpDecoderId() core.HResult!*Guid {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.getBmpDecoderId();
    }
    pub fn getJpegDecoderId() core.HResult!*Guid {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.getJpegDecoderId();
    }
    pub fn getPngDecoderId() core.HResult!*Guid {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.getPngDecoderId();
    }
    pub fn getTiffDecoderId() core.HResult!*Guid {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.getTiffDecoderId();
    }
    pub fn getGifDecoderId() core.HResult!*Guid {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.getGifDecoderId();
    }
    pub fn getJpegXRDecoderId() core.HResult!*Guid {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.getJpegXRDecoderId();
    }
    pub fn getIcoDecoderId() core.HResult!*Guid {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.getIcoDecoderId();
    }
    pub fn GetDecoderInformationEnumerator() core.HResult!*IVectorView(BitmapCodecInformation) {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.GetDecoderInformationEnumerator();
    }
    pub fn CreateAsync(stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(BitmapDecoder) {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.CreateAsync(stream);
    }
    pub fn CreateAsync(decoderId: *Guid, stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(BitmapDecoder) {
        const factory = @This().IBitmapDecoderStaticsCache.get();
        return try factory.CreateAsync(decoderId, stream);
    }
    pub fn getHeifDecoderId() core.HResult!*Guid {
        const factory = @This().IBitmapDecoderStatics2Cache.get();
        return try factory.getHeifDecoderId();
    }
    pub fn getWebpDecoderId() core.HResult!*Guid {
        const factory = @This().IBitmapDecoderStatics2Cache.get();
        return try factory.getWebpDecoderId();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapDecoder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapDecoder.GUID;
    pub const IID: Guid = IBitmapDecoder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapDecoder.SIGNATURE);
    var _IBitmapDecoderStaticsCache: FactoryCache(IBitmapDecoderStatics, RUNTIME_NAME) = .{};
    var _IBitmapDecoderStatics2Cache: FactoryCache(IBitmapDecoderStatics2, RUNTIME_NAME) = .{};
};
pub const BitmapEncoder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEncoderInformation(self: *@This()) core.HResult!*BitmapCodecInformation {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.getEncoderInformation();
    }
    pub fn getBitmapProperties(self: *@This()) core.HResult!*BitmapProperties {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.getBitmapProperties();
    }
    pub fn getBitmapContainerProperties(self: *@This()) core.HResult!*BitmapProperties {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.getBitmapContainerProperties();
    }
    pub fn getIsThumbnailGenerated(self: *@This()) core.HResult!bool {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.getIsThumbnailGenerated();
    }
    pub fn putIsThumbnailGenerated(self: *@This(), value: bool) core.HResult!void {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.putIsThumbnailGenerated(value);
    }
    pub fn getGeneratedThumbnailWidth(self: *@This()) core.HResult!u32 {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.getGeneratedThumbnailWidth();
    }
    pub fn putGeneratedThumbnailWidth(self: *@This(), value: u32) core.HResult!void {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.putGeneratedThumbnailWidth(value);
    }
    pub fn getGeneratedThumbnailHeight(self: *@This()) core.HResult!u32 {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.getGeneratedThumbnailHeight();
    }
    pub fn putGeneratedThumbnailHeight(self: *@This(), value: u32) core.HResult!void {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.putGeneratedThumbnailHeight(value);
    }
    pub fn getBitmapTransform(self: *@This()) core.HResult!*BitmapTransform {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.getBitmapTransform();
    }
    pub fn SetPixelData(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, width: u32, height: u32, dpiX: f64, dpiY: f64, pixels: [*]u8) core.HResult!void {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.SetPixelData(pixelFormat, alphaMode, width, height, dpiX, dpiY, pixels);
    }
    pub fn GoToNextFrameAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.GoToNextFrameAsync();
    }
    pub fn GoToNextFrameAsync(self: *@This(), encodingOptions: *IIterable(IKeyValuePair(HSTRING,BitmapTypedValue))) core.HResult!*IAsyncAction {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.GoToNextFrameAsync(encodingOptions);
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBitmapEncoder = @ptrCast(self);
        return try this.FlushAsync();
    }
    pub fn SetSoftwareBitmap(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!void {
        var this: ?*IBitmapEncoderWithSoftwareBitmap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapEncoderWithSoftwareBitmap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetSoftwareBitmap(bitmap);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getHeifEncoderId() core.HResult!*Guid {
        const factory = @This().IBitmapEncoderStatics2Cache.get();
        return try factory.getHeifEncoderId();
    }
    pub fn getBmpEncoderId() core.HResult!*Guid {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.getBmpEncoderId();
    }
    pub fn getJpegEncoderId() core.HResult!*Guid {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.getJpegEncoderId();
    }
    pub fn getPngEncoderId() core.HResult!*Guid {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.getPngEncoderId();
    }
    pub fn getTiffEncoderId() core.HResult!*Guid {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.getTiffEncoderId();
    }
    pub fn getGifEncoderId() core.HResult!*Guid {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.getGifEncoderId();
    }
    pub fn getJpegXREncoderId() core.HResult!*Guid {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.getJpegXREncoderId();
    }
    pub fn GetEncoderInformationEnumerator() core.HResult!*IVectorView(BitmapCodecInformation) {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.GetEncoderInformationEnumerator();
    }
    pub fn CreateAsync(encoderId: *Guid, stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(BitmapEncoder) {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.CreateAsync(encoderId, stream);
    }
    pub fn CreateAsync(encoderId: *Guid, stream: *IRandomAccessStream, encodingOptions: *IIterable(IKeyValuePair(HSTRING,BitmapTypedValue))) core.HResult!*IAsyncOperation(BitmapEncoder) {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.CreateAsync(encoderId, stream, encodingOptions);
    }
    pub fn CreateForTranscodingAsync(stream: *IRandomAccessStream, bitmapDecoder: *BitmapDecoder) core.HResult!*IAsyncOperation(BitmapEncoder) {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.CreateForTranscodingAsync(stream, bitmapDecoder);
    }
    pub fn CreateForInPlacePropertyEncodingAsync(bitmapDecoder: *BitmapDecoder) core.HResult!*IAsyncOperation(BitmapEncoder) {
        const factory = @This().IBitmapEncoderStaticsCache.get();
        return try factory.CreateForInPlacePropertyEncodingAsync(bitmapDecoder);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapEncoder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapEncoder.GUID;
    pub const IID: Guid = IBitmapEncoder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapEncoder.SIGNATURE);
    var _IBitmapEncoderStatics2Cache: FactoryCache(IBitmapEncoderStatics2, RUNTIME_NAME) = .{};
    var _IBitmapEncoderStaticsCache: FactoryCache(IBitmapEncoderStatics, RUNTIME_NAME) = .{};
};
pub const BitmapFlip = enum(i32) {
    None = 0,
    Horizontal = 1,
    Vertical = 2,
};
pub const BitmapFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetThumbnailAsync(self: *@This()) core.HResult!*IAsyncOperation(ImageStream) {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.GetThumbnailAsync();
    }
    pub fn getBitmapProperties(self: *@This()) core.HResult!*BitmapPropertiesView {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.getBitmapProperties();
    }
    pub fn getBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.getBitmapPixelFormat();
    }
    pub fn getBitmapAlphaMode(self: *@This()) core.HResult!BitmapAlphaMode {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.getBitmapAlphaMode();
    }
    pub fn getDpiX(self: *@This()) core.HResult!f64 {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.getDpiX();
    }
    pub fn getDpiY(self: *@This()) core.HResult!f64 {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.getDpiY();
    }
    pub fn getPixelWidth(self: *@This()) core.HResult!u32 {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.getPixelWidth();
    }
    pub fn getPixelHeight(self: *@This()) core.HResult!u32 {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.getPixelHeight();
    }
    pub fn getOrientedPixelWidth(self: *@This()) core.HResult!u32 {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.getOrientedPixelWidth();
    }
    pub fn getOrientedPixelHeight(self: *@This()) core.HResult!u32 {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.getOrientedPixelHeight();
    }
    pub fn GetPixelDataAsync(self: *@This()) core.HResult!*IAsyncOperation(PixelDataProvider) {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.GetPixelDataAsync();
    }
    pub fn GetPixelDataAsync(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, transform: *BitmapTransform, exifOrientationMode: ExifOrientationMode, colorManagementMode: ColorManagementMode) core.HResult!*IAsyncOperation(PixelDataProvider) {
        const this: *IBitmapFrame = @ptrCast(self);
        return try this.GetPixelDataAsync(pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode);
    }
    pub fn GetSoftwareBitmapAsync(self: *@This()) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var this: ?*IBitmapFrameWithSoftwareBitmap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrameWithSoftwareBitmap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSoftwareBitmapAsync();
    }
    pub fn GetSoftwareBitmapAsync(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var this: ?*IBitmapFrameWithSoftwareBitmap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrameWithSoftwareBitmap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSoftwareBitmapAsync(pixelFormat, alphaMode);
    }
    pub fn GetSoftwareBitmapAsync(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, transform: *BitmapTransform, exifOrientationMode: ExifOrientationMode, colorManagementMode: ColorManagementMode) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var this: ?*IBitmapFrameWithSoftwareBitmap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapFrameWithSoftwareBitmap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSoftwareBitmapAsync(pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapFrame.GUID;
    pub const IID: Guid = IBitmapFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapFrame.SIGNATURE);
};
pub const BitmapInterpolationMode = enum(i32) {
    NearestNeighbor = 0,
    Linear = 1,
    Cubic = 2,
    Fant = 3,
};
pub const BitmapPixelFormat = enum(i32) {
    Unknown = 0,
    Rgba16 = 12,
    Rgba8 = 30,
    Gray16 = 57,
    Gray8 = 62,
    Bgra8 = 87,
    Nv12 = 103,
    P010 = 104,
    Yuy2 = 107,
};
pub const BitmapPlaneDescription = extern struct {
    StartIndex: i32,
    Width: i32,
    Height: i32,
    Stride: i32,
};
pub const BitmapProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetPropertiesAsync(self: *@This(), propertiesToSet: *IIterable(IKeyValuePair(HSTRING,BitmapTypedValue))) core.HResult!*IAsyncAction {
        const this: *IBitmapProperties = @ptrCast(self);
        return try this.SetPropertiesAsync(propertiesToSet);
    }
    pub fn GetPropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(BitmapPropertySet) {
        var this: ?*IBitmapPropertiesView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapPropertiesView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPropertiesAsync(propertiesToRetrieve);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapProperties.GUID;
    pub const IID: Guid = IBitmapProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapProperties.SIGNATURE);
};
pub const BitmapPropertiesView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetPropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(BitmapPropertySet) {
        const this: *IBitmapPropertiesView = @ptrCast(self);
        return try this.GetPropertiesAsync(propertiesToRetrieve);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapPropertiesView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapPropertiesView.GUID;
    pub const IID: Guid = IBitmapPropertiesView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapPropertiesView.SIGNATURE);
};
pub const BitmapPropertySet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!*BitmapTypedValue {
        const this: *IMap = @ptrCast(self);
        return try this.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IMap = @ptrCast(self);
        return try this.getSize();
    }
    pub fn HasKey(self: *@This(), key: HSTRING) core.HResult!bool {
        const this: *IMap = @ptrCast(self);
        return try this.HasKey(key);
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,BitmapTypedValue) {
        const this: *IMap = @ptrCast(self);
        return try this.GetView();
    }
    pub fn Insert(self: *@This(), key: HSTRING, value: *BitmapTypedValue) core.HResult!bool {
        const this: *IMap = @ptrCast(self);
        return try this.Insert(key, value);
    }
    pub fn Remove(self: *@This(), key: HSTRING) core.HResult!void {
        const this: *IMap = @ptrCast(self);
        return try this.Remove(key);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IMap = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,BitmapTypedValue)) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMap.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapPropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMap.GUID;
    pub const IID: Guid = IMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMap.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BitmapRotation = enum(i32) {
    None = 0,
    Clockwise90Degrees = 1,
    Clockwise180Degrees = 2,
    Clockwise270Degrees = 3,
};
pub const BitmapSize = extern struct {
    Width: u32,
    Height: u32,
};
pub const BitmapTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getScaledWidth(self: *@This()) core.HResult!u32 {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.getScaledWidth();
    }
    pub fn putScaledWidth(self: *@This(), value: u32) core.HResult!void {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.putScaledWidth(value);
    }
    pub fn getScaledHeight(self: *@This()) core.HResult!u32 {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.getScaledHeight();
    }
    pub fn putScaledHeight(self: *@This(), value: u32) core.HResult!void {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.putScaledHeight(value);
    }
    pub fn getInterpolationMode(self: *@This()) core.HResult!BitmapInterpolationMode {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.getInterpolationMode();
    }
    pub fn putInterpolationMode(self: *@This(), value: BitmapInterpolationMode) core.HResult!void {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.putInterpolationMode(value);
    }
    pub fn getFlip(self: *@This()) core.HResult!BitmapFlip {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.getFlip();
    }
    pub fn putFlip(self: *@This(), value: BitmapFlip) core.HResult!void {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.putFlip(value);
    }
    pub fn getRotation(self: *@This()) core.HResult!BitmapRotation {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.getRotation();
    }
    pub fn putRotation(self: *@This(), value: BitmapRotation) core.HResult!void {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.putRotation(value);
    }
    pub fn getBounds(self: *@This()) core.HResult!BitmapBounds {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.getBounds();
    }
    pub fn putBounds(self: *@This(), value: BitmapBounds) core.HResult!void {
        const this: *IBitmapTransform = @ptrCast(self);
        return try this.putBounds(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBitmapTransform.IID)));
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapTransform.GUID;
    pub const IID: Guid = IBitmapTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapTransform.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BitmapTypedValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IBitmapTypedValue = @ptrCast(self);
        return try this.getValue();
    }
    pub fn getType(self: *@This()) core.HResult!PropertyType {
        const this: *IBitmapTypedValue = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(value: *IInspectable, type: PropertyType) core.HResult!*BitmapTypedValue {
        const factory = @This().IBitmapTypedValueFactoryCache.get();
        return try factory.Create(value, type);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.BitmapTypedValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapTypedValue.GUID;
    pub const IID: Guid = IBitmapTypedValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapTypedValue.SIGNATURE);
    var _IBitmapTypedValueFactoryCache: FactoryCache(IBitmapTypedValueFactory, RUNTIME_NAME) = .{};
};
pub const ColorManagementMode = enum(i32) {
    DoNotColorManage = 0,
    ColorManageToSRgb = 1,
};
pub const ExifOrientationMode = enum(i32) {
    IgnoreExifOrientation = 0,
    RespectExifOrientation = 1,
};
pub const IBitmapBuffer = extern struct {
    vtable: *const VTable,
    pub fn GetPlaneCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetPlaneCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPlaneDescription(self: *@This(), index: i32) core.HResult!BitmapPlaneDescription {
        var _r: BitmapPlaneDescription = undefined;
        const _c = self.vtable.GetPlaneDescription(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a53e04c4-399c-438c-b28f-a63a6b83d1a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPlaneCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetPlaneDescription: *const fn(self: *anyopaque, index: i32, _r: *BitmapPlaneDescription) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapCodecInformation = extern struct {
    vtable: *const VTable,
    pub fn getCodecId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CodecId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileExtensions(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_FileExtensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMimeTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_MimeTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapCodecInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "400caaf2-c4b0-4392-a3b0-6f6f9ba95cb4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CodecId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_FileExtensions: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MimeTypes: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapDecoder = extern struct {
    vtable: *const VTable,
    pub fn getBitmapContainerProperties(self: *@This()) core.HResult!*BitmapPropertiesView {
        var _r: *BitmapPropertiesView = undefined;
        const _c = self.vtable.get_BitmapContainerProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDecoderInformation(self: *@This()) core.HResult!*BitmapCodecInformation {
        var _r: *BitmapCodecInformation = undefined;
        const _c = self.vtable.get_DecoderInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_FrameCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPreviewAsync(self: *@This()) core.HResult!*IAsyncOperation(ImageStream) {
        var _r: *IAsyncOperation(ImageStream) = undefined;
        const _c = self.vtable.GetPreviewAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFrameAsync(self: *@This(), frameIndex: u32) core.HResult!*IAsyncOperation(BitmapFrame) {
        var _r: *IAsyncOperation(BitmapFrame) = undefined;
        const _c = self.vtable.GetFrameAsync(@ptrCast(self), frameIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapDecoder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "acef22ba-1d74-4c91-9dfc-9620745233e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BitmapContainerProperties: *const fn(self: *anyopaque, _r: **BitmapPropertiesView) callconv(.winapi) HRESULT,
        get_DecoderInformation: *const fn(self: *anyopaque, _r: **BitmapCodecInformation) callconv(.winapi) HRESULT,
        get_FrameCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetPreviewAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ImageStream)) callconv(.winapi) HRESULT,
        GetFrameAsync: *const fn(self: *anyopaque, frameIndex: u32, _r: **IAsyncOperation(BitmapFrame)) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapDecoderStatics = extern struct {
    vtable: *const VTable,
    pub fn getBmpDecoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BmpDecoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJpegDecoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_JpegDecoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPngDecoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_PngDecoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTiffDecoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TiffDecoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGifDecoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GifDecoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJpegXRDecoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_JpegXRDecoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIcoDecoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_IcoDecoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDecoderInformationEnumerator(self: *@This()) core.HResult!*IVectorView(BitmapCodecInformation) {
        var _r: *IVectorView(BitmapCodecInformation) = undefined;
        const _c = self.vtable.GetDecoderInformationEnumerator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAsync(self: *@This(), stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(BitmapDecoder) {
        var _r: *IAsyncOperation(BitmapDecoder) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAsync(self: *@This(), decoderId: *Guid, stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(BitmapDecoder) {
        var _r: *IAsyncOperation(BitmapDecoder) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), decoderId, stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapDecoderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "438ccb26-bcef-4e95-bad6-23a822e58d01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BmpDecoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_JpegDecoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_PngDecoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TiffDecoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GifDecoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_JpegXRDecoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_IcoDecoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        GetDecoderInformationEnumerator: *const fn(self: *anyopaque, _r: **IVectorView(BitmapCodecInformation)) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, stream: *IRandomAccessStream, _r: **IAsyncOperation(BitmapDecoder)) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, decoderId: *Guid, stream: *IRandomAccessStream, _r: **IAsyncOperation(BitmapDecoder)) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapDecoderStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getHeifDecoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HeifDecoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWebpDecoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_WebpDecoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapDecoderStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50ba68ea-99a1-40c4-80d9-aef0dafa6c3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HeifDecoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_WebpDecoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapEncoder = extern struct {
    vtable: *const VTable,
    pub fn getEncoderInformation(self: *@This()) core.HResult!*BitmapCodecInformation {
        var _r: *BitmapCodecInformation = undefined;
        const _c = self.vtable.get_EncoderInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitmapProperties(self: *@This()) core.HResult!*BitmapProperties {
        var _r: *BitmapProperties = undefined;
        const _c = self.vtable.get_BitmapProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitmapContainerProperties(self: *@This()) core.HResult!*BitmapProperties {
        var _r: *BitmapProperties = undefined;
        const _c = self.vtable.get_BitmapContainerProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsThumbnailGenerated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsThumbnailGenerated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsThumbnailGenerated(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsThumbnailGenerated(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGeneratedThumbnailWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_GeneratedThumbnailWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGeneratedThumbnailWidth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_GeneratedThumbnailWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGeneratedThumbnailHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_GeneratedThumbnailHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGeneratedThumbnailHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_GeneratedThumbnailHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBitmapTransform(self: *@This()) core.HResult!*BitmapTransform {
        var _r: *BitmapTransform = undefined;
        const _c = self.vtable.get_BitmapTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPixelData(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, width: u32, height: u32, dpiX: f64, dpiY: f64, pixels: [*]u8) core.HResult!void {
        const _c = self.vtable.SetPixelData(@ptrCast(self), pixelFormat, alphaMode, width, height, dpiX, dpiY, pixels);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GoToNextFrameAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.GoToNextFrameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GoToNextFrameAsync(self: *@This(), encodingOptions: *IIterable(IKeyValuePair(HSTRING,BitmapTypedValue))) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.GoToNextFrameAsync(@ptrCast(self), encodingOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.FlushAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapEncoder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2bc468e3-e1f8-4b54-95e8-32919551ce62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EncoderInformation: *const fn(self: *anyopaque, _r: **BitmapCodecInformation) callconv(.winapi) HRESULT,
        get_BitmapProperties: *const fn(self: *anyopaque, _r: **BitmapProperties) callconv(.winapi) HRESULT,
        get_BitmapContainerProperties: *const fn(self: *anyopaque, _r: **BitmapProperties) callconv(.winapi) HRESULT,
        get_IsThumbnailGenerated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsThumbnailGenerated: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_GeneratedThumbnailWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_GeneratedThumbnailWidth: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_GeneratedThumbnailHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_GeneratedThumbnailHeight: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_BitmapTransform: *const fn(self: *anyopaque, _r: **BitmapTransform) callconv(.winapi) HRESULT,
        SetPixelData: *const fn(self: *anyopaque, pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, width: u32, height: u32, dpiX: f64, dpiY: f64, pixels: [*]u8) callconv(.winapi) HRESULT,
        GoToNextFrameAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GoToNextFrameAsync: *const fn(self: *anyopaque, encodingOptions: *IIterable(IKeyValuePair(HSTRING,BitmapTypedValue)), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        FlushAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapEncoderStatics = extern struct {
    vtable: *const VTable,
    pub fn getBmpEncoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BmpEncoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJpegEncoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_JpegEncoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPngEncoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_PngEncoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTiffEncoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TiffEncoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGifEncoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_GifEncoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJpegXREncoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_JpegXREncoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEncoderInformationEnumerator(self: *@This()) core.HResult!*IVectorView(BitmapCodecInformation) {
        var _r: *IVectorView(BitmapCodecInformation) = undefined;
        const _c = self.vtable.GetEncoderInformationEnumerator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAsync(self: *@This(), encoderId: *Guid, stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(BitmapEncoder) {
        var _r: *IAsyncOperation(BitmapEncoder) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), encoderId, stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAsync(self: *@This(), encoderId: *Guid, stream: *IRandomAccessStream, encodingOptions: *IIterable(IKeyValuePair(HSTRING,BitmapTypedValue))) core.HResult!*IAsyncOperation(BitmapEncoder) {
        var _r: *IAsyncOperation(BitmapEncoder) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), encoderId, stream, encodingOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForTranscodingAsync(self: *@This(), stream: *IRandomAccessStream, bitmapDecoder: *BitmapDecoder) core.HResult!*IAsyncOperation(BitmapEncoder) {
        var _r: *IAsyncOperation(BitmapEncoder) = undefined;
        const _c = self.vtable.CreateForTranscodingAsync(@ptrCast(self), stream, bitmapDecoder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForInPlacePropertyEncodingAsync(self: *@This(), bitmapDecoder: *BitmapDecoder) core.HResult!*IAsyncOperation(BitmapEncoder) {
        var _r: *IAsyncOperation(BitmapEncoder) = undefined;
        const _c = self.vtable.CreateForInPlacePropertyEncodingAsync(@ptrCast(self), bitmapDecoder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapEncoderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a74356a7-a4e4-4eb9-8e40-564de7e1ccb2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BmpEncoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_JpegEncoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_PngEncoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_TiffEncoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_GifEncoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_JpegXREncoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        GetEncoderInformationEnumerator: *const fn(self: *anyopaque, _r: **IVectorView(BitmapCodecInformation)) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, encoderId: *Guid, stream: *IRandomAccessStream, _r: **IAsyncOperation(BitmapEncoder)) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, encoderId: *Guid, stream: *IRandomAccessStream, encodingOptions: *IIterable(IKeyValuePair(HSTRING,BitmapTypedValue)), _r: **IAsyncOperation(BitmapEncoder)) callconv(.winapi) HRESULT,
        CreateForTranscodingAsync: *const fn(self: *anyopaque, stream: *IRandomAccessStream, bitmapDecoder: *BitmapDecoder, _r: **IAsyncOperation(BitmapEncoder)) callconv(.winapi) HRESULT,
        CreateForInPlacePropertyEncodingAsync: *const fn(self: *anyopaque, bitmapDecoder: *BitmapDecoder, _r: **IAsyncOperation(BitmapEncoder)) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapEncoderStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getHeifEncoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_HeifEncoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapEncoderStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33cbc259-fe31-41b1-b812-086d21e87e16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HeifEncoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapEncoderWithSoftwareBitmap = extern struct {
    vtable: *const VTable,
    pub fn SetSoftwareBitmap(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!void {
        const _c = self.vtable.SetSoftwareBitmap(@ptrCast(self), bitmap);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapEncoderWithSoftwareBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "686cd241-4330-4c77-ace4-0334968b1768";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetSoftwareBitmap: *const fn(self: *anyopaque, bitmap: *SoftwareBitmap) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapFrame = extern struct {
    vtable: *const VTable,
    pub fn GetThumbnailAsync(self: *@This()) core.HResult!*IAsyncOperation(ImageStream) {
        var _r: *IAsyncOperation(ImageStream) = undefined;
        const _c = self.vtable.GetThumbnailAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitmapProperties(self: *@This()) core.HResult!*BitmapPropertiesView {
        var _r: *BitmapPropertiesView = undefined;
        const _c = self.vtable.get_BitmapProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub fn getDpiX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DpiX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDpiY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DpiY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PixelWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PixelHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientedPixelWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OrientedPixelWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientedPixelHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OrientedPixelHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPixelDataAsync(self: *@This()) core.HResult!*IAsyncOperation(PixelDataProvider) {
        var _r: *IAsyncOperation(PixelDataProvider) = undefined;
        const _c = self.vtable.GetPixelDataAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPixelDataAsync(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, transform: *BitmapTransform, exifOrientationMode: ExifOrientationMode, colorManagementMode: ColorManagementMode) core.HResult!*IAsyncOperation(PixelDataProvider) {
        var _r: *IAsyncOperation(PixelDataProvider) = undefined;
        const _c = self.vtable.GetPixelDataAsync(@ptrCast(self), pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72a49a1c-8081-438d-91bc-94ecfc8185c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetThumbnailAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ImageStream)) callconv(.winapi) HRESULT,
        get_BitmapProperties: *const fn(self: *anyopaque, _r: **BitmapPropertiesView) callconv(.winapi) HRESULT,
        get_BitmapPixelFormat: *const fn(self: *anyopaque, _r: *BitmapPixelFormat) callconv(.winapi) HRESULT,
        get_BitmapAlphaMode: *const fn(self: *anyopaque, _r: *BitmapAlphaMode) callconv(.winapi) HRESULT,
        get_DpiX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_DpiY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_PixelWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PixelHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_OrientedPixelWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_OrientedPixelHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetPixelDataAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PixelDataProvider)) callconv(.winapi) HRESULT,
        GetPixelDataAsync: *const fn(self: *anyopaque, pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, transform: *BitmapTransform, exifOrientationMode: ExifOrientationMode, colorManagementMode: ColorManagementMode, _r: **IAsyncOperation(PixelDataProvider)) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapFrameWithSoftwareBitmap = extern struct {
    vtable: *const VTable,
    pub fn GetSoftwareBitmapAsync(self: *@This()) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var _r: *IAsyncOperation(SoftwareBitmap) = undefined;
        const _c = self.vtable.GetSoftwareBitmapAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSoftwareBitmapAsync(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var _r: *IAsyncOperation(SoftwareBitmap) = undefined;
        const _c = self.vtable.GetSoftwareBitmapAsync(@ptrCast(self), pixelFormat, alphaMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSoftwareBitmapAsync(self: *@This(), pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, transform: *BitmapTransform, exifOrientationMode: ExifOrientationMode, colorManagementMode: ColorManagementMode) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var _r: *IAsyncOperation(SoftwareBitmap) = undefined;
        const _c = self.vtable.GetSoftwareBitmapAsync(@ptrCast(self), pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapFrameWithSoftwareBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe287c9a-420c-4963-87ad-691436e08383";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSoftwareBitmapAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SoftwareBitmap)) callconv(.winapi) HRESULT,
        GetSoftwareBitmapAsync: *const fn(self: *anyopaque, pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, _r: **IAsyncOperation(SoftwareBitmap)) callconv(.winapi) HRESULT,
        GetSoftwareBitmapAsync: *const fn(self: *anyopaque, pixelFormat: BitmapPixelFormat, alphaMode: BitmapAlphaMode, transform: *BitmapTransform, exifOrientationMode: ExifOrientationMode, colorManagementMode: ColorManagementMode, _r: **IAsyncOperation(SoftwareBitmap)) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapProperties = extern struct {
    vtable: *const VTable,
    pub fn SetPropertiesAsync(self: *@This(), propertiesToSet: *IIterable(IKeyValuePair(HSTRING,BitmapTypedValue))) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetPropertiesAsync(@ptrCast(self), propertiesToSet, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea9f4f1b-b505-4450-a4d1-e8ca94529d8d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetPropertiesAsync: *const fn(self: *anyopaque, propertiesToSet: *IIterable(IKeyValuePair(HSTRING,BitmapTypedValue)), _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapPropertiesView = extern struct {
    vtable: *const VTable,
    pub fn GetPropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(BitmapPropertySet) {
        var _r: *IAsyncOperation(BitmapPropertySet) = undefined;
        const _c = self.vtable.GetPropertiesAsync(@ptrCast(self), propertiesToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapPropertiesView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e0fe87a-3a70-48f8-9c55-196cf5a545f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPropertiesAsync: *const fn(self: *anyopaque, propertiesToRetrieve: *IIterable(HSTRING), _r: **IAsyncOperation(BitmapPropertySet)) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapTransform = extern struct {
    vtable: *const VTable,
    pub fn getScaledWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ScaledWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaledWidth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ScaledWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaledHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ScaledHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaledHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ScaledHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInterpolationMode(self: *@This()) core.HResult!BitmapInterpolationMode {
        var _r: BitmapInterpolationMode = undefined;
        const _c = self.vtable.get_InterpolationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterpolationMode(self: *@This(), value: BitmapInterpolationMode) core.HResult!void {
        const _c = self.vtable.put_InterpolationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFlip(self: *@This()) core.HResult!BitmapFlip {
        var _r: BitmapFlip = undefined;
        const _c = self.vtable.get_Flip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFlip(self: *@This(), value: BitmapFlip) core.HResult!void {
        const _c = self.vtable.put_Flip(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotation(self: *@This()) core.HResult!BitmapRotation {
        var _r: BitmapRotation = undefined;
        const _c = self.vtable.get_Rotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotation(self: *@This(), value: BitmapRotation) core.HResult!void {
        const _c = self.vtable.put_Rotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBounds(self: *@This()) core.HResult!BitmapBounds {
        var _r: BitmapBounds = undefined;
        const _c = self.vtable.get_Bounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBounds(self: *@This(), value: BitmapBounds) core.HResult!void {
        const _c = self.vtable.put_Bounds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae755344-e268-4d35-adcf-e995d31a8d34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ScaledWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ScaledWidth: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ScaledHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ScaledHeight: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_InterpolationMode: *const fn(self: *anyopaque, _r: *BitmapInterpolationMode) callconv(.winapi) HRESULT,
        put_InterpolationMode: *const fn(self: *anyopaque, value: BitmapInterpolationMode) callconv(.winapi) HRESULT,
        get_Flip: *const fn(self: *anyopaque, _r: *BitmapFlip) callconv(.winapi) HRESULT,
        put_Flip: *const fn(self: *anyopaque, value: BitmapFlip) callconv(.winapi) HRESULT,
        get_Rotation: *const fn(self: *anyopaque, _r: *BitmapRotation) callconv(.winapi) HRESULT,
        put_Rotation: *const fn(self: *anyopaque, value: BitmapRotation) callconv(.winapi) HRESULT,
        get_Bounds: *const fn(self: *anyopaque, _r: *BitmapBounds) callconv(.winapi) HRESULT,
        put_Bounds: *const fn(self: *anyopaque, value: BitmapBounds) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapTypedValue = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!PropertyType {
        var _r: PropertyType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapTypedValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd8044a9-2443-4000-b0cd-79316c56f589";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *PropertyType) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapTypedValueFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), value: *IInspectable, type: PropertyType) core.HResult!*BitmapTypedValue {
        var _r: *BitmapTypedValue = undefined;
        const _c = self.vtable.Create(@ptrCast(self), value, type, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IBitmapTypedValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92dbb599-ce13-46bb-9545-cb3a3f63eb8b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, value: *IInspectable, type: PropertyType, _r: **BitmapTypedValue) callconv(.winapi) HRESULT,
    };
};
pub const IPixelDataProvider = extern struct {
    vtable: *const VTable,
    pub fn DetachPixelData(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.DetachPixelData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.IPixelDataProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd831f25-185c-4595-9fb9-ccbe6ec18a6f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DetachPixelData: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
    };
};
pub const ISoftwareBitmap = extern struct {
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
    pub fn getPixelWidth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PixelWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelHeight(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PixelHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDpiX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DpiX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDpiX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DpiX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDpiY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DpiY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDpiY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DpiY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LockBuffer(self: *@This(), mode: BitmapBufferAccessMode) core.HResult!*BitmapBuffer {
        var _r: *BitmapBuffer = undefined;
        const _c = self.vtable.LockBuffer(@ptrCast(self), mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyTo(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!void {
        const _c = self.vtable.CopyTo(@ptrCast(self), bitmap);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CopyFromBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const _c = self.vtable.CopyFromBuffer(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CopyToBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const _c = self.vtable.CopyToBuffer(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetReadOnlyView(self: *@This()) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.GetReadOnlyView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.ISoftwareBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "689e0708-7eef-483f-963f-da938818e073";
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
        get_PixelWidth: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PixelHeight: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_IsReadOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DpiX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DpiX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DpiY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DpiY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        LockBuffer: *const fn(self: *anyopaque, mode: BitmapBufferAccessMode, _r: **BitmapBuffer) callconv(.winapi) HRESULT,
        CopyTo: *const fn(self: *anyopaque, bitmap: *SoftwareBitmap) callconv(.winapi) HRESULT,
        CopyFromBuffer: *const fn(self: *anyopaque, buffer: *IBuffer) callconv(.winapi) HRESULT,
        CopyToBuffer: *const fn(self: *anyopaque, buffer: *IBuffer) callconv(.winapi) HRESULT,
        GetReadOnlyView: *const fn(self: *anyopaque, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
    };
};
pub const ISoftwareBitmapFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), format: BitmapPixelFormat, width: i32, height: i32) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.Create(@ptrCast(self), format, width, height, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAlpha(self: *@This(), format: BitmapPixelFormat, width: i32, height: i32, alpha: BitmapAlphaMode) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.CreateWithAlpha(@ptrCast(self), format, width, height, alpha, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.ISoftwareBitmapFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c99feb69-2d62-4d47-a6b3-4fdb6a07fdf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, format: BitmapPixelFormat, width: i32, height: i32, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
        CreateWithAlpha: *const fn(self: *anyopaque, format: BitmapPixelFormat, width: i32, height: i32, alpha: BitmapAlphaMode, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
    };
};
pub const ISoftwareBitmapStatics = extern struct {
    vtable: *const VTable,
    pub fn Copy(self: *@This(), source: *SoftwareBitmap) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.Copy(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Convert(self: *@This(), source: *SoftwareBitmap, format: BitmapPixelFormat) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.Convert(@ptrCast(self), source, format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Convert(self: *@This(), source: *SoftwareBitmap, format: BitmapPixelFormat, alpha: BitmapAlphaMode) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.Convert(@ptrCast(self), source, format, alpha, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCopyFromBuffer(self: *@This(), source: *IBuffer, format: BitmapPixelFormat, width: i32, height: i32) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.CreateCopyFromBuffer(@ptrCast(self), source, format, width, height, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCopyFromBuffer(self: *@This(), source: *IBuffer, format: BitmapPixelFormat, width: i32, height: i32, alpha: BitmapAlphaMode) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.CreateCopyFromBuffer(@ptrCast(self), source, format, width, height, alpha, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCopyFromSurfaceAsync(self: *@This(), surface: *IDirect3DSurface) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var _r: *IAsyncOperation(SoftwareBitmap) = undefined;
        const _c = self.vtable.CreateCopyFromSurfaceAsync(@ptrCast(self), surface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCopyFromSurfaceAsync(self: *@This(), surface: *IDirect3DSurface, alpha: BitmapAlphaMode) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        var _r: *IAsyncOperation(SoftwareBitmap) = undefined;
        const _c = self.vtable.CreateCopyFromSurfaceAsync(@ptrCast(self), surface, alpha, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.ISoftwareBitmapStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df0385db-672f-4a9d-806e-c2442f343e86";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque, source: *SoftwareBitmap, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
        Convert: *const fn(self: *anyopaque, source: *SoftwareBitmap, format: BitmapPixelFormat, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
        Convert: *const fn(self: *anyopaque, source: *SoftwareBitmap, format: BitmapPixelFormat, alpha: BitmapAlphaMode, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
        CreateCopyFromBuffer: *const fn(self: *anyopaque, source: *IBuffer, format: BitmapPixelFormat, width: i32, height: i32, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
        CreateCopyFromBuffer: *const fn(self: *anyopaque, source: *IBuffer, format: BitmapPixelFormat, width: i32, height: i32, alpha: BitmapAlphaMode, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
        CreateCopyFromSurfaceAsync: *const fn(self: *anyopaque, surface: *IDirect3DSurface, _r: **IAsyncOperation(SoftwareBitmap)) callconv(.winapi) HRESULT,
        CreateCopyFromSurfaceAsync: *const fn(self: *anyopaque, surface: *IDirect3DSurface, alpha: BitmapAlphaMode, _r: **IAsyncOperation(SoftwareBitmap)) callconv(.winapi) HRESULT,
    };
};
pub const ImageStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u64 {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn putSize(self: *@This(), value: u64) core.HResult!void {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSize(value);
    }
    pub fn GetInputStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetInputStreamAt(position);
    }
    pub fn GetOutputStreamAt(self: *@This(), position: u64) core.HResult!*IOutputStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetOutputStreamAt(position);
    }
    pub fn getPosition(self: *@This()) core.HResult!u64 {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPosition();
    }
    pub fn Seek(self: *@This(), position: u64) core.HResult!void {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Seek(position);
    }
    pub fn CloneStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneStream();
    }
    pub fn getCanRead(self: *@This()) core.HResult!bool {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanRead();
    }
    pub fn getCanWrite(self: *@This()) core.HResult!bool {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanWrite();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        var this: ?*IInputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadAsync(buffer, count, options);
    }
    pub fn WriteAsync(self: *@This(), buffer: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WriteAsync(buffer);
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FlushAsync();
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContentTypeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContentTypeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentType();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.ImageStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRandomAccessStreamWithContentType.GUID;
    pub const IID: Guid = IRandomAccessStreamWithContentType.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRandomAccessStreamWithContentType.SIGNATURE);
};
pub const JpegSubsamplingMode = enum(i32) {
    Default = 0,
    Y4Cb2Cr0 = 1,
    Y4Cb2Cr2 = 2,
    Y4Cb4Cr4 = 3,
};
pub const PixelDataProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn DetachPixelData(self: *@This()) core.HResult![*]u8 {
        const this: *IPixelDataProvider = @ptrCast(self);
        return try this.DetachPixelData();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.PixelDataProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPixelDataProvider.GUID;
    pub const IID: Guid = IPixelDataProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPixelDataProvider.SIGNATURE);
};
pub const PngFilterMode = enum(i32) {
    Automatic = 0,
    None = 1,
    Sub = 2,
    Up = 3,
    Average = 4,
    Paeth = 5,
    Adaptive = 6,
};
pub const SoftwareBitmap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.getBitmapPixelFormat();
    }
    pub fn getBitmapAlphaMode(self: *@This()) core.HResult!BitmapAlphaMode {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.getBitmapAlphaMode();
    }
    pub fn getPixelWidth(self: *@This()) core.HResult!i32 {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.getPixelWidth();
    }
    pub fn getPixelHeight(self: *@This()) core.HResult!i32 {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.getPixelHeight();
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.getIsReadOnly();
    }
    pub fn putDpiX(self: *@This(), value: f64) core.HResult!void {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.putDpiX(value);
    }
    pub fn getDpiX(self: *@This()) core.HResult!f64 {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.getDpiX();
    }
    pub fn putDpiY(self: *@This(), value: f64) core.HResult!void {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.putDpiY(value);
    }
    pub fn getDpiY(self: *@This()) core.HResult!f64 {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.getDpiY();
    }
    pub fn LockBuffer(self: *@This(), mode: BitmapBufferAccessMode) core.HResult!*BitmapBuffer {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.LockBuffer(mode);
    }
    pub fn CopyTo(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!void {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.CopyTo(bitmap);
    }
    pub fn CopyFromBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.CopyFromBuffer(buffer);
    }
    pub fn CopyToBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.CopyToBuffer(buffer);
    }
    pub fn GetReadOnlyView(self: *@This()) core.HResult!*SoftwareBitmap {
        const this: *ISoftwareBitmap = @ptrCast(self);
        return try this.GetReadOnlyView();
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
    pub fn Create(format: BitmapPixelFormat, width: i32, height: i32) core.HResult!*SoftwareBitmap {
        const factory = @This().ISoftwareBitmapFactoryCache.get();
        return try factory.Create(format, width, height);
    }
    pub fn CreateWithAlpha(format: BitmapPixelFormat, width: i32, height: i32, alpha: BitmapAlphaMode) core.HResult!*SoftwareBitmap {
        const factory = @This().ISoftwareBitmapFactoryCache.get();
        return try factory.CreateWithAlpha(format, width, height, alpha);
    }
    pub fn Copy(source: *SoftwareBitmap) core.HResult!*SoftwareBitmap {
        const factory = @This().ISoftwareBitmapStaticsCache.get();
        return try factory.Copy(source);
    }
    pub fn Convert(source: *SoftwareBitmap, format: BitmapPixelFormat) core.HResult!*SoftwareBitmap {
        const factory = @This().ISoftwareBitmapStaticsCache.get();
        return try factory.Convert(source, format);
    }
    pub fn Convert(source: *SoftwareBitmap, format: BitmapPixelFormat, alpha: BitmapAlphaMode) core.HResult!*SoftwareBitmap {
        const factory = @This().ISoftwareBitmapStaticsCache.get();
        return try factory.Convert(source, format, alpha);
    }
    pub fn CreateCopyFromBuffer(source: *IBuffer, format: BitmapPixelFormat, width: i32, height: i32) core.HResult!*SoftwareBitmap {
        const factory = @This().ISoftwareBitmapStaticsCache.get();
        return try factory.CreateCopyFromBuffer(source, format, width, height);
    }
    pub fn CreateCopyFromBuffer(source: *IBuffer, format: BitmapPixelFormat, width: i32, height: i32, alpha: BitmapAlphaMode) core.HResult!*SoftwareBitmap {
        const factory = @This().ISoftwareBitmapStaticsCache.get();
        return try factory.CreateCopyFromBuffer(source, format, width, height, alpha);
    }
    pub fn CreateCopyFromSurfaceAsync(surface: *IDirect3DSurface) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        const factory = @This().ISoftwareBitmapStaticsCache.get();
        return try factory.CreateCopyFromSurfaceAsync(surface);
    }
    pub fn CreateCopyFromSurfaceAsync(surface: *IDirect3DSurface, alpha: BitmapAlphaMode) core.HResult!*IAsyncOperation(SoftwareBitmap) {
        const factory = @This().ISoftwareBitmapStaticsCache.get();
        return try factory.CreateCopyFromSurfaceAsync(surface, alpha);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Imaging.SoftwareBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISoftwareBitmap.GUID;
    pub const IID: Guid = ISoftwareBitmap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISoftwareBitmap.SIGNATURE);
    var _ISoftwareBitmapFactoryCache: FactoryCache(ISoftwareBitmapFactory, RUNTIME_NAME) = .{};
    var _ISoftwareBitmapStaticsCache: FactoryCache(ISoftwareBitmapStatics, RUNTIME_NAME) = .{};
};
pub const TiffCompressionMode = enum(i32) {
    Automatic = 0,
    None = 1,
    Ccitt3 = 2,
    Ccitt4 = 3,
    Lzw = 4,
    Rle = 5,
    Zip = 6,
    LzwhDifferencing = 7,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IDirect3DSurface = @import("./DirectX/Direct3D11.zig").IDirect3DSurface;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const IMemoryBuffer = @import("../Foundation.zig").IMemoryBuffer;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const PropertyType = @import("../Foundation.zig").PropertyType;
const InputStreamOptions = @import("../Storage/Streams.zig").InputStreamOptions;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const IContentTypeProvider = @import("../Storage/Streams.zig").IContentTypeProvider;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const IMemoryBufferReference = @import("../Foundation.zig").IMemoryBufferReference;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
