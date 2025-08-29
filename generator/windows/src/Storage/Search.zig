pub const CommonFileQuery = enum(i32) {
    DefaultQuery = 0,
    OrderByName = 1,
    OrderByTitle = 2,
    OrderByMusicProperties = 3,
    OrderBySearchRank = 4,
    OrderByDate = 5,
};
pub const CommonFolderQuery = enum(i32) {
    DefaultQuery = 0,
    GroupByYear = 100,
    GroupByMonth = 101,
    GroupByArtist = 102,
    GroupByAlbum = 103,
    GroupByAlbumArtist = 104,
    GroupByComposer = 105,
    GroupByGenre = 106,
    GroupByPublishedYear = 107,
    GroupByRating = 108,
    GroupByTag = 109,
    GroupByAuthor = 110,
    GroupByType = 111,
};
pub const ContentIndexer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AddAsync(self: *@This(), indexableContent: *IIndexableContent) core.HResult!*IAsyncAction {
        const this: *IContentIndexer = @ptrCast(self);
        return try this.AddAsync(indexableContent);
    }
    pub fn UpdateAsync(self: *@This(), indexableContent: *IIndexableContent) core.HResult!*IAsyncAction {
        const this: *IContentIndexer = @ptrCast(self);
        return try this.UpdateAsync(indexableContent);
    }
    pub fn DeleteAsync(self: *@This(), contentId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IContentIndexer = @ptrCast(self);
        return try this.DeleteAsync(contentId);
    }
    pub fn DeleteMultipleAsync(self: *@This(), contentIds: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const this: *IContentIndexer = @ptrCast(self);
        return try this.DeleteMultipleAsync(contentIds);
    }
    pub fn DeleteAllAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContentIndexer = @ptrCast(self);
        return try this.DeleteAllAsync();
    }
    pub fn RetrievePropertiesAsync(self: *@This(), contentId: HSTRING, propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMapView(HSTRING,IInspectable)) {
        const this: *IContentIndexer = @ptrCast(self);
        return try this.RetrievePropertiesAsync(contentId, propertiesToRetrieve);
    }
    pub fn getRevision(self: *@This()) core.HResult!u64 {
        const this: *IContentIndexer = @ptrCast(self);
        return try this.getRevision();
    }
    pub fn CreateQueryWithSortOrderWithSearchFilterLanguage(self: *@This(), searchFilter: HSTRING, propertiesToRetrieve: *IIterable(HSTRING), sortOrder: *IIterable(SortEntry), searchFilterLanguage: HSTRING) core.HResult!*ContentIndexerQuery {
        var this: ?*IContentIndexerQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContentIndexerQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateQueryWithSortOrderWithSearchFilterLanguage(searchFilter, propertiesToRetrieve, sortOrder, searchFilterLanguage);
    }
    pub fn CreateQueryWithPropertiesToRetrieveWithSortOrder(self: *@This(), searchFilter: HSTRING, propertiesToRetrieve: *IIterable(HSTRING), sortOrder: *IIterable(SortEntry)) core.HResult!*ContentIndexerQuery {
        var this: ?*IContentIndexerQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContentIndexerQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateQueryWithPropertiesToRetrieveWithSortOrder(searchFilter, propertiesToRetrieve, sortOrder);
    }
    pub fn CreateQuery(self: *@This(), searchFilter: HSTRING, propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*ContentIndexerQuery {
        var this: ?*IContentIndexerQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContentIndexerQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateQuery(searchFilter, propertiesToRetrieve);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetIndexer(indexName: HSTRING) core.HResult!*ContentIndexer {
        const factory = @This().IContentIndexerStaticsCache.get();
        return try factory.GetIndexer(indexName);
    }
    pub fn GetIndexer() core.HResult!*ContentIndexer {
        const factory = @This().IContentIndexerStaticsCache.get();
        return try factory.GetIndexer();
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.ContentIndexer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentIndexer.GUID;
    pub const IID: Guid = IContentIndexer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentIndexer.SIGNATURE);
    var _IContentIndexerStaticsCache: FactoryCache(IContentIndexerStatics, RUNTIME_NAME) = .{};
};
pub const ContentIndexerQuery = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        const this: *IContentIndexerQuery = @ptrCast(self);
        return try this.GetCountAsync();
    }
    pub fn GetPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IMapView(HSTRING,IInspectable))) {
        const this: *IContentIndexerQuery = @ptrCast(self);
        return try this.GetPropertiesAsync();
    }
    pub fn GetPropertiesAsync(self: *@This(), startIndex: u32, maxItems: u32) core.HResult!*IAsyncOperation(IVectorView(IMapView(HSTRING,IInspectable))) {
        const this: *IContentIndexerQuery = @ptrCast(self);
        return try this.GetPropertiesAsync(startIndex, maxItems);
    }
    pub fn GetAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IIndexableContent)) {
        const this: *IContentIndexerQuery = @ptrCast(self);
        return try this.GetAsync();
    }
    pub fn GetAsync(self: *@This(), startIndex: u32, maxItems: u32) core.HResult!*IAsyncOperation(IVectorView(IIndexableContent)) {
        const this: *IContentIndexerQuery = @ptrCast(self);
        return try this.GetAsync(startIndex, maxItems);
    }
    pub fn getQueryFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IContentIndexerQuery = @ptrCast(self);
        return try this.getQueryFolder();
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.ContentIndexerQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentIndexerQuery.GUID;
    pub const IID: Guid = IContentIndexerQuery.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentIndexerQuery.SIGNATURE);
};
pub const DateStackOption = enum(i32) {
    None = 0,
    Year = 1,
    Month = 2,
};
pub const FolderDepth = enum(i32) {
    Shallow = 0,
    Deep = 1,
};
pub const IContentIndexer = extern struct {
    vtable: *const VTable,
    pub fn AddAsync(self: *@This(), indexableContent: *IIndexableContent) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AddAsync(@ptrCast(self), indexableContent, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateAsync(self: *@This(), indexableContent: *IIndexableContent) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateAsync(@ptrCast(self), indexableContent, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This(), contentId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), contentId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteMultipleAsync(self: *@This(), contentIds: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteMultipleAsync(@ptrCast(self), contentIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAllAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetrievePropertiesAsync(self: *@This(), contentId: HSTRING, propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMapView(HSTRING,IInspectable)) {
        var _r: *IAsyncOperation(IMapView(HSTRING,IInspectable)) = undefined;
        const _c = self.vtable.RetrievePropertiesAsync(@ptrCast(self), contentId, propertiesToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRevision(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Revision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IContentIndexer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1767f8d-f698-4982-b05f-3a6e8cab01a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddAsync: *const fn(self: *anyopaque, indexableContent: *IIndexableContent, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UpdateAsync: *const fn(self: *anyopaque, indexableContent: *IIndexableContent, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, contentId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteMultipleAsync: *const fn(self: *anyopaque, contentIds: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAllAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RetrievePropertiesAsync: *const fn(self: *anyopaque, contentId: HSTRING, propertiesToRetrieve: *IIterable(HSTRING), _r: **IAsyncOperation(IMapView(HSTRING,IInspectable))) callconv(.winapi) HRESULT,
        get_Revision: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IContentIndexerQuery = extern struct {
    vtable: *const VTable,
    pub fn GetCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.GetCountAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IMapView(HSTRING,IInspectable))) {
        var _r: *IAsyncOperation(IVectorView(IMapView(HSTRING,IInspectable))) = undefined;
        const _c = self.vtable.GetPropertiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPropertiesAsync(self: *@This(), startIndex: u32, maxItems: u32) core.HResult!*IAsyncOperation(IVectorView(IMapView(HSTRING,IInspectable))) {
        var _r: *IAsyncOperation(IVectorView(IMapView(HSTRING,IInspectable))) = undefined;
        const _c = self.vtable.GetPropertiesAsync(@ptrCast(self), startIndex, maxItems, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IIndexableContent)) {
        var _r: *IAsyncOperation(IVectorView(IIndexableContent)) = undefined;
        const _c = self.vtable.GetAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAsync(self: *@This(), startIndex: u32, maxItems: u32) core.HResult!*IAsyncOperation(IVectorView(IIndexableContent)) {
        var _r: *IAsyncOperation(IVectorView(IIndexableContent)) = undefined;
        const _c = self.vtable.GetAsync(@ptrCast(self), startIndex, maxItems, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_QueryFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IContentIndexerQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70e3b0f8-4bfc-428a-8889-cc51da9a7b9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCountAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        GetPropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(IMapView(HSTRING,IInspectable)))) callconv(.winapi) HRESULT,
        GetPropertiesAsync: *const fn(self: *anyopaque, startIndex: u32, maxItems: u32, _r: **IAsyncOperation(IVectorView(IMapView(HSTRING,IInspectable)))) callconv(.winapi) HRESULT,
        GetAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(IIndexableContent))) callconv(.winapi) HRESULT,
        GetAsync: *const fn(self: *anyopaque, startIndex: u32, maxItems: u32, _r: **IAsyncOperation(IVectorView(IIndexableContent))) callconv(.winapi) HRESULT,
        get_QueryFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IContentIndexerQueryOperations = extern struct {
    vtable: *const VTable,
    pub fn CreateQueryWithSortOrderWithSearchFilterLanguage(self: *@This(), searchFilter: HSTRING, propertiesToRetrieve: *IIterable(HSTRING), sortOrder: *IIterable(SortEntry), searchFilterLanguage: HSTRING) core.HResult!*ContentIndexerQuery {
        var _r: *ContentIndexerQuery = undefined;
        const _c = self.vtable.CreateQueryWithSortOrderWithSearchFilterLanguage(@ptrCast(self), searchFilter, propertiesToRetrieve, sortOrder, searchFilterLanguage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateQueryWithPropertiesToRetrieveWithSortOrder(self: *@This(), searchFilter: HSTRING, propertiesToRetrieve: *IIterable(HSTRING), sortOrder: *IIterable(SortEntry)) core.HResult!*ContentIndexerQuery {
        var _r: *ContentIndexerQuery = undefined;
        const _c = self.vtable.CreateQueryWithPropertiesToRetrieveWithSortOrder(@ptrCast(self), searchFilter, propertiesToRetrieve, sortOrder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateQuery(self: *@This(), searchFilter: HSTRING, propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!*ContentIndexerQuery {
        var _r: *ContentIndexerQuery = undefined;
        const _c = self.vtable.CreateQuery(@ptrCast(self), searchFilter, propertiesToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IContentIndexerQueryOperations";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28823e10-4786-42f1-9730-792b3566b150";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateQueryWithSortOrderWithSearchFilterLanguage: *const fn(self: *anyopaque, searchFilter: HSTRING, propertiesToRetrieve: *IIterable(HSTRING), sortOrder: *IIterable(SortEntry), searchFilterLanguage: HSTRING, _r: **ContentIndexerQuery) callconv(.winapi) HRESULT,
        CreateQueryWithPropertiesToRetrieveWithSortOrder: *const fn(self: *anyopaque, searchFilter: HSTRING, propertiesToRetrieve: *IIterable(HSTRING), sortOrder: *IIterable(SortEntry), _r: **ContentIndexerQuery) callconv(.winapi) HRESULT,
        CreateQuery: *const fn(self: *anyopaque, searchFilter: HSTRING, propertiesToRetrieve: *IIterable(HSTRING), _r: **ContentIndexerQuery) callconv(.winapi) HRESULT,
    };
};
pub const IContentIndexerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetIndexer(self: *@This(), indexName: HSTRING) core.HResult!*ContentIndexer {
        var _r: *ContentIndexer = undefined;
        const _c = self.vtable.GetIndexer(@ptrCast(self), indexName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIndexer(self: *@This()) core.HResult!*ContentIndexer {
        var _r: *ContentIndexer = undefined;
        const _c = self.vtable.GetIndexer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IContentIndexerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c488375-b37e-4c60-9ba8-b760fda3e59d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetIndexer: *const fn(self: *anyopaque, indexName: HSTRING, _r: **ContentIndexer) callconv(.winapi) HRESULT,
        GetIndexer: *const fn(self: *anyopaque, _r: **ContentIndexer) callconv(.winapi) HRESULT,
    };
};
pub const IIndexableContent = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,IInspectable) {
        var _r: *IMap(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_Stream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStream(self: *@This(), value: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.put_Stream(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStreamContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StreamContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStreamContentType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_StreamContentType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IIndexableContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ccf1a05f-d4b5-483a-b06e-e0db1ec420e4";
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
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
        get_Stream: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        put_Stream: *const fn(self: *anyopaque, value: *IRandomAccessStream) callconv(.winapi) HRESULT,
        get_StreamContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_StreamContentType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IQueryOptions = extern struct {
    vtable: *const VTable,
    pub fn getFileTypeFilter(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_FileTypeFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFolderDepth(self: *@This()) core.HResult!FolderDepth {
        var _r: FolderDepth = undefined;
        const _c = self.vtable.get_FolderDepth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFolderDepth(self: *@This(), value: FolderDepth) core.HResult!void {
        const _c = self.vtable.put_FolderDepth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getApplicationSearchFilter(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ApplicationSearchFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putApplicationSearchFilter(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ApplicationSearchFilter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserSearchFilter(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserSearchFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserSearchFilter(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UserSearchFilter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Language(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIndexerOption(self: *@This()) core.HResult!IndexerOption {
        var _r: IndexerOption = undefined;
        const _c = self.vtable.get_IndexerOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIndexerOption(self: *@This(), value: IndexerOption) core.HResult!void {
        const _c = self.vtable.put_IndexerOption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSortOrder(self: *@This()) core.HResult!*IVector(SortEntry) {
        var _r: *IVector(SortEntry) = undefined;
        const _c = self.vtable.get_SortOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGroupPropertyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GroupPropertyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateStackOption(self: *@This()) core.HResult!DateStackOption {
        var _r: DateStackOption = undefined;
        const _c = self.vtable.get_DateStackOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveToString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.SaveToString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromString(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.LoadFromString(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetThumbnailPrefetch(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!void {
        const _c = self.vtable.SetThumbnailPrefetch(@ptrCast(self), mode, requestedSize, options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyPrefetch(self: *@This(), options: PropertyPrefetchOptions, propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!void {
        const _c = self.vtable.SetPropertyPrefetch(@ptrCast(self), options, propertiesToRetrieve);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e5e46ee-0f45-4838-a8e9-d0479d446c30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FileTypeFilter: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_FolderDepth: *const fn(self: *anyopaque, _r: *FolderDepth) callconv(.winapi) HRESULT,
        put_FolderDepth: *const fn(self: *anyopaque, value: FolderDepth) callconv(.winapi) HRESULT,
        get_ApplicationSearchFilter: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ApplicationSearchFilter: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_UserSearchFilter: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UserSearchFilter: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Language: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IndexerOption: *const fn(self: *anyopaque, _r: *IndexerOption) callconv(.winapi) HRESULT,
        put_IndexerOption: *const fn(self: *anyopaque, value: IndexerOption) callconv(.winapi) HRESULT,
        get_SortOrder: *const fn(self: *anyopaque, _r: **IVector(SortEntry)) callconv(.winapi) HRESULT,
        get_GroupPropertyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DateStackOption: *const fn(self: *anyopaque, _r: *DateStackOption) callconv(.winapi) HRESULT,
        SaveToString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        LoadFromString: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        SetThumbnailPrefetch: *const fn(self: *anyopaque, mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) callconv(.winapi) HRESULT,
        SetPropertyPrefetch: *const fn(self: *anyopaque, options: PropertyPrefetchOptions, propertiesToRetrieve: *IIterable(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IQueryOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateCommonFileQuery(self: *@This(), query: CommonFileQuery, fileTypeFilter: *IIterable(HSTRING)) core.HResult!*QueryOptions {
        var _r: *QueryOptions = undefined;
        const _c = self.vtable.CreateCommonFileQuery(@ptrCast(self), query, fileTypeFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCommonFolderQuery(self: *@This(), query: CommonFolderQuery) core.HResult!*QueryOptions {
        var _r: *QueryOptions = undefined;
        const _c = self.vtable.CreateCommonFolderQuery(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IQueryOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "032e1f8c-a9c1-4e71-8011-0dee9d4811a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCommonFileQuery: *const fn(self: *anyopaque, query: CommonFileQuery, fileTypeFilter: *IIterable(HSTRING), _r: **QueryOptions) callconv(.winapi) HRESULT,
        CreateCommonFolderQuery: *const fn(self: *anyopaque, query: CommonFolderQuery, _r: **QueryOptions) callconv(.winapi) HRESULT,
    };
};
pub const IQueryOptionsWithProviderFilter = extern struct {
    vtable: *const VTable,
    pub fn getStorageProviderIdFilter(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_StorageProviderIdFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IQueryOptionsWithProviderFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b9d1026-15c4-44dd-b89a-47a59b7d7c4f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StorageProviderIdFilter: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFileQueryResult = extern struct {
    vtable: *const VTable,
    pub fn GetFilesAsync(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var _r: *IAsyncOperation(IVectorView(StorageFile)) = undefined;
        const _c = self.vtable.GetFilesAsync(@ptrCast(self), startIndex, maxNumberOfItems, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var _r: *IAsyncOperation(IVectorView(StorageFile)) = undefined;
        const _c = self.vtable.GetFilesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IStorageFileQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52fda447-2baa-412c-b29f-d4b1778efa1e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFilesAsync: *const fn(self: *anyopaque, startIndex: u32, maxNumberOfItems: u32, _r: **IAsyncOperation(IVectorView(StorageFile))) callconv(.winapi) HRESULT,
        GetFilesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StorageFile))) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFileQueryResult2 = extern struct {
    vtable: *const VTable,
    pub fn GetMatchingPropertiesWithRanges(self: *@This(), file: *StorageFile) core.HResult!*IMap(HSTRING,IVectorView(TextSegment)) {
        var _r: *IMap(HSTRING,IVectorView(TextSegment)) = undefined;
        const _c = self.vtable.GetMatchingPropertiesWithRanges(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IStorageFileQueryResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e5db9dd-7141-46c4-8be3-e9dc9e27275c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetMatchingPropertiesWithRanges: *const fn(self: *anyopaque, file: *StorageFile, _r: **IMap(HSTRING,IVectorView(TextSegment))) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFolderQueryOperations = extern struct {
    vtable: *const VTable,
    pub fn GetIndexedStateAsync(self: *@This()) core.HResult!*IAsyncOperation(IndexedState) {
        var _r: *IAsyncOperation(IndexedState) = undefined;
        const _c = self.vtable.GetIndexedStateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileQuery(self: *@This()) core.HResult!*StorageFileQueryResult {
        var _r: *StorageFileQueryResult = undefined;
        const _c = self.vtable.CreateFileQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileQuery(self: *@This(), query: CommonFileQuery) core.HResult!*StorageFileQueryResult {
        var _r: *StorageFileQueryResult = undefined;
        const _c = self.vtable.CreateFileQuery(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileQueryWithOptions(self: *@This(), queryOptions: *QueryOptions) core.HResult!*StorageFileQueryResult {
        var _r: *StorageFileQueryResult = undefined;
        const _c = self.vtable.CreateFileQueryWithOptions(@ptrCast(self), queryOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderQuery(self: *@This()) core.HResult!*StorageFolderQueryResult {
        var _r: *StorageFolderQueryResult = undefined;
        const _c = self.vtable.CreateFolderQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderQuery(self: *@This(), query: CommonFolderQuery) core.HResult!*StorageFolderQueryResult {
        var _r: *StorageFolderQueryResult = undefined;
        const _c = self.vtable.CreateFolderQuery(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderQueryWithOptions(self: *@This(), queryOptions: *QueryOptions) core.HResult!*StorageFolderQueryResult {
        var _r: *StorageFolderQueryResult = undefined;
        const _c = self.vtable.CreateFolderQueryWithOptions(@ptrCast(self), queryOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateItemQuery(self: *@This()) core.HResult!*StorageItemQueryResult {
        var _r: *StorageItemQueryResult = undefined;
        const _c = self.vtable.CreateItemQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateItemQueryWithOptions(self: *@This(), queryOptions: *QueryOptions) core.HResult!*StorageItemQueryResult {
        var _r: *StorageItemQueryResult = undefined;
        const _c = self.vtable.CreateItemQueryWithOptions(@ptrCast(self), queryOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFilesAsyncWithMaxItemsToRetrieve(self: *@This(), query: CommonFileQuery, startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var _r: *IAsyncOperation(IVectorView(StorageFile)) = undefined;
        const _c = self.vtable.GetFilesAsyncWithMaxItemsToRetrieve(@ptrCast(self), query, startIndex, maxItemsToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFilesAsync(self: *@This(), query: CommonFileQuery) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var _r: *IAsyncOperation(IVectorView(StorageFile)) = undefined;
        const _c = self.vtable.GetFilesAsync(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFoldersAsyncWithMaxItemsToRetrieve(self: *@This(), query: CommonFolderQuery, startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var _r: *IAsyncOperation(IVectorView(StorageFolder)) = undefined;
        const _c = self.vtable.GetFoldersAsyncWithMaxItemsToRetrieve(@ptrCast(self), query, startIndex, maxItemsToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFoldersAsync(self: *@This(), query: CommonFolderQuery) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var _r: *IAsyncOperation(IVectorView(StorageFolder)) = undefined;
        const _c = self.vtable.GetFoldersAsync(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemsAsync(self: *@This(), startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        var _r: *IAsyncOperation(IVectorView(IStorageItem)) = undefined;
        const _c = self.vtable.GetItemsAsync(@ptrCast(self), startIndex, maxItemsToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AreQueryOptionsSupported(self: *@This(), queryOptions: *QueryOptions) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.AreQueryOptionsSupported(@ptrCast(self), queryOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCommonFolderQuerySupported(self: *@This(), query: CommonFolderQuery) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCommonFolderQuerySupported(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCommonFileQuerySupported(self: *@This(), query: CommonFileQuery) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCommonFileQuerySupported(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IStorageFolderQueryOperations";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb43ccc9-446b-4a4f-be97-757771be5203";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetIndexedStateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IndexedState)) callconv(.winapi) HRESULT,
        CreateFileQuery: *const fn(self: *anyopaque, _r: **StorageFileQueryResult) callconv(.winapi) HRESULT,
        CreateFileQuery: *const fn(self: *anyopaque, query: CommonFileQuery, _r: **StorageFileQueryResult) callconv(.winapi) HRESULT,
        CreateFileQueryWithOptions: *const fn(self: *anyopaque, queryOptions: *QueryOptions, _r: **StorageFileQueryResult) callconv(.winapi) HRESULT,
        CreateFolderQuery: *const fn(self: *anyopaque, _r: **StorageFolderQueryResult) callconv(.winapi) HRESULT,
        CreateFolderQuery: *const fn(self: *anyopaque, query: CommonFolderQuery, _r: **StorageFolderQueryResult) callconv(.winapi) HRESULT,
        CreateFolderQueryWithOptions: *const fn(self: *anyopaque, queryOptions: *QueryOptions, _r: **StorageFolderQueryResult) callconv(.winapi) HRESULT,
        CreateItemQuery: *const fn(self: *anyopaque, _r: **StorageItemQueryResult) callconv(.winapi) HRESULT,
        CreateItemQueryWithOptions: *const fn(self: *anyopaque, queryOptions: *QueryOptions, _r: **StorageItemQueryResult) callconv(.winapi) HRESULT,
        GetFilesAsyncWithMaxItemsToRetrieve: *const fn(self: *anyopaque, query: CommonFileQuery, startIndex: u32, maxItemsToRetrieve: u32, _r: **IAsyncOperation(IVectorView(StorageFile))) callconv(.winapi) HRESULT,
        GetFilesAsync: *const fn(self: *anyopaque, query: CommonFileQuery, _r: **IAsyncOperation(IVectorView(StorageFile))) callconv(.winapi) HRESULT,
        GetFoldersAsyncWithMaxItemsToRetrieve: *const fn(self: *anyopaque, query: CommonFolderQuery, startIndex: u32, maxItemsToRetrieve: u32, _r: **IAsyncOperation(IVectorView(StorageFolder))) callconv(.winapi) HRESULT,
        GetFoldersAsync: *const fn(self: *anyopaque, query: CommonFolderQuery, _r: **IAsyncOperation(IVectorView(StorageFolder))) callconv(.winapi) HRESULT,
        GetItemsAsync: *const fn(self: *anyopaque, startIndex: u32, maxItemsToRetrieve: u32, _r: **IAsyncOperation(IVectorView(IStorageItem))) callconv(.winapi) HRESULT,
        AreQueryOptionsSupported: *const fn(self: *anyopaque, queryOptions: *QueryOptions, _r: *bool) callconv(.winapi) HRESULT,
        IsCommonFolderQuerySupported: *const fn(self: *anyopaque, query: CommonFolderQuery, _r: *bool) callconv(.winapi) HRESULT,
        IsCommonFileQuerySupported: *const fn(self: *anyopaque, query: CommonFileQuery, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFolderQueryResult = extern struct {
    vtable: *const VTable,
    pub fn GetFoldersAsync(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var _r: *IAsyncOperation(IVectorView(StorageFolder)) = undefined;
        const _c = self.vtable.GetFoldersAsync(@ptrCast(self), startIndex, maxNumberOfItems, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFoldersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var _r: *IAsyncOperation(IVectorView(StorageFolder)) = undefined;
        const _c = self.vtable.GetFoldersAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IStorageFolderQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6654c911-7d66-46fa-aecf-e4a4baa93ab8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFoldersAsync: *const fn(self: *anyopaque, startIndex: u32, maxNumberOfItems: u32, _r: **IAsyncOperation(IVectorView(StorageFolder))) callconv(.winapi) HRESULT,
        GetFoldersAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StorageFolder))) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemQueryResult = extern struct {
    vtable: *const VTable,
    pub fn GetItemsAsync(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        var _r: *IAsyncOperation(IVectorView(IStorageItem)) = undefined;
        const _c = self.vtable.GetItemsAsync(@ptrCast(self), startIndex, maxNumberOfItems, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        var _r: *IAsyncOperation(IVectorView(IStorageItem)) = undefined;
        const _c = self.vtable.GetItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IStorageItemQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8948079-9d58-47b8-b2b2-41b07f4795f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetItemsAsync: *const fn(self: *anyopaque, startIndex: u32, maxNumberOfItems: u32, _r: **IAsyncOperation(IVectorView(IStorageItem))) callconv(.winapi) HRESULT,
        GetItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(IStorageItem))) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryChangeTrackerTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_Folder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChangeTracker(self: *@This()) core.HResult!*StorageLibraryChangeTracker {
        var _r: *StorageLibraryChangeTracker = undefined;
        const _c = self.vtable.get_ChangeTracker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IStorageLibraryChangeTrackerTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1dc7a369-b7a3-4df2-9d61-eba85a0343d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Folder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_ChangeTracker: *const fn(self: *anyopaque, _r: **StorageLibraryChangeTracker) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryContentChangedTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_Folder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateModifiedSinceQuery(self: *@This(), lastQueryTime: DateTime) core.HResult!*StorageItemQueryResult {
        var _r: *StorageItemQueryResult = undefined;
        const _c = self.vtable.CreateModifiedSinceQuery(@ptrCast(self), lastQueryTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IStorageLibraryContentChangedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a371977-abbf-4e1d-8aa5-6385d8884799";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Folder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        CreateModifiedSinceQuery: *const fn(self: *anyopaque, lastQueryTime: DateTime, _r: **StorageItemQueryResult) callconv(.winapi) HRESULT,
    };
};
pub const IStorageQueryResultBase = extern struct {
    vtable: *const VTable,
    pub fn GetItemCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.GetItemCountAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_Folder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addContentsChanged(self: *@This(), handler: *TypedEventHandler(IStorageQueryResultBase,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContentsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContentsChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContentsChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addOptionsChanged(self: *@This(), changedHandler: *TypedEventHandler(IStorageQueryResultBase,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OptionsChanged(@ptrCast(self), changedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOptionsChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OptionsChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindStartIndexAsync(self: *@This(), value: *IInspectable) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.FindStartIndexAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentQueryOptions(self: *@This()) core.HResult!*QueryOptions {
        var _r: *QueryOptions = undefined;
        const _c = self.vtable.GetCurrentQueryOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplyNewQueryOptions(self: *@This(), newQueryOptions: *QueryOptions) core.HResult!void {
        const _c = self.vtable.ApplyNewQueryOptions(@ptrCast(self), newQueryOptions);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IStorageQueryResultBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c297d70d-7353-47ab-ba58-8c61425dc54b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetItemCountAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        get_Folder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        add_ContentsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IStorageQueryResultBase,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContentsChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_OptionsChanged: *const fn(self: *anyopaque, changedHandler: *TypedEventHandler(IStorageQueryResultBase,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OptionsChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        FindStartIndexAsync: *const fn(self: *anyopaque, value: *IInspectable, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        GetCurrentQueryOptions: *const fn(self: *anyopaque, _r: **QueryOptions) callconv(.winapi) HRESULT,
        ApplyNewQueryOptions: *const fn(self: *anyopaque, newQueryOptions: *QueryOptions) callconv(.winapi) HRESULT,
    };
};
pub const IValueAndLanguage = extern struct {
    vtable: *const VTable,
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Language(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IValueAndLanguage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9914881-a1ee-4bc4-92a5-466968e30436";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Language: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IndexableContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IIndexableContent = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IIndexableContent = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(HSTRING,IInspectable) {
        const this: *IIndexableContent = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getStream(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *IIndexableContent = @ptrCast(self);
        return try this.getStream();
    }
    pub fn putStream(self: *@This(), value: *IRandomAccessStream) core.HResult!void {
        const this: *IIndexableContent = @ptrCast(self);
        return try this.putStream(value);
    }
    pub fn getStreamContentType(self: *@This()) core.HResult!HSTRING {
        const this: *IIndexableContent = @ptrCast(self);
        return try this.getStreamContentType();
    }
    pub fn putStreamContentType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IIndexableContent = @ptrCast(self);
        return try this.putStreamContentType(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IIndexableContent.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.IndexableContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIndexableContent.GUID;
    pub const IID: Guid = IIndexableContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIndexableContent.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IndexedState = enum(i32) {
    Unknown = 0,
    NotIndexed = 1,
    PartiallyIndexed = 2,
    FullyIndexed = 3,
};
pub const IndexerOption = enum(i32) {
    UseIndexerWhenAvailable = 0,
    OnlyUseIndexer = 1,
    DoNotUseIndexer = 2,
    OnlyUseIndexerAndOptimizeForIndexedProperties = 3,
};
pub const QueryOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFileTypeFilter(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.getFileTypeFilter();
    }
    pub fn getFolderDepth(self: *@This()) core.HResult!FolderDepth {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.getFolderDepth();
    }
    pub fn putFolderDepth(self: *@This(), value: FolderDepth) core.HResult!void {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.putFolderDepth(value);
    }
    pub fn getApplicationSearchFilter(self: *@This()) core.HResult!HSTRING {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.getApplicationSearchFilter();
    }
    pub fn putApplicationSearchFilter(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.putApplicationSearchFilter(value);
    }
    pub fn getUserSearchFilter(self: *@This()) core.HResult!HSTRING {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.getUserSearchFilter();
    }
    pub fn putUserSearchFilter(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.putUserSearchFilter(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.putLanguage(value);
    }
    pub fn getIndexerOption(self: *@This()) core.HResult!IndexerOption {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.getIndexerOption();
    }
    pub fn putIndexerOption(self: *@This(), value: IndexerOption) core.HResult!void {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.putIndexerOption(value);
    }
    pub fn getSortOrder(self: *@This()) core.HResult!*IVector(SortEntry) {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.getSortOrder();
    }
    pub fn getGroupPropertyName(self: *@This()) core.HResult!HSTRING {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.getGroupPropertyName();
    }
    pub fn getDateStackOption(self: *@This()) core.HResult!DateStackOption {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.getDateStackOption();
    }
    pub fn SaveToString(self: *@This()) core.HResult!HSTRING {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.SaveToString();
    }
    pub fn LoadFromString(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.LoadFromString(value);
    }
    pub fn SetThumbnailPrefetch(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!void {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.SetThumbnailPrefetch(mode, requestedSize, options);
    }
    pub fn SetPropertyPrefetch(self: *@This(), options: PropertyPrefetchOptions, propertiesToRetrieve: *IIterable(HSTRING)) core.HResult!void {
        const this: *IQueryOptions = @ptrCast(self);
        return try this.SetPropertyPrefetch(options, propertiesToRetrieve);
    }
    pub fn getStorageProviderIdFilter(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IQueryOptionsWithProviderFilter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IQueryOptionsWithProviderFilter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStorageProviderIdFilter();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IQueryOptions.IID)));
    }
    pub fn CreateCommonFileQuery(query: CommonFileQuery, fileTypeFilter: *IIterable(HSTRING)) core.HResult!*QueryOptions {
        const factory = @This().IQueryOptionsFactoryCache.get();
        return try factory.CreateCommonFileQuery(query, fileTypeFilter);
    }
    pub fn CreateCommonFolderQuery(query: CommonFolderQuery) core.HResult!*QueryOptions {
        const factory = @This().IQueryOptionsFactoryCache.get();
        return try factory.CreateCommonFolderQuery(query);
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.QueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IQueryOptions.GUID;
    pub const IID: Guid = IQueryOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IQueryOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IQueryOptionsFactoryCache: FactoryCache(IQueryOptionsFactory, RUNTIME_NAME) = .{};
};
pub const SortEntry = extern struct {
    PropertyName: HSTRING,
    AscendingOrder: bool,
};
pub const SortEntryVector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!SortEntry {
        const this: *IVector = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(SortEntry) {
        const this: *IVector = @ptrCast(self);
        return try this.GetView();
    }
    pub fn IndexOf(self: *@This(), value: SortEntry, index: u32) core.HResult!bool {
        const this: *IVector = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: SortEntry) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: SortEntry) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: SortEntry) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]SortEntry) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]SortEntry) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(SortEntry) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.SortEntryVector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
};
pub const StorageFileQueryResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetFilesAsync(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        const this: *IStorageFileQueryResult = @ptrCast(self);
        return try this.GetFilesAsync(startIndex, maxNumberOfItems);
    }
    pub fn GetFilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        const this: *IStorageFileQueryResult = @ptrCast(self);
        return try this.GetFilesAsync();
    }
    pub fn GetItemCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemCountAsync();
    }
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFolder();
    }
    pub fn addContentsChanged(self: *@This(), handler: *TypedEventHandler(IStorageQueryResultBase,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addContentsChanged(handler);
    }
    pub fn removeContentsChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeContentsChanged(eventCookie);
    }
    pub fn addOptionsChanged(self: *@This(), changedHandler: *TypedEventHandler(IStorageQueryResultBase,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addOptionsChanged(changedHandler);
    }
    pub fn removeOptionsChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeOptionsChanged(eventCookie);
    }
    pub fn FindStartIndexAsync(self: *@This(), value: *IInspectable) core.HResult!*IAsyncOperation(u32) {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindStartIndexAsync(value);
    }
    pub fn GetCurrentQueryOptions(self: *@This()) core.HResult!*QueryOptions {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCurrentQueryOptions();
    }
    pub fn ApplyNewQueryOptions(self: *@This(), newQueryOptions: *QueryOptions) core.HResult!void {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ApplyNewQueryOptions(newQueryOptions);
    }
    pub fn GetMatchingPropertiesWithRanges(self: *@This(), file: *StorageFile) core.HResult!*IMap(HSTRING,IVectorView(TextSegment)) {
        var this: ?*IStorageFileQueryResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFileQueryResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMatchingPropertiesWithRanges(file);
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.StorageFileQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageFileQueryResult.GUID;
    pub const IID: Guid = IStorageFileQueryResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageFileQueryResult.SIGNATURE);
};
pub const StorageFolderQueryResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetFoldersAsync(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        const this: *IStorageFolderQueryResult = @ptrCast(self);
        return try this.GetFoldersAsync(startIndex, maxNumberOfItems);
    }
    pub fn GetFoldersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        const this: *IStorageFolderQueryResult = @ptrCast(self);
        return try this.GetFoldersAsync();
    }
    pub fn GetItemCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemCountAsync();
    }
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFolder();
    }
    pub fn addContentsChanged(self: *@This(), handler: *TypedEventHandler(IStorageQueryResultBase,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addContentsChanged(handler);
    }
    pub fn removeContentsChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeContentsChanged(eventCookie);
    }
    pub fn addOptionsChanged(self: *@This(), changedHandler: *TypedEventHandler(IStorageQueryResultBase,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addOptionsChanged(changedHandler);
    }
    pub fn removeOptionsChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeOptionsChanged(eventCookie);
    }
    pub fn FindStartIndexAsync(self: *@This(), value: *IInspectable) core.HResult!*IAsyncOperation(u32) {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindStartIndexAsync(value);
    }
    pub fn GetCurrentQueryOptions(self: *@This()) core.HResult!*QueryOptions {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCurrentQueryOptions();
    }
    pub fn ApplyNewQueryOptions(self: *@This(), newQueryOptions: *QueryOptions) core.HResult!void {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ApplyNewQueryOptions(newQueryOptions);
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.StorageFolderQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageFolderQueryResult.GUID;
    pub const IID: Guid = IStorageFolderQueryResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageFolderQueryResult.SIGNATURE);
};
pub const StorageItemQueryResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetItemsAsync(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        const this: *IStorageItemQueryResult = @ptrCast(self);
        return try this.GetItemsAsync(startIndex, maxNumberOfItems);
    }
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        const this: *IStorageItemQueryResult = @ptrCast(self);
        return try this.GetItemsAsync();
    }
    pub fn GetItemCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemCountAsync();
    }
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFolder();
    }
    pub fn addContentsChanged(self: *@This(), handler: *TypedEventHandler(IStorageQueryResultBase,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addContentsChanged(handler);
    }
    pub fn removeContentsChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeContentsChanged(eventCookie);
    }
    pub fn addOptionsChanged(self: *@This(), changedHandler: *TypedEventHandler(IStorageQueryResultBase,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addOptionsChanged(changedHandler);
    }
    pub fn removeOptionsChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeOptionsChanged(eventCookie);
    }
    pub fn FindStartIndexAsync(self: *@This(), value: *IInspectable) core.HResult!*IAsyncOperation(u32) {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindStartIndexAsync(value);
    }
    pub fn GetCurrentQueryOptions(self: *@This()) core.HResult!*QueryOptions {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCurrentQueryOptions();
    }
    pub fn ApplyNewQueryOptions(self: *@This(), newQueryOptions: *QueryOptions) core.HResult!void {
        var this: ?*IStorageQueryResultBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageQueryResultBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ApplyNewQueryOptions(newQueryOptions);
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.StorageItemQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageItemQueryResult.GUID;
    pub const IID: Guid = IStorageItemQueryResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageItemQueryResult.SIGNATURE);
};
pub const StorageLibraryChangeTrackerTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IStorageLibraryChangeTrackerTriggerDetails = @ptrCast(self);
        return try this.getFolder();
    }
    pub fn getChangeTracker(self: *@This()) core.HResult!*StorageLibraryChangeTracker {
        const this: *IStorageLibraryChangeTrackerTriggerDetails = @ptrCast(self);
        return try this.getChangeTracker();
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.StorageLibraryChangeTrackerTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageLibraryChangeTrackerTriggerDetails.GUID;
    pub const IID: Guid = IStorageLibraryChangeTrackerTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageLibraryChangeTrackerTriggerDetails.SIGNATURE);
};
pub const StorageLibraryContentChangedTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IStorageLibraryContentChangedTriggerDetails = @ptrCast(self);
        return try this.getFolder();
    }
    pub fn CreateModifiedSinceQuery(self: *@This(), lastQueryTime: DateTime) core.HResult!*StorageItemQueryResult {
        const this: *IStorageLibraryContentChangedTriggerDetails = @ptrCast(self);
        return try this.CreateModifiedSinceQuery(lastQueryTime);
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.StorageLibraryContentChangedTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageLibraryContentChangedTriggerDetails.GUID;
    pub const IID: Guid = IStorageLibraryContentChangedTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageLibraryContentChangedTriggerDetails.SIGNATURE);
};
pub const ValueAndLanguage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IValueAndLanguage = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IValueAndLanguage = @ptrCast(self);
        return try this.putLanguage(value);
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IValueAndLanguage = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IValueAndLanguage = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IValueAndLanguage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.Search.ValueAndLanguage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IValueAndLanguage.GUID;
    pub const IID: Guid = IValueAndLanguage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IValueAndLanguage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IStorageItem = @import("../Storage.zig").IStorageItem;
const IMap = @import("../Foundation/Collections.zig").IMap;
const TextSegment = @import("../Data/Text.zig").TextSegment;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStream = @import("./Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const PropertyPrefetchOptions = @import("./FileProperties.zig").PropertyPrefetchOptions;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const ThumbnailOptions = @import("./FileProperties.zig").ThumbnailOptions;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const StorageLibraryChangeTracker = @import("../Storage.zig").StorageLibraryChangeTracker;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const ThumbnailMode = @import("./FileProperties.zig").ThumbnailMode;
const StorageFile = @import("../Storage.zig").StorageFile;
const StorageFolder = @import("../Storage.zig").StorageFolder;
