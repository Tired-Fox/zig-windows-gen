pub const FileExtensionVector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        const this: *IVector = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(T) {
        const this: *IVector = @ptrCast(self);
        return try this.GetView();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        const this: *IVector = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: core.generic(T)) core.HResult!void {
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
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]core.generic(T)) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.FileExtensionVector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
};
pub const FileOpenPicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IFileOpenPicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileOpenPicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContinuationData();
    }
    pub fn PickSingleFileAndContinue(self: *@This()) core.HResult!void {
        var this: ?*IFileOpenPicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileOpenPicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PickSingleFileAndContinue();
    }
    pub fn PickMultipleFilesAndContinue(self: *@This()) core.HResult!void {
        var this: ?*IFileOpenPicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileOpenPicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PickMultipleFilesAndContinue();
    }
    pub fn PickSingleFileAsyncWithPickerOperationId(self: *@This(), pickerOperationId: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var this: ?*IFileOpenPickerWithOperationId = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileOpenPickerWithOperationId.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PickSingleFileAsyncWithPickerOperationId(pickerOperationId);
    }
    pub fn getViewMode(self: *@This()) core.HResult!PickerViewMode {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.getViewMode();
    }
    pub fn putViewMode(self: *@This(), value: PickerViewMode) core.HResult!void {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.putViewMode(value);
    }
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.getSettingsIdentifier();
    }
    pub fn putSettingsIdentifier(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.putSettingsIdentifier(value);
    }
    pub fn getSuggestedStartLocation(self: *@This()) core.HResult!PickerLocationId {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.getSuggestedStartLocation();
    }
    pub fn putSuggestedStartLocation(self: *@This(), value: PickerLocationId) core.HResult!void {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.putSuggestedStartLocation(value);
    }
    pub fn getCommitButtonText(self: *@This()) core.HResult!HSTRING {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.getCommitButtonText();
    }
    pub fn putCommitButtonText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.putCommitButtonText(value);
    }
    pub fn getFileTypeFilter(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.getFileTypeFilter();
    }
    pub fn PickSingleFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.PickSingleFileAsync();
    }
    pub fn PickMultipleFilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        const this: *IFileOpenPicker = @ptrCast(self);
        return try this.PickMultipleFilesAsync();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IFileOpenPicker3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileOpenPicker3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFileOpenPicker.IID)));
    }
    pub fn CreateForUser(user: *User) core.HResult!*FileOpenPicker {
        const factory = @This().IFileOpenPickerStatics2Cache.get();
        return try factory.CreateForUser(user);
    }
    pub fn ResumePickSingleFileAsync() core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IFileOpenPickerStaticsCache.get();
        return try factory.ResumePickSingleFileAsync();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.FileOpenPicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileOpenPicker.GUID;
    pub const IID: Guid = IFileOpenPicker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileOpenPicker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IFileOpenPickerStatics2Cache: FactoryCache(IFileOpenPickerStatics2, RUNTIME_NAME) = .{};
    var _IFileOpenPickerStaticsCache: FactoryCache(IFileOpenPickerStatics, RUNTIME_NAME) = .{};
};
pub const FilePickerFileTypesOrderedMap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Lookup(self: *@This(), key: core.generic(K)) core.HResult!core.generic(V) {
        const this: *IMap = @ptrCast(self);
        return try this.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IMap = @ptrCast(self);
        return try this.getSize();
    }
    pub fn HasKey(self: *@This(), key: core.generic(K)) core.HResult!bool {
        const this: *IMap = @ptrCast(self);
        return try this.HasKey(key);
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(K,V) {
        const this: *IMap = @ptrCast(self);
        return try this.GetView();
    }
    pub fn Insert(self: *@This(), key: core.generic(K), value: core.generic(V)) core.HResult!bool {
        const this: *IMap = @ptrCast(self);
        return try this.Insert(key, value);
    }
    pub fn Remove(self: *@This(), key: core.generic(K)) core.HResult!void {
        const this: *IMap = @ptrCast(self);
        return try this.Remove(key);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IMap = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,IVector(HSTRING))) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.FilePickerFileTypesOrderedMap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMap.GUID;
    pub const IID: Guid = IMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMap.SIGNATURE);
};
pub const FilePickerSelectedFilesArray = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(StorageFile) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.FilePickerSelectedFilesArray";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const FileSavePicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IFileSavePicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileSavePicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContinuationData();
    }
    pub fn PickSaveFileAndContinue(self: *@This()) core.HResult!void {
        var this: ?*IFileSavePicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileSavePicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PickSaveFileAndContinue();
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IFileSavePicker3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileSavePicker3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEnterpriseId();
    }
    pub fn putEnterpriseId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IFileSavePicker3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileSavePicker3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEnterpriseId(value);
    }
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.getSettingsIdentifier();
    }
    pub fn putSettingsIdentifier(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.putSettingsIdentifier(value);
    }
    pub fn getSuggestedStartLocation(self: *@This()) core.HResult!PickerLocationId {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.getSuggestedStartLocation();
    }
    pub fn putSuggestedStartLocation(self: *@This(), value: PickerLocationId) core.HResult!void {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.putSuggestedStartLocation(value);
    }
    pub fn getCommitButtonText(self: *@This()) core.HResult!HSTRING {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.getCommitButtonText();
    }
    pub fn putCommitButtonText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.putCommitButtonText(value);
    }
    pub fn getFileTypeChoices(self: *@This()) core.HResult!*IMap(HSTRING,IVector(HSTRING)) {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.getFileTypeChoices();
    }
    pub fn getDefaultFileExtension(self: *@This()) core.HResult!HSTRING {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.getDefaultFileExtension();
    }
    pub fn putDefaultFileExtension(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.putDefaultFileExtension(value);
    }
    pub fn getSuggestedSaveFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.getSuggestedSaveFile();
    }
    pub fn putSuggestedSaveFile(self: *@This(), value: *StorageFile) core.HResult!void {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.putSuggestedSaveFile(value);
    }
    pub fn getSuggestedFileName(self: *@This()) core.HResult!HSTRING {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.getSuggestedFileName();
    }
    pub fn putSuggestedFileName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.putSuggestedFileName(value);
    }
    pub fn PickSaveFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IFileSavePicker = @ptrCast(self);
        return try this.PickSaveFileAsync();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IFileSavePicker4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFileSavePicker4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFileSavePicker.IID)));
    }
    pub fn CreateForUser(user: *User) core.HResult!*FileSavePicker {
        const factory = @This().IFileSavePickerStaticsCache.get();
        return try factory.CreateForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.FileSavePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFileSavePicker.GUID;
    pub const IID: Guid = IFileSavePicker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFileSavePicker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IFileSavePickerStaticsCache: FactoryCache(IFileSavePickerStatics, RUNTIME_NAME) = .{};
};
pub const FolderPicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var this: ?*IFolderPicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFolderPicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContinuationData();
    }
    pub fn PickFolderAndContinue(self: *@This()) core.HResult!void {
        var this: ?*IFolderPicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFolderPicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PickFolderAndContinue();
    }
    pub fn getViewMode(self: *@This()) core.HResult!PickerViewMode {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.getViewMode();
    }
    pub fn putViewMode(self: *@This(), value: PickerViewMode) core.HResult!void {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.putViewMode(value);
    }
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.getSettingsIdentifier();
    }
    pub fn putSettingsIdentifier(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.putSettingsIdentifier(value);
    }
    pub fn getSuggestedStartLocation(self: *@This()) core.HResult!PickerLocationId {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.getSuggestedStartLocation();
    }
    pub fn putSuggestedStartLocation(self: *@This(), value: PickerLocationId) core.HResult!void {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.putSuggestedStartLocation(value);
    }
    pub fn getCommitButtonText(self: *@This()) core.HResult!HSTRING {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.getCommitButtonText();
    }
    pub fn putCommitButtonText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.putCommitButtonText(value);
    }
    pub fn getFileTypeFilter(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.getFileTypeFilter();
    }
    pub fn PickSingleFolderAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        const this: *IFolderPicker = @ptrCast(self);
        return try this.PickSingleFolderAsync();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IFolderPicker3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFolderPicker3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFolderPicker.IID)));
    }
    pub fn CreateForUser(user: *User) core.HResult!*FolderPicker {
        const factory = @This().IFolderPickerStaticsCache.get();
        return try factory.CreateForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.FolderPicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFolderPicker.GUID;
    pub const IID: Guid = IFolderPicker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFolderPicker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IFolderPickerStaticsCache: FactoryCache(IFolderPickerStatics, RUNTIME_NAME) = .{};
};
pub const IFileOpenPicker = extern struct {
    vtable: *const VTable,
    pub fn getViewMode(self: *@This()) core.HResult!PickerViewMode {
        var _r: PickerViewMode = undefined;
        const _c = self.vtable.get_ViewMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewMode(self: *@This(), value: PickerViewMode) core.HResult!void {
        const _c = self.vtable.put_ViewMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SettingsIdentifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSettingsIdentifier(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SettingsIdentifier(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuggestedStartLocation(self: *@This()) core.HResult!PickerLocationId {
        var _r: PickerLocationId = undefined;
        const _c = self.vtable.get_SuggestedStartLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuggestedStartLocation(self: *@This(), value: PickerLocationId) core.HResult!void {
        const _c = self.vtable.put_SuggestedStartLocation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCommitButtonText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CommitButtonText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommitButtonText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CommitButtonText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFileTypeFilter(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_FileTypeFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickSingleFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.PickSingleFileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickMultipleFilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var _r: *IAsyncOperation(IVectorView(StorageFile)) = undefined;
        const _c = self.vtable.PickMultipleFilesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileOpenPicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ca8278a-12c5-4c5f-8977-94547793c241";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewMode: *const fn(self: *anyopaque, _r: *PickerViewMode) callconv(.winapi) HRESULT,
        put_ViewMode: *const fn(self: *anyopaque, value: PickerViewMode) callconv(.winapi) HRESULT,
        get_SettingsIdentifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SettingsIdentifier: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SuggestedStartLocation: *const fn(self: *anyopaque, _r: *PickerLocationId) callconv(.winapi) HRESULT,
        put_SuggestedStartLocation: *const fn(self: *anyopaque, value: PickerLocationId) callconv(.winapi) HRESULT,
        get_CommitButtonText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CommitButtonText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FileTypeFilter: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        PickSingleFileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        PickMultipleFilesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StorageFile))) callconv(.winapi) HRESULT,
    };
};
pub const IFileOpenPicker2 = extern struct {
    vtable: *const VTable,
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_ContinuationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickSingleFileAndContinue(self: *@This()) core.HResult!void {
        const _c = self.vtable.PickSingleFileAndContinue(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PickMultipleFilesAndContinue(self: *@This()) core.HResult!void {
        const _c = self.vtable.PickMultipleFilesAndContinue(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileOpenPicker2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ceb6cd2-b446-46f7-b265-90f8e55ad650";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContinuationData: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        PickSingleFileAndContinue: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PickMultipleFilesAndContinue: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IFileOpenPicker3 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileOpenPicker3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9a5c5b3-c5dc-5b98-bd80-a8d0ca0584d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IFileOpenPickerStatics = extern struct {
    vtable: *const VTable,
    pub fn ResumePickSingleFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.ResumePickSingleFileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileOpenPickerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6821573b-2f02-4833-96d4-abbfad72b67b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ResumePickSingleFileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IFileOpenPickerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateForUser(self: *@This(), user: *User) core.HResult!*FileOpenPicker {
        var _r: *FileOpenPicker = undefined;
        const _c = self.vtable.CreateForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileOpenPickerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8917415-eddd-5c98-b6f3-366fdfcad392";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForUser: *const fn(self: *anyopaque, user: *User, _r: **FileOpenPicker) callconv(.winapi) HRESULT,
    };
};
pub const IFileOpenPickerWithOperationId = extern struct {
    vtable: *const VTable,
    pub fn PickSingleFileAsync(self: *@This(), pickerOperationId: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.PickSingleFileAsync(@ptrCast(self), pickerOperationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileOpenPickerWithOperationId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f57b569-2522-4ca5-aa73-a15509f1fcbf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PickSingleFileAsync: *const fn(self: *anyopaque, pickerOperationId: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IFileSavePicker = extern struct {
    vtable: *const VTable,
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SettingsIdentifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSettingsIdentifier(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SettingsIdentifier(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuggestedStartLocation(self: *@This()) core.HResult!PickerLocationId {
        var _r: PickerLocationId = undefined;
        const _c = self.vtable.get_SuggestedStartLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuggestedStartLocation(self: *@This(), value: PickerLocationId) core.HResult!void {
        const _c = self.vtable.put_SuggestedStartLocation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCommitButtonText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CommitButtonText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommitButtonText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CommitButtonText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFileTypeChoices(self: *@This()) core.HResult!*IMap(HSTRING,IVector(HSTRING)) {
        var _r: *IMap(HSTRING,IVector(HSTRING)) = undefined;
        const _c = self.vtable.get_FileTypeChoices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultFileExtension(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DefaultFileExtension(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultFileExtension(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DefaultFileExtension(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuggestedSaveFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_SuggestedSaveFile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuggestedSaveFile(self: *@This(), value: *StorageFile) core.HResult!void {
        const _c = self.vtable.put_SuggestedSaveFile(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuggestedFileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SuggestedFileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuggestedFileName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SuggestedFileName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PickSaveFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.PickSaveFileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileSavePicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3286ffcb-617f-4cc5-af6a-b3fdf29ad145";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SettingsIdentifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SettingsIdentifier: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SuggestedStartLocation: *const fn(self: *anyopaque, _r: *PickerLocationId) callconv(.winapi) HRESULT,
        put_SuggestedStartLocation: *const fn(self: *anyopaque, value: PickerLocationId) callconv(.winapi) HRESULT,
        get_CommitButtonText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CommitButtonText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FileTypeChoices: *const fn(self: *anyopaque, _r: **IMap(HSTRING,IVector(HSTRING))) callconv(.winapi) HRESULT,
        get_DefaultFileExtension: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DefaultFileExtension: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SuggestedSaveFile: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
        put_SuggestedSaveFile: *const fn(self: *anyopaque, value: *StorageFile) callconv(.winapi) HRESULT,
        get_SuggestedFileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SuggestedFileName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        PickSaveFileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IFileSavePicker2 = extern struct {
    vtable: *const VTable,
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_ContinuationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickSaveFileAndContinue(self: *@This()) core.HResult!void {
        const _c = self.vtable.PickSaveFileAndContinue(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileSavePicker2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ec313a2-d24b-449a-8197-e89104fd42cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContinuationData: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        PickSaveFileAndContinue: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IFileSavePicker3 = extern struct {
    vtable: *const VTable,
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnterpriseId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnterpriseId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EnterpriseId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileSavePicker3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "698aec69-ba3c-4e51-bd90-4abcbbf4cfaf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnterpriseId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_EnterpriseId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFileSavePicker4 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileSavePicker4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7d83a5a-ddfa-5de0-8b70-c842c21988ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IFileSavePickerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForUser(self: *@This(), user: *User) core.HResult!*FileSavePicker {
        var _r: *FileSavePicker = undefined;
        const _c = self.vtable.CreateForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFileSavePickerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28e3cf9e-961c-5e2c-aed7-e64737f4ce37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForUser: *const fn(self: *anyopaque, user: *User, _r: **FileSavePicker) callconv(.winapi) HRESULT,
    };
};
pub const IFolderPicker = extern struct {
    vtable: *const VTable,
    pub fn getViewMode(self: *@This()) core.HResult!PickerViewMode {
        var _r: PickerViewMode = undefined;
        const _c = self.vtable.get_ViewMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewMode(self: *@This(), value: PickerViewMode) core.HResult!void {
        const _c = self.vtable.put_ViewMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSettingsIdentifier(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SettingsIdentifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSettingsIdentifier(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SettingsIdentifier(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuggestedStartLocation(self: *@This()) core.HResult!PickerLocationId {
        var _r: PickerLocationId = undefined;
        const _c = self.vtable.get_SuggestedStartLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuggestedStartLocation(self: *@This(), value: PickerLocationId) core.HResult!void {
        const _c = self.vtable.put_SuggestedStartLocation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCommitButtonText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CommitButtonText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommitButtonText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CommitButtonText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFileTypeFilter(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_FileTypeFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickSingleFolderAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.PickSingleFolderAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFolderPicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "084f7799-f3fb-400a-99b1-7b4a772fd60d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewMode: *const fn(self: *anyopaque, _r: *PickerViewMode) callconv(.winapi) HRESULT,
        put_ViewMode: *const fn(self: *anyopaque, value: PickerViewMode) callconv(.winapi) HRESULT,
        get_SettingsIdentifier: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SettingsIdentifier: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SuggestedStartLocation: *const fn(self: *anyopaque, _r: *PickerLocationId) callconv(.winapi) HRESULT,
        put_SuggestedStartLocation: *const fn(self: *anyopaque, value: PickerLocationId) callconv(.winapi) HRESULT,
        get_CommitButtonText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CommitButtonText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FileTypeFilter: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        PickSingleFolderAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
    };
};
pub const IFolderPicker2 = extern struct {
    vtable: *const VTable,
    pub fn getContinuationData(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_ContinuationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickFolderAndContinue(self: *@This()) core.HResult!void {
        const _c = self.vtable.PickFolderAndContinue(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFolderPicker2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8eb3ba97-dc85-4616-be94-9660881f2f5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContinuationData: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        PickFolderAndContinue: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IFolderPicker3 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFolderPicker3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "673b1e29-d326-53c0-bd24-a25c714cee36";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IFolderPickerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForUser(self: *@This(), user: *User) core.HResult!*FolderPicker {
        var _r: *FolderPicker = undefined;
        const _c = self.vtable.CreateForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.Pickers.IFolderPickerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9be34740-7ca1-5942-a3c8-46f2551ecff3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForUser: *const fn(self: *anyopaque, user: *User, _r: **FolderPicker) callconv(.winapi) HRESULT,
    };
};
pub const PickerLocationId = enum(i32) {
    DocumentsLibrary = 0,
    ComputerFolder = 1,
    Desktop = 2,
    Downloads = 3,
    HomeGroup = 4,
    MusicLibrary = 5,
    PicturesLibrary = 6,
    VideosLibrary = 7,
    Objects3D = 8,
    Unspecified = 9,
};
pub const PickerViewMode = enum(i32) {
    List = 0,
    Thumbnail = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const User = @import("../System.zig").User;
const StorageFile = @import("../Storage.zig").StorageFile;
const HSTRING = @import("../root.zig").HSTRING;
pub const Provider = @import("./Pickers/Provider.zig");
