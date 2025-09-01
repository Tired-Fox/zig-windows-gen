pub const IPhotoImportDeleteImportedItemsFromSourceResult = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*PhotoImportSession {
        var _r: *PhotoImportSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasSucceeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeletedItems(self: *@This()) core.HResult!*IVectorView(PhotoImportItem) {
        var _r: *IVectorView(PhotoImportItem) = undefined;
        const _c = self.vtable.get_DeletedItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotosCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PhotosCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotosSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PhotosSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideosCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VideosCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideosSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_VideosSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidecarsCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SidecarsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidecarsSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SidecarsSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSiblingsCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SiblingsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSiblingsSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SiblingsSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TotalCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_TotalSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f4e112f8-843d-428a-a1a6-81510292b0ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **PhotoImportSession) callconv(.winapi) HRESULT,
        get_HasSucceeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DeletedItems: *const fn(self: *anyopaque, _r: **IVectorView(PhotoImportItem)) callconv(.winapi) HRESULT,
        get_PhotosCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PhotosSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_VideosCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_VideosSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SidecarsCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SidecarsSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SiblingsCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SiblingsSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_TotalCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TotalSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportFindItemsResult = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*PhotoImportSession {
        var _r: *PhotoImportSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasSucceeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFoundItems(self: *@This()) core.HResult!*IVectorView(PhotoImportItem) {
        var _r: *IVectorView(PhotoImportItem) = undefined;
        const _c = self.vtable.get_FoundItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotosCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PhotosCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotosSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PhotosSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideosCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VideosCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideosSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_VideosSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidecarsCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SidecarsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidecarsSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SidecarsSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSiblingsCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SiblingsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSiblingsSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SiblingsSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TotalCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_TotalSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SelectAll(self: *@This()) core.HResult!void {
        const _c = self.vtable.SelectAll(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SelectNone(self: *@This()) core.HResult!void {
        const _c = self.vtable.SelectNone(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SelectNewAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SelectNewAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetImportMode(self: *@This(), value: PhotoImportImportMode) core.HResult!void {
        const _c = self.vtable.SetImportMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getImportMode(self: *@This()) core.HResult!PhotoImportImportMode {
        var _r: PhotoImportImportMode = undefined;
        const _c = self.vtable.get_ImportMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedPhotosCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SelectedPhotosCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedPhotosSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SelectedPhotosSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedVideosCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SelectedVideosCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedVideosSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SelectedVideosSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedSidecarsCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SelectedSidecarsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedSidecarsSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SelectedSidecarsSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedSiblingsCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SelectedSiblingsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedSiblingsSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SelectedSiblingsSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedTotalCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SelectedTotalCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedTotalSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SelectedTotalSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSelectionChanged(self: *@This(), value: *TypedEventHandler(PhotoImportFindItemsResult,PhotoImportSelectionChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SelectionChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSelectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SelectionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ImportItemsAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportImportItemsResult,PhotoImportProgress) {
        var _r: *IAsyncOperationWithProgress(PhotoImportImportItemsResult,PhotoImportProgress) = undefined;
        const _c = self.vtable.ImportItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addItemImported(self: *@This(), value: *TypedEventHandler(PhotoImportFindItemsResult,PhotoImportItemImportedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ItemImported(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeItemImported(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ItemImported(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportFindItemsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3915e647-6c78-492b-844e-8fe5e8f6bfb9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **PhotoImportSession) callconv(.winapi) HRESULT,
        get_HasSucceeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_FoundItems: *const fn(self: *anyopaque, _r: **IVectorView(PhotoImportItem)) callconv(.winapi) HRESULT,
        get_PhotosCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PhotosSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_VideosCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_VideosSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SidecarsCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SidecarsSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SiblingsCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SiblingsSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_TotalCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TotalSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        SelectAll: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SelectNone: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SelectNewAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetImportMode: *const fn(self: *anyopaque, value: PhotoImportImportMode) callconv(.winapi) HRESULT,
        get_ImportMode: *const fn(self: *anyopaque, _r: *PhotoImportImportMode) callconv(.winapi) HRESULT,
        get_SelectedPhotosCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SelectedPhotosSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SelectedVideosCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SelectedVideosSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SelectedSidecarsCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SelectedSidecarsSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SelectedSiblingsCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SelectedSiblingsSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SelectedTotalCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SelectedTotalSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        add_SelectionChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(PhotoImportFindItemsResult,PhotoImportSelectionChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SelectionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        ImportItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(PhotoImportImportItemsResult,PhotoImportProgress)) callconv(.winapi) HRESULT,
        add_ItemImported: *const fn(self: *anyopaque, value: *TypedEventHandler(PhotoImportFindItemsResult,PhotoImportItemImportedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ItemImported: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportFindItemsResult2 = extern struct {
    vtable: *const VTable,
    pub fn AddItemsInDateRangeToSelection(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan) core.HResult!void {
        const _c = self.vtable.AddItemsInDateRangeToSelection(@ptrCast(self), rangeStart, rangeLength);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportFindItemsResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbdd6a3b-ecf9-406a-815e-5015625b0a88";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddItemsInDateRangeToSelection: *const fn(self: *anyopaque, rangeStart: DateTime, rangeLength: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportImportItemsResult = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*PhotoImportSession {
        var _r: *PhotoImportSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasSucceeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImportedItems(self: *@This()) core.HResult!*IVectorView(PhotoImportItem) {
        var _r: *IVectorView(PhotoImportItem) = undefined;
        const _c = self.vtable.get_ImportedItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotosCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PhotosCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotosSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PhotosSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideosCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VideosCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideosSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_VideosSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidecarsCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SidecarsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidecarsSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SidecarsSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSiblingsCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SiblingsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSiblingsSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SiblingsSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TotalCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_TotalSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteImportedItemsFromSourceAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportDeleteImportedItemsFromSourceResult,f64) {
        var _r: *IAsyncOperationWithProgress(PhotoImportDeleteImportedItemsFromSourceResult,f64) = undefined;
        const _c = self.vtable.DeleteImportedItemsFromSourceAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportImportItemsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4d4f478-d419-4443-a84e-f06a850c0b00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **PhotoImportSession) callconv(.winapi) HRESULT,
        get_HasSucceeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ImportedItems: *const fn(self: *anyopaque, _r: **IVectorView(PhotoImportItem)) callconv(.winapi) HRESULT,
        get_PhotosCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PhotosSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_VideosCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_VideosSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SidecarsCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SidecarsSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SiblingsCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SiblingsSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_TotalCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TotalSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        DeleteImportedItemsFromSourceAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(PhotoImportDeleteImportedItemsFromSourceResult,f64)) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportItem = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemKey(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_ItemKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentType(self: *@This()) core.HResult!PhotoImportContentType {
        var _r: PhotoImportContentType = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Date(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSibling(self: *@This()) core.HResult!*PhotoImportSidecar {
        var _r: *PhotoImportSidecar = undefined;
        const _c = self.vtable.get_Sibling(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidecars(self: *@This()) core.HResult!*IVectorView(PhotoImportSidecar) {
        var _r: *IVectorView(PhotoImportSidecar) = undefined;
        const _c = self.vtable.get_Sidecars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoSegments(self: *@This()) core.HResult!*IVectorView(PhotoImportVideoSegment) {
        var _r: *IVectorView(PhotoImportVideoSegment) = undefined;
        const _c = self.vtable.get_VideoSegments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSelected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSelected(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSelected(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImportedFileNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_ImportedFileNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeletedFileNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_DeletedFileNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9d07e76-9bfc-43b8-b356-633b6a988c9e";
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
        get_ItemKey: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *PhotoImportContentType) callconv(.winapi) HRESULT,
        get_SizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_Date: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Sibling: *const fn(self: *anyopaque, _r: **PhotoImportSidecar) callconv(.winapi) HRESULT,
        get_Sidecars: *const fn(self: *anyopaque, _r: **IVectorView(PhotoImportSidecar)) callconv(.winapi) HRESULT,
        get_VideoSegments: *const fn(self: *anyopaque, _r: **IVectorView(PhotoImportVideoSegment)) callconv(.winapi) HRESULT,
        get_IsSelected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSelected: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_ImportedFileNames: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_DeletedFileNames: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportItem2 = extern struct {
    vtable: *const VTable,
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportItem2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f1053505-f53b-46a3-9e30-3610791a9110";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportItemImportedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getImportedItem(self: *@This()) core.HResult!*PhotoImportItem {
        var _r: *PhotoImportItem = undefined;
        const _c = self.vtable.get_ImportedItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportItemImportedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42cb2fdd-7d68-47b5-bc7c-ceb73e0c77dc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ImportedItem: *const fn(self: *anyopaque, _r: **PhotoImportItem) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupportedAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsSupportedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllSourcesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PhotoImportSource)) {
        var _r: *IAsyncOperation(IVectorView(PhotoImportSource)) = undefined;
        const _c = self.vtable.FindAllSourcesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPendingOperations(self: *@This()) core.HResult!*IVectorView(PhotoImportOperation) {
        var _r: *IVectorView(PhotoImportOperation) = undefined;
        const _c = self.vtable.GetPendingOperations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2771903d-a046-4f06-9b9c-bfd662e83287";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupportedAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        FindAllSourcesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(PhotoImportSource))) callconv(.winapi) HRESULT,
        GetPendingOperations: *const fn(self: *anyopaque, _r: **IVectorView(PhotoImportOperation)) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportOperation = extern struct {
    vtable: *const VTable,
    pub fn getStage(self: *@This()) core.HResult!PhotoImportStage {
        var _r: PhotoImportStage = undefined;
        const _c = self.vtable.get_Stage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSession(self: *@This()) core.HResult!*PhotoImportSession {
        var _r: *PhotoImportSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContinueFindingItemsAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportFindItemsResult,u32) {
        var _r: *IAsyncOperationWithProgress(PhotoImportFindItemsResult,u32) = undefined;
        const _c = self.vtable.get_ContinueFindingItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContinueImportingItemsAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportImportItemsResult,PhotoImportProgress) {
        var _r: *IAsyncOperationWithProgress(PhotoImportImportItemsResult,PhotoImportProgress) = undefined;
        const _c = self.vtable.get_ContinueImportingItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContinueDeletingImportedItemsFromSourceAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportDeleteImportedItemsFromSourceResult,f64) {
        var _r: *IAsyncOperationWithProgress(PhotoImportDeleteImportedItemsFromSourceResult,f64) = undefined;
        const _c = self.vtable.get_ContinueDeletingImportedItemsFromSourceAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9f797e4-a09a-4ee4-a4b1-20940277a5be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Stage: *const fn(self: *anyopaque, _r: *PhotoImportStage) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **PhotoImportSession) callconv(.winapi) HRESULT,
        get_ContinueFindingItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(PhotoImportFindItemsResult,u32)) callconv(.winapi) HRESULT,
        get_ContinueImportingItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(PhotoImportImportItemsResult,PhotoImportProgress)) callconv(.winapi) HRESULT,
        get_ContinueDeletingImportedItemsFromSourceAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(PhotoImportDeleteImportedItemsFromSourceResult,f64)) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportSelectionChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsSelectionEmpty(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSelectionEmpty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportSelectionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10461782-fa9d-4c30-8bc9-4d64911572d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSelectionEmpty: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportSession = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*PhotoImportSource {
        var _r: *PhotoImportSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDestinationFolder(self: *@This(), value: *IStorageFolder) core.HResult!void {
        const _c = self.vtable.put_DestinationFolder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDestinationFolder(self: *@This()) core.HResult!*IStorageFolder {
        var _r: *IStorageFolder = undefined;
        const _c = self.vtable.get_DestinationFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppendSessionDateToDestinationFolder(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AppendSessionDateToDestinationFolder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppendSessionDateToDestinationFolder(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AppendSessionDateToDestinationFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubfolderCreationMode(self: *@This(), value: PhotoImportSubfolderCreationMode) core.HResult!void {
        const _c = self.vtable.put_SubfolderCreationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubfolderCreationMode(self: *@This()) core.HResult!PhotoImportSubfolderCreationMode {
        var _r: PhotoImportSubfolderCreationMode = undefined;
        const _c = self.vtable.get_SubfolderCreationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDestinationFileNamePrefix(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DestinationFileNamePrefix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDestinationFileNamePrefix(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DestinationFileNamePrefix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindItemsAsync(self: *@This(), contentTypeFilter: PhotoImportContentTypeFilter, itemSelectionMode: PhotoImportItemSelectionMode) core.HResult!*IAsyncOperationWithProgress(PhotoImportFindItemsResult,u32) {
        var _r: *IAsyncOperationWithProgress(PhotoImportFindItemsResult,u32) = undefined;
        const _c = self.vtable.FindItemsAsync(@ptrCast(self), contentTypeFilter, itemSelectionMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa63916e-ecdb-4efe-94c6-5f5cafe34cfb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **PhotoImportSource) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_DestinationFolder: *const fn(self: *anyopaque, value: *IStorageFolder) callconv(.winapi) HRESULT,
        get_DestinationFolder: *const fn(self: *anyopaque, _r: **IStorageFolder) callconv(.winapi) HRESULT,
        put_AppendSessionDateToDestinationFolder: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AppendSessionDateToDestinationFolder: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SubfolderCreationMode: *const fn(self: *anyopaque, value: PhotoImportSubfolderCreationMode) callconv(.winapi) HRESULT,
        get_SubfolderCreationMode: *const fn(self: *anyopaque, _r: *PhotoImportSubfolderCreationMode) callconv(.winapi) HRESULT,
        put_DestinationFileNamePrefix: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DestinationFileNamePrefix: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FindItemsAsync: *const fn(self: *anyopaque, contentTypeFilter: PhotoImportContentTypeFilter, itemSelectionMode: PhotoImportItemSelectionMode, _r: **IAsyncOperationWithProgress(PhotoImportFindItemsResult,u32)) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportSession2 = extern struct {
    vtable: *const VTable,
    pub fn putSubfolderDateFormat(self: *@This(), value: PhotoImportSubfolderDateFormat) core.HResult!void {
        const _c = self.vtable.put_SubfolderDateFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubfolderDateFormat(self: *@This()) core.HResult!PhotoImportSubfolderDateFormat {
        var _r: PhotoImportSubfolderDateFormat = undefined;
        const _c = self.vtable.get_SubfolderDateFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRememberDeselectedItems(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RememberDeselectedItems(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRememberDeselectedItems(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RememberDeselectedItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportSession2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a526710-3ec6-469d-a375-2b9f4785391e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_SubfolderDateFormat: *const fn(self: *anyopaque, value: PhotoImportSubfolderDateFormat) callconv(.winapi) HRESULT,
        get_SubfolderDateFormat: *const fn(self: *anyopaque, _r: *PhotoImportSubfolderDateFormat) callconv(.winapi) HRESULT,
        put_RememberDeselectedItems: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RememberDeselectedItems: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportSidecar = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Date(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportSidecar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46d7d757-f802-44c7-9c98-7a71f4bc1486";
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
        get_SizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_Date: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportSource = extern struct {
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
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManufacturer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Manufacturer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Model(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSerialNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SerialNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionProtocol(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ConnectionProtocol(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionTransport(self: *@This()) core.HResult!PhotoImportConnectionTransport {
        var _r: PhotoImportConnectionTransport = undefined;
        const _c = self.vtable.get_ConnectionTransport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!PhotoImportSourceType {
        var _r: PhotoImportSourceType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerSource(self: *@This()) core.HResult!PhotoImportPowerSource {
        var _r: PhotoImportPowerSource = undefined;
        const _c = self.vtable.get_PowerSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBatteryLevelPercent(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_BatteryLevelPercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_DateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStorageMedia(self: *@This()) core.HResult!*IVectorView(PhotoImportStorageMedium) {
        var _r: *IVectorView(PhotoImportStorageMedium) = undefined;
        const _c = self.vtable.get_StorageMedia(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLocked(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_IsLocked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMassStorage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMassStorage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateImportSession(self: *@This()) core.HResult!*PhotoImportSession {
        var _r: *PhotoImportSession = undefined;
        const _c = self.vtable.CreateImportSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f8ea35e-145b-4cd6-87f1-54965a982fef";
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
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Manufacturer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Model: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SerialNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ConnectionProtocol: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ConnectionTransport: *const fn(self: *anyopaque, _r: *PhotoImportConnectionTransport) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *PhotoImportSourceType) callconv(.winapi) HRESULT,
        get_PowerSource: *const fn(self: *anyopaque, _r: *PhotoImportPowerSource) callconv(.winapi) HRESULT,
        get_BatteryLevelPercent: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_DateTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_StorageMedia: *const fn(self: *anyopaque, _r: **IVectorView(PhotoImportStorageMedium)) callconv(.winapi) HRESULT,
        get_IsLocked: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        get_IsMassStorage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        CreateImportSession: *const fn(self: *anyopaque, _r: **PhotoImportSession) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), sourceId: HSTRING) core.HResult!*IAsyncOperation(PhotoImportSource) {
        var _r: *IAsyncOperation(PhotoImportSource) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), sourceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromFolderAsync(self: *@This(), sourceRootFolder: *IStorageFolder) core.HResult!*IAsyncOperation(PhotoImportSource) {
        var _r: *IAsyncOperation(PhotoImportSource) = undefined;
        const _c = self.vtable.FromFolderAsync(@ptrCast(self), sourceRootFolder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0528e586-32d8-467c-8cee-23a1b2f43e85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, sourceId: HSTRING, _r: **IAsyncOperation(PhotoImportSource)) callconv(.winapi) HRESULT,
        FromFolderAsync: *const fn(self: *anyopaque, sourceRootFolder: *IStorageFolder, _r: **IAsyncOperation(PhotoImportSource)) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportStorageMedium = extern struct {
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
    pub fn getSerialNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SerialNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStorageMediumType(self: *@This()) core.HResult!PhotoImportStorageMediumType {
        var _r: PhotoImportStorageMediumType = undefined;
        const _c = self.vtable.get_StorageMediumType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedAccessMode(self: *@This()) core.HResult!PhotoImportAccessMode {
        var _r: PhotoImportAccessMode = undefined;
        const _c = self.vtable.get_SupportedAccessMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapacityInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_CapacityInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailableSpaceInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_AvailableSpaceInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Refresh(self: *@This()) core.HResult!void {
        const _c = self.vtable.Refresh(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportStorageMedium";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2b9b093-fc85-487f-87c2-58d675d05b07";
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
        get_SerialNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StorageMediumType: *const fn(self: *anyopaque, _r: *PhotoImportStorageMediumType) callconv(.winapi) HRESULT,
        get_SupportedAccessMode: *const fn(self: *anyopaque, _r: *PhotoImportAccessMode) callconv(.winapi) HRESULT,
        get_CapacityInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_AvailableSpaceInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        Refresh: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoImportVideoSegment = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_SizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Date(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSibling(self: *@This()) core.HResult!*PhotoImportSidecar {
        var _r: *PhotoImportSidecar = undefined;
        const _c = self.vtable.get_Sibling(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidecars(self: *@This()) core.HResult!*IVectorView(PhotoImportSidecar) {
        var _r: *IVectorView(PhotoImportSidecar) = undefined;
        const _c = self.vtable.get_Sidecars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Import.IPhotoImportVideoSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "623c0289-321a-41d8-9166-8c62a333276c";
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
        get_SizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_Date: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Sibling: *const fn(self: *anyopaque, _r: **PhotoImportSidecar) callconv(.winapi) HRESULT,
        get_Sidecars: *const fn(self: *anyopaque, _r: **IVectorView(PhotoImportSidecar)) callconv(.winapi) HRESULT,
    };
};
pub const PhotoImportAccessMode = enum(i32) {
    ReadWrite = 0,
    ReadOnly = 1,
    ReadAndDelete = 2,
};
pub const PhotoImportConnectionTransport = enum(i32) {
    Unknown = 0,
    Usb = 1,
    IP = 2,
    Bluetooth = 3,
};
pub const PhotoImportContentType = enum(i32) {
    Unknown = 0,
    Image = 1,
    Video = 2,
};
pub const PhotoImportContentTypeFilter = enum(i32) {
    OnlyImages = 0,
    OnlyVideos = 1,
    ImagesAndVideos = 2,
    ImagesAndVideosFromCameraRoll = 3,
};
pub const PhotoImportDeleteImportedItemsFromSourceResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*PhotoImportSession {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getSession();
    }
    pub fn getHasSucceeded(self: *@This()) core.HResult!bool {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getHasSucceeded();
    }
    pub fn getDeletedItems(self: *@This()) core.HResult!*IVectorView(PhotoImportItem) {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getDeletedItems();
    }
    pub fn getPhotosCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getPhotosCount();
    }
    pub fn getPhotosSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getPhotosSizeInBytes();
    }
    pub fn getVideosCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getVideosCount();
    }
    pub fn getVideosSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getVideosSizeInBytes();
    }
    pub fn getSidecarsCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getSidecarsCount();
    }
    pub fn getSidecarsSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getSidecarsSizeInBytes();
    }
    pub fn getSiblingsCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getSiblingsCount();
    }
    pub fn getSiblingsSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getSiblingsSizeInBytes();
    }
    pub fn getTotalCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getTotalCount();
    }
    pub fn getTotalSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportDeleteImportedItemsFromSourceResult = @ptrCast(self);
        return try this.getTotalSizeInBytes();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportDeleteImportedItemsFromSourceResult.GUID;
    pub const IID: Guid = IPhotoImportDeleteImportedItemsFromSourceResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportDeleteImportedItemsFromSourceResult.SIGNATURE);
};
pub const PhotoImportFindItemsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*PhotoImportSession {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSession();
    }
    pub fn getHasSucceeded(self: *@This()) core.HResult!bool {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getHasSucceeded();
    }
    pub fn getFoundItems(self: *@This()) core.HResult!*IVectorView(PhotoImportItem) {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getFoundItems();
    }
    pub fn getPhotosCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getPhotosCount();
    }
    pub fn getPhotosSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getPhotosSizeInBytes();
    }
    pub fn getVideosCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getVideosCount();
    }
    pub fn getVideosSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getVideosSizeInBytes();
    }
    pub fn getSidecarsCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSidecarsCount();
    }
    pub fn getSidecarsSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSidecarsSizeInBytes();
    }
    pub fn getSiblingsCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSiblingsCount();
    }
    pub fn getSiblingsSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSiblingsSizeInBytes();
    }
    pub fn getTotalCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getTotalCount();
    }
    pub fn getTotalSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getTotalSizeInBytes();
    }
    pub fn SelectAll(self: *@This()) core.HResult!void {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.SelectAll();
    }
    pub fn SelectNone(self: *@This()) core.HResult!void {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.SelectNone();
    }
    pub fn SelectNewAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.SelectNewAsync();
    }
    pub fn SetImportMode(self: *@This(), value: PhotoImportImportMode) core.HResult!void {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.SetImportMode(value);
    }
    pub fn getImportMode(self: *@This()) core.HResult!PhotoImportImportMode {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getImportMode();
    }
    pub fn getSelectedPhotosCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedPhotosCount();
    }
    pub fn getSelectedPhotosSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedPhotosSizeInBytes();
    }
    pub fn getSelectedVideosCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedVideosCount();
    }
    pub fn getSelectedVideosSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedVideosSizeInBytes();
    }
    pub fn getSelectedSidecarsCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedSidecarsCount();
    }
    pub fn getSelectedSidecarsSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedSidecarsSizeInBytes();
    }
    pub fn getSelectedSiblingsCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedSiblingsCount();
    }
    pub fn getSelectedSiblingsSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedSiblingsSizeInBytes();
    }
    pub fn getSelectedTotalCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedTotalCount();
    }
    pub fn getSelectedTotalSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.getSelectedTotalSizeInBytes();
    }
    pub fn addSelectionChanged(self: *@This(), value: *TypedEventHandler(PhotoImportFindItemsResult,PhotoImportSelectionChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.addSelectionChanged(value);
    }
    pub fn removeSelectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.removeSelectionChanged(token);
    }
    pub fn ImportItemsAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportImportItemsResult,PhotoImportProgress) {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.ImportItemsAsync();
    }
    pub fn addItemImported(self: *@This(), value: *TypedEventHandler(PhotoImportFindItemsResult,PhotoImportItemImportedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.addItemImported(value);
    }
    pub fn removeItemImported(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhotoImportFindItemsResult = @ptrCast(self);
        return try this.removeItemImported(token);
    }
    pub fn AddItemsInDateRangeToSelection(self: *@This(), rangeStart: DateTime, rangeLength: TimeSpan) core.HResult!void {
        var this: ?*IPhotoImportFindItemsResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhotoImportFindItemsResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddItemsInDateRangeToSelection(rangeStart, rangeLength);
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportFindItemsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportFindItemsResult.GUID;
    pub const IID: Guid = IPhotoImportFindItemsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportFindItemsResult.SIGNATURE);
};
pub const PhotoImportImportItemsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*PhotoImportSession {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getSession();
    }
    pub fn getHasSucceeded(self: *@This()) core.HResult!bool {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getHasSucceeded();
    }
    pub fn getImportedItems(self: *@This()) core.HResult!*IVectorView(PhotoImportItem) {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getImportedItems();
    }
    pub fn getPhotosCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getPhotosCount();
    }
    pub fn getPhotosSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getPhotosSizeInBytes();
    }
    pub fn getVideosCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getVideosCount();
    }
    pub fn getVideosSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getVideosSizeInBytes();
    }
    pub fn getSidecarsCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getSidecarsCount();
    }
    pub fn getSidecarsSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getSidecarsSizeInBytes();
    }
    pub fn getSiblingsCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getSiblingsCount();
    }
    pub fn getSiblingsSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getSiblingsSizeInBytes();
    }
    pub fn getTotalCount(self: *@This()) core.HResult!u32 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getTotalCount();
    }
    pub fn getTotalSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.getTotalSizeInBytes();
    }
    pub fn DeleteImportedItemsFromSourceAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportDeleteImportedItemsFromSourceResult,f64) {
        const this: *IPhotoImportImportItemsResult = @ptrCast(self);
        return try this.DeleteImportedItemsFromSourceAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportImportItemsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportImportItemsResult.GUID;
    pub const IID: Guid = IPhotoImportImportItemsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportImportItemsResult.SIGNATURE);
};
pub const PhotoImportImportMode = enum(i32) {
    ImportEverything = 0,
    IgnoreSidecars = 1,
    IgnoreSiblings = 2,
    IgnoreSidecarsAndSiblings = 3,
};
pub const PhotoImportItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getName();
    }
    pub fn getItemKey(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getItemKey();
    }
    pub fn getContentType(self: *@This()) core.HResult!PhotoImportContentType {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn getSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getSizeInBytes();
    }
    pub fn getDate(self: *@This()) core.HResult!DateTime {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getDate();
    }
    pub fn getSibling(self: *@This()) core.HResult!*PhotoImportSidecar {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getSibling();
    }
    pub fn getSidecars(self: *@This()) core.HResult!*IVectorView(PhotoImportSidecar) {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getSidecars();
    }
    pub fn getVideoSegments(self: *@This()) core.HResult!*IVectorView(PhotoImportVideoSegment) {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getVideoSegments();
    }
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getIsSelected();
    }
    pub fn putIsSelected(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.putIsSelected(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn getImportedFileNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getImportedFileNames();
    }
    pub fn getDeletedFileNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IPhotoImportItem = @ptrCast(self);
        return try this.getDeletedFileNames();
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPhotoImportItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhotoImportItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPath();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportItem.GUID;
    pub const IID: Guid = IPhotoImportItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportItem.SIGNATURE);
};
pub const PhotoImportItemImportedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getImportedItem(self: *@This()) core.HResult!*PhotoImportItem {
        const this: *IPhotoImportItemImportedEventArgs = @ptrCast(self);
        return try this.getImportedItem();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportItemImportedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportItemImportedEventArgs.GUID;
    pub const IID: Guid = IPhotoImportItemImportedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportItemImportedEventArgs.SIGNATURE);
};
pub const PhotoImportItemSelectionMode = enum(i32) {
    SelectAll = 0,
    SelectNone = 1,
    SelectNew = 2,
};
pub const PhotoImportManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupportedAsync() core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IPhotoImportManagerStaticsCache.get();
        return try _f.IsSupportedAsync();
    }
    pub fn FindAllSourcesAsync() core.HResult!*IAsyncOperation(IVectorView(PhotoImportSource)) {
        const _f = @This().IPhotoImportManagerStaticsCache.get();
        return try _f.FindAllSourcesAsync();
    }
    pub fn GetPendingOperations() core.HResult!*IVectorView(PhotoImportOperation) {
        const _f = @This().IPhotoImportManagerStaticsCache.get();
        return try _f.GetPendingOperations();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPhotoImportManagerStaticsCache: FactoryCache(IPhotoImportManagerStatics, RUNTIME_NAME) = .{};
};
pub const PhotoImportOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStage(self: *@This()) core.HResult!PhotoImportStage {
        const this: *IPhotoImportOperation = @ptrCast(self);
        return try this.getStage();
    }
    pub fn getSession(self: *@This()) core.HResult!*PhotoImportSession {
        const this: *IPhotoImportOperation = @ptrCast(self);
        return try this.getSession();
    }
    pub fn getContinueFindingItemsAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportFindItemsResult,u32) {
        const this: *IPhotoImportOperation = @ptrCast(self);
        return try this.getContinueFindingItemsAsync();
    }
    pub fn getContinueImportingItemsAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportImportItemsResult,PhotoImportProgress) {
        const this: *IPhotoImportOperation = @ptrCast(self);
        return try this.getContinueImportingItemsAsync();
    }
    pub fn getContinueDeletingImportedItemsFromSourceAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(PhotoImportDeleteImportedItemsFromSourceResult,f64) {
        const this: *IPhotoImportOperation = @ptrCast(self);
        return try this.getContinueDeletingImportedItemsFromSourceAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportOperation.GUID;
    pub const IID: Guid = IPhotoImportOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportOperation.SIGNATURE);
};
pub const PhotoImportPowerSource = enum(i32) {
    Unknown = 0,
    Battery = 1,
    External = 2,
};
pub const PhotoImportProgress = extern struct {
    ItemsImported: u32,
    TotalItemsToImport: u32,
    BytesImported: u64,
    TotalBytesToImport: u64,
    ImportProgress: f64,
};
pub const PhotoImportSelectionChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSelectionEmpty(self: *@This()) core.HResult!bool {
        const this: *IPhotoImportSelectionChangedEventArgs = @ptrCast(self);
        return try this.getIsSelectionEmpty();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportSelectionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportSelectionChangedEventArgs.GUID;
    pub const IID: Guid = IPhotoImportSelectionChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportSelectionChangedEventArgs.SIGNATURE);
};
pub const PhotoImportSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*PhotoImportSource {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getSessionId(self: *@This()) core.HResult!*Guid {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn putDestinationFolder(self: *@This(), value: *IStorageFolder) core.HResult!void {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.putDestinationFolder(value);
    }
    pub fn getDestinationFolder(self: *@This()) core.HResult!*IStorageFolder {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.getDestinationFolder();
    }
    pub fn putAppendSessionDateToDestinationFolder(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.putAppendSessionDateToDestinationFolder(value);
    }
    pub fn getAppendSessionDateToDestinationFolder(self: *@This()) core.HResult!bool {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.getAppendSessionDateToDestinationFolder();
    }
    pub fn putSubfolderCreationMode(self: *@This(), value: PhotoImportSubfolderCreationMode) core.HResult!void {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.putSubfolderCreationMode(value);
    }
    pub fn getSubfolderCreationMode(self: *@This()) core.HResult!PhotoImportSubfolderCreationMode {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.getSubfolderCreationMode();
    }
    pub fn putDestinationFileNamePrefix(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.putDestinationFileNamePrefix(value);
    }
    pub fn getDestinationFileNamePrefix(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.getDestinationFileNamePrefix();
    }
    pub fn FindItemsAsync(self: *@This(), contentTypeFilter: PhotoImportContentTypeFilter, itemSelectionMode: PhotoImportItemSelectionMode) core.HResult!*IAsyncOperationWithProgress(PhotoImportFindItemsResult,u32) {
        const this: *IPhotoImportSession = @ptrCast(self);
        return try this.FindItemsAsync(contentTypeFilter, itemSelectionMode);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn putSubfolderDateFormat(self: *@This(), value: PhotoImportSubfolderDateFormat) core.HResult!void {
        var this: ?*IPhotoImportSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhotoImportSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSubfolderDateFormat(value);
    }
    pub fn getSubfolderDateFormat(self: *@This()) core.HResult!PhotoImportSubfolderDateFormat {
        var this: ?*IPhotoImportSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhotoImportSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSubfolderDateFormat();
    }
    pub fn putRememberDeselectedItems(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IPhotoImportSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhotoImportSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRememberDeselectedItems(value);
    }
    pub fn getRememberDeselectedItems(self: *@This()) core.HResult!bool {
        var this: ?*IPhotoImportSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhotoImportSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRememberDeselectedItems();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportSession.GUID;
    pub const IID: Guid = IPhotoImportSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportSession.SIGNATURE);
};
pub const PhotoImportSidecar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportSidecar = @ptrCast(self);
        return try this.getName();
    }
    pub fn getSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportSidecar = @ptrCast(self);
        return try this.getSizeInBytes();
    }
    pub fn getDate(self: *@This()) core.HResult!DateTime {
        const this: *IPhotoImportSidecar = @ptrCast(self);
        return try this.getDate();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportSidecar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportSidecar.GUID;
    pub const IID: Guid = IPhotoImportSidecar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportSidecar.SIGNATURE);
};
pub const PhotoImportSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getManufacturer(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getManufacturer();
    }
    pub fn getModel(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getModel();
    }
    pub fn getSerialNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getSerialNumber();
    }
    pub fn getConnectionProtocol(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getConnectionProtocol();
    }
    pub fn getConnectionTransport(self: *@This()) core.HResult!PhotoImportConnectionTransport {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getConnectionTransport();
    }
    pub fn getType(self: *@This()) core.HResult!PhotoImportSourceType {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getType();
    }
    pub fn getPowerSource(self: *@This()) core.HResult!PhotoImportPowerSource {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getPowerSource();
    }
    pub fn getBatteryLevelPercent(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getBatteryLevelPercent();
    }
    pub fn getDateTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getDateTime();
    }
    pub fn getStorageMedia(self: *@This()) core.HResult!*IVectorView(PhotoImportStorageMedium) {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getStorageMedia();
    }
    pub fn getIsLocked(self: *@This()) core.HResult!*IReference(bool) {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getIsLocked();
    }
    pub fn getIsMassStorage(self: *@This()) core.HResult!bool {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getIsMassStorage();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn CreateImportSession(self: *@This()) core.HResult!*PhotoImportSession {
        const this: *IPhotoImportSource = @ptrCast(self);
        return try this.CreateImportSession();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(sourceId: HSTRING) core.HResult!*IAsyncOperation(PhotoImportSource) {
        const _f = @This().IPhotoImportSourceStaticsCache.get();
        return try _f.FromIdAsync(sourceId);
    }
    pub fn FromFolderAsync(sourceRootFolder: *IStorageFolder) core.HResult!*IAsyncOperation(PhotoImportSource) {
        const _f = @This().IPhotoImportSourceStaticsCache.get();
        return try _f.FromFolderAsync(sourceRootFolder);
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportSource.GUID;
    pub const IID: Guid = IPhotoImportSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportSource.SIGNATURE);
    var _IPhotoImportSourceStaticsCache: FactoryCache(IPhotoImportSourceStatics, RUNTIME_NAME) = .{};
};
pub const PhotoImportSourceType = enum(i32) {
    Generic = 0,
    Camera = 1,
    MediaPlayer = 2,
    Phone = 3,
    Video = 4,
    PersonalInfoManager = 5,
    AudioRecorder = 6,
};
pub const PhotoImportStage = enum(i32) {
    NotStarted = 0,
    FindingItems = 1,
    ImportingItems = 2,
    DeletingImportedItemsFromSource = 3,
};
pub const PhotoImportStorageMedium = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportStorageMedium = @ptrCast(self);
        return try this.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportStorageMedium = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getSerialNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportStorageMedium = @ptrCast(self);
        return try this.getSerialNumber();
    }
    pub fn getStorageMediumType(self: *@This()) core.HResult!PhotoImportStorageMediumType {
        const this: *IPhotoImportStorageMedium = @ptrCast(self);
        return try this.getStorageMediumType();
    }
    pub fn getSupportedAccessMode(self: *@This()) core.HResult!PhotoImportAccessMode {
        const this: *IPhotoImportStorageMedium = @ptrCast(self);
        return try this.getSupportedAccessMode();
    }
    pub fn getCapacityInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportStorageMedium = @ptrCast(self);
        return try this.getCapacityInBytes();
    }
    pub fn getAvailableSpaceInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportStorageMedium = @ptrCast(self);
        return try this.getAvailableSpaceInBytes();
    }
    pub fn Refresh(self: *@This()) core.HResult!void {
        const this: *IPhotoImportStorageMedium = @ptrCast(self);
        return try this.Refresh();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportStorageMedium";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportStorageMedium.GUID;
    pub const IID: Guid = IPhotoImportStorageMedium.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportStorageMedium.SIGNATURE);
};
pub const PhotoImportStorageMediumType = enum(i32) {
    Undefined = 0,
    Fixed = 1,
    Removable = 2,
};
pub const PhotoImportSubfolderCreationMode = enum(i32) {
    DoNotCreateSubfolders = 0,
    CreateSubfoldersFromFileDate = 1,
    CreateSubfoldersFromExifDate = 2,
    KeepOriginalFolderStructure = 3,
};
pub const PhotoImportSubfolderDateFormat = enum(i32) {
    Year = 0,
    YearMonth = 1,
    YearMonthDay = 2,
};
pub const PhotoImportVideoSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhotoImportVideoSegment = @ptrCast(self);
        return try this.getName();
    }
    pub fn getSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IPhotoImportVideoSegment = @ptrCast(self);
        return try this.getSizeInBytes();
    }
    pub fn getDate(self: *@This()) core.HResult!DateTime {
        const this: *IPhotoImportVideoSegment = @ptrCast(self);
        return try this.getDate();
    }
    pub fn getSibling(self: *@This()) core.HResult!*PhotoImportSidecar {
        const this: *IPhotoImportVideoSegment = @ptrCast(self);
        return try this.getSibling();
    }
    pub fn getSidecars(self: *@This()) core.HResult!*IVectorView(PhotoImportSidecar) {
        const this: *IPhotoImportVideoSegment = @ptrCast(self);
        return try this.getSidecars();
    }
    pub const NAME: []const u8 = "Windows.Media.Import.PhotoImportVideoSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoImportVideoSegment.GUID;
    pub const IID: Guid = IPhotoImportVideoSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoImportVideoSegment.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IStorageFolder = @import("../Storage.zig").IStorageFolder;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IClosable = @import("../Foundation.zig").IClosable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
