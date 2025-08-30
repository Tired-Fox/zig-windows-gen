pub const GameSaveBlobGetResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        const this: *IGameSaveBlobGetResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getValue(self: *@This()) core.HResult!*IMapView(HSTRING,IBuffer) {
        const this: *IGameSaveBlobGetResult = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveBlobGetResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveBlobGetResult.GUID;
    pub const IID: Guid = IGameSaveBlobGetResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveBlobGetResult.SIGNATURE);
};
pub const GameSaveBlobInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IGameSaveBlobInfo = @ptrCast(self);
        return try this.getName();
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IGameSaveBlobInfo = @ptrCast(self);
        return try this.getSize();
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveBlobInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveBlobInfo.GUID;
    pub const IID: Guid = IGameSaveBlobInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveBlobInfo.SIGNATURE);
};
pub const GameSaveBlobInfoGetResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        const this: *IGameSaveBlobInfoGetResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getValue(self: *@This()) core.HResult!*IVectorView(GameSaveBlobInfo) {
        const this: *IGameSaveBlobInfoGetResult = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveBlobInfoGetResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveBlobInfoGetResult.GUID;
    pub const IID: Guid = IGameSaveBlobInfoGetResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveBlobInfoGetResult.SIGNATURE);
};
pub const GameSaveBlobInfoQuery = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetBlobInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(GameSaveBlobInfoGetResult) {
        const this: *IGameSaveBlobInfoQuery = @ptrCast(self);
        return try this.GetBlobInfoAsync();
    }
    pub fn GetBlobInfoAsyncWithStartIndexWithMaxNumberOfItems(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(GameSaveBlobInfoGetResult) {
        const this: *IGameSaveBlobInfoQuery = @ptrCast(self);
        return try this.GetBlobInfoAsyncWithStartIndexWithMaxNumberOfItems(startIndex, maxNumberOfItems);
    }
    pub fn GetItemCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        const this: *IGameSaveBlobInfoQuery = @ptrCast(self);
        return try this.GetItemCountAsync();
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveBlobInfoQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveBlobInfoQuery.GUID;
    pub const IID: Guid = IGameSaveBlobInfoQuery.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveBlobInfoQuery.SIGNATURE);
};
pub const GameSaveContainer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IGameSaveContainer = @ptrCast(self);
        return try this.getName();
    }
    pub fn getProvider(self: *@This()) core.HResult!*GameSaveProvider {
        const this: *IGameSaveContainer = @ptrCast(self);
        return try this.getProvider();
    }
    pub fn SubmitUpdatesAsync(self: *@This(), blobsToWrite: *IMapView(HSTRING,IBuffer), blobsToDelete: *IIterable(HSTRING), displayName: HSTRING) core.HResult!*IAsyncOperation(GameSaveOperationResult) {
        const this: *IGameSaveContainer = @ptrCast(self);
        return try this.SubmitUpdatesAsync(blobsToWrite, blobsToDelete, displayName);
    }
    pub fn ReadAsync(self: *@This(), blobsToRead: *IMapView(HSTRING,IBuffer)) core.HResult!*IAsyncOperation(GameSaveOperationResult) {
        const this: *IGameSaveContainer = @ptrCast(self);
        return try this.ReadAsync(blobsToRead);
    }
    pub fn GetAsync(self: *@This(), blobsToRead: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(GameSaveBlobGetResult) {
        const this: *IGameSaveContainer = @ptrCast(self);
        return try this.GetAsync(blobsToRead);
    }
    pub fn SubmitPropertySetUpdatesAsync(self: *@This(), blobsToWrite: *IPropertySet, blobsToDelete: *IIterable(HSTRING), displayName: HSTRING) core.HResult!*IAsyncOperation(GameSaveOperationResult) {
        const this: *IGameSaveContainer = @ptrCast(self);
        return try this.SubmitPropertySetUpdatesAsync(blobsToWrite, blobsToDelete, displayName);
    }
    pub fn CreateBlobInfoQuery(self: *@This(), blobNamePrefix: HSTRING) core.HResult!*GameSaveBlobInfoQuery {
        const this: *IGameSaveContainer = @ptrCast(self);
        return try this.CreateBlobInfoQuery(blobNamePrefix);
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveContainer.GUID;
    pub const IID: Guid = IGameSaveContainer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveContainer.SIGNATURE);
};
pub const GameSaveContainerInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IGameSaveContainerInfo = @ptrCast(self);
        return try this.getName();
    }
    pub fn getTotalSize(self: *@This()) core.HResult!u64 {
        const this: *IGameSaveContainerInfo = @ptrCast(self);
        return try this.getTotalSize();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IGameSaveContainerInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getLastModifiedTime(self: *@This()) core.HResult!DateTime {
        const this: *IGameSaveContainerInfo = @ptrCast(self);
        return try this.getLastModifiedTime();
    }
    pub fn getNeedsSync(self: *@This()) core.HResult!bool {
        const this: *IGameSaveContainerInfo = @ptrCast(self);
        return try this.getNeedsSync();
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveContainerInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveContainerInfo.GUID;
    pub const IID: Guid = IGameSaveContainerInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveContainerInfo.SIGNATURE);
};
pub const GameSaveContainerInfoGetResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        const this: *IGameSaveContainerInfoGetResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getValue(self: *@This()) core.HResult!*IVectorView(GameSaveContainerInfo) {
        const this: *IGameSaveContainerInfoGetResult = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveContainerInfoGetResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveContainerInfoGetResult.GUID;
    pub const IID: Guid = IGameSaveContainerInfoGetResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveContainerInfoGetResult.SIGNATURE);
};
pub const GameSaveContainerInfoQuery = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetContainerInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(GameSaveContainerInfoGetResult) {
        const this: *IGameSaveContainerInfoQuery = @ptrCast(self);
        return try this.GetContainerInfoAsync();
    }
    pub fn GetContainerInfoAsyncWithStartIndexWithMaxNumberOfItems(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(GameSaveContainerInfoGetResult) {
        const this: *IGameSaveContainerInfoQuery = @ptrCast(self);
        return try this.GetContainerInfoAsyncWithStartIndexWithMaxNumberOfItems(startIndex, maxNumberOfItems);
    }
    pub fn GetItemCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        const this: *IGameSaveContainerInfoQuery = @ptrCast(self);
        return try this.GetItemCountAsync();
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveContainerInfoQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveContainerInfoQuery.GUID;
    pub const IID: Guid = IGameSaveContainerInfoQuery.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveContainerInfoQuery.SIGNATURE);
};
pub const GameSaveErrorStatus = enum(i32) {
    Ok = 0,
    Abort = -2147467260,
    InvalidContainerName = -2138898431,
    NoAccess = -2138898430,
    OutOfLocalStorage = -2138898429,
    UserCanceled = -2138898428,
    UpdateTooBig = -2138898427,
    QuotaExceeded = -2138898426,
    ProvidedBufferTooSmall = -2138898425,
    BlobNotFound = -2138898424,
    NoXboxLiveInfo = -2138898423,
    ContainerNotInSync = -2138898422,
    ContainerSyncFailed = -2138898421,
    UserHasNoXboxLiveInfo = -2138898420,
    ObjectExpired = -2138898419,
};
pub const GameSaveOperationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        const this: *IGameSaveOperationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveOperationResult.GUID;
    pub const IID: Guid = IGameSaveOperationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveOperationResult.SIGNATURE);
};
pub const GameSaveProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IGameSaveProvider = @ptrCast(self);
        return try this.getUser();
    }
    pub fn CreateContainer(self: *@This(), name: HSTRING) core.HResult!*GameSaveContainer {
        const this: *IGameSaveProvider = @ptrCast(self);
        return try this.CreateContainer(name);
    }
    pub fn DeleteContainerAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(GameSaveOperationResult) {
        const this: *IGameSaveProvider = @ptrCast(self);
        return try this.DeleteContainerAsync(name);
    }
    pub fn CreateContainerInfoQuery(self: *@This()) core.HResult!*GameSaveContainerInfoQuery {
        const this: *IGameSaveProvider = @ptrCast(self);
        return try this.CreateContainerInfoQuery();
    }
    pub fn CreateContainerInfoQueryWithContainerNamePrefix(self: *@This(), containerNamePrefix: HSTRING) core.HResult!*GameSaveContainerInfoQuery {
        const this: *IGameSaveProvider = @ptrCast(self);
        return try this.CreateContainerInfoQueryWithContainerNamePrefix(containerNamePrefix);
    }
    pub fn GetRemainingBytesInQuotaAsync(self: *@This()) core.HResult!*IAsyncOperation(i64) {
        const this: *IGameSaveProvider = @ptrCast(self);
        return try this.GetRemainingBytesInQuotaAsync();
    }
    pub fn getContainersChangedSinceLastSync(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IGameSaveProvider = @ptrCast(self);
        return try this.getContainersChangedSinceLastSync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForUserAsync(user: *User, serviceConfigId: HSTRING) core.HResult!*IAsyncOperation(GameSaveProviderGetResult) {
        const factory = @This().IGameSaveProviderStaticsCache.get();
        return try factory.GetForUserAsync(user, serviceConfigId);
    }
    pub fn GetSyncOnDemandForUserAsync(user: *User, serviceConfigId: HSTRING) core.HResult!*IAsyncOperation(GameSaveProviderGetResult) {
        const factory = @This().IGameSaveProviderStaticsCache.get();
        return try factory.GetSyncOnDemandForUserAsync(user, serviceConfigId);
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveProvider.GUID;
    pub const IID: Guid = IGameSaveProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveProvider.SIGNATURE);
    var _IGameSaveProviderStaticsCache: FactoryCache(IGameSaveProviderStatics, RUNTIME_NAME) = .{};
};
pub const GameSaveProviderGetResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        const this: *IGameSaveProviderGetResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getValue(self: *@This()) core.HResult!*GameSaveProvider {
        const this: *IGameSaveProviderGetResult = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.GameSaveProviderGetResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameSaveProviderGetResult.GUID;
    pub const IID: Guid = IGameSaveProviderGetResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameSaveProviderGetResult.SIGNATURE);
};
pub const IGameSaveBlobGetResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        var _r: GameSaveErrorStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IMapView(HSTRING,IBuffer) {
        var _r: *IMapView(HSTRING,IBuffer) = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveBlobGetResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "917281e0-7201-4953-aa2c-4008f03aef45";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GameSaveErrorStatus) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveBlobInfo = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveBlobInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "add38034-baf0-4645-b6d0-46edaffb3c2b";
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
        get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveBlobInfoGetResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        var _r: GameSaveErrorStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IVectorView(GameSaveBlobInfo) {
        var _r: *IVectorView(GameSaveBlobInfo) = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveBlobInfoGetResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7578582-3697-42bf-989c-665d923b5231";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GameSaveErrorStatus) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IVectorView(GameSaveBlobInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveBlobInfoQuery = extern struct {
    vtable: *const VTable,
    pub fn GetBlobInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(GameSaveBlobInfoGetResult) {
        var _r: *IAsyncOperation(GameSaveBlobInfoGetResult) = undefined;
        const _c = self.vtable.GetBlobInfoAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBlobInfoAsync(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(GameSaveBlobInfoGetResult) {
        var _r: *IAsyncOperation(GameSaveBlobInfoGetResult) = undefined;
        const _c = self.vtable.GetBlobInfoAsync(@ptrCast(self), startIndex, maxNumberOfItems, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.GetItemCountAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveBlobInfoQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fdd74b2-eeee-447b-a9d2-7f96c0f83208";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetBlobInfoAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GameSaveBlobInfoGetResult)) callconv(.winapi) HRESULT,
        GetBlobInfoAsync: *const fn(self: *anyopaque, startIndex: u32, maxNumberOfItems: u32, _r: **IAsyncOperation(GameSaveBlobInfoGetResult)) callconv(.winapi) HRESULT,
        GetItemCountAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveContainer = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProvider(self: *@This()) core.HResult!*GameSaveProvider {
        var _r: *GameSaveProvider = undefined;
        const _c = self.vtable.get_Provider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SubmitUpdatesAsync(self: *@This(), blobsToWrite: *IMapView(HSTRING,IBuffer), blobsToDelete: *IIterable(HSTRING), displayName: HSTRING) core.HResult!*IAsyncOperation(GameSaveOperationResult) {
        var _r: *IAsyncOperation(GameSaveOperationResult) = undefined;
        const _c = self.vtable.SubmitUpdatesAsync(@ptrCast(self), blobsToWrite, blobsToDelete, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadAsync(self: *@This(), blobsToRead: *IMapView(HSTRING,IBuffer)) core.HResult!*IAsyncOperation(GameSaveOperationResult) {
        var _r: *IAsyncOperation(GameSaveOperationResult) = undefined;
        const _c = self.vtable.ReadAsync(@ptrCast(self), blobsToRead, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAsync(self: *@This(), blobsToRead: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(GameSaveBlobGetResult) {
        var _r: *IAsyncOperation(GameSaveBlobGetResult) = undefined;
        const _c = self.vtable.GetAsync(@ptrCast(self), blobsToRead, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SubmitPropertySetUpdatesAsync(self: *@This(), blobsToWrite: *IPropertySet, blobsToDelete: *IIterable(HSTRING), displayName: HSTRING) core.HResult!*IAsyncOperation(GameSaveOperationResult) {
        var _r: *IAsyncOperation(GameSaveOperationResult) = undefined;
        const _c = self.vtable.SubmitPropertySetUpdatesAsync(@ptrCast(self), blobsToWrite, blobsToDelete, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBlobInfoQuery(self: *@This(), blobNamePrefix: HSTRING) core.HResult!*GameSaveBlobInfoQuery {
        var _r: *GameSaveBlobInfoQuery = undefined;
        const _c = self.vtable.CreateBlobInfoQuery(@ptrCast(self), blobNamePrefix, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3c08f89-563f-4ecd-9c6f-33fd0e323d10";
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
        get_Provider: *const fn(self: *anyopaque, _r: **GameSaveProvider) callconv(.winapi) HRESULT,
        SubmitUpdatesAsync: *const fn(self: *anyopaque, blobsToWrite: *IMapView(HSTRING,IBuffer), blobsToDelete: *IIterable(HSTRING), displayName: HSTRING, _r: **IAsyncOperation(GameSaveOperationResult)) callconv(.winapi) HRESULT,
        ReadAsync: *const fn(self: *anyopaque, blobsToRead: *IMapView(HSTRING,IBuffer), _r: **IAsyncOperation(GameSaveOperationResult)) callconv(.winapi) HRESULT,
        GetAsync: *const fn(self: *anyopaque, blobsToRead: *IIterable(HSTRING), _r: **IAsyncOperation(GameSaveBlobGetResult)) callconv(.winapi) HRESULT,
        SubmitPropertySetUpdatesAsync: *const fn(self: *anyopaque, blobsToWrite: *IPropertySet, blobsToDelete: *IIterable(HSTRING), displayName: HSTRING, _r: **IAsyncOperation(GameSaveOperationResult)) callconv(.winapi) HRESULT,
        CreateBlobInfoQuery: *const fn(self: *anyopaque, blobNamePrefix: HSTRING, _r: **GameSaveBlobInfoQuery) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveContainerInfo = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotalSize(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_TotalSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastModifiedTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastModifiedTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeedsSync(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NeedsSync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveContainerInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7e27300-155d-4bb4-b2ba-930306f391b5";
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
        get_TotalSize: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LastModifiedTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_NeedsSync: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveContainerInfoGetResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        var _r: GameSaveErrorStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IVectorView(GameSaveContainerInfo) {
        var _r: *IVectorView(GameSaveContainerInfo) = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveContainerInfoGetResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ffc50d74-c581-4f9d-9e39-30a10c1e4c50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GameSaveErrorStatus) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IVectorView(GameSaveContainerInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveContainerInfoQuery = extern struct {
    vtable: *const VTable,
    pub fn GetContainerInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(GameSaveContainerInfoGetResult) {
        var _r: *IAsyncOperation(GameSaveContainerInfoGetResult) = undefined;
        const _c = self.vtable.GetContainerInfoAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContainerInfoAsync(self: *@This(), startIndex: u32, maxNumberOfItems: u32) core.HResult!*IAsyncOperation(GameSaveContainerInfoGetResult) {
        var _r: *IAsyncOperation(GameSaveContainerInfoGetResult) = undefined;
        const _c = self.vtable.GetContainerInfoAsync(@ptrCast(self), startIndex, maxNumberOfItems, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.GetItemCountAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveContainerInfoQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c94e863-6f80-4327-9327-ffc11afd42b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetContainerInfoAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GameSaveContainerInfoGetResult)) callconv(.winapi) HRESULT,
        GetContainerInfoAsync: *const fn(self: *anyopaque, startIndex: u32, maxNumberOfItems: u32, _r: **IAsyncOperation(GameSaveContainerInfoGetResult)) callconv(.winapi) HRESULT,
        GetItemCountAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveOperationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        var _r: GameSaveErrorStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf0f1a05-24a0-4582-9a55-b1bbbb9388d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GameSaveErrorStatus) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveProvider = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateContainer(self: *@This(), name: HSTRING) core.HResult!*GameSaveContainer {
        var _r: *GameSaveContainer = undefined;
        const _c = self.vtable.CreateContainer(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteContainerAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(GameSaveOperationResult) {
        var _r: *IAsyncOperation(GameSaveOperationResult) = undefined;
        const _c = self.vtable.DeleteContainerAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateContainerInfoQuery(self: *@This()) core.HResult!*GameSaveContainerInfoQuery {
        var _r: *GameSaveContainerInfoQuery = undefined;
        const _c = self.vtable.CreateContainerInfoQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateContainerInfoQuery(self: *@This(), containerNamePrefix: HSTRING) core.HResult!*GameSaveContainerInfoQuery {
        var _r: *GameSaveContainerInfoQuery = undefined;
        const _c = self.vtable.CreateContainerInfoQuery(@ptrCast(self), containerNamePrefix, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRemainingBytesInQuotaAsync(self: *@This()) core.HResult!*IAsyncOperation(i64) {
        var _r: *IAsyncOperation(i64) = undefined;
        const _c = self.vtable.GetRemainingBytesInQuotaAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContainersChangedSinceLastSync(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_ContainersChangedSinceLastSync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90a60394-80fe-4211-97f8-a5de14dd95d2";
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
        CreateContainer: *const fn(self: *anyopaque, name: HSTRING, _r: **GameSaveContainer) callconv(.winapi) HRESULT,
        DeleteContainerAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(GameSaveOperationResult)) callconv(.winapi) HRESULT,
        CreateContainerInfoQuery: *const fn(self: *anyopaque, _r: **GameSaveContainerInfoQuery) callconv(.winapi) HRESULT,
        CreateContainerInfoQuery: *const fn(self: *anyopaque, containerNamePrefix: HSTRING, _r: **GameSaveContainerInfoQuery) callconv(.winapi) HRESULT,
        GetRemainingBytesInQuotaAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(i64)) callconv(.winapi) HRESULT,
        get_ContainersChangedSinceLastSync: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveProviderGetResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GameSaveErrorStatus {
        var _r: GameSaveErrorStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*GameSaveProvider {
        var _r: *GameSaveProvider = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveProviderGetResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ab90816-d393-4d65-ac16-41c3e67ab945";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GameSaveErrorStatus) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **GameSaveProvider) callconv(.winapi) HRESULT,
    };
};
pub const IGameSaveProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForUserAsync(self: *@This(), user: *User, serviceConfigId: HSTRING) core.HResult!*IAsyncOperation(GameSaveProviderGetResult) {
        var _r: *IAsyncOperation(GameSaveProviderGetResult) = undefined;
        const _c = self.vtable.GetForUserAsync(@ptrCast(self), user, serviceConfigId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSyncOnDemandForUserAsync(self: *@This(), user: *User, serviceConfigId: HSTRING) core.HResult!*IAsyncOperation(GameSaveProviderGetResult) {
        var _r: *IAsyncOperation(GameSaveProviderGetResult) = undefined;
        const _c = self.vtable.GetSyncOnDemandForUserAsync(@ptrCast(self), user, serviceConfigId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.XboxLive.Storage.IGameSaveProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d01d3ed0-7b03-449d-8cbd-3402842a1048";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUserAsync: *const fn(self: *anyopaque, user: *User, serviceConfigId: HSTRING, _r: **IAsyncOperation(GameSaveProviderGetResult)) callconv(.winapi) HRESULT,
        GetSyncOnDemandForUserAsync: *const fn(self: *anyopaque, user: *User, serviceConfigId: HSTRING, _r: **IAsyncOperation(GameSaveProviderGetResult)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const DateTime = @import("../../Foundation.zig").DateTime;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IPropertySet = @import("../../Foundation/Collections.zig").IPropertySet;
const TrustLevel = @import("../../root.zig").TrustLevel;
const User = @import("../../System.zig").User;
const HSTRING = @import("../../root.zig").HSTRING;
