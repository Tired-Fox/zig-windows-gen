pub const IWalletItemSystemStore = extern struct {
    vtable: *const VTable,
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(WalletItem)) {
        var _r: *IAsyncOperation(IVectorView(WalletItem)) = undefined;
        const _c = self.vtable.GetItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This(), item: *WalletItem) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportItemAsync(self: *@This(), stream: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(WalletItem) {
        var _r: *IAsyncOperation(WalletItem) = undefined;
        const _c = self.vtable.ImportItemAsync(@ptrCast(self), stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppStatusForItem(self: *@This(), item: *WalletItem) core.HResult!WalletItemAppAssociation {
        var _r: WalletItemAppAssociation = undefined;
        const _c = self.vtable.GetAppStatusForItem(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchAppForItemAsync(self: *@This(), item: *WalletItem) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchAppForItemAsync(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "522e2bff-96a2-4a17-8d19-fe1d9f837561";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(WalletItem))) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, item: *WalletItem, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ImportItemAsync: *const fn(self: *anyopaque, stream: *IRandomAccessStreamReference, _r: **IAsyncOperation(WalletItem)) callconv(.winapi) HRESULT,
        GetAppStatusForItem: *const fn(self: *anyopaque, item: *WalletItem, _r: *WalletItemAppAssociation) callconv(.winapi) HRESULT,
        LaunchAppForItemAsync: *const fn(self: *anyopaque, item: *WalletItem, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IWalletItemSystemStore2 = extern struct {
    vtable: *const VTable,
    pub fn addItemsChanged(self: *@This(), handler: *TypedEventHandler(WalletItemSystemStore,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ItemsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeItemsChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ItemsChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f98d3a4e-be00-4fdd-9734-6c113c1ac1cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ItemsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WalletItemSystemStore,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ItemsChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWalletManagerSystemStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This()) core.HResult!*IAsyncOperation(WalletItemSystemStore) {
        var _r: *IAsyncOperation(WalletItemSystemStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.System.IWalletManagerSystemStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bee8eb89-2634-4b9a-8b23-ee8903c91fe0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WalletItemSystemStore)) callconv(.winapi) HRESULT,
    };
};
pub const WalletItemAppAssociation = enum(i32) {
    None = 0,
    AppInstalled = 1,
    AppNotInstalled = 2,
};
pub const WalletItemSystemStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(WalletItem)) {
        const this: *IWalletItemSystemStore = @ptrCast(self);
        return try this.GetItemsAsync();
    }
    pub fn DeleteAsync(self: *@This(), item: *WalletItem) core.HResult!*IAsyncAction {
        const this: *IWalletItemSystemStore = @ptrCast(self);
        return try this.DeleteAsync(item);
    }
    pub fn ImportItemAsync(self: *@This(), stream: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(WalletItem) {
        const this: *IWalletItemSystemStore = @ptrCast(self);
        return try this.ImportItemAsync(stream);
    }
    pub fn GetAppStatusForItem(self: *@This(), item: *WalletItem) core.HResult!WalletItemAppAssociation {
        const this: *IWalletItemSystemStore = @ptrCast(self);
        return try this.GetAppStatusForItem(item);
    }
    pub fn LaunchAppForItemAsync(self: *@This(), item: *WalletItem) core.HResult!*IAsyncOperation(bool) {
        const this: *IWalletItemSystemStore = @ptrCast(self);
        return try this.LaunchAppForItemAsync(item);
    }
    pub fn addItemsChanged(self: *@This(), handler: *TypedEventHandler(WalletItemSystemStore,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IWalletItemSystemStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWalletItemSystemStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addItemsChanged(handler);
    }
    pub fn removeItemsChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IWalletItemSystemStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWalletItemSystemStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeItemsChanged(cookie);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.System.WalletItemSystemStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletItemSystemStore.GUID;
    pub const IID: Guid = IWalletItemSystemStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletItemSystemStore.SIGNATURE);
};
pub const WalletManagerSystem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestStoreAsync() core.HResult!*IAsyncOperation(WalletItemSystemStore) {
        const factory = @This().IWalletManagerSystemStaticsCache.get();
        return try factory.RequestStoreAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.System.WalletManagerSystem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWalletManagerSystemStaticsCache: FactoryCache(IWalletManagerSystemStatics, RUNTIME_NAME) = .{};
};
const IRandomAccessStreamReference = @import("../../Storage/Streams.zig").IRandomAccessStreamReference;
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const WalletItem = @import("../Wallet.zig").WalletItem;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
