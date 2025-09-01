pub const AccessCacheOptions = enum(i32) {
    None = 0,
    DisallowUserInput = 1,
    FastLocationsOnly = 2,
    UseReadOnlyCachedCopy = 4,
    SuppressAccessTimeUpdate = 8,
};
pub const AccessListEntry = extern struct {
    Token: HSTRING,
    Metadata: HSTRING,
};
pub const AccessListEntryView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView(AccessListEntry) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(AccessListEntry) {
        var this: ?*IIterable(AccessListEntry) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.AccessListEntryView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const IItemRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRemovedEntry(self: *@This()) core.HResult!AccessListEntry {
        var _r: AccessListEntry = undefined;
        const _c = self.vtable.get_RemovedEntry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.IItemRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59677e5c-55be-4c66-ba66-5eaea79d2631";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemovedEntry: *const fn(self: *anyopaque, _r: *AccessListEntry) callconv(.winapi) HRESULT,
    };
};
pub const IStorageApplicationPermissionsStatics = extern struct {
    vtable: *const VTable,
    pub fn getFutureAccessList(self: *@This()) core.HResult!*StorageItemAccessList {
        var _r: *StorageItemAccessList = undefined;
        const _c = self.vtable.get_FutureAccessList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMostRecentlyUsedList(self: *@This()) core.HResult!*StorageItemMostRecentlyUsedList {
        var _r: *StorageItemMostRecentlyUsedList = undefined;
        const _c = self.vtable.get_MostRecentlyUsedList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.IStorageApplicationPermissionsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4391dfaa-d033-48f9-8060-3ec847d2e3f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FutureAccessList: *const fn(self: *anyopaque, _r: **StorageItemAccessList) callconv(.winapi) HRESULT,
        get_MostRecentlyUsedList: *const fn(self: *anyopaque, _r: **StorageItemMostRecentlyUsedList) callconv(.winapi) HRESULT,
    };
};
pub const IStorageApplicationPermissionsStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetFutureAccessListForUser(self: *@This(), user: *User) core.HResult!*StorageItemAccessList {
        var _r: *StorageItemAccessList = undefined;
        const _c = self.vtable.GetFutureAccessListForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMostRecentlyUsedListForUser(self: *@This(), user: *User) core.HResult!*StorageItemMostRecentlyUsedList {
        var _r: *StorageItemMostRecentlyUsedList = undefined;
        const _c = self.vtable.GetMostRecentlyUsedListForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.IStorageApplicationPermissionsStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "072716ec-aa05-4294-9a11-1a3d04519ad0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFutureAccessListForUser: *const fn(self: *anyopaque, user: *User, _r: **StorageItemAccessList) callconv(.winapi) HRESULT,
        GetMostRecentlyUsedListForUser: *const fn(self: *anyopaque, user: *User, _r: **StorageItemMostRecentlyUsedList) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemAccessList = extern struct {
    vtable: *const VTable,
    pub fn Add(self: *@This(), file: *IStorageItem) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.Add(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddWithMetadata(self: *@This(), file: *IStorageItem, metadata: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.AddWithMetadata(@ptrCast(self), file, metadata, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddOrReplace(self: *@This(), token: HSTRING, file: *IStorageItem) core.HResult!void {
        const _c = self.vtable.AddOrReplace(@ptrCast(self), token, file);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddOrReplaceWithMetadata(self: *@This(), token: HSTRING, file: *IStorageItem, metadata: HSTRING) core.HResult!void {
        const _c = self.vtable.AddOrReplaceWithMetadata(@ptrCast(self), token, file, metadata);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetItemAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(IStorageItem) {
        var _r: *IAsyncOperation(IStorageItem) = undefined;
        const _c = self.vtable.GetItemAsync(@ptrCast(self), token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFileAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.GetFileAsync(@ptrCast(self), token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFolderAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetFolderAsync(@ptrCast(self), token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemAsyncWithOptions(self: *@This(), token: HSTRING, options: AccessCacheOptions) core.HResult!*IAsyncOperation(IStorageItem) {
        var _r: *IAsyncOperation(IStorageItem) = undefined;
        const _c = self.vtable.GetItemAsyncWithOptions(@ptrCast(self), token, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFileAsyncWithOptions(self: *@This(), token: HSTRING, options: AccessCacheOptions) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.GetFileAsyncWithOptions(@ptrCast(self), token, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFolderAsyncWithOptions(self: *@This(), token: HSTRING, options: AccessCacheOptions) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetFolderAsyncWithOptions(@ptrCast(self), token, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Remove(self: *@This(), token: HSTRING) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ContainsItem(self: *@This(), token: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ContainsItem(@ptrCast(self), token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CheckAccess(self: *@This(), file: *IStorageItem) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CheckAccess(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEntries(self: *@This()) core.HResult!*AccessListEntryView {
        var _r: *AccessListEntryView = undefined;
        const _c = self.vtable.get_Entries(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaximumItemsAllowed(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaximumItemsAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.IStorageItemAccessList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2caff6ad-de90-47f5-b2c3-dd36c9fdd453";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, file: *IStorageItem, _r: *HSTRING) callconv(.winapi) HRESULT,
        AddWithMetadata: *const fn(self: *anyopaque, file: *IStorageItem, metadata: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        AddOrReplace: *const fn(self: *anyopaque, token: HSTRING, file: *IStorageItem) callconv(.winapi) HRESULT,
        AddOrReplaceWithMetadata: *const fn(self: *anyopaque, token: HSTRING, file: *IStorageItem, metadata: HSTRING) callconv(.winapi) HRESULT,
        GetItemAsync: *const fn(self: *anyopaque, token: HSTRING, _r: **IAsyncOperation(IStorageItem)) callconv(.winapi) HRESULT,
        GetFileAsync: *const fn(self: *anyopaque, token: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        GetFolderAsync: *const fn(self: *anyopaque, token: HSTRING, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
        GetItemAsyncWithOptions: *const fn(self: *anyopaque, token: HSTRING, options: AccessCacheOptions, _r: **IAsyncOperation(IStorageItem)) callconv(.winapi) HRESULT,
        GetFileAsyncWithOptions: *const fn(self: *anyopaque, token: HSTRING, options: AccessCacheOptions, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        GetFolderAsyncWithOptions: *const fn(self: *anyopaque, token: HSTRING, options: AccessCacheOptions, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, token: HSTRING) callconv(.winapi) HRESULT,
        ContainsItem: *const fn(self: *anyopaque, token: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        CheckAccess: *const fn(self: *anyopaque, file: *IStorageItem, _r: *bool) callconv(.winapi) HRESULT,
        get_Entries: *const fn(self: *anyopaque, _r: **AccessListEntryView) callconv(.winapi) HRESULT,
        get_MaximumItemsAllowed: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemMostRecentlyUsedList = extern struct {
    vtable: *const VTable,
    pub fn addItemRemoved(self: *@This(), handler: *TypedEventHandler(StorageItemMostRecentlyUsedList,ItemRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ItemRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeItemRemoved(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ItemRemoved(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "016239d5-510d-411e-8cf1-c3d1effa4c33";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ItemRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(StorageItemMostRecentlyUsedList,ItemRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ItemRemoved: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IStorageItemMostRecentlyUsedList2 = extern struct {
    vtable: *const VTable,
    pub fn Add(self: *@This(), file: *IStorageItem, metadata: HSTRING, visibility: RecentStorageItemVisibility) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.Add(@ptrCast(self), file, metadata, visibility, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddOrReplace(self: *@This(), token: HSTRING, file: *IStorageItem, metadata: HSTRING, visibility: RecentStorageItemVisibility) core.HResult!void {
        const _c = self.vtable.AddOrReplace(@ptrCast(self), token, file, metadata, visibility);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da481ea0-ed8d-4731-a1db-e44ee2204093";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, file: *IStorageItem, metadata: HSTRING, visibility: RecentStorageItemVisibility, _r: *HSTRING) callconv(.winapi) HRESULT,
        AddOrReplace: *const fn(self: *anyopaque, token: HSTRING, file: *IStorageItem, metadata: HSTRING, visibility: RecentStorageItemVisibility) callconv(.winapi) HRESULT,
    };
};
pub const ItemRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemovedEntry(self: *@This()) core.HResult!AccessListEntry {
        const this: *IItemRemovedEventArgs = @ptrCast(self);
        return try this.getRemovedEntry();
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.ItemRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IItemRemovedEventArgs.GUID;
    pub const IID: Guid = IItemRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IItemRemovedEventArgs.SIGNATURE);
};
pub const RecentStorageItemVisibility = enum(i32) {
    AppOnly = 0,
    AppAndSystem = 1,
};
pub const StorageApplicationPermissions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getFutureAccessList() core.HResult!*StorageItemAccessList {
        const _f = @This().IStorageApplicationPermissionsStaticsCache.get();
        return try _f.getFutureAccessList();
    }
    pub fn getMostRecentlyUsedList() core.HResult!*StorageItemMostRecentlyUsedList {
        const _f = @This().IStorageApplicationPermissionsStaticsCache.get();
        return try _f.getMostRecentlyUsedList();
    }
    pub fn GetFutureAccessListForUser(user: *User) core.HResult!*StorageItemAccessList {
        const _f = @This().IStorageApplicationPermissionsStatics2Cache.get();
        return try _f.GetFutureAccessListForUser(user);
    }
    pub fn GetMostRecentlyUsedListForUser(user: *User) core.HResult!*StorageItemMostRecentlyUsedList {
        const _f = @This().IStorageApplicationPermissionsStatics2Cache.get();
        return try _f.GetMostRecentlyUsedListForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.StorageApplicationPermissions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStorageApplicationPermissionsStaticsCache: FactoryCache(IStorageApplicationPermissionsStatics, RUNTIME_NAME) = .{};
    var _IStorageApplicationPermissionsStatics2Cache: FactoryCache(IStorageApplicationPermissionsStatics2, RUNTIME_NAME) = .{};
};
pub const StorageItemAccessList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Add(self: *@This(), file: *IStorageItem) core.HResult!HSTRING {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.Add(file);
    }
    pub fn AddWithMetadata(self: *@This(), file: *IStorageItem, metadata: HSTRING) core.HResult!HSTRING {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.AddWithMetadata(file, metadata);
    }
    pub fn AddOrReplace(self: *@This(), token: HSTRING, file: *IStorageItem) core.HResult!void {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.AddOrReplace(token, file);
    }
    pub fn AddOrReplaceWithMetadata(self: *@This(), token: HSTRING, file: *IStorageItem, metadata: HSTRING) core.HResult!void {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.AddOrReplaceWithMetadata(token, file, metadata);
    }
    pub fn GetItemAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(IStorageItem) {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.GetItemAsync(token);
    }
    pub fn GetFileAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.GetFileAsync(token);
    }
    pub fn GetFolderAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.GetFolderAsync(token);
    }
    pub fn GetItemAsyncWithOptions(self: *@This(), token: HSTRING, options: AccessCacheOptions) core.HResult!*IAsyncOperation(IStorageItem) {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.GetItemAsyncWithOptions(token, options);
    }
    pub fn GetFileAsyncWithOptions(self: *@This(), token: HSTRING, options: AccessCacheOptions) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.GetFileAsyncWithOptions(token, options);
    }
    pub fn GetFolderAsyncWithOptions(self: *@This(), token: HSTRING, options: AccessCacheOptions) core.HResult!*IAsyncOperation(StorageFolder) {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.GetFolderAsyncWithOptions(token, options);
    }
    pub fn Remove(self: *@This(), token: HSTRING) core.HResult!void {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.Remove(token);
    }
    pub fn ContainsItem(self: *@This(), token: HSTRING) core.HResult!bool {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.ContainsItem(token);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.Clear();
    }
    pub fn CheckAccess(self: *@This(), file: *IStorageItem) core.HResult!bool {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.CheckAccess(file);
    }
    pub fn getEntries(self: *@This()) core.HResult!*AccessListEntryView {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.getEntries();
    }
    pub fn getMaximumItemsAllowed(self: *@This()) core.HResult!u32 {
        const this: *IStorageItemAccessList = @ptrCast(self);
        return try this.getMaximumItemsAllowed();
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.StorageItemAccessList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageItemAccessList.GUID;
    pub const IID: Guid = IStorageItemAccessList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageItemAccessList.SIGNATURE);
};
pub const StorageItemMostRecentlyUsedList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addItemRemoved(self: *@This(), handler: *TypedEventHandler(StorageItemMostRecentlyUsedList,ItemRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IStorageItemMostRecentlyUsedList = @ptrCast(self);
        return try this.addItemRemoved(handler);
    }
    pub fn removeItemRemoved(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IStorageItemMostRecentlyUsedList = @ptrCast(self);
        return try this.removeItemRemoved(eventCookie);
    }
    pub fn Add(self: *@This(), file: *IStorageItem) core.HResult!HSTRING {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Add(file);
    }
    pub fn AddWithMetadata(self: *@This(), file: *IStorageItem, metadata: HSTRING) core.HResult!HSTRING {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddWithMetadata(file, metadata);
    }
    pub fn AddOrReplace(self: *@This(), token: HSTRING, file: *IStorageItem) core.HResult!void {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOrReplace(token, file);
    }
    pub fn AddOrReplaceWithMetadata(self: *@This(), token: HSTRING, file: *IStorageItem, metadata: HSTRING) core.HResult!void {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOrReplaceWithMetadata(token, file, metadata);
    }
    pub fn GetItemAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(IStorageItem) {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemAsync(token);
    }
    pub fn GetFileAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFileAsync(token);
    }
    pub fn GetFolderAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(StorageFolder) {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFolderAsync(token);
    }
    pub fn GetItemAsyncWithOptions(self: *@This(), token: HSTRING, options: AccessCacheOptions) core.HResult!*IAsyncOperation(IStorageItem) {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemAsyncWithOptions(token, options);
    }
    pub fn GetFileAsyncWithOptions(self: *@This(), token: HSTRING, options: AccessCacheOptions) core.HResult!*IAsyncOperation(StorageFile) {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFileAsyncWithOptions(token, options);
    }
    pub fn GetFolderAsyncWithOptions(self: *@This(), token: HSTRING, options: AccessCacheOptions) core.HResult!*IAsyncOperation(StorageFolder) {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFolderAsyncWithOptions(token, options);
    }
    pub fn Remove(self: *@This(), token: HSTRING) core.HResult!void {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Remove(token);
    }
    pub fn ContainsItem(self: *@This(), token: HSTRING) core.HResult!bool {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ContainsItem(token);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn CheckAccess(self: *@This(), file: *IStorageItem) core.HResult!bool {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CheckAccess(file);
    }
    pub fn getEntries(self: *@This()) core.HResult!*AccessListEntryView {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEntries();
    }
    pub fn getMaximumItemsAllowed(self: *@This()) core.HResult!u32 {
        var this: ?*IStorageItemAccessList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemAccessList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaximumItemsAllowed();
    }
    pub fn AddWithMetadataAndVisibility(self: *@This(), file: *IStorageItem, metadata: HSTRING, visibility: RecentStorageItemVisibility) core.HResult!HSTRING {
        var this: ?*IStorageItemMostRecentlyUsedList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemMostRecentlyUsedList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddWithMetadataAndVisibility(file, metadata, visibility);
    }
    pub fn AddOrReplaceWithMetadataAndVisibility(self: *@This(), token: HSTRING, file: *IStorageItem, metadata: HSTRING, visibility: RecentStorageItemVisibility) core.HResult!void {
        var this: ?*IStorageItemMostRecentlyUsedList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorageItemMostRecentlyUsedList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddOrReplaceWithMetadataAndVisibility(token, file, metadata, visibility);
    }
    pub const NAME: []const u8 = "Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorageItemMostRecentlyUsedList.GUID;
    pub const IID: Guid = IStorageItemMostRecentlyUsedList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorageItemMostRecentlyUsedList.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const HSTRING = @import("../root.zig").HSTRING;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IStorageItem = @import("../Storage.zig").IStorageItem;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const User = @import("../System.zig").User;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const StorageFile = @import("../Storage.zig").StorageFile;
