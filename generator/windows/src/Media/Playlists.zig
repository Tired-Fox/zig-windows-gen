pub const IPlaylist = extern struct {
    vtable: *const VTable,
    pub fn getFiles(self: *@This()) core.HResult!*IVector(StorageFile) {
        var _r: *IVector(StorageFile) = undefined;
        const _c = self.vtable.get_Files(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsAsync(self: *@This(), saveLocation: *IStorageFolder, desiredName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.SaveAsAsync(@ptrCast(self), saveLocation, desiredName, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsAsyncWithDesiredNameWithOptionWithPlaylistFormat(self: *@This(), saveLocation: *IStorageFolder, desiredName: HSTRING, option: NameCollisionOption, playlistFormat: PlaylistFormat) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.SaveAsAsyncWithDesiredNameWithOptionWithPlaylistFormat(@ptrCast(self), saveLocation, desiredName, option, playlistFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playlists.IPlaylist";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "803736f5-cf44-4d97-83b3-7a089e9ab663";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Files: *const fn(self: *anyopaque, _r: **IVector(StorageFile)) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SaveAsAsync: *const fn(self: *anyopaque, saveLocation: *IStorageFolder, desiredName: HSTRING, option: NameCollisionOption, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        SaveAsAsyncWithDesiredNameWithOptionWithPlaylistFormat: *const fn(self: *anyopaque, saveLocation: *IStorageFolder, desiredName: HSTRING, option: NameCollisionOption, playlistFormat: PlaylistFormat, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IPlaylistStatics = extern struct {
    vtable: *const VTable,
    pub fn LoadAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(Playlist) {
        var _r: *IAsyncOperation(Playlist) = undefined;
        const _c = self.vtable.LoadAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playlists.IPlaylistStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5c331cd-81f9-4ff3-95b9-70b6ff046b68";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(Playlist)) callconv(.winapi) HRESULT,
    };
};
pub const Playlist = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFiles(self: *@This()) core.HResult!*IVector(StorageFile) {
        const this: *IPlaylist = @ptrCast(self);
        return try this.getFiles();
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPlaylist = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn SaveAsAsync(self: *@This(), saveLocation: *IStorageFolder, desiredName: HSTRING, option: NameCollisionOption) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IPlaylist = @ptrCast(self);
        return try this.SaveAsAsync(saveLocation, desiredName, option);
    }
    pub fn SaveAsAsyncWithPlaylistFormat(self: *@This(), saveLocation: *IStorageFolder, desiredName: HSTRING, option: NameCollisionOption, playlistFormat: PlaylistFormat) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IPlaylist = @ptrCast(self);
        return try this.SaveAsAsyncWithPlaylistFormat(saveLocation, desiredName, option, playlistFormat);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlaylist.IID)));
    }
    pub fn LoadAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(Playlist) {
        const factory = @This().IPlaylistStaticsCache.get();
        return try factory.LoadAsync(file);
    }
    pub const NAME: []const u8 = "Windows.Media.Playlists.Playlist";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaylist.GUID;
    pub const IID: Guid = IPlaylist.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaylist.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPlaylistStaticsCache: FactoryCache(IPlaylistStatics, RUNTIME_NAME) = .{};
};
pub const PlaylistFormat = enum(i32) {
    WindowsMedia = 0,
    Zune = 1,
    M3u = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const NameCollisionOption = @import("../Storage.zig").NameCollisionOption;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IStorageFolder = @import("../Storage.zig").IStorageFolder;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const StorageFile = @import("../Storage.zig").StorageFile;
const HSTRING = @import("../root.zig").HSTRING;
