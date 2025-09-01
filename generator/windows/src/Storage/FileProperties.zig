pub const BasicProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u64 {
        const this: *IBasicProperties = @ptrCast(self);
        return try this.getSize();
    }
    pub fn getDateModified(self: *@This()) core.HResult!DateTime {
        const this: *IBasicProperties = @ptrCast(self);
        return try this.getDateModified();
    }
    pub fn getItemDate(self: *@This()) core.HResult!DateTime {
        const this: *IBasicProperties = @ptrCast(self);
        return try this.getItemDate();
    }
    pub fn RetrievePropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMap(HSTRING,IInspectable)) {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RetrievePropertiesAsync(propertiesToRetrieve);
    }
    pub fn SavePropertiesAsyncWithPropertiesToSave(self: *@This(), propertiesToSave: *IIterable(IKeyValuePair(HSTRING,IInspectable))) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsyncWithPropertiesToSave(propertiesToSave);
    }
    pub fn SavePropertiesAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsync();
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.BasicProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBasicProperties.GUID;
    pub const IID: Guid = IBasicProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBasicProperties.SIGNATURE);
};
pub const DocumentProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuthor(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IDocumentProperties = @ptrCast(self);
        return try this.getAuthor();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IDocumentProperties = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDocumentProperties = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IDocumentProperties = @ptrCast(self);
        return try this.getKeywords();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        const this: *IDocumentProperties = @ptrCast(self);
        return try this.getComment();
    }
    pub fn putComment(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDocumentProperties = @ptrCast(self);
        return try this.putComment(value);
    }
    pub fn RetrievePropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMap(HSTRING,IInspectable)) {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RetrievePropertiesAsync(propertiesToRetrieve);
    }
    pub fn SavePropertiesAsyncWithPropertiesToSave(self: *@This(), propertiesToSave: *IIterable(IKeyValuePair(HSTRING,IInspectable))) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsyncWithPropertiesToSave(propertiesToSave);
    }
    pub fn SavePropertiesAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsync();
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.DocumentProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDocumentProperties.GUID;
    pub const IID: Guid = IDocumentProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDocumentProperties.SIGNATURE);
};
pub const GeotagHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetGeotagAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(Geopoint) {
        const _f = @This().IGeotagHelperStaticsCache.get();
        return try _f.GetGeotagAsync(file);
    }
    pub fn SetGeotagFromGeolocatorAsync(file: *IStorageFile, geolocator: *Geolocator) core.HResult!*IAsyncAction {
        const _f = @This().IGeotagHelperStaticsCache.get();
        return try _f.SetGeotagFromGeolocatorAsync(file, geolocator);
    }
    pub fn SetGeotagAsync(file: *IStorageFile, geopoint: *Geopoint) core.HResult!*IAsyncAction {
        const _f = @This().IGeotagHelperStaticsCache.get();
        return try _f.SetGeotagAsync(file, geopoint);
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.GeotagHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGeotagHelperStaticsCache: FactoryCache(IGeotagHelperStatics, RUNTIME_NAME) = .{};
};
pub const IBasicProperties = extern struct {
    vtable: *const VTable,
    pub fn getSize(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateModified(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DateModified(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ItemDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.IBasicProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d05d55db-785e-4a66-be02-9beec58aea81";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_DateModified: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_ItemDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IDocumentProperties = extern struct {
    vtable: *const VTable,
    pub fn getAuthor(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Author(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Keywords(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComment(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Comment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.IDocumentProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7eab19bc-1821-4923-b4a9-0aea404d0070";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Author: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Keywords: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Comment: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IGeotagHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn GetGeotagAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(Geopoint) {
        var _r: *IAsyncOperation(Geopoint) = undefined;
        const _c = self.vtable.GetGeotagAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetGeotagFromGeolocatorAsync(self: *@This(), file: *IStorageFile, geolocator: *Geolocator) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetGeotagFromGeolocatorAsync(@ptrCast(self), file, geolocator, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetGeotagAsync(self: *@This(), file: *IStorageFile, geopoint: *Geopoint) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetGeotagAsync(@ptrCast(self), file, geopoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.IGeotagHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41493244-2524-4655-86a6-ed16f5fc716b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetGeotagAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(Geopoint)) callconv(.winapi) HRESULT,
        SetGeotagFromGeolocatorAsync: *const fn(self: *anyopaque, file: *IStorageFile, geolocator: *Geolocator, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetGeotagAsync: *const fn(self: *anyopaque, file: *IStorageFile, geopoint: *Geopoint, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IImageProperties = extern struct {
    vtable: *const VTable,
    pub fn getRating(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Rating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRating(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Rating(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Keywords(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateTaken(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DateTaken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDateTaken(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_DateTaken(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLatitude(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Latitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLongitude(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Longitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraManufacturer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CameraManufacturer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCameraManufacturer(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CameraManufacturer(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCameraModel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CameraModel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCameraModel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CameraModel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOrientation(self: *@This()) core.HResult!PhotoOrientation {
        var _r: PhotoOrientation = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeopleNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_PeopleNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.IImageProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "523c9424-fcff-4275-afee-ecdb9ab47973";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Rating: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Rating: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Keywords: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_DateTaken: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_DateTaken: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Latitude: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_Longitude: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_CameraManufacturer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CameraManufacturer: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CameraModel: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CameraModel: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *PhotoOrientation) callconv(.winapi) HRESULT,
        get_PeopleNames: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IMusicProperties = extern struct {
    vtable: *const VTable,
    pub fn getAlbum(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Album(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlbum(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Album(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getArtist(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Artist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putArtist(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Artist(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGenre(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Genre(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrackNumber(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TrackNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrackNumber(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TrackNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRating(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Rating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRating(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Rating(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Bitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlbumArtist(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlbumArtist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlbumArtist(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AlbumArtist(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getComposers(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Composers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConductors(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Conductors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subtitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubtitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subtitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProducers(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Producers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Publisher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPublisher(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Publisher(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWriters(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Writers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYear(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Year(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYear(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Year(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.IMusicProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc8aab62-66ec-419a-bc5d-ca65a4cb46da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Album: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Album: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Artist: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Artist: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Genre: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_TrackNumber: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TrackNumber: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Rating: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Rating: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Bitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AlbumArtist: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AlbumArtist: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Composers: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Conductors: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Subtitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subtitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Producers: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Publisher: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Publisher: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Writers: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Year: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Year: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemContentProperties = extern struct {
    vtable: *const VTable,
    pub fn GetMusicPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(MusicProperties) {
        var _r: *IAsyncOperation(MusicProperties) = undefined;
        const _c = self.vtable.GetMusicPropertiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVideoPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(VideoProperties) {
        var _r: *IAsyncOperation(VideoProperties) = undefined;
        const _c = self.vtable.GetVideoPropertiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetImagePropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(ImageProperties) {
        var _r: *IAsyncOperation(ImageProperties) = undefined;
        const _c = self.vtable.GetImagePropertiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDocumentPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(DocumentProperties) {
        var _r: *IAsyncOperation(DocumentProperties) = undefined;
        const _c = self.vtable.GetDocumentPropertiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.IStorageItemContentProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05294bad-bc38-48bf-85d7-770e0e2ae0ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetMusicPropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MusicProperties)) callconv(.winapi) HRESULT,
        GetVideoPropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(VideoProperties)) callconv(.winapi) HRESULT,
        GetImagePropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ImageProperties)) callconv(.winapi) HRESULT,
        GetDocumentPropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DocumentProperties)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemExtraProperties = extern struct {
    vtable: *const VTable,
    pub fn RetrievePropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMap(HSTRING,IInspectable)) {
        var _r: *IAsyncOperation(IMap(HSTRING,IInspectable)) = undefined;
        const _c = self.vtable.RetrievePropertiesAsync(@ptrCast(self), propertiesToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SavePropertiesAsyncWithPropertiesToSave(self: *@This(), propertiesToSave: *IIterable(IKeyValuePair(HSTRING,IInspectable))) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SavePropertiesAsyncWithPropertiesToSave(@ptrCast(self), propertiesToSave, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SavePropertiesAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SavePropertiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.IStorageItemExtraProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c54361b2-54cd-432b-bdbc-4b19c4b470d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RetrievePropertiesAsync: *const fn(self: *anyopaque, propertiesToRetrieve: *IIterable(HSTRING), _r: **IAsyncOperation(IMap(HSTRING,IInspectable))) callconv(.winapi) HRESULT,
        SavePropertiesAsyncWithPropertiesToSave: *const fn(self: *anyopaque, propertiesToSave: *IIterable(IKeyValuePair(HSTRING,IInspectable)), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SavePropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IThumbnailProperties = extern struct {
    vtable: *const VTable,
    pub fn getOriginalWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OriginalWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOriginalHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OriginalHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReturnedSmallerCachedSize(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ReturnedSmallerCachedSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!ThumbnailType {
        var _r: ThumbnailType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.IThumbnailProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "693dd42f-dbe7-49b5-b3b3-2893ac5d3423";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OriginalWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_OriginalHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ReturnedSmallerCachedSize: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *ThumbnailType) callconv(.winapi) HRESULT,
    };
};
pub const IVideoProperties = extern struct {
    vtable: *const VTable,
    pub fn getRating(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Rating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRating(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Rating(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Keywords(@ptrCast(self), &_r);
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
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLatitude(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Latitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLongitude(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Longitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subtitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubtitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subtitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProducers(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Producers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Publisher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPublisher(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Publisher(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWriters(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Writers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYear(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Year(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYear(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Year(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Bitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirectors(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Directors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientation(self: *@This()) core.HResult!VideoOrientation {
        var _r: VideoOrientation = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.IVideoProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "719ae507-68de-4db8-97de-49998c059f2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Rating: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Rating: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Keywords: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Latitude: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_Longitude: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Subtitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subtitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Producers: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Publisher: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Publisher: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Writers: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Year: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Year: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Bitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Directors: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *VideoOrientation) callconv(.winapi) HRESULT,
    };
};
pub const ImageProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRating(self: *@This()) core.HResult!u32 {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getRating();
    }
    pub fn putRating(self: *@This(), value: u32) core.HResult!void {
        const this: *IImageProperties = @ptrCast(self);
        return try this.putRating(value);
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getKeywords();
    }
    pub fn getDateTaken(self: *@This()) core.HResult!DateTime {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getDateTaken();
    }
    pub fn putDateTaken(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IImageProperties = @ptrCast(self);
        return try this.putDateTaken(value);
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IImageProperties = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getLatitude(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getLatitude();
    }
    pub fn getLongitude(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getLongitude();
    }
    pub fn getCameraManufacturer(self: *@This()) core.HResult!HSTRING {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getCameraManufacturer();
    }
    pub fn putCameraManufacturer(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IImageProperties = @ptrCast(self);
        return try this.putCameraManufacturer(value);
    }
    pub fn getCameraModel(self: *@This()) core.HResult!HSTRING {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getCameraModel();
    }
    pub fn putCameraModel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IImageProperties = @ptrCast(self);
        return try this.putCameraModel(value);
    }
    pub fn getOrientation(self: *@This()) core.HResult!PhotoOrientation {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn getPeopleNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IImageProperties = @ptrCast(self);
        return try this.getPeopleNames();
    }
    pub fn RetrievePropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMap(HSTRING,IInspectable)) {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RetrievePropertiesAsync(propertiesToRetrieve);
    }
    pub fn SavePropertiesAsyncWithPropertiesToSave(self: *@This(), propertiesToSave: *IIterable(IKeyValuePair(HSTRING,IInspectable))) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsyncWithPropertiesToSave(propertiesToSave);
    }
    pub fn SavePropertiesAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsync();
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.ImageProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageProperties.GUID;
    pub const IID: Guid = IImageProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageProperties.SIGNATURE);
};
pub const MusicProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlbum(self: *@This()) core.HResult!HSTRING {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getAlbum();
    }
    pub fn putAlbum(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.putAlbum(value);
    }
    pub fn getArtist(self: *@This()) core.HResult!HSTRING {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getArtist();
    }
    pub fn putArtist(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.putArtist(value);
    }
    pub fn getGenre(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getGenre();
    }
    pub fn getTrackNumber(self: *@This()) core.HResult!u32 {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getTrackNumber();
    }
    pub fn putTrackNumber(self: *@This(), value: u32) core.HResult!void {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.putTrackNumber(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getRating(self: *@This()) core.HResult!u32 {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getRating();
    }
    pub fn putRating(self: *@This(), value: u32) core.HResult!void {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.putRating(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getBitrate(self: *@This()) core.HResult!u32 {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getBitrate();
    }
    pub fn getAlbumArtist(self: *@This()) core.HResult!HSTRING {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getAlbumArtist();
    }
    pub fn putAlbumArtist(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.putAlbumArtist(value);
    }
    pub fn getComposers(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getComposers();
    }
    pub fn getConductors(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getConductors();
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getSubtitle();
    }
    pub fn putSubtitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.putSubtitle(value);
    }
    pub fn getProducers(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getProducers();
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getPublisher();
    }
    pub fn putPublisher(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.putPublisher(value);
    }
    pub fn getWriters(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getWriters();
    }
    pub fn getYear(self: *@This()) core.HResult!u32 {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.getYear();
    }
    pub fn putYear(self: *@This(), value: u32) core.HResult!void {
        const this: *IMusicProperties = @ptrCast(self);
        return try this.putYear(value);
    }
    pub fn RetrievePropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMap(HSTRING,IInspectable)) {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RetrievePropertiesAsync(propertiesToRetrieve);
    }
    pub fn SavePropertiesAsyncWithPropertiesToSave(self: *@This(), propertiesToSave: *IIterable(IKeyValuePair(HSTRING,IInspectable))) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsyncWithPropertiesToSave(propertiesToSave);
    }
    pub fn SavePropertiesAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsync();
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.MusicProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMusicProperties.GUID;
    pub const IID: Guid = IMusicProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMusicProperties.SIGNATURE);
};
pub const PhotoOrientation = enum(i32) {
    Unspecified = 0,
    Normal = 1,
    FlipHorizontal = 2,
    Rotate180 = 3,
    FlipVertical = 4,
    Transpose = 5,
    Rotate270 = 6,
    Transverse = 7,
    Rotate90 = 8,
};
pub const PropertyPrefetchOptions = enum(i32) {
    None = 0,
    MusicProperties = 1,
    VideoProperties = 2,
    ImageProperties = 4,
    DocumentProperties = 8,
    BasicProperties = 16,
};
pub const StorageItemContentProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetMusicPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(MusicProperties) {
        const this: *IStorageItemContentProperties = @ptrCast(self);
        return try this.GetMusicPropertiesAsync();
    }
    pub fn GetVideoPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(VideoProperties) {
        const this: *IStorageItemContentProperties = @ptrCast(self);
        return try this.GetVideoPropertiesAsync();
    }
    pub fn GetImagePropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(ImageProperties) {
        const this: *IStorageItemContentProperties = @ptrCast(self);
        return try this.GetImagePropertiesAsync();
    }
    pub fn GetDocumentPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(DocumentProperties) {
        const this: *IStorageItemContentProperties = @ptrCast(self);
        return try this.GetDocumentPropertiesAsync();
    }
    pub fn RetrievePropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMap(HSTRING,IInspectable)) {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RetrievePropertiesAsync(propertiesToRetrieve);
    }
    pub fn SavePropertiesAsyncWithPropertiesToSave(self: *@This(), propertiesToSave: *IIterable(IKeyValuePair(HSTRING,IInspectable))) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsyncWithPropertiesToSave(propertiesToSave);
    }
    pub fn SavePropertiesAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsync();
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.StorageItemContentProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageItemContentProperties.GUID;
    pub const IID: Guid = IStorageItemContentProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageItemContentProperties.SIGNATURE);
};
pub const StorageItemThumbnail = extern struct {
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
    pub fn getOriginalWidth(self: *@This()) core.HResult!u32 {
        var this: ?*IThumbnailProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IThumbnailProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOriginalWidth();
    }
    pub fn getOriginalHeight(self: *@This()) core.HResult!u32 {
        var this: ?*IThumbnailProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IThumbnailProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOriginalHeight();
    }
    pub fn getReturnedSmallerCachedSize(self: *@This()) core.HResult!bool {
        var this: ?*IThumbnailProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IThumbnailProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReturnedSmallerCachedSize();
    }
    pub fn getType(self: *@This()) core.HResult!ThumbnailType {
        var this: ?*IThumbnailProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IThumbnailProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.StorageItemThumbnail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRandomAccessStreamWithContentType.GUID;
    pub const IID: Guid = IRandomAccessStreamWithContentType.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRandomAccessStreamWithContentType.SIGNATURE);
};
pub const ThumbnailMode = enum(i32) {
    PicturesView = 0,
    VideosView = 1,
    MusicView = 2,
    DocumentsView = 3,
    ListView = 4,
    SingleItem = 5,
};
pub const ThumbnailOptions = enum(i32) {
    None = 0,
    ReturnOnlyIfCached = 1,
    ResizeThumbnail = 2,
    UseCurrentScale = 4,
};
pub const ThumbnailType = enum(i32) {
    Image = 0,
    Icon = 1,
};
pub const VideoOrientation = enum(i32) {
    Normal = 0,
    Rotate90 = 90,
    Rotate180 = 180,
    Rotate270 = 270,
};
pub const VideoProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRating(self: *@This()) core.HResult!u32 {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getRating();
    }
    pub fn putRating(self: *@This(), value: u32) core.HResult!void {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.putRating(value);
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getKeywords();
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getLatitude(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getLatitude();
    }
    pub fn getLongitude(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getLongitude();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getSubtitle();
    }
    pub fn putSubtitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.putSubtitle(value);
    }
    pub fn getProducers(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getProducers();
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getPublisher();
    }
    pub fn putPublisher(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.putPublisher(value);
    }
    pub fn getWriters(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getWriters();
    }
    pub fn getYear(self: *@This()) core.HResult!u32 {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getYear();
    }
    pub fn putYear(self: *@This(), value: u32) core.HResult!void {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.putYear(value);
    }
    pub fn getBitrate(self: *@This()) core.HResult!u32 {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getBitrate();
    }
    pub fn getDirectors(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getDirectors();
    }
    pub fn getOrientation(self: *@This()) core.HResult!VideoOrientation {
        const this: *IVideoProperties = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn RetrievePropertiesAsync(self: *@This(), propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMap(HSTRING,IInspectable)) {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RetrievePropertiesAsync(propertiesToRetrieve);
    }
    pub fn SavePropertiesAsyncWithPropertiesToSave(self: *@This(), propertiesToSave: *IIterable(IKeyValuePair(HSTRING,IInspectable))) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsyncWithPropertiesToSave(propertiesToSave);
    }
    pub fn SavePropertiesAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStorageItemExtraProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemExtraProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SavePropertiesAsync();
    }
    pub const NAME: []const u8 = "Windows.Storage.FileProperties.VideoProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoProperties.GUID;
    pub const IID: Guid = IVideoProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoProperties.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IContentTypeProvider = @import("./Streams.zig").IContentTypeProvider;
const Guid = @import("../root.zig").Guid;
const Geolocator = @import("../Devices/Geolocation.zig").Geolocator;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IReference = @import("../Foundation.zig").IReference;
const IRandomAccessStreamWithContentType = @import("./Streams.zig").IRandomAccessStreamWithContentType;
const IBuffer = @import("./Streams.zig").IBuffer;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IInputStream = @import("./Streams.zig").IInputStream;
const IOutputStream = @import("./Streams.zig").IOutputStream;
const Geopoint = @import("../Devices/Geolocation.zig").Geopoint;
const DateTime = @import("../Foundation.zig").DateTime;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const IRandomAccessStream = @import("./Streams.zig").IRandomAccessStream;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const InputStreamOptions = @import("./Streams.zig").InputStreamOptions;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
