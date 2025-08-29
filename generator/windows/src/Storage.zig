pub const AppDataPaths = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCookies(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDataPaths = @ptrCast(self);
        return try this.getCookies();
    }
    pub fn getDesktop(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDataPaths = @ptrCast(self);
        return try this.getDesktop();
    }
    pub fn getDocuments(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDataPaths = @ptrCast(self);
        return try this.getDocuments();
    }
    pub fn getFavorites(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDataPaths = @ptrCast(self);
        return try this.getFavorites();
    }
    pub fn getHistory(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDataPaths = @ptrCast(self);
        return try this.getHistory();
    }
    pub fn getInternetCache(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDataPaths = @ptrCast(self);
        return try this.getInternetCache();
    }
    pub fn getLocalAppData(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDataPaths = @ptrCast(self);
        return try this.getLocalAppData();
    }
    pub fn getProgramData(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDataPaths = @ptrCast(self);
        return try this.getProgramData();
    }
    pub fn getRoamingAppData(self: *@This()) core.HResult!HSTRING {
        const this: *IAppDataPaths = @ptrCast(self);
        return try this.getRoamingAppData();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForUser(user: *User) core.HResult!*AppDataPaths {
        const factory = @This().IAppDataPathsStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub fn GetDefault() core.HResult!*AppDataPaths {
        const factory = @This().IAppDataPathsStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Storage.AppDataPaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppDataPaths.GUID;
    pub const IID: Guid = IAppDataPaths.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppDataPaths.SIGNATURE);
    var _IAppDataPathsStaticsCache: FactoryCache(IAppDataPathsStatics, RUNTIME_NAME) = .{};
};
pub const ApplicationData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVersion(self: *@This()) core.HResult!u32 {
        const this: *IApplicationData = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn SetVersionAsync(self: *@This(), desiredVersion: u32, handler: *ApplicationDataSetVersionHandler) core.HResult!*IAsyncAction {
        const this: *IApplicationData = @ptrCast(self);
        return try this.SetVersionAsync(desiredVersion, handler);
    }
    pub fn ClearAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IApplicationData = @ptrCast(self);
        return try this.ClearAsync();
    }
    pub fn ClearAsync(self: *@This(), locality: ApplicationDataLocality) core.HResult!*IAsyncAction {
        const this: *IApplicationData = @ptrCast(self);
        return try this.ClearAsync(locality);
    }
    pub fn getLocalSettings(self: *@This()) core.HResult!*ApplicationDataContainer {
        const this: *IApplicationData = @ptrCast(self);
        return try this.getLocalSettings();
    }
    pub fn getRoamingSettings(self: *@This()) core.HResult!*ApplicationDataContainer {
        const this: *IApplicationData = @ptrCast(self);
        return try this.getRoamingSettings();
    }
    pub fn getLocalFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IApplicationData = @ptrCast(self);
        return try this.getLocalFolder();
    }
    pub fn getRoamingFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IApplicationData = @ptrCast(self);
        return try this.getRoamingFolder();
    }
    pub fn getTemporaryFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IApplicationData = @ptrCast(self);
        return try this.getTemporaryFolder();
    }
    pub fn addDataChanged(self: *@This(), handler: *TypedEventHandler(ApplicationData,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IApplicationData = @ptrCast(self);
        return try this.addDataChanged(handler);
    }
    pub fn removeDataChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IApplicationData = @ptrCast(self);
        return try this.removeDataChanged(token);
    }
    pub fn SignalDataChanged(self: *@This()) core.HResult!void {
        const this: *IApplicationData = @ptrCast(self);
        return try this.SignalDataChanged();
    }
    pub fn getRoamingStorageQuota(self: *@This()) core.HResult!u64 {
        const this: *IApplicationData = @ptrCast(self);
        return try this.getRoamingStorageQuota();
    }
    pub fn getLocalCacheFolder(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IApplicationData2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationData2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalCacheFolder();
    }
    pub fn GetPublisherCacheFolder(self: *@This(), folderName: HSTRING) core.HResult!*StorageFolder {
        var this: ?*IApplicationData3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationData3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPublisherCacheFolder(folderName);
    }
    pub fn ClearPublisherCacheFolderAsync(self: *@This(), folderName: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IApplicationData3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationData3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ClearPublisherCacheFolderAsync(folderName);
    }
    pub fn getSharedLocalFolder(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IApplicationData3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationData3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSharedLocalFolder();
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
    pub fn GetForUserAsync(user: *User) core.HResult!*IAsyncOperation(ApplicationData) {
        const factory = @This().IApplicationDataStatics2Cache.get();
        return try factory.GetForUserAsync(user);
    }
    pub fn get_Current() core.HResult!*ApplicationData {
        const factory = @This().IApplicationDataStaticsCache.get();
        return try factory.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.Storage.ApplicationData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationData.GUID;
    pub const IID: Guid = IApplicationData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationData.SIGNATURE);
    var _IApplicationDataStatics2Cache: FactoryCache(IApplicationDataStatics2, RUNTIME_NAME) = .{};
    var _IApplicationDataStaticsCache: FactoryCache(IApplicationDataStatics, RUNTIME_NAME) = .{};
};
pub const ApplicationDataCompositeValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMapChanged(self: *@This(), vhnd: *MapChangedEventHandler(HSTRING,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IObservableMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapChanged(vhnd);
    }
    pub fn removeMapChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IObservableMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapChanged(token);
    }
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!*IInspectable {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn HasKey(self: *@This(), key: HSTRING) core.HResult!bool {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasKey(key);
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Insert(self: *@This(), key: HSTRING, value: *IInspectable) core.HResult!bool {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Insert(key, value);
    }
    pub fn Remove(self: *@This(), key: HSTRING) core.HResult!void {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Remove(key);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IInspectable)) {
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
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPropertySet.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.ApplicationDataCompositeValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertySet.GUID;
    pub const IID: Guid = IPropertySet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertySet.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ApplicationDataContainer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IApplicationDataContainer = @ptrCast(self);
        return try this.getName();
    }
    pub fn getLocality(self: *@This()) core.HResult!ApplicationDataLocality {
        const this: *IApplicationDataContainer = @ptrCast(self);
        return try this.getLocality();
    }
    pub fn getValues(self: *@This()) core.HResult!*IPropertySet {
        const this: *IApplicationDataContainer = @ptrCast(self);
        return try this.getValues();
    }
    pub fn getContainers(self: *@This()) core.HResult!*IMapView(HSTRING,ApplicationDataContainer) {
        const this: *IApplicationDataContainer = @ptrCast(self);
        return try this.getContainers();
    }
    pub fn CreateContainer(self: *@This(), name: HSTRING, disposition: ApplicationDataCreateDisposition) core.HResult!*ApplicationDataContainer {
        const this: *IApplicationDataContainer = @ptrCast(self);
        return try this.CreateContainer(name, disposition);
    }
    pub fn DeleteContainer(self: *@This(), name: HSTRING) core.HResult!void {
        const this: *IApplicationDataContainer = @ptrCast(self);
        return try this.DeleteContainer(name);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Storage.ApplicationDataContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationDataContainer.GUID;
    pub const IID: Guid = IApplicationDataContainer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationDataContainer.SIGNATURE);
};
pub const ApplicationDataContainerSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMapChanged(self: *@This(), vhnd: *MapChangedEventHandler(HSTRING,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IObservableMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapChanged(vhnd);
    }
    pub fn removeMapChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IObservableMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapChanged(token);
    }
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!*IInspectable {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn HasKey(self: *@This(), key: HSTRING) core.HResult!bool {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasKey(key);
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Insert(self: *@This(), key: HSTRING, value: *IInspectable) core.HResult!bool {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Insert(key, value);
    }
    pub fn Remove(self: *@This(), key: HSTRING) core.HResult!void {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Remove(key);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IInspectable)) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Storage.ApplicationDataContainerSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertySet.GUID;
    pub const IID: Guid = IPropertySet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertySet.SIGNATURE);
};
pub const ApplicationDataCreateDisposition = enum(i32) {
    Always = 0,
    Existing = 1,
};
pub const ApplicationDataLocality = enum(i32) {
    Local = 0,
    Roaming = 1,
    Temporary = 2,
    LocalCache = 3,
    SharedLocal = 4,
};
pub const ApplicationDataSetVersionHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, setVersionRequest: *SetVersionRequest) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, setVersionRequest: *SetVersionRequest) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, setVersionRequest: *SetVersionRequest) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, setVersionRequest);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Storage.ApplicationDataSetVersionHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a05791e6-cc9f-4687-acab-a364fd785463";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, setVersionRequest: *SetVersionRequest) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const CachedFileManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn DeferUpdates(file: *IStorageFile) core.HResult!void {
        const factory = @This().ICachedFileManagerStaticsCache.get();
        return try factory.DeferUpdates(file);
    }
    pub fn CompleteUpdatesAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(FileUpdateStatus) {
        const factory = @This().ICachedFileManagerStaticsCache.get();
        return try factory.CompleteUpdatesAsync(file);
    }
    pub const NAME: []const u8 = "Windows.Storage.CachedFileManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICachedFileManagerStaticsCache: FactoryCache(ICachedFileManagerStatics, RUNTIME_NAME) = .{};
};
pub const CreationCollisionOption = enum(i32) {
    GenerateUniqueName = 0,
    ReplaceExisting = 1,
    FailIfExists = 2,
    OpenIfExists = 3,
};
pub const DownloadsFolder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFileForUserAsync(user: *User, desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IDownloadsFolderStatics2Cache.get();
        return try factory.CreateFileForUserAsync(user, desiredName);
    }
    pub fn CreateFolderForUserAsync(user: *User, desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        const factory = @This().IDownloadsFolderStatics2Cache.get();
        return try factory.CreateFolderForUserAsync(user, desiredName);
    }
    pub fn CreateFileForUserAsyncWithOption(user: *User, desiredName: HSTRING, option: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IDownloadsFolderStatics2Cache.get();
        return try factory.CreateFileForUserAsyncWithOption(user, desiredName, option);
    }
    pub fn CreateFolderForUserAsyncWithOption(user: *User, desiredName: HSTRING, option: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFolder) {
        const factory = @This().IDownloadsFolderStatics2Cache.get();
        return try factory.CreateFolderForUserAsyncWithOption(user, desiredName, option);
    }
    pub fn CreateFileAsync(desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IDownloadsFolderStaticsCache.get();
        return try factory.CreateFileAsync(desiredName);
    }
    pub fn CreateFolderAsync(desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        const factory = @This().IDownloadsFolderStaticsCache.get();
        return try factory.CreateFolderAsync(desiredName);
    }
    pub fn CreateFileAsyncWithOption(desiredName: HSTRING, option: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IDownloadsFolderStaticsCache.get();
        return try factory.CreateFileAsyncWithOption(desiredName, option);
    }
    pub fn CreateFolderAsyncWithOption(desiredName: HSTRING, option: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFolder) {
        const factory = @This().IDownloadsFolderStaticsCache.get();
        return try factory.CreateFolderAsyncWithOption(desiredName, option);
    }
    pub const NAME: []const u8 = "Windows.Storage.DownloadsFolder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IDownloadsFolderStatics2Cache: FactoryCache(IDownloadsFolderStatics2, RUNTIME_NAME) = .{};
    var _IDownloadsFolderStaticsCache: FactoryCache(IDownloadsFolderStatics, RUNTIME_NAME) = .{};
};
pub const FileAccessMode = enum(i32) {
    Read = 0,
    ReadWrite = 1,
};
pub const FileAttributes = enum(i32) {
    Normal = 0,
    ReadOnly = 1,
    Directory = 16,
    Archive = 32,
    Temporary = 256,
    LocallyIncomplete = 512,
};
pub const FileIO = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ReadTextAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.ReadTextAsync(file);
    }
    pub fn ReadTextAsyncWithEncoding(file: *IStorageFile, encoding: UnicodeEncoding) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.ReadTextAsyncWithEncoding(file, encoding);
    }
    pub fn WriteTextAsync(file: *IStorageFile, contents: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.WriteTextAsync(file, contents);
    }
    pub fn WriteTextAsyncWithEncoding(file: *IStorageFile, contents: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.WriteTextAsyncWithEncoding(file, contents, encoding);
    }
    pub fn AppendTextAsync(file: *IStorageFile, contents: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.AppendTextAsync(file, contents);
    }
    pub fn AppendTextAsyncWithEncoding(file: *IStorageFile, contents: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.AppendTextAsyncWithEncoding(file, contents, encoding);
    }
    pub fn ReadLinesAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.ReadLinesAsync(file);
    }
    pub fn ReadLinesAsyncWithEncoding(file: *IStorageFile, encoding: UnicodeEncoding) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.ReadLinesAsyncWithEncoding(file, encoding);
    }
    pub fn WriteLinesAsync(file: *IStorageFile, lines: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.WriteLinesAsync(file, lines);
    }
    pub fn WriteLinesAsyncWithEncoding(file: *IStorageFile, lines: *IIterable(HSTRING), encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.WriteLinesAsyncWithEncoding(file, lines, encoding);
    }
    pub fn AppendLinesAsync(file: *IStorageFile, lines: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.AppendLinesAsync(file, lines);
    }
    pub fn AppendLinesAsyncWithEncoding(file: *IStorageFile, lines: *IIterable(HSTRING), encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.AppendLinesAsyncWithEncoding(file, lines, encoding);
    }
    pub fn ReadBufferAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(IBuffer) {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.ReadBufferAsync(file);
    }
    pub fn WriteBufferAsync(file: *IStorageFile, buffer: *IBuffer) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.WriteBufferAsync(file, buffer);
    }
    pub fn WriteBytesAsync(file: *IStorageFile, buffer: [*]u8) core.HResult!*IAsyncAction {
        const factory = @This().IFileIOStaticsCache.get();
        return try factory.WriteBytesAsync(file, buffer);
    }
    pub const NAME: []const u8 = "Windows.Storage.FileIO";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IFileIOStaticsCache: FactoryCache(IFileIOStatics, RUNTIME_NAME) = .{};
};
pub const IAppDataPaths = extern struct {
    vtable: *const VTable,
    pub fn getCookies(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Cookies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesktop(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Desktop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocuments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Documents(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFavorites(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Favorites(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHistory(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_History(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInternetCache(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InternetCache(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalAppData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalAppData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgramData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProgramData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoamingAppData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RoamingAppData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IAppDataPaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7301d60a-79a2-48c9-9ec0-3fda092f79e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Cookies: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Desktop: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Documents: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Favorites: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_History: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InternetCache: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LocalAppData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProgramData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RoamingAppData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppDataPathsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*AppDataPaths {
        var _r: *AppDataPaths = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefault(self: *@This()) core.HResult!*AppDataPaths {
        var _r: *AppDataPaths = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IAppDataPathsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8eb2afe-a9d9-4b14-b999-e3921379d903";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **AppDataPaths) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **AppDataPaths) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationData = extern struct {
    vtable: *const VTable,
    pub fn getVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetVersionAsync(self: *@This(), desiredVersion: u32, handler: *ApplicationDataSetVersionHandler) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetVersionAsync(@ptrCast(self), desiredVersion, handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearAsync(self: *@This(), locality: ApplicationDataLocality) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearAsync(@ptrCast(self), locality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalSettings(self: *@This()) core.HResult!*ApplicationDataContainer {
        var _r: *ApplicationDataContainer = undefined;
        const _c = self.vtable.get_LocalSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoamingSettings(self: *@This()) core.HResult!*ApplicationDataContainer {
        var _r: *ApplicationDataContainer = undefined;
        const _c = self.vtable.get_RoamingSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_LocalFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoamingFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_RoamingFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTemporaryFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_TemporaryFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDataChanged(self: *@This(), handler: *TypedEventHandler(ApplicationData,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DataChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDataChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DataChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SignalDataChanged(self: *@This()) core.HResult!void {
        const _c = self.vtable.SignalDataChanged(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoamingStorageQuota(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_RoamingStorageQuota(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IApplicationData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3da6fb7-b744-4b45-b0b8-223a0938d0dc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SetVersionAsync: *const fn(self: *anyopaque, desiredVersion: u32, handler: *ApplicationDataSetVersionHandler, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ClearAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ClearAsync: *const fn(self: *anyopaque, locality: ApplicationDataLocality, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_LocalSettings: *const fn(self: *anyopaque, _r: **ApplicationDataContainer) callconv(.winapi) HRESULT,
        get_RoamingSettings: *const fn(self: *anyopaque, _r: **ApplicationDataContainer) callconv(.winapi) HRESULT,
        get_LocalFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_RoamingFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_TemporaryFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        add_DataChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ApplicationData,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DataChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SignalDataChanged: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_RoamingStorageQuota: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationData2 = extern struct {
    vtable: *const VTable,
    pub fn getLocalCacheFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_LocalCacheFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IApplicationData2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e65cd69-0ba3-4e32-be29-b02de6607638";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalCacheFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationData3 = extern struct {
    vtable: *const VTable,
    pub fn GetPublisherCacheFolder(self: *@This(), folderName: HSTRING) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.GetPublisherCacheFolder(@ptrCast(self), folderName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearPublisherCacheFolderAsync(self: *@This(), folderName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearPublisherCacheFolderAsync(@ptrCast(self), folderName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSharedLocalFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_SharedLocalFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IApplicationData3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc222cf4-2772-4c1d-aa2c-c9f743ade8d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPublisherCacheFolder: *const fn(self: *anyopaque, folderName: HSTRING, _r: **StorageFolder) callconv(.winapi) HRESULT,
        ClearPublisherCacheFolderAsync: *const fn(self: *anyopaque, folderName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_SharedLocalFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationDataContainer = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocality(self: *@This()) core.HResult!ApplicationDataLocality {
        var _r: ApplicationDataLocality = undefined;
        const _c = self.vtable.get_Locality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValues(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Values(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContainers(self: *@This()) core.HResult!*IMapView(HSTRING,ApplicationDataContainer) {
        var _r: *IMapView(HSTRING,ApplicationDataContainer) = undefined;
        const _c = self.vtable.get_Containers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateContainer(self: *@This(), name: HSTRING, disposition: ApplicationDataCreateDisposition) core.HResult!*ApplicationDataContainer {
        var _r: *ApplicationDataContainer = undefined;
        const _c = self.vtable.CreateContainer(@ptrCast(self), name, disposition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteContainer(self: *@This(), name: HSTRING) core.HResult!void {
        const _c = self.vtable.DeleteContainer(@ptrCast(self), name);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.IApplicationDataContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5aefd1e-f467-40ba-8566-ab640a441e1d";
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
        get_Locality: *const fn(self: *anyopaque, _r: *ApplicationDataLocality) callconv(.winapi) HRESULT,
        get_Values: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        get_Containers: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,ApplicationDataContainer)) callconv(.winapi) HRESULT,
        CreateContainer: *const fn(self: *anyopaque, name: HSTRING, disposition: ApplicationDataCreateDisposition, _r: **ApplicationDataContainer) callconv(.winapi) HRESULT,
        DeleteContainer: *const fn(self: *anyopaque, name: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationDataStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*ApplicationData {
        var _r: *ApplicationData = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IApplicationDataStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5612147b-e843-45e3-94d8-06169e3c8e17";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **ApplicationData) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationDataStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForUserAsync(self: *@This(), user: *User) core.HResult!*IAsyncOperation(ApplicationData) {
        var _r: *IAsyncOperation(ApplicationData) = undefined;
        const _c = self.vtable.GetForUserAsync(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IApplicationDataStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd606211-cf49-40a4-a47c-c7f0dbba8107";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUserAsync: *const fn(self: *anyopaque, user: *User, _r: **IAsyncOperation(ApplicationData)) callconv(.winapi) HRESULT,
    };
};
pub const ICachedFileManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn DeferUpdates(self: *@This(), file: *IStorageFile) core.HResult!void {
        const _c = self.vtable.DeferUpdates(@ptrCast(self), file);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CompleteUpdatesAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(FileUpdateStatus) {
        var _r: *IAsyncOperation(FileUpdateStatus) = undefined;
        const _c = self.vtable.CompleteUpdatesAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ICachedFileManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ffc224a-e782-495d-b614-654c4f0b2370";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DeferUpdates: *const fn(self: *anyopaque, file: *IStorageFile) callconv(.winapi) HRESULT,
        CompleteUpdatesAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(FileUpdateStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IDownloadsFolderStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFileAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CreateFileAsync(@ptrCast(self), desiredName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.CreateFolderAsync(@ptrCast(self), desiredName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileAsyncWithOption(self: *@This(), desiredName: HSTRING, option: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CreateFileAsyncWithOption(@ptrCast(self), desiredName, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderAsyncWithOption(self: *@This(), desiredName: HSTRING, option: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.CreateFolderAsyncWithOption(@ptrCast(self), desiredName, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IDownloadsFolderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27862ed0-404e-47df-a1e2-e37308be7b37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFileAsync: *const fn(self: *anyopaque, desiredName: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CreateFolderAsync: *const fn(self: *anyopaque, desiredName: HSTRING, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
        CreateFileAsyncWithOption: *const fn(self: *anyopaque, desiredName: HSTRING, option: CreationCollisionOption, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CreateFolderAsyncWithOption: *const fn(self: *anyopaque, desiredName: HSTRING, option: CreationCollisionOption, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
    };
};
pub const IDownloadsFolderStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFileForUserAsync(self: *@This(), user: *User, desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CreateFileForUserAsync(@ptrCast(self), user, desiredName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderForUserAsync(self: *@This(), user: *User, desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.CreateFolderForUserAsync(@ptrCast(self), user, desiredName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileForUserAsyncWithDesiredNameWithOption(self: *@This(), user: *User, desiredName: HSTRING, option: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CreateFileForUserAsyncWithDesiredNameWithOption(@ptrCast(self), user, desiredName, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderForUserAsyncWithDesiredNameWithOption(self: *@This(), user: *User, desiredName: HSTRING, option: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.CreateFolderForUserAsyncWithDesiredNameWithOption(@ptrCast(self), user, desiredName, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IDownloadsFolderStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e93045bd-8ef8-4f8e-8d15-ac0e265f390d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFileForUserAsync: *const fn(self: *anyopaque, user: *User, desiredName: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CreateFolderForUserAsync: *const fn(self: *anyopaque, user: *User, desiredName: HSTRING, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
        CreateFileForUserAsyncWithDesiredNameWithOption: *const fn(self: *anyopaque, user: *User, desiredName: HSTRING, option: CreationCollisionOption, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CreateFolderForUserAsyncWithDesiredNameWithOption: *const fn(self: *anyopaque, user: *User, desiredName: HSTRING, option: CreationCollisionOption, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
    };
};
pub const IFileIOStatics = extern struct {
    vtable: *const VTable,
    pub fn ReadTextAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ReadTextAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadTextAsyncWithEncoding(self: *@This(), file: *IStorageFile, encoding: UnicodeEncoding) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ReadTextAsyncWithEncoding(@ptrCast(self), file, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteTextAsync(self: *@This(), file: *IStorageFile, contents: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteTextAsync(@ptrCast(self), file, contents, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteTextAsyncWithContentsWithEncoding(self: *@This(), file: *IStorageFile, contents: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteTextAsyncWithContentsWithEncoding(@ptrCast(self), file, contents, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendTextAsync(self: *@This(), file: *IStorageFile, contents: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AppendTextAsync(@ptrCast(self), file, contents, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendTextAsyncWithContentsWithEncoding(self: *@This(), file: *IStorageFile, contents: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AppendTextAsyncWithContentsWithEncoding(@ptrCast(self), file, contents, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadLinesAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        var _r: *IAsyncOperation(IVector(HSTRING)) = undefined;
        const _c = self.vtable.ReadLinesAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadLinesAsyncWithEncoding(self: *@This(), file: *IStorageFile, encoding: UnicodeEncoding) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        var _r: *IAsyncOperation(IVector(HSTRING)) = undefined;
        const _c = self.vtable.ReadLinesAsyncWithEncoding(@ptrCast(self), file, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteLinesAsync(self: *@This(), file: *IStorageFile, lines: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteLinesAsync(@ptrCast(self), file, lines, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteLinesAsyncWithLinesWithEncoding(self: *@This(), file: *IStorageFile, lines: *IIterable(HSTRING), encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteLinesAsyncWithLinesWithEncoding(@ptrCast(self), file, lines, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendLinesAsync(self: *@This(), file: *IStorageFile, lines: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AppendLinesAsync(@ptrCast(self), file, lines, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendLinesAsyncWithLinesWithEncoding(self: *@This(), file: *IStorageFile, lines: *IIterable(HSTRING), encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AppendLinesAsyncWithLinesWithEncoding(@ptrCast(self), file, lines, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadBufferAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.ReadBufferAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteBufferAsync(self: *@This(), file: *IStorageFile, buffer: *IBuffer) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteBufferAsync(@ptrCast(self), file, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteBytesAsync(self: *@This(), file: *IStorageFile, buffer: [*]u8) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteBytesAsync(@ptrCast(self), file, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IFileIOStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "887411eb-7f54-4732-a5f0-5e43e3b8c2f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadTextAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ReadTextAsyncWithEncoding: *const fn(self: *anyopaque, file: *IStorageFile, encoding: UnicodeEncoding, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        WriteTextAsync: *const fn(self: *anyopaque, file: *IStorageFile, contents: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        WriteTextAsyncWithContentsWithEncoding: *const fn(self: *anyopaque, file: *IStorageFile, contents: HSTRING, encoding: UnicodeEncoding, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AppendTextAsync: *const fn(self: *anyopaque, file: *IStorageFile, contents: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AppendTextAsyncWithContentsWithEncoding: *const fn(self: *anyopaque, file: *IStorageFile, contents: HSTRING, encoding: UnicodeEncoding, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReadLinesAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(IVector(HSTRING))) callconv(.winapi) HRESULT,
        ReadLinesAsyncWithEncoding: *const fn(self: *anyopaque, file: *IStorageFile, encoding: UnicodeEncoding, _r: **IAsyncOperation(IVector(HSTRING))) callconv(.winapi) HRESULT,
        WriteLinesAsync: *const fn(self: *anyopaque, file: *IStorageFile, lines: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        WriteLinesAsyncWithLinesWithEncoding: *const fn(self: *anyopaque, file: *IStorageFile, lines: *IIterable(HSTRING), encoding: UnicodeEncoding, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AppendLinesAsync: *const fn(self: *anyopaque, file: *IStorageFile, lines: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AppendLinesAsyncWithLinesWithEncoding: *const fn(self: *anyopaque, file: *IStorageFile, lines: *IIterable(HSTRING), encoding: UnicodeEncoding, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReadBufferAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        WriteBufferAsync: *const fn(self: *anyopaque, file: *IStorageFile, buffer: *IBuffer, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        WriteBytesAsync: *const fn(self: *anyopaque, file: *IStorageFile, buffer: [*]u8, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IKnownFoldersCameraRollStatics = extern struct {
    vtable: *const VTable,
    pub fn getCameraRoll(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_CameraRoll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IKnownFoldersCameraRollStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d115e66-27e8-492f-b8e5-2f90896cd4cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CameraRoll: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IKnownFoldersPlaylistsStatics = extern struct {
    vtable: *const VTable,
    pub fn getPlaylists(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_Playlists(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IKnownFoldersPlaylistsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dad5ecd6-306f-4d6a-b496-46ba8eb106ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Playlists: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IKnownFoldersSavedPicturesStatics = extern struct {
    vtable: *const VTable,
    pub fn getSavedPictures(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_SavedPictures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IKnownFoldersSavedPicturesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "055c93ea-253d-467c-b6ca-a97da1e9a18d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SavedPictures: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IKnownFoldersStatics = extern struct {
    vtable: *const VTable,
    pub fn getMusicLibrary(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_MusicLibrary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPicturesLibrary(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_PicturesLibrary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideosLibrary(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_VideosLibrary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentsLibrary(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_DocumentsLibrary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHomeGroup(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_HomeGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemovableDevices(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_RemovableDevices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaServerDevices(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_MediaServerDevices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IKnownFoldersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a2a7520-4802-452d-9ad9-4351ada7ec35";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MusicLibrary: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_PicturesLibrary: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_VideosLibrary: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_DocumentsLibrary: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_HomeGroup: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_RemovableDevices: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_MediaServerDevices: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IKnownFoldersStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getObjects3D(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_Objects3D(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppCaptures(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_AppCaptures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecordedCalls(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_RecordedCalls(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IKnownFoldersStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "194bd0cd-cf6e-4d07-9d53-e9163a2536e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Objects3D: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_AppCaptures: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        get_RecordedCalls: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IKnownFoldersStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetFolderForUserAsync(self: *@This(), user: *User, folderId: KnownFolderId) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetFolderForUserAsync(@ptrCast(self), user, folderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IKnownFoldersStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5194341-9742-4ed5-823d-fc1401148764";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFolderForUserAsync: *const fn(self: *anyopaque, user: *User, folderId: KnownFolderId, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
    };
};
pub const IKnownFoldersStatics4 = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This(), folderId: KnownFolderId) core.HResult!*IAsyncOperation(KnownFoldersAccessStatus) {
        var _r: *IAsyncOperation(KnownFoldersAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), folderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessForUserAsync(self: *@This(), user: *User, folderId: KnownFolderId) core.HResult!*IAsyncOperation(KnownFoldersAccessStatus) {
        var _r: *IAsyncOperation(KnownFoldersAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessForUserAsync(@ptrCast(self), user, folderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFolderAsync(self: *@This(), folderId: KnownFolderId) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetFolderAsync(@ptrCast(self), folderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IKnownFoldersStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1722e6bf-9ff9-4b21-bed5-90ecb13a192e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, folderId: KnownFolderId, _r: **IAsyncOperation(KnownFoldersAccessStatus)) callconv(.winapi) HRESULT,
        RequestAccessForUserAsync: *const fn(self: *anyopaque, user: *User, folderId: KnownFolderId, _r: **IAsyncOperation(KnownFoldersAccessStatus)) callconv(.winapi) HRESULT,
        GetFolderAsync: *const fn(self: *anyopaque, folderId: KnownFolderId, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
    };
};
pub const IPathIOStatics = extern struct {
    vtable: *const VTable,
    pub fn ReadTextAsync(self: *@This(), absolutePath: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ReadTextAsync(@ptrCast(self), absolutePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadTextAsyncWithEncoding(self: *@This(), absolutePath: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ReadTextAsyncWithEncoding(@ptrCast(self), absolutePath, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteTextAsync(self: *@This(), absolutePath: HSTRING, contents: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteTextAsync(@ptrCast(self), absolutePath, contents, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteTextAsyncWithContentsWithEncoding(self: *@This(), absolutePath: HSTRING, contents: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteTextAsyncWithContentsWithEncoding(@ptrCast(self), absolutePath, contents, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendTextAsync(self: *@This(), absolutePath: HSTRING, contents: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AppendTextAsync(@ptrCast(self), absolutePath, contents, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendTextAsyncWithContentsWithEncoding(self: *@This(), absolutePath: HSTRING, contents: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AppendTextAsyncWithContentsWithEncoding(@ptrCast(self), absolutePath, contents, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadLinesAsync(self: *@This(), absolutePath: HSTRING) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        var _r: *IAsyncOperation(IVector(HSTRING)) = undefined;
        const _c = self.vtable.ReadLinesAsync(@ptrCast(self), absolutePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadLinesAsyncWithEncoding(self: *@This(), absolutePath: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        var _r: *IAsyncOperation(IVector(HSTRING)) = undefined;
        const _c = self.vtable.ReadLinesAsyncWithEncoding(@ptrCast(self), absolutePath, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteLinesAsync(self: *@This(), absolutePath: HSTRING, lines: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteLinesAsync(@ptrCast(self), absolutePath, lines, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteLinesAsyncWithLinesWithEncoding(self: *@This(), absolutePath: HSTRING, lines: *IIterable(HSTRING), encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteLinesAsyncWithLinesWithEncoding(@ptrCast(self), absolutePath, lines, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendLinesAsync(self: *@This(), absolutePath: HSTRING, lines: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AppendLinesAsync(@ptrCast(self), absolutePath, lines, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendLinesAsyncWithLinesWithEncoding(self: *@This(), absolutePath: HSTRING, lines: *IIterable(HSTRING), encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AppendLinesAsyncWithLinesWithEncoding(@ptrCast(self), absolutePath, lines, encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadBufferAsync(self: *@This(), absolutePath: HSTRING) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.ReadBufferAsync(@ptrCast(self), absolutePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteBufferAsync(self: *@This(), absolutePath: HSTRING, buffer: *IBuffer) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteBufferAsync(@ptrCast(self), absolutePath, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WriteBytesAsync(self: *@This(), absolutePath: HSTRING, buffer: [*]u8) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteBytesAsync(@ptrCast(self), absolutePath, buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IPathIOStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f2f3758-8ec7-4381-922b-8f6c07d288f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadTextAsync: *const fn(self: *anyopaque, absolutePath: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ReadTextAsyncWithEncoding: *const fn(self: *anyopaque, absolutePath: HSTRING, encoding: UnicodeEncoding, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        WriteTextAsync: *const fn(self: *anyopaque, absolutePath: HSTRING, contents: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        WriteTextAsyncWithContentsWithEncoding: *const fn(self: *anyopaque, absolutePath: HSTRING, contents: HSTRING, encoding: UnicodeEncoding, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AppendTextAsync: *const fn(self: *anyopaque, absolutePath: HSTRING, contents: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AppendTextAsyncWithContentsWithEncoding: *const fn(self: *anyopaque, absolutePath: HSTRING, contents: HSTRING, encoding: UnicodeEncoding, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReadLinesAsync: *const fn(self: *anyopaque, absolutePath: HSTRING, _r: **IAsyncOperation(IVector(HSTRING))) callconv(.winapi) HRESULT,
        ReadLinesAsyncWithEncoding: *const fn(self: *anyopaque, absolutePath: HSTRING, encoding: UnicodeEncoding, _r: **IAsyncOperation(IVector(HSTRING))) callconv(.winapi) HRESULT,
        WriteLinesAsync: *const fn(self: *anyopaque, absolutePath: HSTRING, lines: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        WriteLinesAsyncWithLinesWithEncoding: *const fn(self: *anyopaque, absolutePath: HSTRING, lines: *IIterable(HSTRING), encoding: UnicodeEncoding, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AppendLinesAsync: *const fn(self: *anyopaque, absolutePath: HSTRING, lines: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AppendLinesAsyncWithLinesWithEncoding: *const fn(self: *anyopaque, absolutePath: HSTRING, lines: *IIterable(HSTRING), encoding: UnicodeEncoding, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReadBufferAsync: *const fn(self: *anyopaque, absolutePath: HSTRING, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        WriteBufferAsync: *const fn(self: *anyopaque, absolutePath: HSTRING, buffer: *IBuffer, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        WriteBytesAsync: *const fn(self: *anyopaque, absolutePath: HSTRING, buffer: [*]u8, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ISetVersionDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISetVersionDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "033508a2-781a-437a-b078-3f32badcfe47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ISetVersionRequest = extern struct {
    vtable: *const VTable,
    pub fn getCurrentVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CurrentVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DesiredVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*SetVersionDeferral {
        var _r: *SetVersionDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISetVersionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9c76b9b-1056-4e69-8330-162619956f9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentVersion: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DesiredVersion: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **SetVersionDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFile = extern struct {
    vtable: *const VTable,
    pub fn getFileType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenAsync(self: *@This(), accessMode: FileAccessMode) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.OpenAsync(@ptrCast(self), accessMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenTransactedWriteAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var _r: *IAsyncOperation(StorageStreamTransaction) = undefined;
        const _c = self.vtable.OpenTransactedWriteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyAsync(self: *@This(), destinationFolder: *IStorageFolder) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CopyAsync(@ptrCast(self), destinationFolder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyAsyncWithDesiredNewName(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CopyAsyncWithDesiredNewName(@ptrCast(self), destinationFolder, desiredNewName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyAsyncWithOption(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CopyAsyncWithOption(@ptrCast(self), destinationFolder, desiredNewName, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyAndReplaceAsync(self: *@This(), fileToReplace: *IStorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CopyAndReplaceAsync(@ptrCast(self), fileToReplace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveAsync(self: *@This(), destinationFolder: *IStorageFolder) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MoveAsync(@ptrCast(self), destinationFolder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveAsyncWithDesiredNewName(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MoveAsyncWithDesiredNewName(@ptrCast(self), destinationFolder, desiredNewName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveAsyncWithOption(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MoveAsyncWithOption(@ptrCast(self), destinationFolder, desiredNewName, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveAndReplaceAsync(self: *@This(), fileToReplace: *IStorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MoveAndReplaceAsync(@ptrCast(self), fileToReplace, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa3f6186-4214-428c-a64c-14c9ac7315ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FileType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        OpenAsync: *const fn(self: *anyopaque, accessMode: FileAccessMode, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        OpenTransactedWriteAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageStreamTransaction)) callconv(.winapi) HRESULT,
        CopyAsync: *const fn(self: *anyopaque, destinationFolder: *IStorageFolder, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CopyAsyncWithDesiredNewName: *const fn(self: *anyopaque, destinationFolder: *IStorageFolder, desiredNewName: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CopyAsyncWithOption: *const fn(self: *anyopaque, destinationFolder: *IStorageFolder, desiredNewName: HSTRING, option: NameCollisionOption, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CopyAndReplaceAsync: *const fn(self: *anyopaque, fileToReplace: *IStorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MoveAsync: *const fn(self: *anyopaque, destinationFolder: *IStorageFolder, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MoveAsyncWithDesiredNewName: *const fn(self: *anyopaque, destinationFolder: *IStorageFolder, desiredNewName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MoveAsyncWithOption: *const fn(self: *anyopaque, destinationFolder: *IStorageFolder, desiredNewName: HSTRING, option: NameCollisionOption, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MoveAndReplaceAsync: *const fn(self: *anyopaque, fileToReplace: *IStorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFile2 = extern struct {
    vtable: *const VTable,
    pub fn OpenAsync(self: *@This(), accessMode: FileAccessMode, options: StorageOpenOptions) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.OpenAsync(@ptrCast(self), accessMode, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenTransactedWriteAsync(self: *@This(), options: StorageOpenOptions) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var _r: *IAsyncOperation(StorageStreamTransaction) = undefined;
        const _c = self.vtable.OpenTransactedWriteAsync(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFile2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "954e4bcf-0a77-42fb-b777-c2ed58a52e44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenAsync: *const fn(self: *anyopaque, accessMode: FileAccessMode, options: StorageOpenOptions, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        OpenTransactedWriteAsync: *const fn(self: *anyopaque, options: StorageOpenOptions, _r: **IAsyncOperation(StorageStreamTransaction)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFilePropertiesWithAvailability = extern struct {
    vtable: *const VTable,
    pub fn getIsAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFilePropertiesWithAvailability";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "afcbbe9b-582b-4133-9648-e44ca46ee491";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFileStatics = extern struct {
    vtable: *const VTable,
    pub fn GetFileFromPathAsync(self: *@This(), path: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.GetFileFromPathAsync(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFileFromApplicationUriAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.GetFileFromApplicationUriAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStreamedFileAsync(self: *@This(), displayNameWithExtension: HSTRING, dataRequested: *StreamedFileDataRequestedHandler, thumbnail: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CreateStreamedFileAsync(@ptrCast(self), displayNameWithExtension, dataRequested, thumbnail, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReplaceWithStreamedFileAsync(self: *@This(), fileToReplace: *IStorageFile, dataRequested: *StreamedFileDataRequestedHandler, thumbnail: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.ReplaceWithStreamedFileAsync(@ptrCast(self), fileToReplace, dataRequested, thumbnail, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStreamedFileFromUriAsync(self: *@This(), displayNameWithExtension: HSTRING, uri: *Uri, thumbnail: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CreateStreamedFileFromUriAsync(@ptrCast(self), displayNameWithExtension, uri, thumbnail, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReplaceWithStreamedFileFromUriAsync(self: *@This(), fileToReplace: *IStorageFile, uri: *Uri, thumbnail: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.ReplaceWithStreamedFileFromUriAsync(@ptrCast(self), fileToReplace, uri, thumbnail, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFileStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5984c710-daf2-43c8-8bb4-a4d3eacfd03f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFileFromPathAsync: *const fn(self: *anyopaque, path: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        GetFileFromApplicationUriAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CreateStreamedFileAsync: *const fn(self: *anyopaque, displayNameWithExtension: HSTRING, dataRequested: *StreamedFileDataRequestedHandler, thumbnail: *IRandomAccessStreamReference, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        ReplaceWithStreamedFileAsync: *const fn(self: *anyopaque, fileToReplace: *IStorageFile, dataRequested: *StreamedFileDataRequestedHandler, thumbnail: *IRandomAccessStreamReference, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CreateStreamedFileFromUriAsync: *const fn(self: *anyopaque, displayNameWithExtension: HSTRING, uri: *Uri, thumbnail: *IRandomAccessStreamReference, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        ReplaceWithStreamedFileFromUriAsync: *const fn(self: *anyopaque, fileToReplace: *IStorageFile, uri: *Uri, thumbnail: *IRandomAccessStreamReference, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFileStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetFileFromPathForUserAsync(self: *@This(), user: *User, path: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.GetFileFromPathForUserAsync(@ptrCast(self), user, path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFileStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c76a781-212e-4af9-8f04-740cae108974";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFileFromPathForUserAsync: *const fn(self: *anyopaque, user: *User, path: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFolder = extern struct {
    vtable: *const VTable,
    pub fn CreateFileAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CreateFileAsync(@ptrCast(self), desiredName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFileAsyncWithOptions(self: *@This(), desiredName: HSTRING, options: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CreateFileAsyncWithOptions(@ptrCast(self), desiredName, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.CreateFolderAsync(@ptrCast(self), desiredName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderAsyncWithOptions(self: *@This(), desiredName: HSTRING, options: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.CreateFolderAsyncWithOptions(@ptrCast(self), desiredName, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFileAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.GetFileAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFolderAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetFolderAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(IStorageItem) {
        var _r: *IAsyncOperation(IStorageItem) = undefined;
        const _c = self.vtable.GetItemAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var _r: *IAsyncOperation(IVectorView(StorageFile)) = undefined;
        const _c = self.vtable.GetFilesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFoldersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var _r: *IAsyncOperation(IVectorView(StorageFolder)) = undefined;
        const _c = self.vtable.GetFoldersAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        var _r: *IAsyncOperation(IVectorView(IStorageItem)) = undefined;
        const _c = self.vtable.GetItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFolder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72d1cb78-b3ef-4f75-a80b-6fd9dae2944b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFileAsync: *const fn(self: *anyopaque, desiredName: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CreateFileAsyncWithOptions: *const fn(self: *anyopaque, desiredName: HSTRING, options: CreationCollisionOption, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        CreateFolderAsync: *const fn(self: *anyopaque, desiredName: HSTRING, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
        CreateFolderAsyncWithOptions: *const fn(self: *anyopaque, desiredName: HSTRING, options: CreationCollisionOption, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
        GetFileAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        GetFolderAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
        GetItemAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(IStorageItem)) callconv(.winapi) HRESULT,
        GetFilesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StorageFile))) callconv(.winapi) HRESULT,
        GetFoldersAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StorageFolder))) callconv(.winapi) HRESULT,
        GetItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(IStorageItem))) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFolder2 = extern struct {
    vtable: *const VTable,
    pub fn TryGetItemAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(IStorageItem) {
        var _r: *IAsyncOperation(IStorageItem) = undefined;
        const _c = self.vtable.TryGetItemAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFolder2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e827e8b9-08d9-4a8e-a0ac-fe5ed3cbbbd3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetItemAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(IStorageItem)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFolder3 = extern struct {
    vtable: *const VTable,
    pub fn TryGetChangeTracker(self: *@This()) core.HResult!*StorageLibraryChangeTracker {
        var _r: *StorageLibraryChangeTracker = undefined;
        const _c = self.vtable.TryGetChangeTracker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFolder3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f617899-bde1-4124-aeb3-b06ad96f98d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetChangeTracker: *const fn(self: *anyopaque, _r: **StorageLibraryChangeTracker) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFolderStatics = extern struct {
    vtable: *const VTable,
    pub fn GetFolderFromPathAsync(self: *@This(), path: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetFolderFromPathAsync(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFolderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08f327ff-85d5-48b9-aee9-28511e339f9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFolderFromPathAsync: *const fn(self: *anyopaque, path: HSTRING, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageFolderStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetFolderFromPathForUserAsync(self: *@This(), user: *User, path: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetFolderFromPathForUserAsync(@ptrCast(self), user, path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageFolderStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4656dc3-71d2-467d-8b29-371f0f62bf6f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFolderFromPathForUserAsync: *const fn(self: *anyopaque, user: *User, path: HSTRING, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItem = extern struct {
    vtable: *const VTable,
    pub fn RenameAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RenameAsync(@ptrCast(self), desiredName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RenameAsyncWithOption(self: *@This(), desiredName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RenameAsyncWithOption(@ptrCast(self), desiredName, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This(), option: StorageDeleteOption) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBasicPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(BasicProperties) {
        var _r: *IAsyncOperation(BasicProperties) = undefined;
        const _c = self.vtable.GetBasicPropertiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributes(self: *@This()) core.HResult!FileAttributes {
        var _r: FileAttributes = undefined;
        const _c = self.vtable.get_Attributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateCreated(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DateCreated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsOfType(self: *@This(), ty: StorageItemTypes) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsOfType(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4207a996-ca2f-42f7-bde8-8b10457a7f30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RenameAsync: *const fn(self: *anyopaque, desiredName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RenameAsyncWithOption: *const fn(self: *anyopaque, desiredName: HSTRING, option: NameCollisionOption, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, option: StorageDeleteOption, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetBasicPropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(BasicProperties)) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Attributes: *const fn(self: *anyopaque, _r: *FileAttributes) callconv(.winapi) HRESULT,
        get_DateCreated: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        IsOfType: *const fn(self: *anyopaque, ty: StorageItemTypes, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItem2 = extern struct {
    vtable: *const VTable,
    pub fn GetParentAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetParentAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEqual(self: *@This(), item: *IStorageItem) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEqual(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageItem2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53f926d2-083c-4283-b45b-81c007237e44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetParentAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
        IsEqual: *const fn(self: *anyopaque, item: *IStorageItem, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemProperties = extern struct {
    vtable: *const VTable,
    pub fn GetThumbnailAsync(self: *@This(), mode: ThumbnailMode) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var _r: *IAsyncOperation(StorageItemThumbnail) = undefined;
        const _c = self.vtable.GetThumbnailAsync(@ptrCast(self), mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetThumbnailAsyncWithRequestedSize(self: *@This(), mode: ThumbnailMode, requestedSize: u32) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var _r: *IAsyncOperation(StorageItemThumbnail) = undefined;
        const _c = self.vtable.GetThumbnailAsyncWithRequestedSize(@ptrCast(self), mode, requestedSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetThumbnailAsyncWithOptions(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var _r: *IAsyncOperation(StorageItemThumbnail) = undefined;
        const _c = self.vtable.GetThumbnailAsyncWithOptions(@ptrCast(self), mode, requestedSize, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFolderRelativeId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FolderRelativeId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*StorageItemContentProperties {
        var _r: *StorageItemContentProperties = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageItemProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86664478-8029-46fe-a789-1c2f3e2ffb5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetThumbnailAsync: *const fn(self: *anyopaque, mode: ThumbnailMode, _r: **IAsyncOperation(StorageItemThumbnail)) callconv(.winapi) HRESULT,
        GetThumbnailAsyncWithRequestedSize: *const fn(self: *anyopaque, mode: ThumbnailMode, requestedSize: u32, _r: **IAsyncOperation(StorageItemThumbnail)) callconv(.winapi) HRESULT,
        GetThumbnailAsyncWithOptions: *const fn(self: *anyopaque, mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions, _r: **IAsyncOperation(StorageItemThumbnail)) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FolderRelativeId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **StorageItemContentProperties) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemProperties2 = extern struct {
    vtable: *const VTable,
    pub fn GetScaledImageAsThumbnailAsync(self: *@This(), mode: ThumbnailMode) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var _r: *IAsyncOperation(StorageItemThumbnail) = undefined;
        const _c = self.vtable.GetScaledImageAsThumbnailAsync(@ptrCast(self), mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetScaledImageAsThumbnailAsyncWithRequestedSize(self: *@This(), mode: ThumbnailMode, requestedSize: u32) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var _r: *IAsyncOperation(StorageItemThumbnail) = undefined;
        const _c = self.vtable.GetScaledImageAsThumbnailAsyncWithRequestedSize(@ptrCast(self), mode, requestedSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetScaledImageAsThumbnailAsyncWithOptions(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var _r: *IAsyncOperation(StorageItemThumbnail) = undefined;
        const _c = self.vtable.GetScaledImageAsThumbnailAsyncWithOptions(@ptrCast(self), mode, requestedSize, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageItemProperties2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e86a951-04b9-4bd2-929d-fef3f71621d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetScaledImageAsThumbnailAsync: *const fn(self: *anyopaque, mode: ThumbnailMode, _r: **IAsyncOperation(StorageItemThumbnail)) callconv(.winapi) HRESULT,
        GetScaledImageAsThumbnailAsyncWithRequestedSize: *const fn(self: *anyopaque, mode: ThumbnailMode, requestedSize: u32, _r: **IAsyncOperation(StorageItemThumbnail)) callconv(.winapi) HRESULT,
        GetScaledImageAsThumbnailAsyncWithOptions: *const fn(self: *anyopaque, mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions, _r: **IAsyncOperation(StorageItemThumbnail)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemPropertiesWithProvider = extern struct {
    vtable: *const VTable,
    pub fn getProvider(self: *@This()) core.HResult!*StorageProvider {
        var _r: *StorageProvider = undefined;
        const _c = self.vtable.get_Provider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageItemPropertiesWithProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "861bf39b-6368-4dee-b40e-74684a5ce714";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Provider: *const fn(self: *anyopaque, _r: **StorageProvider) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibrary = extern struct {
    vtable: *const VTable,
    pub fn RequestAddFolderAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.RequestAddFolderAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestRemoveFolderAsync(self: *@This(), folder: *StorageFolder) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestRemoveFolderAsync(@ptrCast(self), folder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFolders(self: *@This()) core.HResult!*IObservableVector(StorageFolder) {
        var _r: *IObservableVector(StorageFolder) = undefined;
        const _c = self.vtable.get_Folders(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSaveFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_SaveFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDefinitionChanged(self: *@This(), handler: *TypedEventHandler(StorageLibrary,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DefinitionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDefinitionChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DefinitionChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibrary";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1edd7103-0e5e-4d6c-b5e8-9318983d6a03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAddFolderAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
        RequestRemoveFolderAsync: *const fn(self: *anyopaque, folder: *StorageFolder, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_Folders: *const fn(self: *anyopaque, _r: **IObservableVector(StorageFolder)) callconv(.winapi) HRESULT,
        get_SaveFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        add_DefinitionChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(StorageLibrary,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DefinitionChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibrary2 = extern struct {
    vtable: *const VTable,
    pub fn getChangeTracker(self: *@This()) core.HResult!*StorageLibraryChangeTracker {
        var _r: *StorageLibraryChangeTracker = undefined;
        const _c = self.vtable.get_ChangeTracker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibrary2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b0ce348-fcb3-4031-afb0-a68d7bd44534";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeTracker: *const fn(self: *anyopaque, _r: **StorageLibraryChangeTracker) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibrary3 = extern struct {
    vtable: *const VTable,
    pub fn AreFolderSuggestionsAvailableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.AreFolderSuggestionsAvailableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibrary3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a281291-2154-4201-8113-d2c05ce1ad23";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AreFolderSuggestionsAvailableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryChange = extern struct {
    vtable: *const VTable,
    pub fn getChangeType(self: *@This()) core.HResult!StorageLibraryChangeType {
        var _r: StorageLibraryChangeType = undefined;
        const _c = self.vtable.get_ChangeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreviousPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PreviousPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsOfType(self: *@This(), ty: StorageItemTypes) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsOfType(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStorageItemAsync(self: *@This()) core.HResult!*IAsyncOperation(IStorageItem) {
        var _r: *IAsyncOperation(IStorageItem) = undefined;
        const _c = self.vtable.GetStorageItemAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00980b23-2be2-4909-aa48-159f5203a51e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeType: *const fn(self: *anyopaque, _r: *StorageLibraryChangeType) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PreviousPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        IsOfType: *const fn(self: *anyopaque, ty: StorageItemTypes, _r: *bool) callconv(.winapi) HRESULT,
        GetStorageItemAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IStorageItem)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryChangeReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageLibraryChange)) {
        var _r: *IAsyncOperation(IVectorView(StorageLibraryChange)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcceptChangesAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AcceptChangesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f205bc83-fca2-41f9-8954-ee2e991eb96f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StorageLibraryChange))) callconv(.winapi) HRESULT,
        AcceptChangesAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryChangeReader2 = extern struct {
    vtable: *const VTable,
    pub fn GetLastChangeId(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.GetLastChangeId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryChangeReader2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "abf4868b-fbcc-4a4f-999e-e7ab7c646dbe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetLastChangeId: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryChangeTracker = extern struct {
    vtable: *const VTable,
    pub fn GetChangeReader(self: *@This()) core.HResult!*StorageLibraryChangeReader {
        var _r: *StorageLibraryChangeReader = undefined;
        const _c = self.vtable.GetChangeReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Enable(self: *@This()) core.HResult!void {
        const _c = self.vtable.Enable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e157316-6073-44f6-9681-7492d1286c90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetChangeReader: *const fn(self: *anyopaque, _r: **StorageLibraryChangeReader) callconv(.winapi) HRESULT,
        Enable: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryChangeTracker2 = extern struct {
    vtable: *const VTable,
    pub fn Enable(self: *@This(), options: *StorageLibraryChangeTrackerOptions) core.HResult!void {
        const _c = self.vtable.Enable(@ptrCast(self), options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Disable(self: *@This()) core.HResult!void {
        const _c = self.vtable.Disable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryChangeTracker2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd051c3b-0f9f-42f9-8fb3-158d82e13821";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Enable: *const fn(self: *anyopaque, options: *StorageLibraryChangeTrackerOptions) callconv(.winapi) HRESULT,
        Disable: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryChangeTrackerOptions = extern struct {
    vtable: *const VTable,
    pub fn getTrackChangeDetails(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TrackChangeDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrackChangeDetails(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_TrackChangeDetails(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryChangeTrackerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb52bcd4-1a6d-59c0-ad2a-823a20532483";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TrackChangeDetails: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TrackChangeDetails: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryLastChangeId = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryLastChangeId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5281826a-bbe1-53bc-82ca-81cc7f039329";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryLastChangeIdStatics = extern struct {
    vtable: *const VTable,
    pub fn getUnknown(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Unknown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryLastChangeIdStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81a49128-2ca3-5309-b0d1-cf0788e40762";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Unknown: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryStatics = extern struct {
    vtable: *const VTable,
    pub fn GetLibraryAsync(self: *@This(), libraryId: KnownLibraryId) core.HResult!*IAsyncOperation(StorageLibrary) {
        var _r: *IAsyncOperation(StorageLibrary) = undefined;
        const _c = self.vtable.GetLibraryAsync(@ptrCast(self), libraryId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4208a6db-684a-49c6-9e59-90121ee050d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetLibraryAsync: *const fn(self: *anyopaque, libraryId: KnownLibraryId, _r: **IAsyncOperation(StorageLibrary)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageLibraryStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetLibraryForUserAsync(self: *@This(), user: *User, libraryId: KnownLibraryId) core.HResult!*IAsyncOperation(StorageLibrary) {
        var _r: *IAsyncOperation(StorageLibrary) = undefined;
        const _c = self.vtable.GetLibraryForUserAsync(@ptrCast(self), user, libraryId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageLibraryStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ffb08ddc-fa75-4695-b9d1-7f81f97832e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetLibraryForUserAsync: *const fn(self: *anyopaque, user: *User, libraryId: KnownLibraryId, _r: **IAsyncOperation(StorageLibrary)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageProvider = extern struct {
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
    pub const NAME: []const u8 = "Windows.Storage.IStorageProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e705eed4-d478-47d6-ba46-1a8ebe114a20";
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
    };
};
pub const IStorageProvider2 = extern struct {
    vtable: *const VTable,
    pub fn IsPropertySupportedForPartialFileAsync(self: *@This(), propertyCanonicalName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsPropertySupportedForPartialFileAsync(@ptrCast(self), propertyCanonicalName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageProvider2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "010d1917-3404-414b-9fd7-cd44472eaa39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsPropertySupportedForPartialFileAsync: *const fn(self: *anyopaque, propertyCanonicalName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IStorageStreamTransaction = extern struct {
    vtable: *const VTable,
    pub fn getStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_Stream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CommitAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CommitAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStorageStreamTransaction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f67cf363-a53d-4d94-ae2c-67232d93acdd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Stream: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        CommitAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IStreamedFileDataRequest = extern struct {
    vtable: *const VTable,
    pub fn FailAndClose(self: *@This(), failureMode: StreamedFileFailureMode) core.HResult!void {
        const _c = self.vtable.FailAndClose(@ptrCast(self), failureMode);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.IStreamedFileDataRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1673fcce-dabd-4d50-beee-180b8a8191b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FailAndClose: *const fn(self: *anyopaque, failureMode: StreamedFileFailureMode) callconv(.winapi) HRESULT,
    };
};
pub const ISystemAudioProperties = extern struct {
    vtable: *const VTable,
    pub fn getEncodingBitrate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EncodingBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemAudioProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f8f38b7-308c-47e1-924d-8645348e5db7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EncodingBitrate: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISystemDataPaths = extern struct {
    vtable: *const VTable,
    pub fn getFonts(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Fonts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgramData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProgramData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublic(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Public(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicDesktop(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PublicDesktop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicDocuments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PublicDocuments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicDownloads(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PublicDownloads(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicMusic(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PublicMusic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicPictures(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PublicPictures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicVideos(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PublicVideos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystem(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_System(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemHost(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemHost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemX86(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemX86(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemX64(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemX64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemArm(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemArm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserProfiles(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWindows(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Windows(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemDataPaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e32abf70-d8fa-45ec-a942-d2e26fb60ba5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Fonts: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProgramData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Public: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PublicDesktop: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PublicDocuments: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PublicDownloads: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PublicMusic: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PublicPictures: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PublicVideos: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_System: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemHost: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemX86: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemX64: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemArm: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UserProfiles: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Windows: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISystemDataPathsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*SystemDataPaths {
        var _r: *SystemDataPaths = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemDataPathsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0f96fd0-9920-4bca-b379-f96fdf7caad8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **SystemDataPaths) callconv(.winapi) HRESULT,
    };
};
pub const ISystemGPSProperties = extern struct {
    vtable: *const VTable,
    pub fn getLatitudeDecimal(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LatitudeDecimal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLongitudeDecimal(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LongitudeDecimal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemGPSProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0f46eb4-c174-481a-bc25-921986f6a6f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LatitudeDecimal: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LongitudeDecimal: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISystemImageProperties = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalSize(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HorizontalSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalSize(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VerticalSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemImageProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "011b2e30-8b39-4308-bea1-e8aa61e47826";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontalSize: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VerticalSize: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMediaProperties = extern struct {
    vtable: *const VTable,
    pub fn getDuration(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProducer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Producer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Publisher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SubTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWriter(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Writer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYear(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Year(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemMediaProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a42b3316-8415-40dc-8c44-98361d235430";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Producer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Publisher: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SubTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Writer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Year: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMusicProperties = extern struct {
    vtable: *const VTable,
    pub fn getAlbumArtist(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlbumArtist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlbumTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlbumTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArtist(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Artist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComposer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Composer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConductor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Conductor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayArtist(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayArtist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGenre(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Genre(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrackNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TrackNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemMusicProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b47988d5-67af-4bc3-8d39-5b89022026a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlbumArtist: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AlbumTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Artist: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Composer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Conductor: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayArtist: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Genre: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TrackNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISystemPhotoProperties = extern struct {
    vtable: *const VTable,
    pub fn getCameraManufacturer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CameraManufacturer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraModel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CameraModel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateTaken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DateTaken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeopleNames(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PeopleNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemPhotoProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4734fc3d-ab21-4424-b735-f4353a56c8fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CameraManufacturer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CameraModel: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DateTaken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PeopleNames: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISystemProperties = extern struct {
    vtable: *const VTable,
    pub fn getAuthor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Author(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemNameDisplay(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ItemNameDisplay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeywords(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Keywords(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRating(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudio(self: *@This()) core.HResult!*SystemAudioProperties {
        var _r: *SystemAudioProperties = undefined;
        const _c = self.vtable.get_Audio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGPS(self: *@This()) core.HResult!*SystemGPSProperties {
        var _r: *SystemGPSProperties = undefined;
        const _c = self.vtable.get_GPS(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMedia(self: *@This()) core.HResult!*SystemMediaProperties {
        var _r: *SystemMediaProperties = undefined;
        const _c = self.vtable.get_Media(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMusic(self: *@This()) core.HResult!*SystemMusicProperties {
        var _r: *SystemMusicProperties = undefined;
        const _c = self.vtable.get_Music(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoto(self: *@This()) core.HResult!*SystemPhotoProperties {
        var _r: *SystemPhotoProperties = undefined;
        const _c = self.vtable.get_Photo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideo(self: *@This()) core.HResult!*SystemVideoProperties {
        var _r: *SystemVideoProperties = undefined;
        const _c = self.vtable.get_Video(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImage(self: *@This()) core.HResult!*SystemImageProperties {
        var _r: *SystemImageProperties = undefined;
        const _c = self.vtable.get_Image(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "917a71c1-85f3-4dd1-b001-a50bfd21c8d2";
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
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ItemNameDisplay: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Keywords: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Rating: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Audio: *const fn(self: *anyopaque, _r: **SystemAudioProperties) callconv(.winapi) HRESULT,
        get_GPS: *const fn(self: *anyopaque, _r: **SystemGPSProperties) callconv(.winapi) HRESULT,
        get_Media: *const fn(self: *anyopaque, _r: **SystemMediaProperties) callconv(.winapi) HRESULT,
        get_Music: *const fn(self: *anyopaque, _r: **SystemMusicProperties) callconv(.winapi) HRESULT,
        get_Photo: *const fn(self: *anyopaque, _r: **SystemPhotoProperties) callconv(.winapi) HRESULT,
        get_Video: *const fn(self: *anyopaque, _r: **SystemVideoProperties) callconv(.winapi) HRESULT,
        get_Image: *const fn(self: *anyopaque, _r: **SystemImageProperties) callconv(.winapi) HRESULT,
    };
};
pub const ISystemVideoProperties = extern struct {
    vtable: *const VTable,
    pub fn getDirector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Director(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameHeight(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FrameHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameWidth(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FrameWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalBitrate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TotalBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.ISystemVideoProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2040f715-67f8-4322-9b80-4fa9fefb83e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Director: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FrameHeight: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FrameWidth: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TotalBitrate: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataPaths = extern struct {
    vtable: *const VTable,
    pub fn getCameraRoll(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CameraRoll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCookies(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Cookies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesktop(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Desktop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocuments(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Documents(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDownloads(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Downloads(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFavorites(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Favorites(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHistory(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_History(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInternetCache(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InternetCache(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalAppData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalAppData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalAppDataLow(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalAppDataLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMusic(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Music(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPictures(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pictures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfile(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Profile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecent(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Recent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoamingAppData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RoamingAppData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSavedPictures(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SavedPictures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScreenshots(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Screenshots(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTemplates(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Templates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideos(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Videos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IUserDataPaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f9c53912-abc4-46ff-8a2b-dc9d7fa6e52f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CameraRoll: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Cookies: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Desktop: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Documents: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Downloads: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Favorites: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_History: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InternetCache: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LocalAppData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LocalAppDataLow: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Music: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Pictures: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Profile: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Recent: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RoamingAppData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SavedPictures: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Screenshots: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Templates: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Videos: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataPathsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*UserDataPaths {
        var _r: *UserDataPaths = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefault(self: *@This()) core.HResult!*UserDataPaths {
        var _r: *UserDataPaths = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.IUserDataPathsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01b29def-e062-48a1-8b0c-f2c7a9ca56c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **UserDataPaths) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **UserDataPaths) callconv(.winapi) HRESULT,
    };
};
pub const KnownFolderId = enum(i32) {
    AppCaptures = 0,
    CameraRoll = 1,
    DocumentsLibrary = 2,
    HomeGroup = 3,
    MediaServerDevices = 4,
    MusicLibrary = 5,
    Objects3D = 6,
    PicturesLibrary = 7,
    Playlists = 8,
    RecordedCalls = 9,
    RemovableDevices = 10,
    SavedPictures = 11,
    Screenshots = 12,
    VideosLibrary = 13,
    AllAppMods = 14,
    CurrentAppMods = 15,
    DownloadsFolder = 16,
};
pub const KnownFolders = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_SavedPictures() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersSavedPicturesStaticsCache.get();
        return try factory.getSavedPictures();
    }
    pub fn RequestAccessAsync(folderId: KnownFolderId) core.HResult!*IAsyncOperation(KnownFoldersAccessStatus) {
        const factory = @This().IKnownFoldersStatics4Cache.get();
        return try factory.RequestAccessAsync(folderId);
    }
    pub fn RequestAccessForUserAsync(user: *User, folderId: KnownFolderId) core.HResult!*IAsyncOperation(KnownFoldersAccessStatus) {
        const factory = @This().IKnownFoldersStatics4Cache.get();
        return try factory.RequestAccessForUserAsync(user, folderId);
    }
    pub fn GetFolderAsync(folderId: KnownFolderId) core.HResult!*IAsyncOperation(StorageFolder) {
        const factory = @This().IKnownFoldersStatics4Cache.get();
        return try factory.GetFolderAsync(folderId);
    }
    pub fn get_MusicLibrary() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStaticsCache.get();
        return try factory.getMusicLibrary();
    }
    pub fn get_PicturesLibrary() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStaticsCache.get();
        return try factory.getPicturesLibrary();
    }
    pub fn get_VideosLibrary() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStaticsCache.get();
        return try factory.getVideosLibrary();
    }
    pub fn get_DocumentsLibrary() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStaticsCache.get();
        return try factory.getDocumentsLibrary();
    }
    pub fn get_HomeGroup() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStaticsCache.get();
        return try factory.getHomeGroup();
    }
    pub fn get_RemovableDevices() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStaticsCache.get();
        return try factory.getRemovableDevices();
    }
    pub fn get_MediaServerDevices() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStaticsCache.get();
        return try factory.getMediaServerDevices();
    }
    pub fn get_Objects3D() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStatics2Cache.get();
        return try factory.getObjects3D();
    }
    pub fn get_AppCaptures() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStatics2Cache.get();
        return try factory.getAppCaptures();
    }
    pub fn get_RecordedCalls() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersStatics2Cache.get();
        return try factory.getRecordedCalls();
    }
    pub fn GetFolderForUserAsync(user: *User, folderId: KnownFolderId) core.HResult!*IAsyncOperation(StorageFolder) {
        const factory = @This().IKnownFoldersStatics3Cache.get();
        return try factory.GetFolderForUserAsync(user, folderId);
    }
    pub fn get_CameraRoll() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersCameraRollStaticsCache.get();
        return try factory.getCameraRoll();
    }
    pub fn get_Playlists() core.HResult!*StorageFolder {
        const factory = @This().IKnownFoldersPlaylistsStaticsCache.get();
        return try factory.getPlaylists();
    }
    pub const NAME: []const u8 = "Windows.Storage.KnownFolders";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownFoldersSavedPicturesStaticsCache: FactoryCache(IKnownFoldersSavedPicturesStatics, RUNTIME_NAME) = .{};
    var _IKnownFoldersStatics4Cache: FactoryCache(IKnownFoldersStatics4, RUNTIME_NAME) = .{};
    var _IKnownFoldersStaticsCache: FactoryCache(IKnownFoldersStatics, RUNTIME_NAME) = .{};
    var _IKnownFoldersStatics2Cache: FactoryCache(IKnownFoldersStatics2, RUNTIME_NAME) = .{};
    var _IKnownFoldersStatics3Cache: FactoryCache(IKnownFoldersStatics3, RUNTIME_NAME) = .{};
    var _IKnownFoldersCameraRollStaticsCache: FactoryCache(IKnownFoldersCameraRollStatics, RUNTIME_NAME) = .{};
    var _IKnownFoldersPlaylistsStaticsCache: FactoryCache(IKnownFoldersPlaylistsStatics, RUNTIME_NAME) = .{};
};
pub const KnownFoldersAccessStatus = enum(i32) {
    DeniedBySystem = 0,
    NotDeclaredByApp = 1,
    DeniedByUser = 2,
    UserPromptRequired = 3,
    Allowed = 4,
    AllowedPerAppFolder = 5,
};
pub const KnownLibraryId = enum(i32) {
    Music = 0,
    Pictures = 1,
    Videos = 2,
    Documents = 3,
};
pub const NameCollisionOption = enum(i32) {
    GenerateUniqueName = 0,
    ReplaceExisting = 1,
    FailIfExists = 2,
};
pub const PathIO = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ReadTextAsync(absolutePath: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.ReadTextAsync(absolutePath);
    }
    pub fn ReadTextAsyncWithEncoding(absolutePath: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.ReadTextAsyncWithEncoding(absolutePath, encoding);
    }
    pub fn WriteTextAsync(absolutePath: HSTRING, contents: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.WriteTextAsync(absolutePath, contents);
    }
    pub fn WriteTextAsyncWithEncoding(absolutePath: HSTRING, contents: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.WriteTextAsyncWithEncoding(absolutePath, contents, encoding);
    }
    pub fn AppendTextAsync(absolutePath: HSTRING, contents: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.AppendTextAsync(absolutePath, contents);
    }
    pub fn AppendTextAsyncWithEncoding(absolutePath: HSTRING, contents: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.AppendTextAsyncWithEncoding(absolutePath, contents, encoding);
    }
    pub fn ReadLinesAsync(absolutePath: HSTRING) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.ReadLinesAsync(absolutePath);
    }
    pub fn ReadLinesAsyncWithEncoding(absolutePath: HSTRING, encoding: UnicodeEncoding) core.HResult!*IAsyncOperation(IVector(HSTRING)) {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.ReadLinesAsyncWithEncoding(absolutePath, encoding);
    }
    pub fn WriteLinesAsync(absolutePath: HSTRING, lines: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.WriteLinesAsync(absolutePath, lines);
    }
    pub fn WriteLinesAsyncWithEncoding(absolutePath: HSTRING, lines: *IIterable(HSTRING), encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.WriteLinesAsyncWithEncoding(absolutePath, lines, encoding);
    }
    pub fn AppendLinesAsync(absolutePath: HSTRING, lines: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.AppendLinesAsync(absolutePath, lines);
    }
    pub fn AppendLinesAsyncWithEncoding(absolutePath: HSTRING, lines: *IIterable(HSTRING), encoding: UnicodeEncoding) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.AppendLinesAsyncWithEncoding(absolutePath, lines, encoding);
    }
    pub fn ReadBufferAsync(absolutePath: HSTRING) core.HResult!*IAsyncOperation(IBuffer) {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.ReadBufferAsync(absolutePath);
    }
    pub fn WriteBufferAsync(absolutePath: HSTRING, buffer: *IBuffer) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.WriteBufferAsync(absolutePath, buffer);
    }
    pub fn WriteBytesAsync(absolutePath: HSTRING, buffer: [*]u8) core.HResult!*IAsyncAction {
        const factory = @This().IPathIOStaticsCache.get();
        return try factory.WriteBytesAsync(absolutePath, buffer);
    }
    pub const NAME: []const u8 = "Windows.Storage.PathIO";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPathIOStaticsCache: FactoryCache(IPathIOStatics, RUNTIME_NAME) = .{};
};
pub const SetVersionDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *ISetVersionDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Storage.SetVersionDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISetVersionDeferral.GUID;
    pub const IID: Guid = ISetVersionDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISetVersionDeferral.SIGNATURE);
};
pub const SetVersionRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrentVersion(self: *@This()) core.HResult!u32 {
        const this: *ISetVersionRequest = @ptrCast(self);
        return try this.getCurrentVersion();
    }
    pub fn getDesiredVersion(self: *@This()) core.HResult!u32 {
        const this: *ISetVersionRequest = @ptrCast(self);
        return try this.getDesiredVersion();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*SetVersionDeferral {
        const this: *ISetVersionRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Storage.SetVersionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISetVersionRequest.GUID;
    pub const IID: Guid = ISetVersionRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISetVersionRequest.SIGNATURE);
};
pub const StorageDeleteOption = enum(i32) {
    Default = 0,
    PermanentDelete = 1,
};
pub const StorageFile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFileType(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageFile = @ptrCast(self);
        return try this.getFileType();
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageFile = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn OpenAsync(self: *@This(), accessMode: FileAccessMode) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var this: ?*IStorageFile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenAsync(accessMode);
    }
    pub fn OpenTransactedWriteAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var this: ?*IStorageFile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenTransactedWriteAsync();
    }
    pub fn CopyAsync(self: *@This(), destinationFolder: *IStorageFolder) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IStorageFile = @ptrCast(self);
        return try this.CopyAsync(destinationFolder);
    }
    pub fn CopyAsyncWithDesiredNewName(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IStorageFile = @ptrCast(self);
        return try this.CopyAsyncWithDesiredNewName(destinationFolder, desiredNewName);
    }
    pub fn CopyAsyncWithOption(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IStorageFile = @ptrCast(self);
        return try this.CopyAsyncWithOption(destinationFolder, desiredNewName, option);
    }
    pub fn CopyAndReplaceAsync(self: *@This(), fileToReplace: *IStorageFile) core.HResult!*IAsyncAction {
        const this: *IStorageFile = @ptrCast(self);
        return try this.CopyAndReplaceAsync(fileToReplace);
    }
    pub fn MoveAsync(self: *@This(), destinationFolder: *IStorageFolder) core.HResult!*IAsyncAction {
        const this: *IStorageFile = @ptrCast(self);
        return try this.MoveAsync(destinationFolder);
    }
    pub fn MoveAsyncWithDesiredNewName(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING) core.HResult!*IAsyncAction {
        const this: *IStorageFile = @ptrCast(self);
        return try this.MoveAsyncWithDesiredNewName(destinationFolder, desiredNewName);
    }
    pub fn MoveAsyncWithOption(self: *@This(), destinationFolder: *IStorageFolder, desiredNewName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncAction {
        const this: *IStorageFile = @ptrCast(self);
        return try this.MoveAsyncWithOption(destinationFolder, desiredNewName, option);
    }
    pub fn MoveAndReplaceAsync(self: *@This(), fileToReplace: *IStorageFile) core.HResult!*IAsyncAction {
        const this: *IStorageFile = @ptrCast(self);
        return try this.MoveAndReplaceAsync(fileToReplace);
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
    pub fn DeleteAsync(self: *@This(), option: StorageDeleteOption) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteAsync(option);
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
    pub fn OpenReadAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var this: ?*IRandomAccessStreamReference = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStreamReference.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenReadAsync();
    }
    pub fn OpenSequentialReadAsync(self: *@This()) core.HResult!*IAsyncOperation(IInputStream) {
        var this: ?*IInputStreamReference = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStreamReference.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenSequentialReadAsync();
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
    pub fn GetThumbnailAsyncWithOptions(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailAsyncWithOptions(mode, requestedSize, options);
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
    pub fn GetScaledImageAsThumbnailAsync(self: *@This(), mode: ThumbnailMode) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetScaledImageAsThumbnailAsync(mode);
    }
    pub fn GetScaledImageAsThumbnailAsyncWithRequestedSize(self: *@This(), mode: ThumbnailMode, requestedSize: u32) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetScaledImageAsThumbnailAsyncWithRequestedSize(mode, requestedSize);
    }
    pub fn GetScaledImageAsThumbnailAsyncWithOptions(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetScaledImageAsThumbnailAsyncWithOptions(mode, requestedSize, options);
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
    pub fn OpenTransactedWriteAsync(self: *@This(), options: StorageOpenOptions) core.HResult!*IAsyncOperation(StorageStreamTransaction) {
        var this: ?*IStorageFile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenTransactedWriteAsync(options);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetFileFromPathForUserAsync(user: *User, path: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IStorageFileStatics2Cache.get();
        return try factory.GetFileFromPathForUserAsync(user, path);
    }
    pub fn GetFileFromPathAsync(path: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IStorageFileStaticsCache.get();
        return try factory.GetFileFromPathAsync(path);
    }
    pub fn GetFileFromApplicationUriAsync(uri: *Uri) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IStorageFileStaticsCache.get();
        return try factory.GetFileFromApplicationUriAsync(uri);
    }
    pub fn CreateStreamedFileAsync(displayNameWithExtension: HSTRING, dataRequested: *StreamedFileDataRequestedHandler, thumbnail: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IStorageFileStaticsCache.get();
        return try factory.CreateStreamedFileAsync(displayNameWithExtension, dataRequested, thumbnail);
    }
    pub fn ReplaceWithStreamedFileAsync(fileToReplace: *IStorageFile, dataRequested: *StreamedFileDataRequestedHandler, thumbnail: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IStorageFileStaticsCache.get();
        return try factory.ReplaceWithStreamedFileAsync(fileToReplace, dataRequested, thumbnail);
    }
    pub fn CreateStreamedFileFromUriAsync(displayNameWithExtension: HSTRING, uri: *Uri, thumbnail: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IStorageFileStaticsCache.get();
        return try factory.CreateStreamedFileFromUriAsync(displayNameWithExtension, uri, thumbnail);
    }
    pub fn ReplaceWithStreamedFileFromUriAsync(fileToReplace: *IStorageFile, uri: *Uri, thumbnail: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(StorageFile) {
        const factory = @This().IStorageFileStaticsCache.get();
        return try factory.ReplaceWithStreamedFileFromUriAsync(fileToReplace, uri, thumbnail);
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageFile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageFile.GUID;
    pub const IID: Guid = IStorageFile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageFile.SIGNATURE);
    var _IStorageFileStatics2Cache: FactoryCache(IStorageFileStatics2, RUNTIME_NAME) = .{};
    var _IStorageFileStaticsCache: FactoryCache(IStorageFileStatics, RUNTIME_NAME) = .{};
};
pub const StorageFolder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateFileAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IStorageFolder = @ptrCast(self);
        return try this.CreateFileAsync(desiredName);
    }
    pub fn CreateFileAsyncWithOptions(self: *@This(), desiredName: HSTRING, options: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IStorageFolder = @ptrCast(self);
        return try this.CreateFileAsyncWithOptions(desiredName, options);
    }
    pub fn CreateFolderAsync(self: *@This(), desiredName: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        const this: *IStorageFolder = @ptrCast(self);
        return try this.CreateFolderAsync(desiredName);
    }
    pub fn CreateFolderAsyncWithOptions(self: *@This(), desiredName: HSTRING, options: CreationCollisionOption) core.HResult!*IAsyncOperation(StorageFolder) {
        const this: *IStorageFolder = @ptrCast(self);
        return try this.CreateFolderAsyncWithOptions(desiredName, options);
    }
    pub fn GetFileAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IStorageFolder = @ptrCast(self);
        return try this.GetFileAsync(name);
    }
    pub fn GetFolderAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        const this: *IStorageFolder = @ptrCast(self);
        return try this.GetFolderAsync(name);
    }
    pub fn GetItemAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(IStorageItem) {
        const this: *IStorageFolder = @ptrCast(self);
        return try this.GetItemAsync(name);
    }
    pub fn GetFilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFilesAsync();
    }
    pub fn GetFoldersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFoldersAsync();
    }
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
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
    pub fn DeleteAsync(self: *@This(), option: StorageDeleteOption) core.HResult!*IAsyncAction {
        var this: ?*IStorageItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteAsync(option);
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
    pub fn CreateFileQuery(self: *@This(), query: CommonFileQuery) core.HResult!*StorageFileQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFileQuery(query);
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
    pub fn CreateFolderQuery(self: *@This(), query: CommonFolderQuery) core.HResult!*StorageFolderQueryResult {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFolderQuery(query);
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
    pub fn GetFilesAsync(self: *@This(), query: CommonFileQuery, startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFilesAsync(query, startIndex, maxItemsToRetrieve);
    }
    pub fn GetFilesAsync(self: *@This(), query: CommonFileQuery) core.HResult!*IAsyncOperation(IVectorView(StorageFile)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFilesAsync(query);
    }
    pub fn GetFoldersAsync(self: *@This(), query: CommonFolderQuery, startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFoldersAsync(query, startIndex, maxItemsToRetrieve);
    }
    pub fn GetFoldersAsync(self: *@This(), query: CommonFolderQuery) core.HResult!*IAsyncOperation(IVectorView(StorageFolder)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFoldersAsync(query);
    }
    pub fn GetItemsAsync(self: *@This(), startIndex: u32, maxItemsToRetrieve: u32) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        var this: ?*IStorageFolderQueryOperations = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolderQueryOperations.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemsAsync(startIndex, maxItemsToRetrieve);
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
    pub fn GetThumbnailAsyncWithOptions(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetThumbnailAsyncWithOptions(mode, requestedSize, options);
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
    pub fn GetScaledImageAsThumbnailAsync(self: *@This(), mode: ThumbnailMode) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetScaledImageAsThumbnailAsync(mode);
    }
    pub fn GetScaledImageAsThumbnailAsyncWithRequestedSize(self: *@This(), mode: ThumbnailMode, requestedSize: u32) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetScaledImageAsThumbnailAsyncWithRequestedSize(mode, requestedSize);
    }
    pub fn GetScaledImageAsThumbnailAsyncWithOptions(self: *@This(), mode: ThumbnailMode, requestedSize: u32, options: ThumbnailOptions) core.HResult!*IAsyncOperation(StorageItemThumbnail) {
        var this: ?*IStorageItemProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetScaledImageAsThumbnailAsyncWithOptions(mode, requestedSize, options);
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
    pub fn TryGetChangeTracker(self: *@This()) core.HResult!*StorageLibraryChangeTracker {
        var this: ?*IStorageFolder3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageFolder3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetChangeTracker();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetFolderFromPathAsync(path: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        const factory = @This().IStorageFolderStaticsCache.get();
        return try factory.GetFolderFromPathAsync(path);
    }
    pub fn GetFolderFromPathForUserAsync(user: *User, path: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        const factory = @This().IStorageFolderStatics2Cache.get();
        return try factory.GetFolderFromPathForUserAsync(user, path);
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageFolder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageFolder.GUID;
    pub const IID: Guid = IStorageFolder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageFolder.SIGNATURE);
    var _IStorageFolderStaticsCache: FactoryCache(IStorageFolderStatics, RUNTIME_NAME) = .{};
    var _IStorageFolderStatics2Cache: FactoryCache(IStorageFolderStatics2, RUNTIME_NAME) = .{};
};
pub const StorageItemTypes = enum(i32) {
    None = 0,
    File = 1,
    Folder = 2,
};
pub const StorageLibrary = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestAddFolderAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        const this: *IStorageLibrary = @ptrCast(self);
        return try this.RequestAddFolderAsync();
    }
    pub fn RequestRemoveFolderAsync(self: *@This(), folder: *StorageFolder) core.HResult!*IAsyncOperation(bool) {
        const this: *IStorageLibrary = @ptrCast(self);
        return try this.RequestRemoveFolderAsync(folder);
    }
    pub fn getFolders(self: *@This()) core.HResult!*IObservableVector(StorageFolder) {
        const this: *IStorageLibrary = @ptrCast(self);
        return try this.getFolders();
    }
    pub fn getSaveFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IStorageLibrary = @ptrCast(self);
        return try this.getSaveFolder();
    }
    pub fn addDefinitionChanged(self: *@This(), handler: *TypedEventHandler(StorageLibrary,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IStorageLibrary = @ptrCast(self);
        return try this.addDefinitionChanged(handler);
    }
    pub fn removeDefinitionChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IStorageLibrary = @ptrCast(self);
        return try this.removeDefinitionChanged(eventCookie);
    }
    pub fn getChangeTracker(self: *@This()) core.HResult!*StorageLibraryChangeTracker {
        var this: ?*IStorageLibrary2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageLibrary2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChangeTracker();
    }
    pub fn AreFolderSuggestionsAvailableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IStorageLibrary3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageLibrary3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AreFolderSuggestionsAvailableAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetLibraryForUserAsync(user: *User, libraryId: KnownLibraryId) core.HResult!*IAsyncOperation(StorageLibrary) {
        const factory = @This().IStorageLibraryStatics2Cache.get();
        return try factory.GetLibraryForUserAsync(user, libraryId);
    }
    pub fn GetLibraryAsync(libraryId: KnownLibraryId) core.HResult!*IAsyncOperation(StorageLibrary) {
        const factory = @This().IStorageLibraryStaticsCache.get();
        return try factory.GetLibraryAsync(libraryId);
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageLibrary";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageLibrary.GUID;
    pub const IID: Guid = IStorageLibrary.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageLibrary.SIGNATURE);
    var _IStorageLibraryStatics2Cache: FactoryCache(IStorageLibraryStatics2, RUNTIME_NAME) = .{};
    var _IStorageLibraryStaticsCache: FactoryCache(IStorageLibraryStatics, RUNTIME_NAME) = .{};
};
pub const StorageLibraryChange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeType(self: *@This()) core.HResult!StorageLibraryChangeType {
        const this: *IStorageLibraryChange = @ptrCast(self);
        return try this.getChangeType();
    }
    pub fn getPath(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageLibraryChange = @ptrCast(self);
        return try this.getPath();
    }
    pub fn getPreviousPath(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageLibraryChange = @ptrCast(self);
        return try this.getPreviousPath();
    }
    pub fn IsOfType(self: *@This(), ty: StorageItemTypes) core.HResult!bool {
        const this: *IStorageLibraryChange = @ptrCast(self);
        return try this.IsOfType(ty);
    }
    pub fn GetStorageItemAsync(self: *@This()) core.HResult!*IAsyncOperation(IStorageItem) {
        const this: *IStorageLibraryChange = @ptrCast(self);
        return try this.GetStorageItemAsync();
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageLibraryChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageLibraryChange.GUID;
    pub const IID: Guid = IStorageLibraryChange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageLibraryChange.SIGNATURE);
};
pub const StorageLibraryChangeReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorageLibraryChange)) {
        const this: *IStorageLibraryChangeReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub fn AcceptChangesAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IStorageLibraryChangeReader = @ptrCast(self);
        return try this.AcceptChangesAsync();
    }
    pub fn GetLastChangeId(self: *@This()) core.HResult!u64 {
        var this: ?*IStorageLibraryChangeReader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageLibraryChangeReader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLastChangeId();
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageLibraryChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageLibraryChangeReader.GUID;
    pub const IID: Guid = IStorageLibraryChangeReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageLibraryChangeReader.SIGNATURE);
};
pub const StorageLibraryChangeTracker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetChangeReader(self: *@This()) core.HResult!*StorageLibraryChangeReader {
        const this: *IStorageLibraryChangeTracker = @ptrCast(self);
        return try this.GetChangeReader();
    }
    pub fn Enable(self: *@This()) core.HResult!void {
        var this: ?*IStorageLibraryChangeTracker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageLibraryChangeTracker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Enable();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const this: *IStorageLibraryChangeTracker = @ptrCast(self);
        return try this.Reset();
    }
    pub fn Enable(self: *@This(), options: *StorageLibraryChangeTrackerOptions) core.HResult!void {
        var this: ?*IStorageLibraryChangeTracker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageLibraryChangeTracker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Enable(options);
    }
    pub fn Disable(self: *@This()) core.HResult!void {
        var this: ?*IStorageLibraryChangeTracker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageLibraryChangeTracker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Disable();
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageLibraryChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageLibraryChangeTracker.GUID;
    pub const IID: Guid = IStorageLibraryChangeTracker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageLibraryChangeTracker.SIGNATURE);
};
pub const StorageLibraryChangeTrackerOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTrackChangeDetails(self: *@This()) core.HResult!bool {
        const this: *IStorageLibraryChangeTrackerOptions = @ptrCast(self);
        return try this.getTrackChangeDetails();
    }
    pub fn putTrackChangeDetails(self: *@This(), value: bool) core.HResult!void {
        const this: *IStorageLibraryChangeTrackerOptions = @ptrCast(self);
        return try this.putTrackChangeDetails(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorageLibraryChangeTrackerOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageLibraryChangeTrackerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageLibraryChangeTrackerOptions.GUID;
    pub const IID: Guid = IStorageLibraryChangeTrackerOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageLibraryChangeTrackerOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorageLibraryChangeType = enum(i32) {
    Created = 0,
    Deleted = 1,
    MovedOrRenamed = 2,
    ContentsChanged = 3,
    MovedOutOfLibrary = 4,
    MovedIntoLibrary = 5,
    ContentsReplaced = 6,
    IndexingStatusChanged = 7,
    EncryptionChanged = 8,
    ChangeTrackingLost = 9,
};
pub const StorageLibraryLastChangeId = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Unknown() core.HResult!u64 {
        const factory = @This().IStorageLibraryLastChangeIdStaticsCache.get();
        return try factory.getUnknown();
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageLibraryLastChangeId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageLibraryLastChangeId.GUID;
    pub const IID: Guid = IStorageLibraryLastChangeId.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageLibraryLastChangeId.SIGNATURE);
    var _IStorageLibraryLastChangeIdStaticsCache: FactoryCache(IStorageLibraryLastChangeIdStatics, RUNTIME_NAME) = .{};
};
pub const StorageOpenOptions = enum(i32) {
    None = 0,
    AllowOnlyReaders = 1,
    AllowReadersAndWriters = 2,
};
pub const StorageProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProvider = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IStorageProvider = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn IsPropertySupportedForPartialFileAsync(self: *@This(), propertyCanonicalName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IStorageProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPropertySupportedForPartialFileAsync(propertyCanonicalName);
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageProvider.GUID;
    pub const IID: Guid = IStorageProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageProvider.SIGNATURE);
};
pub const StorageStreamTransaction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStream(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *IStorageStreamTransaction = @ptrCast(self);
        return try this.getStream();
    }
    pub fn CommitAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IStorageStreamTransaction = @ptrCast(self);
        return try this.CommitAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Storage.StorageStreamTransaction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageStreamTransaction.GUID;
    pub const IID: Guid = IStorageStreamTransaction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageStreamTransaction.SIGNATURE);
};
pub const StreamedFileDataRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn WriteAsync(self: *@This(), buffer: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        const this: *IOutputStream = @ptrCast(self);
        return try this.WriteAsync(buffer);
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IOutputStream = @ptrCast(self);
        return try this.FlushAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn FailAndClose(self: *@This(), failureMode: StreamedFileFailureMode) core.HResult!void {
        var this: ?*IStreamedFileDataRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStreamedFileDataRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FailAndClose(failureMode);
    }
    pub const NAME: []const u8 = "Windows.Storage.StreamedFileDataRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOutputStream.GUID;
    pub const IID: Guid = IOutputStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOutputStream.SIGNATURE);
};
pub const StreamedFileDataRequestedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, stream: *StreamedFileDataRequest) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, stream: *StreamedFileDataRequest) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, stream: *StreamedFileDataRequest) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, stream);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Storage.StreamedFileDataRequestedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fef6a824-2fe1-4d07-a35b-b77c50b5f4cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, stream: *StreamedFileDataRequest) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const StreamedFileFailureMode = enum(i32) {
    Failed = 0,
    CurrentlyUnavailable = 1,
    Incomplete = 2,
};
pub const SystemAudioProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEncodingBitrate(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemAudioProperties = @ptrCast(self);
        return try this.getEncodingBitrate();
    }
    pub const NAME: []const u8 = "Windows.Storage.SystemAudioProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemAudioProperties.GUID;
    pub const IID: Guid = ISystemAudioProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemAudioProperties.SIGNATURE);
};
pub const SystemDataPaths = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFonts(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getFonts();
    }
    pub fn getProgramData(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getProgramData();
    }
    pub fn getPublic(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getPublic();
    }
    pub fn getPublicDesktop(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getPublicDesktop();
    }
    pub fn getPublicDocuments(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getPublicDocuments();
    }
    pub fn getPublicDownloads(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getPublicDownloads();
    }
    pub fn getPublicMusic(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getPublicMusic();
    }
    pub fn getPublicPictures(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getPublicPictures();
    }
    pub fn getPublicVideos(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getPublicVideos();
    }
    pub fn getSystem(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getSystem();
    }
    pub fn getSystemHost(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getSystemHost();
    }
    pub fn getSystemX86(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getSystemX86();
    }
    pub fn getSystemX64(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getSystemX64();
    }
    pub fn getSystemArm(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getSystemArm();
    }
    pub fn getUserProfiles(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getUserProfiles();
    }
    pub fn getWindows(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemDataPaths = @ptrCast(self);
        return try this.getWindows();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*SystemDataPaths {
        const factory = @This().ISystemDataPathsStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Storage.SystemDataPaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemDataPaths.GUID;
    pub const IID: Guid = ISystemDataPaths.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemDataPaths.SIGNATURE);
    var _ISystemDataPathsStaticsCache: FactoryCache(ISystemDataPathsStatics, RUNTIME_NAME) = .{};
};
pub const SystemGPSProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLatitudeDecimal(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemGPSProperties = @ptrCast(self);
        return try this.getLatitudeDecimal();
    }
    pub fn getLongitudeDecimal(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemGPSProperties = @ptrCast(self);
        return try this.getLongitudeDecimal();
    }
    pub const NAME: []const u8 = "Windows.Storage.SystemGPSProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemGPSProperties.GUID;
    pub const IID: Guid = ISystemGPSProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemGPSProperties.SIGNATURE);
};
pub const SystemImageProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHorizontalSize(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemImageProperties = @ptrCast(self);
        return try this.getHorizontalSize();
    }
    pub fn getVerticalSize(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemImageProperties = @ptrCast(self);
        return try this.getVerticalSize();
    }
    pub const NAME: []const u8 = "Windows.Storage.SystemImageProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemImageProperties.GUID;
    pub const IID: Guid = ISystemImageProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemImageProperties.SIGNATURE);
};
pub const SystemMediaProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDuration(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMediaProperties = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getProducer(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMediaProperties = @ptrCast(self);
        return try this.getProducer();
    }
    pub fn getPublisher(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMediaProperties = @ptrCast(self);
        return try this.getPublisher();
    }
    pub fn getSubTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMediaProperties = @ptrCast(self);
        return try this.getSubTitle();
    }
    pub fn getWriter(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMediaProperties = @ptrCast(self);
        return try this.getWriter();
    }
    pub fn getYear(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMediaProperties = @ptrCast(self);
        return try this.getYear();
    }
    pub const NAME: []const u8 = "Windows.Storage.SystemMediaProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemMediaProperties.GUID;
    pub const IID: Guid = ISystemMediaProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemMediaProperties.SIGNATURE);
};
pub const SystemMusicProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlbumArtist(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMusicProperties = @ptrCast(self);
        return try this.getAlbumArtist();
    }
    pub fn getAlbumTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMusicProperties = @ptrCast(self);
        return try this.getAlbumTitle();
    }
    pub fn getArtist(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMusicProperties = @ptrCast(self);
        return try this.getArtist();
    }
    pub fn getComposer(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMusicProperties = @ptrCast(self);
        return try this.getComposer();
    }
    pub fn getConductor(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMusicProperties = @ptrCast(self);
        return try this.getConductor();
    }
    pub fn getDisplayArtist(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMusicProperties = @ptrCast(self);
        return try this.getDisplayArtist();
    }
    pub fn getGenre(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMusicProperties = @ptrCast(self);
        return try this.getGenre();
    }
    pub fn getTrackNumber(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMusicProperties = @ptrCast(self);
        return try this.getTrackNumber();
    }
    pub const NAME: []const u8 = "Windows.Storage.SystemMusicProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemMusicProperties.GUID;
    pub const IID: Guid = ISystemMusicProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemMusicProperties.SIGNATURE);
};
pub const SystemPhotoProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCameraManufacturer(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemPhotoProperties = @ptrCast(self);
        return try this.getCameraManufacturer();
    }
    pub fn getCameraModel(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemPhotoProperties = @ptrCast(self);
        return try this.getCameraModel();
    }
    pub fn getDateTaken(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemPhotoProperties = @ptrCast(self);
        return try this.getDateTaken();
    }
    pub fn getOrientation(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemPhotoProperties = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn getPeopleNames(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemPhotoProperties = @ptrCast(self);
        return try this.getPeopleNames();
    }
    pub const NAME: []const u8 = "Windows.Storage.SystemPhotoProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemPhotoProperties.GUID;
    pub const IID: Guid = ISystemPhotoProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemPhotoProperties.SIGNATURE);
};
pub const SystemProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Author() core.HResult!HSTRING {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getAuthor();
    }
    pub fn get_Comment() core.HResult!HSTRING {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getComment();
    }
    pub fn get_ItemNameDisplay() core.HResult!HSTRING {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getItemNameDisplay();
    }
    pub fn get_Keywords() core.HResult!HSTRING {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getKeywords();
    }
    pub fn get_Rating() core.HResult!HSTRING {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getRating();
    }
    pub fn get_Title() core.HResult!HSTRING {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getTitle();
    }
    pub fn get_Audio() core.HResult!*SystemAudioProperties {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getAudio();
    }
    pub fn get_GPS() core.HResult!*SystemGPSProperties {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getGPS();
    }
    pub fn get_Media() core.HResult!*SystemMediaProperties {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getMedia();
    }
    pub fn get_Music() core.HResult!*SystemMusicProperties {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getMusic();
    }
    pub fn get_Photo() core.HResult!*SystemPhotoProperties {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getPhoto();
    }
    pub fn get_Video() core.HResult!*SystemVideoProperties {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getVideo();
    }
    pub fn get_Image() core.HResult!*SystemImageProperties {
        const factory = @This().ISystemPropertiesCache.get();
        return try factory.getImage();
    }
    pub const NAME: []const u8 = "Windows.Storage.SystemProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISystemPropertiesCache: FactoryCache(ISystemProperties, RUNTIME_NAME) = .{};
};
pub const SystemVideoProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDirector(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemVideoProperties = @ptrCast(self);
        return try this.getDirector();
    }
    pub fn getFrameHeight(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemVideoProperties = @ptrCast(self);
        return try this.getFrameHeight();
    }
    pub fn getFrameWidth(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemVideoProperties = @ptrCast(self);
        return try this.getFrameWidth();
    }
    pub fn getOrientation(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemVideoProperties = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn getTotalBitrate(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemVideoProperties = @ptrCast(self);
        return try this.getTotalBitrate();
    }
    pub const NAME: []const u8 = "Windows.Storage.SystemVideoProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemVideoProperties.GUID;
    pub const IID: Guid = ISystemVideoProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemVideoProperties.SIGNATURE);
};
pub const UserDataPaths = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCameraRoll(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getCameraRoll();
    }
    pub fn getCookies(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getCookies();
    }
    pub fn getDesktop(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getDesktop();
    }
    pub fn getDocuments(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getDocuments();
    }
    pub fn getDownloads(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getDownloads();
    }
    pub fn getFavorites(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getFavorites();
    }
    pub fn getHistory(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getHistory();
    }
    pub fn getInternetCache(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getInternetCache();
    }
    pub fn getLocalAppData(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getLocalAppData();
    }
    pub fn getLocalAppDataLow(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getLocalAppDataLow();
    }
    pub fn getMusic(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getMusic();
    }
    pub fn getPictures(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getPictures();
    }
    pub fn getProfile(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getProfile();
    }
    pub fn getRecent(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getRecent();
    }
    pub fn getRoamingAppData(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getRoamingAppData();
    }
    pub fn getSavedPictures(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getSavedPictures();
    }
    pub fn getScreenshots(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getScreenshots();
    }
    pub fn getTemplates(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getTemplates();
    }
    pub fn getVideos(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataPaths = @ptrCast(self);
        return try this.getVideos();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForUser(user: *User) core.HResult!*UserDataPaths {
        const factory = @This().IUserDataPathsStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub fn GetDefault() core.HResult!*UserDataPaths {
        const factory = @This().IUserDataPathsStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Storage.UserDataPaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataPaths.GUID;
    pub const IID: Guid = IUserDataPaths.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataPaths.SIGNATURE);
    var _IUserDataPathsStaticsCache: FactoryCache(IUserDataPathsStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("./root.zig").IUnknown;
const IActivationFactory = @import("./Foundation.zig").IActivationFactory;
const Guid = @import("./root.zig").Guid;
const IStorageFolderQueryOperations = @import("./Search.zig").IStorageFolderQueryOperations;
const IInputStreamReference = @import("./Streams.zig").IInputStreamReference;
const IMapView = @import("./Foundation/Collections.zig").IMapView;
const MapChangedEventHandler = @import("./Foundation/Collections.zig").MapChangedEventHandler;
const IVector = @import("./Foundation/Collections.zig").IVector;
const CommonFileQuery = @import("./Search.zig").CommonFileQuery;
const CommonFolderQuery = @import("./Search.zig").CommonFolderQuery;
const IKeyValuePair = @import("./Foundation/Collections.zig").IKeyValuePair;
const IAsyncOperationWithProgress = @import("./Foundation.zig").IAsyncOperationWithProgress;
const IClosable = @import("./Foundation.zig").IClosable;
const IIterable = @import("./Foundation/Collections.zig").IIterable;
const IInspectable = @import("./Foundation.zig").IInspectable;
const StorageFolderQueryResult = @import("./Search.zig").StorageFolderQueryResult;
const Uri = @import("./Foundation.zig").Uri;
const HRESULT = @import("./root.zig").HRESULT;
const StorageItemQueryResult = @import("./Search.zig").StorageItemQueryResult;
const EventRegistrationToken = @import("./Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("./Foundation.zig").IAsyncAction;
const BasicProperties = @import("./FileProperties.zig").BasicProperties;
const IVectorView = @import("./Foundation/Collections.zig").IVectorView;
const IBuffer = @import("./Streams.zig").IBuffer;
const IMap = @import("./Foundation/Collections.zig").IMap;
const StorageItemThumbnail = @import("./FileProperties.zig").StorageItemThumbnail;
const IInputStream = @import("./Streams.zig").IInputStream;
const UnicodeEncoding = @import("./Streams.zig").UnicodeEncoding;
const DateTime = @import("./Foundation.zig").DateTime;
const StorageFileQueryResult = @import("./Search.zig").StorageFileQueryResult;
const IObservableMap = @import("./Foundation/Collections.zig").IObservableMap;
const IRandomAccessStreamReference = @import("./Streams.zig").IRandomAccessStreamReference;
const IRandomAccessStream = @import("./Streams.zig").IRandomAccessStream;
const FactoryCache = @import("./core.zig").FactoryCache;
const IIterator = @import("./Foundation/Collections.zig").IIterator;
const FileUpdateStatus = @import("./Provider.zig").FileUpdateStatus;
const TrustLevel = @import("./root.zig").TrustLevel;
const TypedEventHandler = @import("./Foundation.zig").TypedEventHandler;
const HSTRING = @import("./root.zig").HSTRING;
const StorageItemContentProperties = @import("./FileProperties.zig").StorageItemContentProperties;
const IAgileObject = @import("./root.zig").IAgileObject;
const IRandomAccessStreamWithContentType = @import("./Streams.zig").IRandomAccessStreamWithContentType;
const IOutputStream = @import("./Streams.zig").IOutputStream;
const QueryOptions = @import("./Search.zig").QueryOptions;
const IAsyncOperation = @import("./Foundation.zig").IAsyncOperation;
const core = @import("./root.zig").core;
const IObservableVector = @import("./Foundation/Collections.zig").IObservableVector;
const IndexedState = @import("./Search.zig").IndexedState;
const ThumbnailOptions = @import("./FileProperties.zig").ThumbnailOptions;
const IPropertySet = @import("./Foundation/Collections.zig").IPropertySet;
const ThumbnailMode = @import("./FileProperties.zig").ThumbnailMode;
const User = @import("./System.zig").User;
pub const AccessCache = @import("./Storage/AccessCache.zig");
pub const BulkAccess = @import("./Storage/BulkAccess.zig");
pub const Compression = @import("./Storage/Compression.zig");
pub const FileProperties = @import("./Storage/FileProperties.zig");
pub const Pickers = @import("./Storage/Pickers.zig");
pub const Provider = @import("./Storage/Provider.zig");
pub const Search = @import("./Storage/Search.zig");
pub const Streams = @import("./Storage/Streams.zig");
