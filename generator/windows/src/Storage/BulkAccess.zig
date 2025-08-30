pub const FileInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMusicProperties(self: *@This()) core.HResult!*MusicProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getMusicProperties();
    }
    pub fn getVideoProperties(self: *@This()) core.HResult!*VideoProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getVideoProperties();
    }
    pub fn getImageProperties(self: *@This()) core.HResult!*ImageProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getImageProperties();
    }
    pub fn getDocumentProperties(self: *@This()) core.HResult!*DocumentProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getDocumentProperties();
    }
    pub fn getBasicProperties(self: *@This()) core.HResult!*BasicProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getBasicProperties();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*StorageItemThumbnail {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn addThumbnailUpdated(self: *@This(), changedHandler: *TypedEventHandler(IStorageItemInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.addThumbnailUpdated(changedHandler);
    }
    pub fn removeThumbnailUpdated(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.removeThumbnailUpdated(eventCookie);
    }
    pub fn addPropertiesUpdated(self: *@This(), changedHandler: *TypedEventHandler(IStorageItemInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.addPropertiesUpdated(changedHandler);
    }
    pub fn removePropertiesUpdated(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.removePropertiesUpdated(eventCookie);
    }
    pub fn getFileType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFileType();
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentType();
    }
    pub fn OpenAsync(self: *@This(), accessMode: FileAccessMode) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenAsync(accessMode);
    }
    pub fn OpenTransactedWriteAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenTransactedWriteAsync();
    }
    pub fn CopyAsync(self: *@This(), destinationFolder: *IStorageFolder) core.HResult!*IAsyncOperation(StorageFile) {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopyAsync(destinationFolder);
    }
    pub fn CopyAsyncWithDesiredNewName(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopyAsyncWithDesiredNewName(destinationFolder, desiredNewName);
    }
    pub fn CopyAsyncWithDesiredNewNameWithOption(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopyAsyncWithDesiredNewNameWithOption(destinationFolder, desiredNewName, option);
    }
    pub fn CopyAndReplaceAsync(self: *@This(), fileToReplace: *IStorageFile) core.HResult!*IAsyncAction {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopyAndReplaceAsync(fileToReplace);
    }
    pub fn MoveAsync(self: *@This(), destinationFolder: *IStorageFolder) core.HResult!*IAsyncAction {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MoveAsync(destinationFolder);
    }
    pub fn MoveAsyncWithDesiredNewName(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MoveAsyncWithDesiredNewName(destinationFolder, desiredNewName);
    }
    pub fn MoveAsyncWithDesiredNewNameWithOption(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncAction {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MoveAsyncWithDesiredNewNameWithOption(destinationFolder, desiredNewName, option);
    }
    pub fn MoveAndReplaceAsync(self: *@This(), fileToReplace: *IStorageFile) core.HResult!*IAsyncAction {
        var this: ?*IStorageFile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MoveAndReplaceAsync(fileToReplace);
    }
    pub fn OpenSequentialReadAsync(self: *@This()) core.HResult!*IAsyncOperation(IInputStream) {
        var this: ?*IInputStreamReference = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStreamReference.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenSequentialReadAsync();
    }
    pub fn OpenReadAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var this: ?*IRandomAccessStreamReference = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStreamReference.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenReadAsync();
    }
    pub fn RenameAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RenameAsync(desiredName);
    }
    pub fn RenameAsyncWithOption(self: *@This(), desiredName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RenameAsyncWithOption(desiredName, option);
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteAsync();
    }
    pub fn DeleteAsyncWithOption(self: *@This(), option: StorageDeleteOption) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteAsyncWithOption(option);
    }
    pub fn GetBasicPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(BasicProperties) {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetBasicPropertiesAsync();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPath();
    }
    pub fn getAttributes(self: *@This()) core.HResult!FileAttributes {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn getDateCreated(self: *@This()) core.HResult!DateTime {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDateCreated();
    }
    pub fn IsOfType(self: *@This(), ty: StorageItemTypes) core.HResult!bool {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsOfType(ty);
    }
    pub fn GetThumbnailAsync(self: *@This(), mode: ThumbnailMode) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailAsync(mode);
    }
    pub fn GetThumbnailAsyncWithRequestedSize(self: *@This(), mode: ThumbnailMode, requestedSize: u32) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailAsyncWithRequestedSize(mode, requestedSize);
    }
    pub fn GetThumbnailAsyncWithRequestedSizeWithOptions(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailAsyncWithRequestedSizeWithOptions(mode, requestedSize, options);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn getDisplayType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayType();
    }
    pub fn getFolderRelativeId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFolderRelativeId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*StorageItemContentProperties {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn GetParentAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        var this: ?*IStorageItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetParentAsync();
    }
    pub fn IsEqual(self: *@This(), item: *IStorageItem) core.HResult!bool {
        var this: ?*IStorageItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEqual(item);
    }
    pub fn getProvider(self: *@This()) core.HResult!*StorageProvider {
        var this: ?*IStorageItemPropertiesWithProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemPropertiesWithProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProvider();
    }
    pub fn getIsAvailable(self: *@This()) core.HResult!bool {
        var this: ?*IStorageFilePropertiesWithAvailability = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFilePropertiesWithAvailability.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAvailable();
    }
    pub fn OpenAsyncWithOptions(self: *@This(), accessMode: FileAccessMode, options: StorageOpenOptions) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var this: ?*IStorageFile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenAsyncWithOptions(accessMode, options);
    }
    pub fn OpenTransactedWriteAsyncWithOptions(self: *@This(), options: StorageOpenOptions) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var this: ?*IStorageFile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenTransactedWriteAsyncWithOptions(options);
    }
    pub const NAME: []const u8 = "Windows.Storage.BulkAccess.FileInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageItemInformation.GUID;
    pub const IID: Guid = IStorageItemInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageItemInformation.SIGNATURE);
};
pub const FileInformationFactory = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetItemsAsyncWithStartIndexWithMaxItemsToRetrieve(self: *@This(), startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(IStorageItemInformation)) {
        const this: *IFileInformationFactory = @ptrCast(self);
        return try this.GetItemsAsyncWithStartIndexWithMaxItemsToRetrieve(startIndex, maxItemsToRetrieve);
    }
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IStorageItemInformation)) {
        const this: *IFileInformationFactory = @ptrCast(self);
        return try this.GetItemsAsync();
    }
    pub fn GetFilesAsyncWithStartIndexWithMaxItemsToRetrieve(self: *@This(), startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(FileInformation)) {
        const this: *IFileInformationFactory = @ptrCast(self);
        return try this.GetFilesAsyncWithStartIndexWithMaxItemsToRetrieve(startIndex, maxItemsToRetrieve);
    }
    pub fn GetFilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(FileInformation)) {
        const this: *IFileInformationFactory = @ptrCast(self);
        return try this.GetFilesAsync();
    }
    pub fn GetFoldersAsyncWithStartIndexWithMaxItemsToRetrieve(self: *@This(), startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(FolderInformation)) {
        const this: *IFileInformationFactory = @ptrCast(self);
        return try this.GetFoldersAsyncWithStartIndexWithMaxItemsToRetrieve(startIndex, maxItemsToRetrieve);
    }
    pub fn GetFoldersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(FolderInformation)) {
        const this: *IFileInformationFactory = @ptrCast(self);
        return try this.GetFoldersAsync();
    }
    pub fn GetVirtualizedItemsVector(self: *@This()) core.HResult!*IInspectable {
        const this: *IFileInformationFactory = @ptrCast(self);
        return try this.GetVirtualizedItemsVector();
    }
    pub fn GetVirtualizedFilesVector(self: *@This()) core.HResult!*IInspectable {
        const this: *IFileInformationFactory = @ptrCast(self);
        return try this.GetVirtualizedFilesVector();
    }
    pub fn GetVirtualizedFoldersVector(self: *@This()) core.HResult!*IInspectable {
        const this: *IFileInformationFactory = @ptrCast(self);
        return try this.GetVirtualizedFoldersVector();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithMode(queryResult: *IStorageQueryResultBase, mode: ThumbnailMode) core.HResult!*FileInformationFactory {
        const factory = @This().IFileInformationFactoryFactoryCache.get();
        return try factory.CreateWithMode(queryResult, mode);
    }
    pub fn CreateWithModeAndSize(queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, requestedThumbnailSize: u32) core.HResult!*FileInformationFactory {
        const factory = @This().IFileInformationFactoryFactoryCache.get();
        return try factory.CreateWithModeAndSize(queryResult, mode, requestedThumbnailSize);
    }
    pub fn CreateWithModeAndSizeAndOptions(queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, requestedThumbnailSize: u32, thumbnailOptions: ThumbnailOptions) core.HResult!*FileInformationFactory {
        const factory = @This().IFileInformationFactoryFactoryCache.get();
        return try factory.CreateWithModeAndSizeAndOptions(queryResult, mode, requestedThumbnailSize, thumbnailOptions);
    }
    pub fn CreateWithModeAndSizeAndOptionsAndFlags(queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, requestedThumbnailSize: u32, thumbnailOptions: ThumbnailOptions, delayLoad: bool) core.HResult!*FileInformationFactory {
        const factory = @This().IFileInformationFactoryFactoryCache.get();
        return try factory.CreateWithModeAndSizeAndOptionsAndFlags(queryResult, mode, requestedThumbnailSize, thumbnailOptions, delayLoad);
    }
    pub const NAME: []const u8 = "Windows.Storage.BulkAccess.FileInformationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileInformationFactory.GUID;
    pub const IID: Guid = IFileInformationFactory.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileInformationFactory.SIGNATURE);
    var _IFileInformationFactoryFactoryCache: FactoryCache(IFileInformationFactoryFactory, RUNTIME_NAME) = .{};
};
pub const FolderInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMusicProperties(self: *@This()) core.HResult!*MusicProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getMusicProperties();
    }
    pub fn getVideoProperties(self: *@This()) core.HResult!*VideoProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getVideoProperties();
    }
    pub fn getImageProperties(self: *@This()) core.HResult!*ImageProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getImageProperties();
    }
    pub fn getDocumentProperties(self: *@This()) core.HResult!*DocumentProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getDocumentProperties();
    }
    pub fn getBasicProperties(self: *@This()) core.HResult!*BasicProperties {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getBasicProperties();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*StorageItemThumbnail {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn addThumbnailUpdated(self: *@This(), changedHandler: *TypedEventHandler(IStorageItemInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.addThumbnailUpdated(changedHandler);
    }
    pub fn removeThumbnailUpdated(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.removeThumbnailUpdated(eventCookie);
    }
    pub fn addPropertiesUpdated(self: *@This(), changedHandler: *TypedEventHandler(IStorageItemInformation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.addPropertiesUpdated(changedHandler);
    }
    pub fn removePropertiesUpdated(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IStorageItemInformation = @ptrCast(self);
        return try this.removePropertiesUpdated(eventCookie);
    }
    pub fn CreateFileAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFileAsync(desiredName);
    }
    pub fn CreateFileAsyncWithOptions(self: *@This(), desiredName: HSTRING, options: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFileAsyncWithOptions(desiredName, options);
    }
    pub fn CreateFolderAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFolderAsync(desiredName);
    }
    pub fn CreateFolderAsyncWithOptions(self: *@This(), desiredName: HSTRING, options: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFolder) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFolderAsyncWithOptions(desiredName, options);
    }
    pub fn GetFileAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFileAsync(name);
    }
    pub fn GetFolderAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFolderAsync(name);
    }
    pub fn GetItemAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(IStorageItem) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemAsync(name);
    }
    pub fn GetFilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFilesAsync();
    }
    pub fn GetFoldersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFoldersAsync();
    }
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        var this: ?*IStorageFolder = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemsAsync();
    }
    pub fn RenameAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RenameAsync(desiredName);
    }
    pub fn RenameAsyncWithOption(self: *@This(), desiredName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RenameAsyncWithOption(desiredName, option);
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteAsync();
    }
    pub fn DeleteAsyncWithOption(self: *@This(), option: StorageDeleteOption) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteAsyncWithOption(option);
    }
    pub fn GetBasicPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(BasicProperties) {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetBasicPropertiesAsync();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPath();
    }
    pub fn getAttributes(self: *@This()) core.HResult!FileAttributes {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn getDateCreated(self: *@This()) core.HResult!DateTime {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDateCreated();
    }
    pub fn IsOfType(self: *@This(), ty: StorageItemTypes) core.HResult!bool {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsOfType(ty);
    }
    pub fn GetThumbnailAsync(self: *@This(), mode: ThumbnailMode) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailAsync(mode);
    }
    pub fn GetThumbnailAsyncWithRequestedSize(self: *@This(), mode: ThumbnailMode, requestedSize: u32) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailAsyncWithRequestedSize(mode, requestedSize);
    }
    pub fn GetThumbnailAsyncWithRequestedSizeWithOptions(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailAsyncWithRequestedSizeWithOptions(mode, requestedSize, options);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn getDisplayType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayType();
    }
    pub fn getFolderRelativeId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFolderRelativeId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*StorageItemContentProperties {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn GetIndexedStateAsync(self: *@This()) core.HResult!*IAsyncOperation(IndexedState) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIndexedStateAsync();
    }
    pub fn CreateFileQuery(self: *@This()) core.HResult!*StorageFileQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFileQuery();
    }
    pub fn CreateFileQueryWithQuery(self: *@This(), query: CommonFileQuery) core.HResult!*StorageFileQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFileQueryWithQuery(query);
    }
    pub fn CreateFileQueryWithOptions(self: *@This(), queryOptions: *QueryOptions) core.HResult!*StorageFileQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFileQueryWithOptions(queryOptions);
    }
    pub fn CreateFolderQuery(self: *@This()) core.HResult!*StorageFolderQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFolderQuery();
    }
    pub fn CreateFolderQueryWithQuery(self: *@This(), query: CommonFolderQuery) core.HResult!*StorageFolderQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFolderQueryWithQuery(query);
    }
    pub fn CreateFolderQueryWithOptions(self: *@This(), queryOptions: *QueryOptions) core.HResult!*StorageFolderQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFolderQueryWithOptions(queryOptions);
    }
    pub fn CreateItemQuery(self: *@This()) core.HResult!*StorageItemQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateItemQuery();
    }
    pub fn CreateItemQueryWithOptions(self: *@This(), queryOptions: *QueryOptions) core.HResult!*StorageItemQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateItemQueryWithOptions(queryOptions);
    }
    pub fn GetFilesAsyncWithQueryWithStartIndexWithMaxItemsToRetrieve(self: *@This(), query: CommonFileQuery, startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFilesAsyncWithQueryWithStartIndexWithMaxItemsToRetrieve(query, startIndex, maxItemsToRetrieve);
    }
    pub fn GetFilesAsyncWithQuery(self: *@This(), query: CommonFileQuery) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFilesAsyncWithQuery(query);
    }
    pub fn GetFoldersAsyncWithQueryWithStartIndexWithMaxItemsToRetrieve(self: *@This(), query: CommonFolderQuery, startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFoldersAsyncWithQueryWithStartIndexWithMaxItemsToRetrieve(query, startIndex, maxItemsToRetrieve);
    }
    pub fn GetFoldersAsyncWithQuery(self: *@This(), query: CommonFolderQuery) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFoldersAsyncWithQuery(query);
    }
    pub fn GetItemsAsyncWithStartIndexWithMaxItemsToRetrieve(self: *@This(), startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemsAsyncWithStartIndexWithMaxItemsToRetrieve(startIndex, maxItemsToRetrieve);
    }
    pub fn AreQueryOptionsSupported(self: *@This(), queryOptions: *QueryOptions) core.HResult!bool {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AreQueryOptionsSupported(queryOptions);
    }
    pub fn IsCommonFolderQuerySupported(self: *@This(), query: CommonFolderQuery) core.HResult!bool {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsCommonFolderQuerySupported(query);
    }
    pub fn IsCommonFileQuerySupported(self: *@This(), query: CommonFileQuery) core.HResult!bool {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsCommonFileQuerySupported(query);
    }
    pub fn GetParentAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        var this: ?*IStorageItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetParentAsync();
    }
    pub fn IsEqual(self: *@This(), item: *IStorageItem) core.HResult!bool {
        var this: ?*IStorageItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEqual(item);
    }
    pub fn TryGetItemAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(IStorageItem) {
        var this: ?*IStorageFolder2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetItemAsync(name);
    }
    pub fn getProvider(self: *@This()) core.HResult!*StorageProvider {
        var this: ?*IStorageItemPropertiesWithProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemPropertiesWithProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProvider();
    }
    pub const NAME: []const u8 = "Windows.Storage.BulkAccess.FolderInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageItemInformation.GUID;
    pub const IID: Guid = IStorageItemInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageItemInformation.SIGNATURE);
};
pub const IFileInformationFactory = extern struct {
    vtable: *const VTable,
    pub fn GetItemsAsync(self: *@This(), startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(IStorageItemInformation)) {
        var _r: *IAsyncOperation(IVectorView(IStorageItemInformation)) = undefined;
        const _c = self.vtable.GetItemsAsync(@ptrCast(self), startIndex, maxItemsToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IStorageItemInformation)) {
        var _r: *IAsyncOperation(IVectorView(IStorageItemInformation)) = undefined;
        const _c = self.vtable.GetItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFilesAsync(self: *@This(), startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(FileInformation)) {
        var _r: *IAsyncOperation(IVectorView(FileInformation)) = undefined;
        const _c = self.vtable.GetFilesAsync(@ptrCast(self), startIndex, maxItemsToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(FileInformation)) {
        var _r: *IAsyncOperation(IVectorView(FileInformation)) = undefined;
        const _c = self.vtable.GetFilesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFoldersAsync(self: *@This(), startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(FolderInformation)) {
        var _r: *IAsyncOperation(IVectorView(FolderInformation)) = undefined;
        const _c = self.vtable.GetFoldersAsync(@ptrCast(self), startIndex, maxItemsToRetrieve, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFoldersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(FolderInformation)) {
        var _r: *IAsyncOperation(IVectorView(FolderInformation)) = undefined;
        const _c = self.vtable.GetFoldersAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVirtualizedItemsVector(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetVirtualizedItemsVector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVirtualizedFilesVector(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetVirtualizedFilesVector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVirtualizedFoldersVector(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetVirtualizedFoldersVector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.BulkAccess.IFileInformationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "401d88be-960f-4d6d-a7d0-1a3861e76c83";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetItemsAsync: *const fn(self: *anyopaque, startIndex: u32, maxItemsToRetrieve: u32, _r: **IAsyncOperation(IVectorView(IStorageItemInformation))) callconv(.winapi) HRESULT,
        GetItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(IStorageItemInformation))) callconv(.winapi) HRESULT,
        GetFilesAsync: *const fn(self: *anyopaque, startIndex: u32, maxItemsToRetrieve: u32, _r: **IAsyncOperation(IVectorView(FileInformation))) callconv(.winapi) HRESULT,
        GetFilesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(FileInformation))) callconv(.winapi) HRESULT,
        GetFoldersAsync: *const fn(self: *anyopaque, startIndex: u32, maxItemsToRetrieve: u32, _r: **IAsyncOperation(IVectorView(FolderInformation))) callconv(.winapi) HRESULT,
        GetFoldersAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(FolderInformation))) callconv(.winapi) HRESULT,
        GetVirtualizedItemsVector: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetVirtualizedFilesVector: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetVirtualizedFoldersVector: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IFileInformationFactoryFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithMode(self: *@This(), queryResult: *IStorageQueryResultBase, mode: ThumbnailMode) core.HResult!*FileInformationFactory {
        var _r: *FileInformationFactory = undefined;
        const _c = self.vtable.CreateWithMode(@ptrCast(self), queryResult, mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithModeAndSize(self: *@This(), queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, requestedThumbnailSize: u32) core.HResult!*FileInformationFactory {
        var _r: *FileInformationFactory = undefined;
        const _c = self.vtable.CreateWithModeAndSize(@ptrCast(self), queryResult, mode, requestedThumbnailSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithModeAndSizeAndOptions(self: *@This(), queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, requestedThumbnailSize: u32, thumbnailOptions: ThumbnailOptions) core.HResult!*FileInformationFactory {
        var _r: *FileInformationFactory = undefined;
        const _c = self.vtable.CreateWithModeAndSizeAndOptions(@ptrCast(self), queryResult, mode, requestedThumbnailSize, thumbnailOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithModeAndSizeAndOptionsAndFlags(self: *@This(), queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, requestedThumbnailSize: u32, thumbnailOptions: ThumbnailOptions, delayLoad: bool) core.HResult!*FileInformationFactory {
        var _r: *FileInformationFactory = undefined;
        const _c = self.vtable.CreateWithModeAndSizeAndOptionsAndFlags(@ptrCast(self), queryResult, mode, requestedThumbnailSize, thumbnailOptions, delayLoad, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.BulkAccess.IFileInformationFactoryFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84ea0e7d-e4a2-4f00-8afa-af5e0f826bd5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithMode: *const fn(self: *anyopaque, queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, _r: **FileInformationFactory) callconv(.winapi) HRESULT,
        CreateWithModeAndSize: *const fn(self: *anyopaque, queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, requestedThumbnailSize: u32, _r: **FileInformationFactory) callconv(.winapi) HRESULT,
        CreateWithModeAndSizeAndOptions: *const fn(self: *anyopaque, queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, requestedThumbnailSize: u32, thumbnailOptions: ThumbnailOptions, _r: **FileInformationFactory) callconv(.winapi) HRESULT,
        CreateWithModeAndSizeAndOptionsAndFlags: *const fn(self: *anyopaque, queryResult: *IStorageQueryResultBase, mode: ThumbnailMode, requestedThumbnailSize: u32, thumbnailOptions: ThumbnailOptions, delayLoad: bool, _r: **FileInformationFactory) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemInformation = extern struct {
    vtable: *const VTable,
    pub fn getMusicProperties(self: *@This()) core.HResult!*MusicProperties {
        var _r: *MusicProperties = undefined;
        const _c = self.vtable.get_MusicProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoProperties(self: *@This()) core.HResult!*VideoProperties {
        var _r: *VideoProperties = undefined;
        const _c = self.vtable.get_VideoProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImageProperties(self: *@This()) core.HResult!*ImageProperties {
        var _r: *ImageProperties = undefined;
        const _c = self.vtable.get_ImageProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentProperties(self: *@This()) core.HResult!*DocumentProperties {
        var _r: *DocumentProperties = undefined;
        const _c = self.vtable.get_DocumentProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBasicProperties(self: *@This()) core.HResult!*BasicProperties {
        var _r: *BasicProperties = undefined;
        const _c = self.vtable.get_BasicProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*StorageItemThumbnail {
        var _r: *StorageItemThumbnail = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addThumbnailUpdated(self: *@This(), changedHandler: *TypedEventHandler(IStorageItemInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ThumbnailUpdated(@ptrCast(self), changedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeThumbnailUpdated(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ThumbnailUpdated(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPropertiesUpdated(self: *@This(), changedHandler: *TypedEventHandler(IStorageItemInformation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PropertiesUpdated(@ptrCast(self), changedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePropertiesUpdated(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PropertiesUpdated(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.BulkAccess.IStorageItemInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87a5cb8b-8972-4f40-8de0-d86fb179d8fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MusicProperties: *const fn(self: *anyopaque, _r: **MusicProperties) callconv(.winapi) HRESULT,
        get_VideoProperties: *const fn(self: *anyopaque, _r: **VideoProperties) callconv(.winapi) HRESULT,
        get_ImageProperties: *const fn(self: *anyopaque, _r: **ImageProperties) callconv(.winapi) HRESULT,
        get_DocumentProperties: *const fn(self: *anyopaque, _r: **DocumentProperties) callconv(.winapi) HRESULT,
        get_BasicProperties: *const fn(self: *anyopaque, _r: **BasicProperties) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **StorageItemThumbnail) callconv(.winapi) HRESULT,
        add_ThumbnailUpdated: *const fn(self: *anyopaque, changedHandler: *TypedEventHandler(IStorageItemInformation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ThumbnailUpdated: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PropertiesUpdated: *const fn(self: *anyopaque, changedHandler: *TypedEventHandler(IStorageItemInformation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PropertiesUpdated: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const BasicProperties = @import("./FileProperties.zig").BasicProperties;
const NameCollisionOption = @import("../Storage.zig").NameCollisionOption;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IStorageFolderQueryOperations = @import("./Search.zig").IStorageFolderQueryOperations;
const IInputStreamReference = @import("./Streams.zig").IInputStreamReference;
const FileAttributes = @import("../Storage.zig").FileAttributes;
const IStorageFolder = @import("../Storage.zig").IStorageFolder;
const CommonFileQuery = @import("./Search.zig").CommonFileQuery;
const StorageItemThumbnail = @import("./FileProperties.zig").StorageItemThumbnail;
const CreationCollisionOption = @import("../Storage.zig").CreationCollisionOption;
const IStorageItem = @import("../Storage.zig").IStorageItem;
const CommonFolderQuery = @import("./Search.zig").CommonFolderQuery;
const IInputStream = @import("./Streams.zig").IInputStream;
const MusicProperties = @import("./FileProperties.zig").MusicProperties;
const DateTime = @import("../Foundation.zig").DateTime;
const StorageFileQueryResult = @import("./Search.zig").StorageFileQueryResult;
const DocumentProperties = @import("./FileProperties.zig").DocumentProperties;
const IRandomAccessStreamReference = @import("./Streams.zig").IRandomAccessStreamReference;
const IStorageFilePropertiesWithAvailability = @import("../Storage.zig").IStorageFilePropertiesWithAvailability;
const IRandomAccessStream = @import("./Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const IStorageFolder2 = @import("../Storage.zig").IStorageFolder2;
const StorageItemTypes = @import("../Storage.zig").StorageItemTypes;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const IStorageItemPropertiesWithProvider = @import("../Storage.zig").IStorageItemPropertiesWithProvider;
const IStorageItemProperties = @import("../Storage.zig").IStorageItemProperties;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const StorageProvider = @import("../Storage.zig").StorageProvider;
const HSTRING = @import("../root.zig").HSTRING;
const FileAccessMode = @import("../Storage.zig").FileAccessMode;
const StorageItemContentProperties = @import("./FileProperties.zig").StorageItemContentProperties;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IStorageItem2 = @import("../Storage.zig").IStorageItem2;
const StorageFolderQueryResult = @import("./Search.zig").StorageFolderQueryResult;
const StorageStreamTransaction = @import("../Storage.zig").StorageStreamTransaction;
const IRandomAccessStreamWithContentType = @import("./Streams.zig").IRandomAccessStreamWithContentType;
const QueryOptions = @import("./Search.zig").QueryOptions;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IndexedState = @import("./Search.zig").IndexedState;
const IStorageQueryResultBase = @import("./Search.zig").IStorageQueryResultBase;
const ThumbnailOptions = @import("./FileProperties.zig").ThumbnailOptions;
const StorageItemQueryResult = @import("./Search.zig").StorageItemQueryResult;
const VideoProperties = @import("./FileProperties.zig").VideoProperties;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const StorageDeleteOption = @import("../Storage.zig").StorageDeleteOption;
const ImageProperties = @import("./FileProperties.zig").ImageProperties;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IStorageFile2 = @import("../Storage.zig").IStorageFile2;
const StorageOpenOptions = @import("../Storage.zig").StorageOpenOptions;
const ThumbnailMode = @import("./FileProperties.zig").ThumbnailMode;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const StorageFile = @import("../Storage.zig").StorageFile;
