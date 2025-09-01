pub const IPdfDocument = extern struct {
    vtable: *const VTable,
    pub fn GetPage(self: *@This(), pageIndex: u32) core.HResult!*PdfPage {
        var _r: *PdfPage = undefined;
        const _c = self.vtable.GetPage(@ptrCast(self), pageIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PageCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPasswordProtected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPasswordProtected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Pdf.IPdfDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac7ebedd-80fa-4089-846e-81b77ff5a86c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPage: *const fn(self: *anyopaque, pageIndex: u32, _r: **PdfPage) callconv(.winapi) HRESULT,
        get_PageCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IsPasswordProtected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPdfDocumentStatics = extern struct {
    vtable: *const VTable,
    pub fn LoadFromFileAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(PdfDocument) {
        var _r: *IAsyncOperation(PdfDocument) = undefined;
        const _c = self.vtable.LoadFromFileAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromFileAsyncWithPassword(self: *@This(), file: *IStorageFile, password: HSTRING) core.HResult!*IAsyncOperation(PdfDocument) {
        var _r: *IAsyncOperation(PdfDocument) = undefined;
        const _c = self.vtable.LoadFromFileAsyncWithPassword(@ptrCast(self), file, password, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromStreamAsync(self: *@This(), inputStream: *IRandomAccessStream) core.HResult!*IAsyncOperation(PdfDocument) {
        var _r: *IAsyncOperation(PdfDocument) = undefined;
        const _c = self.vtable.LoadFromStreamAsync(@ptrCast(self), inputStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromStreamAsyncWithPassword(self: *@This(), inputStream: *IRandomAccessStream, password: HSTRING) core.HResult!*IAsyncOperation(PdfDocument) {
        var _r: *IAsyncOperation(PdfDocument) = undefined;
        const _c = self.vtable.LoadFromStreamAsyncWithPassword(@ptrCast(self), inputStream, password, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Pdf.IPdfDocumentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "433a0b5f-c007-4788-90f2-08143d922599";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadFromFileAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(PdfDocument)) callconv(.winapi) HRESULT,
        LoadFromFileAsyncWithPassword: *const fn(self: *anyopaque, file: *IStorageFile, password: HSTRING, _r: **IAsyncOperation(PdfDocument)) callconv(.winapi) HRESULT,
        LoadFromStreamAsync: *const fn(self: *anyopaque, inputStream: *IRandomAccessStream, _r: **IAsyncOperation(PdfDocument)) callconv(.winapi) HRESULT,
        LoadFromStreamAsyncWithPassword: *const fn(self: *anyopaque, inputStream: *IRandomAccessStream, password: HSTRING, _r: **IAsyncOperation(PdfDocument)) callconv(.winapi) HRESULT,
    };
};
pub const IPdfPage = extern struct {
    vtable: *const VTable,
    pub fn RenderToStreamAsync(self: *@This(), outputStream: *IRandomAccessStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RenderToStreamAsync(@ptrCast(self), outputStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RenderToStreamAsyncWithOptions(self: *@This(), outputStream: *IRandomAccessStream, options: *PdfPageRenderOptions) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RenderToStreamAsyncWithOptions(@ptrCast(self), outputStream, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PreparePageAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.PreparePageAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Index(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDimensions(self: *@This()) core.HResult!*PdfPageDimensions {
        var _r: *PdfPageDimensions = undefined;
        const _c = self.vtable.get_Dimensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotation(self: *@This()) core.HResult!PdfPageRotation {
        var _r: PdfPageRotation = undefined;
        const _c = self.vtable.get_Rotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreferredZoom(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PreferredZoom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Pdf.IPdfPage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9db4b0c8-5320-4cfc-ad76-493fdad0e594";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RenderToStreamAsync: *const fn(self: *anyopaque, outputStream: *IRandomAccessStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RenderToStreamAsyncWithOptions: *const fn(self: *anyopaque, outputStream: *IRandomAccessStream, options: *PdfPageRenderOptions, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        PreparePageAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_Index: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_Dimensions: *const fn(self: *anyopaque, _r: **PdfPageDimensions) callconv(.winapi) HRESULT,
        get_Rotation: *const fn(self: *anyopaque, _r: *PdfPageRotation) callconv(.winapi) HRESULT,
        get_PreferredZoom: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IPdfPageDimensions = extern struct {
    vtable: *const VTable,
    pub fn getMediaBox(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_MediaBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCropBox(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_CropBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBleedBox(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_BleedBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrimBox(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_TrimBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArtBox(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ArtBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Pdf.IPdfPageDimensions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22170471-313e-44e8-835d-63a3e7624a10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MediaBox: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_CropBox: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_BleedBox: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_TrimBox: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_ArtBox: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IPdfPageRenderOptions = extern struct {
    vtable: *const VTable,
    pub fn getSourceRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_SourceRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceRect(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_SourceRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDestinationWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DestinationWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDestinationWidth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DestinationWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDestinationHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DestinationHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDestinationHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DestinationHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_BackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsIgnoringHighContrast(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIgnoringHighContrast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsIgnoringHighContrast(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsIgnoringHighContrast(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBitmapEncoderId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_BitmapEncoderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBitmapEncoderId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_BitmapEncoderId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Pdf.IPdfPageRenderOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c98056f-b7cf-4c29-9a04-52d90267f425";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_SourceRect: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        get_DestinationWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DestinationWidth: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DestinationHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DestinationHeight: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_BackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_IsIgnoringHighContrast: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsIgnoringHighContrast: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_BitmapEncoderId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_BitmapEncoderId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const PdfDocument = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetPage(self: *@This(), pageIndex: u32) core.HResult!*PdfPage {
        const this: *IPdfDocument = @ptrCast(self);
        return try this.GetPage(pageIndex);
    }
    pub fn getPageCount(self: *@This()) core.HResult!u32 {
        const this: *IPdfDocument = @ptrCast(self);
        return try this.getPageCount();
    }
    pub fn getIsPasswordProtected(self: *@This()) core.HResult!bool {
        const this: *IPdfDocument = @ptrCast(self);
        return try this.getIsPasswordProtected();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn LoadFromFileAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(PdfDocument) {
        const _f = @This().IPdfDocumentStaticsCache.get();
        return try _f.LoadFromFileAsync(file);
    }
    pub fn LoadFromFileAsyncWithPassword(file: *IStorageFile, password: HSTRING) core.HResult!*IAsyncOperation(PdfDocument) {
        const _f = @This().IPdfDocumentStaticsCache.get();
        return try _f.LoadFromFileAsyncWithPassword(file, password);
    }
    pub fn LoadFromStreamAsync(inputStream: *IRandomAccessStream) core.HResult!*IAsyncOperation(PdfDocument) {
        const _f = @This().IPdfDocumentStaticsCache.get();
        return try _f.LoadFromStreamAsync(inputStream);
    }
    pub fn LoadFromStreamAsyncWithPassword(inputStream: *IRandomAccessStream, password: HSTRING) core.HResult!*IAsyncOperation(PdfDocument) {
        const _f = @This().IPdfDocumentStaticsCache.get();
        return try _f.LoadFromStreamAsyncWithPassword(inputStream, password);
    }
    pub const NAME: []const u8 = "Windows.Data.Pdf.PdfDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPdfDocument.GUID;
    pub const IID: Guid = IPdfDocument.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPdfDocument.SIGNATURE);
    var _IPdfDocumentStaticsCache: FactoryCache(IPdfDocumentStatics, RUNTIME_NAME) = .{};
};
pub const PdfPage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RenderToStreamAsync(self: *@This(), outputStream: *IRandomAccessStream) core.HResult!*IAsyncAction {
        const this: *IPdfPage = @ptrCast(self);
        return try this.RenderToStreamAsync(outputStream);
    }
    pub fn RenderToStreamAsyncWithOptions(self: *@This(), outputStream: *IRandomAccessStream, options: *PdfPageRenderOptions) core.HResult!*IAsyncAction {
        const this: *IPdfPage = @ptrCast(self);
        return try this.RenderToStreamAsyncWithOptions(outputStream, options);
    }
    pub fn PreparePageAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPdfPage = @ptrCast(self);
        return try this.PreparePageAsync();
    }
    pub fn getIndex(self: *@This()) core.HResult!u32 {
        const this: *IPdfPage = @ptrCast(self);
        return try this.getIndex();
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        const this: *IPdfPage = @ptrCast(self);
        return try this.getSize();
    }
    pub fn getDimensions(self: *@This()) core.HResult!*PdfPageDimensions {
        const this: *IPdfPage = @ptrCast(self);
        return try this.getDimensions();
    }
    pub fn getRotation(self: *@This()) core.HResult!PdfPageRotation {
        const this: *IPdfPage = @ptrCast(self);
        return try this.getRotation();
    }
    pub fn getPreferredZoom(self: *@This()) core.HResult!f32 {
        const this: *IPdfPage = @ptrCast(self);
        return try this.getPreferredZoom();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Data.Pdf.PdfPage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPdfPage.GUID;
    pub const IID: Guid = IPdfPage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPdfPage.SIGNATURE);
};
pub const PdfPageDimensions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMediaBox(self: *@This()) core.HResult!Rect {
        const this: *IPdfPageDimensions = @ptrCast(self);
        return try this.getMediaBox();
    }
    pub fn getCropBox(self: *@This()) core.HResult!Rect {
        const this: *IPdfPageDimensions = @ptrCast(self);
        return try this.getCropBox();
    }
    pub fn getBleedBox(self: *@This()) core.HResult!Rect {
        const this: *IPdfPageDimensions = @ptrCast(self);
        return try this.getBleedBox();
    }
    pub fn getTrimBox(self: *@This()) core.HResult!Rect {
        const this: *IPdfPageDimensions = @ptrCast(self);
        return try this.getTrimBox();
    }
    pub fn getArtBox(self: *@This()) core.HResult!Rect {
        const this: *IPdfPageDimensions = @ptrCast(self);
        return try this.getArtBox();
    }
    pub const NAME: []const u8 = "Windows.Data.Pdf.PdfPageDimensions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPdfPageDimensions.GUID;
    pub const IID: Guid = IPdfPageDimensions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPdfPageDimensions.SIGNATURE);
};
pub const PdfPageRenderOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceRect(self: *@This()) core.HResult!Rect {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.getSourceRect();
    }
    pub fn putSourceRect(self: *@This(), value: Rect) core.HResult!void {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.putSourceRect(value);
    }
    pub fn getDestinationWidth(self: *@This()) core.HResult!u32 {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.getDestinationWidth();
    }
    pub fn putDestinationWidth(self: *@This(), value: u32) core.HResult!void {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.putDestinationWidth(value);
    }
    pub fn getDestinationHeight(self: *@This()) core.HResult!u32 {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.getDestinationHeight();
    }
    pub fn putDestinationHeight(self: *@This(), value: u32) core.HResult!void {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.putDestinationHeight(value);
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn putBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.putBackgroundColor(value);
    }
    pub fn getIsIgnoringHighContrast(self: *@This()) core.HResult!bool {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.getIsIgnoringHighContrast();
    }
    pub fn putIsIgnoringHighContrast(self: *@This(), value: bool) core.HResult!void {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.putIsIgnoringHighContrast(value);
    }
    pub fn getBitmapEncoderId(self: *@This()) core.HResult!*Guid {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.getBitmapEncoderId();
    }
    pub fn putBitmapEncoderId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IPdfPageRenderOptions = @ptrCast(self);
        return try this.putBitmapEncoderId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPdfPageRenderOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Data.Pdf.PdfPageRenderOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPdfPageRenderOptions.GUID;
    pub const IID: Guid = IPdfPageRenderOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPdfPageRenderOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PdfPageRotation = enum(i32) {
    Normal = 0,
    Rotate90 = 1,
    Rotate180 = 2,
    Rotate270 = 3,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const Color = @import("../UI.zig").Color;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Size = @import("../Foundation.zig").Size;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
