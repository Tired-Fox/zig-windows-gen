pub const AtomPubClient = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RetrieveServiceDocumentAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(ServiceDocument,RetrievalProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.RetrieveServiceDocumentAsync(uri);
    }
    pub fn RetrieveMediaResourceAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(IInputStream,RetrievalProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.RetrieveMediaResourceAsync(uri);
    }
    pub fn RetrieveResourceAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(SyndicationItem,RetrievalProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.RetrieveResourceAsync(uri);
    }
    pub fn CreateResourceAsync(self: *@This(), uri: *Uri, description: HSTRING, item: *SyndicationItem) core.HResult!*IAsyncOperationWithProgress(SyndicationItem,TransferProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.CreateResourceAsync(uri, description, item);
    }
    pub fn CreateMediaResourceAsync(self: *@This(), uri: *Uri, mediaType: HSTRING, description: HSTRING, mediaStream: *IInputStream) core.HResult!*IAsyncOperationWithProgress(SyndicationItem,TransferProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.CreateMediaResourceAsync(uri, mediaType, description, mediaStream);
    }
    pub fn UpdateMediaResourceAsync(self: *@This(), uri: *Uri, mediaType: HSTRING, mediaStream: *IInputStream) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.UpdateMediaResourceAsync(uri, mediaType, mediaStream);
    }
    pub fn UpdateResourceAsync(self: *@This(), uri: *Uri, item: *SyndicationItem) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.UpdateResourceAsync(uri, item);
    }
    pub fn UpdateResourceItemAsync(self: *@This(), item: *SyndicationItem) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.UpdateResourceItemAsync(item);
    }
    pub fn DeleteResourceAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.DeleteResourceAsync(uri);
    }
    pub fn DeleteResourceItemAsync(self: *@This(), item: *SyndicationItem) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.DeleteResourceItemAsync(item);
    }
    pub fn CancelAsyncOperations(self: *@This()) core.HResult!void {
        const this: *IAtomPubClient = @ptrCast(self);
        return try this.CancelAsyncOperations();
    }
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCredential();
    }
    pub fn putServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putServerCredential(value);
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProxyCredential();
    }
    pub fn putProxyCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProxyCredential(value);
    }
    pub fn getMaxResponseBufferSize(self: *@This()) core.HResult!u32 {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxResponseBufferSize();
    }
    pub fn putMaxResponseBufferSize(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxResponseBufferSize(value);
    }
    pub fn getTimeout(self: *@This()) core.HResult!u32 {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimeout();
    }
    pub fn putTimeout(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTimeout(value);
    }
    pub fn getBypassCacheOnRetrieve(self: *@This()) core.HResult!bool {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBypassCacheOnRetrieve();
    }
    pub fn putBypassCacheOnRetrieve(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBypassCacheOnRetrieve(value);
    }
    pub fn SetRequestHeader(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetRequestHeader(name, value);
    }
    pub fn RetrieveFeedAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(SyndicationFeed,RetrievalProgress) {
        var this: ?*ISyndicationClient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationClient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RetrieveFeedAsync(uri);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAtomPubClient.IID)));
    }
    pub fn CreateAtomPubClientWithCredentials(serverCredential: *PasswordCredential) core.HResult!*AtomPubClient {
        const _f = @This().IAtomPubClientFactoryCache.get();
        return try _f.CreateAtomPubClientWithCredentials(serverCredential);
    }
    pub const NAME: []const u8 = "Windows.Web.AtomPub.AtomPubClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAtomPubClient.GUID;
    pub const IID: Guid = IAtomPubClient.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAtomPubClient.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAtomPubClientFactoryCache: FactoryCache(IAtomPubClientFactory, RUNTIME_NAME) = .{};
};
pub const IAtomPubClient = extern struct {
    vtable: *const VTable,
    pub fn RetrieveServiceDocumentAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(ServiceDocument,RetrievalProgress) {
        var _r: *IAsyncOperationWithProgress(ServiceDocument,RetrievalProgress) = undefined;
        const _c = self.vtable.RetrieveServiceDocumentAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetrieveMediaResourceAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(IInputStream,RetrievalProgress) {
        var _r: *IAsyncOperationWithProgress(IInputStream,RetrievalProgress) = undefined;
        const _c = self.vtable.RetrieveMediaResourceAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetrieveResourceAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(SyndicationItem,RetrievalProgress) {
        var _r: *IAsyncOperationWithProgress(SyndicationItem,RetrievalProgress) = undefined;
        const _c = self.vtable.RetrieveResourceAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateResourceAsync(self: *@This(), uri: *Uri, description: HSTRING, item: *SyndicationItem) core.HResult!*IAsyncOperationWithProgress(SyndicationItem,TransferProgress) {
        var _r: *IAsyncOperationWithProgress(SyndicationItem,TransferProgress) = undefined;
        const _c = self.vtable.CreateResourceAsync(@ptrCast(self), uri, description, item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMediaResourceAsync(self: *@This(), uri: *Uri, mediaType: HSTRING, description: HSTRING, mediaStream: *IInputStream) core.HResult!*IAsyncOperationWithProgress(SyndicationItem,TransferProgress) {
        var _r: *IAsyncOperationWithProgress(SyndicationItem,TransferProgress) = undefined;
        const _c = self.vtable.CreateMediaResourceAsync(@ptrCast(self), uri, mediaType, description, mediaStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateMediaResourceAsync(self: *@This(), uri: *Uri, mediaType: HSTRING, mediaStream: *IInputStream) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        var _r: *IAsyncActionWithProgress(TransferProgress) = undefined;
        const _c = self.vtable.UpdateMediaResourceAsync(@ptrCast(self), uri, mediaType, mediaStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateResourceAsync(self: *@This(), uri: *Uri, item: *SyndicationItem) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        var _r: *IAsyncActionWithProgress(TransferProgress) = undefined;
        const _c = self.vtable.UpdateResourceAsync(@ptrCast(self), uri, item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateResourceItemAsync(self: *@This(), item: *SyndicationItem) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        var _r: *IAsyncActionWithProgress(TransferProgress) = undefined;
        const _c = self.vtable.UpdateResourceItemAsync(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteResourceAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        var _r: *IAsyncActionWithProgress(TransferProgress) = undefined;
        const _c = self.vtable.DeleteResourceAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteResourceItemAsync(self: *@This(), item: *SyndicationItem) core.HResult!*IAsyncActionWithProgress(TransferProgress) {
        var _r: *IAsyncActionWithProgress(TransferProgress) = undefined;
        const _c = self.vtable.DeleteResourceItemAsync(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CancelAsyncOperations(self: *@This()) core.HResult!void {
        const _c = self.vtable.CancelAsyncOperations(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.AtomPub.IAtomPubClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35392c38-cded-4d4c-9637-05f15c1c9406";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RetrieveServiceDocumentAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(ServiceDocument,RetrievalProgress)) callconv(.winapi) HRESULT,
        RetrieveMediaResourceAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(IInputStream,RetrievalProgress)) callconv(.winapi) HRESULT,
        RetrieveResourceAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(SyndicationItem,RetrievalProgress)) callconv(.winapi) HRESULT,
        CreateResourceAsync: *const fn(self: *anyopaque, uri: *Uri, description: HSTRING, item: *SyndicationItem, _r: **IAsyncOperationWithProgress(SyndicationItem,TransferProgress)) callconv(.winapi) HRESULT,
        CreateMediaResourceAsync: *const fn(self: *anyopaque, uri: *Uri, mediaType: HSTRING, description: HSTRING, mediaStream: *IInputStream, _r: **IAsyncOperationWithProgress(SyndicationItem,TransferProgress)) callconv(.winapi) HRESULT,
        UpdateMediaResourceAsync: *const fn(self: *anyopaque, uri: *Uri, mediaType: HSTRING, mediaStream: *IInputStream, _r: **IAsyncActionWithProgress(TransferProgress)) callconv(.winapi) HRESULT,
        UpdateResourceAsync: *const fn(self: *anyopaque, uri: *Uri, item: *SyndicationItem, _r: **IAsyncActionWithProgress(TransferProgress)) callconv(.winapi) HRESULT,
        UpdateResourceItemAsync: *const fn(self: *anyopaque, item: *SyndicationItem, _r: **IAsyncActionWithProgress(TransferProgress)) callconv(.winapi) HRESULT,
        DeleteResourceAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncActionWithProgress(TransferProgress)) callconv(.winapi) HRESULT,
        DeleteResourceItemAsync: *const fn(self: *anyopaque, item: *SyndicationItem, _r: **IAsyncActionWithProgress(TransferProgress)) callconv(.winapi) HRESULT,
        CancelAsyncOperations: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAtomPubClientFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateAtomPubClientWithCredentials(self: *@This(), serverCredential: *PasswordCredential) core.HResult!*AtomPubClient {
        var _r: *AtomPubClient = undefined;
        const _c = self.vtable.CreateAtomPubClientWithCredentials(@ptrCast(self), serverCredential, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.AtomPub.IAtomPubClientFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49d55012-57cb-4bde-ab9f-2610b172777b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAtomPubClientWithCredentials: *const fn(self: *anyopaque, serverCredential: *PasswordCredential, _r: **AtomPubClient) callconv(.winapi) HRESULT,
    };
};
pub const IResourceCollection = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!*ISyndicationText {
        var _r: *ISyndicationText = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCategories(self: *@This()) core.HResult!*IVectorView(SyndicationCategory) {
        var _r: *IVectorView(SyndicationCategory) = undefined;
        const _c = self.vtable.get_Categories(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccepts(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Accepts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.AtomPub.IResourceCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f5fd609-bc88-41d4-88fa-3de6704d428e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: **ISyndicationText) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Categories: *const fn(self: *anyopaque, _r: **IVectorView(SyndicationCategory)) callconv(.winapi) HRESULT,
        get_Accepts: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IServiceDocument = extern struct {
    vtable: *const VTable,
    pub fn getWorkspaces(self: *@This()) core.HResult!*IVectorView(Workspace) {
        var _r: *IVectorView(Workspace) = undefined;
        const _c = self.vtable.get_Workspaces(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.AtomPub.IServiceDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b7ec771-2ab3-4dbe-8bcc-778f92b75e51";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Workspaces: *const fn(self: *anyopaque, _r: **IVectorView(Workspace)) callconv(.winapi) HRESULT,
    };
};
pub const IWorkspace = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!*ISyndicationText {
        var _r: *ISyndicationText = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCollections(self: *@This()) core.HResult!*IVectorView(ResourceCollection) {
        var _r: *IVectorView(ResourceCollection) = undefined;
        const _c = self.vtable.get_Collections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.AtomPub.IWorkspace";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b41da63b-a4b8-4036-89c5-83c31266ba49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: **ISyndicationText) callconv(.winapi) HRESULT,
        get_Collections: *const fn(self: *anyopaque, _r: **IVectorView(ResourceCollection)) callconv(.winapi) HRESULT,
    };
};
pub const ResourceCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!*ISyndicationText {
        const this: *IResourceCollection = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IResourceCollection = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getCategories(self: *@This()) core.HResult!*IVectorView(SyndicationCategory) {
        const this: *IResourceCollection = @ptrCast(self);
        return try this.getCategories();
    }
    pub fn getAccepts(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IResourceCollection = @ptrCast(self);
        return try this.getAccepts();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn putNodeName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeName(value);
    }
    pub fn getNodeNamespace(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeNamespace();
    }
    pub fn putNodeNamespace(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeNamespace(value);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLanguage(value);
    }
    pub fn getBaseUri(self: *@This()) core.HResult!*Uri {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBaseUri();
    }
    pub fn putBaseUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBaseUri(value);
    }
    pub fn getAttributeExtensions(self: *@This()) core.HResult!*IVector(SyndicationAttribute) {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributeExtensions();
    }
    pub fn getElementExtensions(self: *@This()) core.HResult!*IVector(ISyndicationNode) {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getElementExtensions();
    }
    pub fn GetXmlDocument(self: *@This(), format: SyndicationFormat) core.HResult!*XmlDocument {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXmlDocument(format);
    }
    pub const NAME: []const u8 = "Windows.Web.AtomPub.ResourceCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResourceCollection.GUID;
    pub const IID: Guid = IResourceCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResourceCollection.SIGNATURE);
};
pub const ServiceDocument = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWorkspaces(self: *@This()) core.HResult!*IVectorView(Workspace) {
        const this: *IServiceDocument = @ptrCast(self);
        return try this.getWorkspaces();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn putNodeName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeName(value);
    }
    pub fn getNodeNamespace(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeNamespace();
    }
    pub fn putNodeNamespace(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeNamespace(value);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLanguage(value);
    }
    pub fn getBaseUri(self: *@This()) core.HResult!*Uri {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBaseUri();
    }
    pub fn putBaseUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBaseUri(value);
    }
    pub fn getAttributeExtensions(self: *@This()) core.HResult!*IVector(SyndicationAttribute) {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributeExtensions();
    }
    pub fn getElementExtensions(self: *@This()) core.HResult!*IVector(ISyndicationNode) {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getElementExtensions();
    }
    pub fn GetXmlDocument(self: *@This(), format: SyndicationFormat) core.HResult!*XmlDocument {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXmlDocument(format);
    }
    pub const NAME: []const u8 = "Windows.Web.AtomPub.ServiceDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IServiceDocument.GUID;
    pub const IID: Guid = IServiceDocument.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IServiceDocument.SIGNATURE);
};
pub const Workspace = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!*ISyndicationText {
        const this: *IWorkspace = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getCollections(self: *@This()) core.HResult!*IVectorView(ResourceCollection) {
        const this: *IWorkspace = @ptrCast(self);
        return try this.getCollections();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn putNodeName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeName(value);
    }
    pub fn getNodeNamespace(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeNamespace();
    }
    pub fn putNodeNamespace(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeNamespace(value);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLanguage(value);
    }
    pub fn getBaseUri(self: *@This()) core.HResult!*Uri {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBaseUri();
    }
    pub fn putBaseUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBaseUri(value);
    }
    pub fn getAttributeExtensions(self: *@This()) core.HResult!*IVector(SyndicationAttribute) {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributeExtensions();
    }
    pub fn getElementExtensions(self: *@This()) core.HResult!*IVector(ISyndicationNode) {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getElementExtensions();
    }
    pub fn GetXmlDocument(self: *@This(), format: SyndicationFormat) core.HResult!*XmlDocument {
        var this: ?*ISyndicationNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXmlDocument(format);
    }
    pub const NAME: []const u8 = "Windows.Web.AtomPub.Workspace";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWorkspace.GUID;
    pub const IID: Guid = IWorkspace.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWorkspace.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const HSTRING = @import("../root.zig").HSTRING;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const ISyndicationNode = @import("./Syndication.zig").ISyndicationNode;
const IVector = @import("../Foundation/Collections.zig").IVector;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const Uri = @import("../Foundation.zig").Uri;
const SyndicationCategory = @import("./Syndication.zig").SyndicationCategory;
const SyndicationFeed = @import("./Syndication.zig").SyndicationFeed;
const ISyndicationText = @import("./Syndication.zig").ISyndicationText;
const HRESULT = @import("../root.zig").HRESULT;
const FactoryCache = @import("../core.zig").FactoryCache;
const core = @import("../root.zig").core;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const SyndicationAttribute = @import("./Syndication.zig").SyndicationAttribute;
const XmlDocument = @import("../Data/Xml/Dom.zig").XmlDocument;
const SyndicationItem = @import("./Syndication.zig").SyndicationItem;
const IAsyncActionWithProgress = @import("../Foundation.zig").IAsyncActionWithProgress;
const SyndicationFormat = @import("./Syndication.zig").SyndicationFormat;
const RetrievalProgress = @import("./Syndication.zig").RetrievalProgress;
const TransferProgress = @import("./Syndication.zig").TransferProgress;
const TrustLevel = @import("../root.zig").TrustLevel;
const ISyndicationClient = @import("./Syndication.zig").ISyndicationClient;
