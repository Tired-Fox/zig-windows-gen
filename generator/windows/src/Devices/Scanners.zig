pub const IImageScanner = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultScanSource(self: *@This()) core.HResult!ImageScannerScanSource {
        var _r: ImageScannerScanSource = undefined;
        const _c = self.vtable.get_DefaultScanSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsScanSourceSupported(self: *@This(), value: ImageScannerScanSource) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsScanSourceSupported(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlatbedConfiguration(self: *@This()) core.HResult!*ImageScannerFlatbedConfiguration {
        var _r: *ImageScannerFlatbedConfiguration = undefined;
        const _c = self.vtable.get_FlatbedConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFeederConfiguration(self: *@This()) core.HResult!*ImageScannerFeederConfiguration {
        var _r: *ImageScannerFeederConfiguration = undefined;
        const _c = self.vtable.get_FeederConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoConfiguration(self: *@This()) core.HResult!*ImageScannerAutoConfiguration {
        var _r: *ImageScannerAutoConfiguration = undefined;
        const _c = self.vtable.get_AutoConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPreviewSupported(self: *@This(), scanSource: ImageScannerScanSource) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPreviewSupported(@ptrCast(self), scanSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ScanPreviewToStreamAsync(self: *@This(), scanSource: ImageScannerScanSource, targetStream: *IRandomAccessStream) core.HResult!*IAsyncOperation(ImageScannerPreviewResult) {
        var _r: *IAsyncOperation(ImageScannerPreviewResult) = undefined;
        const _c = self.vtable.ScanPreviewToStreamAsync(@ptrCast(self), scanSource, targetStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ScanFilesToFolderAsync(self: *@This(), scanSource: ImageScannerScanSource, storageFolder: *StorageFolder) core.HResult!*IAsyncOperationWithProgress(ImageScannerScanResult,u32) {
        var _r: *IAsyncOperationWithProgress(ImageScannerScanResult,u32) = undefined;
        const _c = self.vtable.ScanFilesToFolderAsync(@ptrCast(self), scanSource, storageFolder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.IImageScanner";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53a88f78-5298-48a0-8da3-8087519665e0";
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
        get_DefaultScanSource: *const fn(self: *anyopaque, _r: *ImageScannerScanSource) callconv(.winapi) HRESULT,
        IsScanSourceSupported: *const fn(self: *anyopaque, value: ImageScannerScanSource, _r: *bool) callconv(.winapi) HRESULT,
        get_FlatbedConfiguration: *const fn(self: *anyopaque, _r: **ImageScannerFlatbedConfiguration) callconv(.winapi) HRESULT,
        get_FeederConfiguration: *const fn(self: *anyopaque, _r: **ImageScannerFeederConfiguration) callconv(.winapi) HRESULT,
        get_AutoConfiguration: *const fn(self: *anyopaque, _r: **ImageScannerAutoConfiguration) callconv(.winapi) HRESULT,
        IsPreviewSupported: *const fn(self: *anyopaque, scanSource: ImageScannerScanSource, _r: *bool) callconv(.winapi) HRESULT,
        ScanPreviewToStreamAsync: *const fn(self: *anyopaque, scanSource: ImageScannerScanSource, targetStream: *IRandomAccessStream, _r: **IAsyncOperation(ImageScannerPreviewResult)) callconv(.winapi) HRESULT,
        ScanFilesToFolderAsync: *const fn(self: *anyopaque, scanSource: ImageScannerScanSource, storageFolder: *StorageFolder, _r: **IAsyncOperationWithProgress(ImageScannerScanResult,u32)) callconv(.winapi) HRESULT,
    };
};
pub const IImageScannerFeederConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getCanAutoDetectPageSize(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanAutoDetectPageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoDetectPageSize(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoDetectPageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoDetectPageSize(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoDetectPageSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPageSize(self: *@This()) core.HResult!PrintMediaSize {
        var _r: PrintMediaSize = undefined;
        const _c = self.vtable.get_PageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPageSize(self: *@This(), value: PrintMediaSize) core.HResult!void {
        const _c = self.vtable.put_PageSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPageOrientation(self: *@This()) core.HResult!PrintOrientation {
        var _r: PrintOrientation = undefined;
        const _c = self.vtable.get_PageOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPageOrientation(self: *@This(), value: PrintOrientation) core.HResult!void {
        const _c = self.vtable.put_PageOrientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPageSizeDimensions(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_PageSizeDimensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPageSizeSupported(self: *@This(), pageSize: PrintMediaSize, pageOrientation: PrintOrientation) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPageSizeSupported(@ptrCast(self), pageSize, pageOrientation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxNumberOfPages(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxNumberOfPages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxNumberOfPages(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxNumberOfPages(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanScanDuplex(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanScanDuplex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuplex(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Duplex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuplex(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Duplex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanScanAhead(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanScanAhead(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScanAhead(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ScanAhead(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScanAhead(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ScanAhead(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.IImageScannerFeederConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74bdacee-fa97-4c17-8280-40e39c6dcc67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanAutoDetectPageSize: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AutoDetectPageSize: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoDetectPageSize: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PageSize: *const fn(self: *anyopaque, _r: *PrintMediaSize) callconv(.winapi) HRESULT,
        put_PageSize: *const fn(self: *anyopaque, value: PrintMediaSize) callconv(.winapi) HRESULT,
        get_PageOrientation: *const fn(self: *anyopaque, _r: *PrintOrientation) callconv(.winapi) HRESULT,
        put_PageOrientation: *const fn(self: *anyopaque, value: PrintOrientation) callconv(.winapi) HRESULT,
        get_PageSizeDimensions: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        IsPageSizeSupported: *const fn(self: *anyopaque, pageSize: PrintMediaSize, pageOrientation: PrintOrientation, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxNumberOfPages: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxNumberOfPages: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CanScanDuplex: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Duplex: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Duplex: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanScanAhead: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ScanAhead: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ScanAhead: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IImageScannerFormatConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getDefaultFormat(self: *@This()) core.HResult!ImageScannerFormat {
        var _r: ImageScannerFormat = undefined;
        const _c = self.vtable.get_DefaultFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormat(self: *@This()) core.HResult!ImageScannerFormat {
        var _r: ImageScannerFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFormat(self: *@This(), value: ImageScannerFormat) core.HResult!void {
        const _c = self.vtable.put_Format(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsFormatSupported(self: *@This(), value: ImageScannerFormat) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsFormatSupported(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.IImageScannerFormatConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae275d11-dadf-4010-bf10-cca5c83dcbb0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DefaultFormat: *const fn(self: *anyopaque, _r: *ImageScannerFormat) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *ImageScannerFormat) callconv(.winapi) HRESULT,
        put_Format: *const fn(self: *anyopaque, value: ImageScannerFormat) callconv(.winapi) HRESULT,
        IsFormatSupported: *const fn(self: *anyopaque, value: ImageScannerFormat, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IImageScannerPreviewResult = extern struct {
    vtable: *const VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormat(self: *@This()) core.HResult!ImageScannerFormat {
        var _r: ImageScannerFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.IImageScannerPreviewResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08b7fe8e-8891-441d-be9c-176fa109c8bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *ImageScannerFormat) callconv(.winapi) HRESULT,
    };
};
pub const IImageScannerScanResult = extern struct {
    vtable: *const VTable,
    pub fn getScannedFiles(self: *@This()) core.HResult!*IVectorView(StorageFile) {
        var _r: *IVectorView(StorageFile) = undefined;
        const _c = self.vtable.get_ScannedFiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.IImageScannerScanResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c91624cd-9037-4e48-84c1-ac0975076bc5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ScannedFiles: *const fn(self: *anyopaque, _r: **IVectorView(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IImageScannerSourceConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getMinScanArea(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_MinScanArea(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxScanArea(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_MaxScanArea(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedScanRegion(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_SelectedScanRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedScanRegion(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_SelectedScanRegion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoCroppingMode(self: *@This()) core.HResult!ImageScannerAutoCroppingMode {
        var _r: ImageScannerAutoCroppingMode = undefined;
        const _c = self.vtable.get_AutoCroppingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoCroppingMode(self: *@This(), value: ImageScannerAutoCroppingMode) core.HResult!void {
        const _c = self.vtable.put_AutoCroppingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsAutoCroppingModeSupported(self: *@This(), value: ImageScannerAutoCroppingMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsAutoCroppingModeSupported(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var _r: ImageScannerResolution = undefined;
        const _c = self.vtable.get_MinResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var _r: ImageScannerResolution = undefined;
        const _c = self.vtable.get_MaxResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpticalResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var _r: ImageScannerResolution = undefined;
        const _c = self.vtable.get_OpticalResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var _r: ImageScannerResolution = undefined;
        const _c = self.vtable.get_DesiredResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredResolution(self: *@This(), value: ImageScannerResolution) core.HResult!void {
        const _c = self.vtable.put_DesiredResolution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActualResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var _r: ImageScannerResolution = undefined;
        const _c = self.vtable.get_ActualResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultColorMode(self: *@This()) core.HResult!ImageScannerColorMode {
        var _r: ImageScannerColorMode = undefined;
        const _c = self.vtable.get_DefaultColorMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorMode(self: *@This()) core.HResult!ImageScannerColorMode {
        var _r: ImageScannerColorMode = undefined;
        const _c = self.vtable.get_ColorMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColorMode(self: *@This(), value: ImageScannerColorMode) core.HResult!void {
        const _c = self.vtable.put_ColorMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsColorModeSupported(self: *@This(), value: ImageScannerColorMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsColorModeSupported(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinBrightness(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MinBrightness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBrightness(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxBrightness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrightnessStep(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BrightnessStep(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultBrightness(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DefaultBrightness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrightness(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Brightness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBrightness(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Brightness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinContrast(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MinContrast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxContrast(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxContrast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContrastStep(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ContrastStep(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultContrast(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DefaultContrast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContrast(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Contrast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContrast(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Contrast(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.IImageScannerSourceConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bfb50055-0b44-4c82-9e89-205f9c234e59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinScanArea: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_MaxScanArea: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_SelectedScanRegion: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_SelectedScanRegion: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        get_AutoCroppingMode: *const fn(self: *anyopaque, _r: *ImageScannerAutoCroppingMode) callconv(.winapi) HRESULT,
        put_AutoCroppingMode: *const fn(self: *anyopaque, value: ImageScannerAutoCroppingMode) callconv(.winapi) HRESULT,
        IsAutoCroppingModeSupported: *const fn(self: *anyopaque, value: ImageScannerAutoCroppingMode, _r: *bool) callconv(.winapi) HRESULT,
        get_MinResolution: *const fn(self: *anyopaque, _r: *ImageScannerResolution) callconv(.winapi) HRESULT,
        get_MaxResolution: *const fn(self: *anyopaque, _r: *ImageScannerResolution) callconv(.winapi) HRESULT,
        get_OpticalResolution: *const fn(self: *anyopaque, _r: *ImageScannerResolution) callconv(.winapi) HRESULT,
        get_DesiredResolution: *const fn(self: *anyopaque, _r: *ImageScannerResolution) callconv(.winapi) HRESULT,
        put_DesiredResolution: *const fn(self: *anyopaque, value: ImageScannerResolution) callconv(.winapi) HRESULT,
        get_ActualResolution: *const fn(self: *anyopaque, _r: *ImageScannerResolution) callconv(.winapi) HRESULT,
        get_DefaultColorMode: *const fn(self: *anyopaque, _r: *ImageScannerColorMode) callconv(.winapi) HRESULT,
        get_ColorMode: *const fn(self: *anyopaque, _r: *ImageScannerColorMode) callconv(.winapi) HRESULT,
        put_ColorMode: *const fn(self: *anyopaque, value: ImageScannerColorMode) callconv(.winapi) HRESULT,
        IsColorModeSupported: *const fn(self: *anyopaque, value: ImageScannerColorMode, _r: *bool) callconv(.winapi) HRESULT,
        get_MinBrightness: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxBrightness: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_BrightnessStep: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DefaultBrightness: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Brightness: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Brightness: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_MinContrast: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxContrast: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ContrastStep: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DefaultContrast: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Contrast: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Contrast: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IImageScannerStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(ImageScanner) {
        var _r: *IAsyncOperation(ImageScanner) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.IImageScannerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc57e70e-d804-4477-9fb5-b911b5473897";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(ImageScanner)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ImageScanner = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IImageScanner = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getDefaultScanSource(self: *@This()) core.HResult!ImageScannerScanSource {
        const this: *IImageScanner = @ptrCast(self);
        return try this.getDefaultScanSource();
    }
    pub fn IsScanSourceSupported(self: *@This(), value: ImageScannerScanSource) core.HResult!bool {
        const this: *IImageScanner = @ptrCast(self);
        return try this.IsScanSourceSupported(value);
    }
    pub fn getFlatbedConfiguration(self: *@This()) core.HResult!*ImageScannerFlatbedConfiguration {
        const this: *IImageScanner = @ptrCast(self);
        return try this.getFlatbedConfiguration();
    }
    pub fn getFeederConfiguration(self: *@This()) core.HResult!*ImageScannerFeederConfiguration {
        const this: *IImageScanner = @ptrCast(self);
        return try this.getFeederConfiguration();
    }
    pub fn getAutoConfiguration(self: *@This()) core.HResult!*ImageScannerAutoConfiguration {
        const this: *IImageScanner = @ptrCast(self);
        return try this.getAutoConfiguration();
    }
    pub fn IsPreviewSupported(self: *@This(), scanSource: ImageScannerScanSource) core.HResult!bool {
        const this: *IImageScanner = @ptrCast(self);
        return try this.IsPreviewSupported(scanSource);
    }
    pub fn ScanPreviewToStreamAsync(self: *@This(), scanSource: ImageScannerScanSource, targetStream: *IRandomAccessStream) core.HResult!*IAsyncOperation(ImageScannerPreviewResult) {
        const this: *IImageScanner = @ptrCast(self);
        return try this.ScanPreviewToStreamAsync(scanSource, targetStream);
    }
    pub fn ScanFilesToFolderAsync(self: *@This(), scanSource: ImageScannerScanSource, storageFolder: *StorageFolder) core.HResult!*IAsyncOperationWithProgress(ImageScannerScanResult,u32) {
        const this: *IImageScanner = @ptrCast(self);
        return try this.ScanFilesToFolderAsync(scanSource, storageFolder);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(ImageScanner) {
        const _f = @This().IImageScannerStaticsCache.get();
        return try _f.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().IImageScannerStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.ImageScanner";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageScanner.GUID;
    pub const IID: Guid = IImageScanner.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageScanner.SIGNATURE);
    var _IImageScannerStaticsCache: FactoryCache(IImageScannerStatics, RUNTIME_NAME) = .{};
};
pub const ImageScannerAutoConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDefaultFormat(self: *@This()) core.HResult!ImageScannerFormat {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.getDefaultFormat();
    }
    pub fn getFormat(self: *@This()) core.HResult!ImageScannerFormat {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn putFormat(self: *@This(), value: ImageScannerFormat) core.HResult!void {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.putFormat(value);
    }
    pub fn IsFormatSupported(self: *@This(), value: ImageScannerFormat) core.HResult!bool {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.IsFormatSupported(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.ImageScannerAutoConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageScannerFormatConfiguration.GUID;
    pub const IID: Guid = IImageScannerFormatConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageScannerFormatConfiguration.SIGNATURE);
};
pub const ImageScannerAutoCroppingMode = enum(i32) {
    Disabled = 0,
    SingleRegion = 1,
    MultipleRegion = 2,
};
pub const ImageScannerColorMode = enum(i32) {
    Color = 0,
    Grayscale = 1,
    Monochrome = 2,
    AutoColor = 3,
};
pub const ImageScannerFeederConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDefaultFormat(self: *@This()) core.HResult!ImageScannerFormat {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.getDefaultFormat();
    }
    pub fn getFormat(self: *@This()) core.HResult!ImageScannerFormat {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn putFormat(self: *@This(), value: ImageScannerFormat) core.HResult!void {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.putFormat(value);
    }
    pub fn IsFormatSupported(self: *@This(), value: ImageScannerFormat) core.HResult!bool {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.IsFormatSupported(value);
    }
    pub fn getMinScanArea(self: *@This()) core.HResult!Size {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinScanArea();
    }
    pub fn getMaxScanArea(self: *@This()) core.HResult!Size {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxScanArea();
    }
    pub fn getSelectedScanRegion(self: *@This()) core.HResult!Rect {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedScanRegion();
    }
    pub fn putSelectedScanRegion(self: *@This(), value: Rect) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedScanRegion(value);
    }
    pub fn getAutoCroppingMode(self: *@This()) core.HResult!ImageScannerAutoCroppingMode {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutoCroppingMode();
    }
    pub fn putAutoCroppingMode(self: *@This(), value: ImageScannerAutoCroppingMode) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAutoCroppingMode(value);
    }
    pub fn IsAutoCroppingModeSupported(self: *@This(), value: ImageScannerAutoCroppingMode) core.HResult!bool {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsAutoCroppingModeSupported(value);
    }
    pub fn getMinResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinResolution();
    }
    pub fn getMaxResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxResolution();
    }
    pub fn getOpticalResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOpticalResolution();
    }
    pub fn getDesiredResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredResolution();
    }
    pub fn putDesiredResolution(self: *@This(), value: ImageScannerResolution) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredResolution(value);
    }
    pub fn getActualResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActualResolution();
    }
    pub fn getDefaultColorMode(self: *@This()) core.HResult!ImageScannerColorMode {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDefaultColorMode();
    }
    pub fn getColorMode(self: *@This()) core.HResult!ImageScannerColorMode {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorMode();
    }
    pub fn putColorMode(self: *@This(), value: ImageScannerColorMode) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putColorMode(value);
    }
    pub fn IsColorModeSupported(self: *@This(), value: ImageScannerColorMode) core.HResult!bool {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsColorModeSupported(value);
    }
    pub fn getMinBrightness(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinBrightness();
    }
    pub fn getMaxBrightness(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBrightness();
    }
    pub fn getBrightnessStep(self: *@This()) core.HResult!u32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBrightnessStep();
    }
    pub fn getDefaultBrightness(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDefaultBrightness();
    }
    pub fn getBrightness(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBrightness();
    }
    pub fn putBrightness(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBrightness(value);
    }
    pub fn getMinContrast(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinContrast();
    }
    pub fn getMaxContrast(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxContrast();
    }
    pub fn getContrastStep(self: *@This()) core.HResult!u32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContrastStep();
    }
    pub fn getDefaultContrast(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDefaultContrast();
    }
    pub fn getContrast(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContrast();
    }
    pub fn putContrast(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContrast(value);
    }
    pub fn getCanAutoDetectPageSize(self: *@This()) core.HResult!bool {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanAutoDetectPageSize();
    }
    pub fn getAutoDetectPageSize(self: *@This()) core.HResult!bool {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutoDetectPageSize();
    }
    pub fn putAutoDetectPageSize(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAutoDetectPageSize(value);
    }
    pub fn getPageSize(self: *@This()) core.HResult!PrintMediaSize {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPageSize();
    }
    pub fn putPageSize(self: *@This(), value: PrintMediaSize) core.HResult!void {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPageSize(value);
    }
    pub fn getPageOrientation(self: *@This()) core.HResult!PrintOrientation {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPageOrientation();
    }
    pub fn putPageOrientation(self: *@This(), value: PrintOrientation) core.HResult!void {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPageOrientation(value);
    }
    pub fn getPageSizeDimensions(self: *@This()) core.HResult!Size {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPageSizeDimensions();
    }
    pub fn IsPageSizeSupported(self: *@This(), pageSize: PrintMediaSize, pageOrientation: PrintOrientation) core.HResult!bool {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPageSizeSupported(pageSize, pageOrientation);
    }
    pub fn getMaxNumberOfPages(self: *@This()) core.HResult!u32 {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxNumberOfPages();
    }
    pub fn putMaxNumberOfPages(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxNumberOfPages(value);
    }
    pub fn getCanScanDuplex(self: *@This()) core.HResult!bool {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanScanDuplex();
    }
    pub fn getDuplex(self: *@This()) core.HResult!bool {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuplex();
    }
    pub fn putDuplex(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuplex(value);
    }
    pub fn getCanScanAhead(self: *@This()) core.HResult!bool {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanScanAhead();
    }
    pub fn getScanAhead(self: *@This()) core.HResult!bool {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScanAhead();
    }
    pub fn putScanAhead(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IImageScannerFeederConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerFeederConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putScanAhead(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.ImageScannerFeederConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageScannerFormatConfiguration.GUID;
    pub const IID: Guid = IImageScannerFormatConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageScannerFormatConfiguration.SIGNATURE);
};
pub const ImageScannerFlatbedConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDefaultFormat(self: *@This()) core.HResult!ImageScannerFormat {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.getDefaultFormat();
    }
    pub fn getFormat(self: *@This()) core.HResult!ImageScannerFormat {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn putFormat(self: *@This(), value: ImageScannerFormat) core.HResult!void {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.putFormat(value);
    }
    pub fn IsFormatSupported(self: *@This(), value: ImageScannerFormat) core.HResult!bool {
        const this: *IImageScannerFormatConfiguration = @ptrCast(self);
        return try this.IsFormatSupported(value);
    }
    pub fn getMinScanArea(self: *@This()) core.HResult!Size {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinScanArea();
    }
    pub fn getMaxScanArea(self: *@This()) core.HResult!Size {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxScanArea();
    }
    pub fn getSelectedScanRegion(self: *@This()) core.HResult!Rect {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedScanRegion();
    }
    pub fn putSelectedScanRegion(self: *@This(), value: Rect) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedScanRegion(value);
    }
    pub fn getAutoCroppingMode(self: *@This()) core.HResult!ImageScannerAutoCroppingMode {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutoCroppingMode();
    }
    pub fn putAutoCroppingMode(self: *@This(), value: ImageScannerAutoCroppingMode) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAutoCroppingMode(value);
    }
    pub fn IsAutoCroppingModeSupported(self: *@This(), value: ImageScannerAutoCroppingMode) core.HResult!bool {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsAutoCroppingModeSupported(value);
    }
    pub fn getMinResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinResolution();
    }
    pub fn getMaxResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxResolution();
    }
    pub fn getOpticalResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOpticalResolution();
    }
    pub fn getDesiredResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredResolution();
    }
    pub fn putDesiredResolution(self: *@This(), value: ImageScannerResolution) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredResolution(value);
    }
    pub fn getActualResolution(self: *@This()) core.HResult!ImageScannerResolution {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActualResolution();
    }
    pub fn getDefaultColorMode(self: *@This()) core.HResult!ImageScannerColorMode {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDefaultColorMode();
    }
    pub fn getColorMode(self: *@This()) core.HResult!ImageScannerColorMode {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorMode();
    }
    pub fn putColorMode(self: *@This(), value: ImageScannerColorMode) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putColorMode(value);
    }
    pub fn IsColorModeSupported(self: *@This(), value: ImageScannerColorMode) core.HResult!bool {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsColorModeSupported(value);
    }
    pub fn getMinBrightness(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinBrightness();
    }
    pub fn getMaxBrightness(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBrightness();
    }
    pub fn getBrightnessStep(self: *@This()) core.HResult!u32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBrightnessStep();
    }
    pub fn getDefaultBrightness(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDefaultBrightness();
    }
    pub fn getBrightness(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBrightness();
    }
    pub fn putBrightness(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBrightness(value);
    }
    pub fn getMinContrast(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinContrast();
    }
    pub fn getMaxContrast(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxContrast();
    }
    pub fn getContrastStep(self: *@This()) core.HResult!u32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContrastStep();
    }
    pub fn getDefaultContrast(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDefaultContrast();
    }
    pub fn getContrast(self: *@This()) core.HResult!i32 {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContrast();
    }
    pub fn putContrast(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IImageScannerSourceConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IImageScannerSourceConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContrast(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.ImageScannerFlatbedConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageScannerFormatConfiguration.GUID;
    pub const IID: Guid = IImageScannerFormatConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageScannerFormatConfiguration.SIGNATURE);
};
pub const ImageScannerFormat = enum(i32) {
    Jpeg = 0,
    Png = 1,
    DeviceIndependentBitmap = 2,
    Tiff = 3,
    Xps = 4,
    OpenXps = 5,
    Pdf = 6,
};
pub const ImageScannerPreviewResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IImageScannerPreviewResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getFormat(self: *@This()) core.HResult!ImageScannerFormat {
        const this: *IImageScannerPreviewResult = @ptrCast(self);
        return try this.getFormat();
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.ImageScannerPreviewResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageScannerPreviewResult.GUID;
    pub const IID: Guid = IImageScannerPreviewResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageScannerPreviewResult.SIGNATURE);
};
pub const ImageScannerResolution = extern struct {
    DpiX: f32,
    DpiY: f32,
};
pub const ImageScannerScanResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getScannedFiles(self: *@This()) core.HResult!*IVectorView(StorageFile) {
        const this: *IImageScannerScanResult = @ptrCast(self);
        return try this.getScannedFiles();
    }
    pub const NAME: []const u8 = "Windows.Devices.Scanners.ImageScannerScanResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageScannerScanResult.GUID;
    pub const IID: Guid = IImageScannerScanResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageScannerScanResult.SIGNATURE);
};
pub const ImageScannerScanSource = enum(i32) {
    Default = 0,
    Flatbed = 1,
    Feeder = 2,
    AutoConfigured = 3,
};
const HSTRING = @import("../root.zig").HSTRING;
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Size = @import("../Foundation.zig").Size;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const FactoryCache = @import("../core.zig").FactoryCache;
const PrintOrientation = @import("../Graphics/Printing.zig").PrintOrientation;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const PrintMediaSize = @import("../Graphics/Printing.zig").PrintMediaSize;
const StorageFile = @import("../Storage.zig").StorageFile;
const StorageFolder = @import("../Storage.zig").StorageFolder;
